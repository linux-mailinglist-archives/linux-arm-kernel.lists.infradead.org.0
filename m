Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D3E1D4A59
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 12 Oct 2019 00:32:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WhApNYL23ZS/XmVFcKOK0u4XXCbF3+mNXtfi8o+BO/M=; b=LwDunHSymPfX+k
	lfpAshOM+Mker16n8RUk/ItLoC+29pWKa8SHCjCf7isrNH8MpxuU3j9nMBj+g4wCTc/gB/wIXTC4k
	1rIKGruTuFzjGRzjSP/kEB9DuK3advlcdoRfa4mU3MMHJTTxL5txmYk0/4IiQvZ6/cjH0s3rV+D9s
	LOVtKGeB8u2cqr+vV+JFRQ7hDFjhQlq2nRA+ummoAmYWMZ/CNTYQrRhHxox7Ccj1cVjqirSKU3q+m
	EqwD0IOVoC/Pt8bgL8WkBLWa9m5tHVfuVYggx6q2xsrPZY6oWd4pf8fIpYvQwgAH71GkxmPhBWGep
	SszAkkolqMoJKX0AAMlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJ3So-0001Rm-UU; Fri, 11 Oct 2019 22:32:46 +0000
Received: from smtprelay0058.hostedemail.com ([216.40.44.58]
 helo=smtprelay.hostedemail.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJ3Sh-0001Qf-TS; Fri, 11 Oct 2019 22:32:41 +0000
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay05.hostedemail.com (Postfix) with ESMTP id E131418016C6C;
 Fri, 11 Oct 2019 22:32:25 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com,
 :::::::::::::::::::::::::::::::::::,
 RULES_HIT:41:355:379:599:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:2393:2553:2559:2562:2828:3138:3139:3140:3141:3142:3352:3622:3865:3866:3867:3868:3870:3871:3872:3873:4321:4605:5007:6742:7903:8660:10004:10400:10471:11026:11232:11473:11657:11658:11914:12043:12295:12297:12438:12740:12760:12895:13069:13148:13160:13229:13230:13255:13311:13357:13439:14096:14097:14659:14721:21080:21627:21774:21796:21939:30012:30029:30036:30054:30090:30091,
 0,
 RBL:47.151.152.152:@perches.com:.lbl8.mailshell.net-62.8.0.100 64.201.201.201,
 CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none, DomainCache:0,
 MSF:not bulk, SPF:fn, MSBL:0, DNSBL:neutral, Custom_rules:0:0:0, LFtime:26,
 LUA_SUMMARY:none
X-HE-Tag: owl40_14d93818d4721
X-Filterd-Recvd-Size: 2752
Received: from XPS-9350.home (unknown [47.151.152.152])
 (Authenticated sender: joe@perches.com)
 by omf06.hostedemail.com (Postfix) with ESMTPA;
 Fri, 11 Oct 2019 22:32:23 +0000 (UTC)
Message-ID: <28ed468bc58c0d0e92f459b45d8e43cd3d1458b2.camel@perches.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: vc04_services: fix warnings
 of lines should not end with open parenthesis
From: Joe Perches <joe@perches.com>
To: Julia Lawall <julia.lawall@lip6.fr>, Jules Irenge <jbi.octave@gmail.com>
Date: Fri, 11 Oct 2019 15:32:22 -0700
In-Reply-To: <alpine.DEB.2.21.1910112320550.3284@hadrien>
References: <20191011211637.19311-1-jbi.octave@gmail.com>
 <alpine.DEB.2.21.1910112320550.3284@hadrien>
User-Agent: Evolution 3.32.1-2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_153240_021890_7365DEB3 
X-CRM114-Status: GOOD (  10.89  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.40.44.58 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [216.40.44.58 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devel@driverdev.osuosl.org, f.fainelli@gmail.com, sbranden@broadcom.com,
 mchehab+samsung@kernel.org, outreachy-kernel@googlegroups.com,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org, eric@anholt.net,
 daniela.mormocea@gmail.com, bcm-kernel-feedback-list@broadcom.com,
 wahrenst@gmx.net, dave.stevenson@raspberrypi.org, rjui@broadcom.com,
 hverkuil-cisco@xs4all.nl, linux-arm-kernel@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 2019-10-11 at 23:23 +0200, Julia Lawall wrote:
> On Fri, 11 Oct 2019, Jules Irenge wrote:
> > Fix warning of lines should not end with open parenthesis.
> > Issue detected by checkpatch tool.
[]
> > diff --git a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
[]
> > @@ -337,9 +337,8 @@ static void buffer_cb(struct vchiq_mmal_instance *instance,
> >  			if (is_capturing(dev)) {
> >  				v4l2_dbg(1, bcm2835_v4l2_debug, &dev->v4l2_dev,
> >  					 "Grab another frame");
> > -				vchiq_mmal_port_parameter_set(
> > -					instance,
> > -					dev->capture.camera_port,
> > +			vchiq_mmal_port_parameter_set(instance,
> > +						      dev->capture.camera_port,
> >  					MMAL_PARAMETER_CAPTURE,
> >  					&dev->capture.frame_count,
> >  					sizeof(dev->capture.frame_count));
> 
> You can't reduce the indentation on the function call.  It has to stay
> clearly in the if branch.
> 
> If you adjust the indentation of some of the arguments, you have to do so
> to all of the arguments.
> 
> Similar issues arise below.  There may be no way to make some of the calls
> look nice without a more severe reorganization of the code.

My suggestion would be to shorten the vchiq_mmal_port_parameter_set
function name (29 chars is just too long) and pass dev instead of
dev->instance as the first argument to this function.



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
