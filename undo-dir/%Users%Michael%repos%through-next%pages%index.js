Vim�UnDo� �,�@�;D?KgU7d�)۠������qJp�p
��                                     [~<�    _�                             ����                                                                                                                                                                                                                                                                                                                                                             [~<�     �                 -/* eslint-disable jsx-a11y/anchor-is-valid */5�_�                            ����                                                                                                                                                                                                                                                                                                                            N                      v        [~<�     �               N       import React from 'react';   #import PropTypes from 'prop-types';   .import Button from '@material-ui/core/Button';   .import Dialog from '@material-ui/core/Dialog';   8import DialogTitle from '@material-ui/core/DialogTitle';   <import DialogContent from '@material-ui/core/DialogContent';   Dimport DialogContentText from '@material-ui/core/DialogContentText';   <import DialogActions from '@material-ui/core/DialogActions';   6import Typography from '@material-ui/core/Typography';   6import { withStyles } from '@material-ui/core/styles';   import Link from 'next/link';       const styles = theme => ({   	  root: {       textAlign: 'center',   (    paddingTop: theme.spacing.unit * 20,     },   });       %class Index extends React.Component {     state = {       open: false,     };         handleClose = () => {       this.setState({         open: false,       });     };         handleClick = () => {       this.setState({         open: true,       });     };         render() {   #    const { classes } = this.props;        const { open } = this.state;           return (   $      <div className={classes.root}>   7        <Dialog open={open} onClose={this.handleClose}>   :          <DialogTitle>Super Secret Password</DialogTitle>             <DialogContent>   <            <DialogContentText>1-2-3-4-5</DialogContentText>             </DialogContent>             <DialogActions>   ?            <Button color="primary" onClick={this.handleClose}>                 OK               </Button>             </DialogActions>           </Dialog>   4        <Typography variant="display1" gutterBottom>             Material-UI           </Typography>   6        <Typography variant="subheading" gutterBottom>             example project           </Typography>   !        <Typography gutterBottom>             <Link href="/about">   '            <a>Go to the about page</a>             </Link>           </Typography>   Q        <Button variant="contained" color="secondary" onClick={this.handleClick}>             Super Secret Password           </Button>         </div>       );     }   }       Index.propTypes = {   '  classes: PropTypes.object.isRequired,   };       )export default withStyles(styles)(Index);5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  v        [~<�     �                 (xport default withStyles(styles)(Index);5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  v        [~<�     �                 �             �                   5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  v        [~<�    �                 <div></div>5��