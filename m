Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 882ED13860
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  4 May 2019 11:02:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xiNaY06aSCJSfJU3EBX8em2tPCVU2xf4/ncoD7LrKBQ=; b=VGerS0yua+uWy5
	v8WVZk+k8z4dfeYKZBC/DyhryFALidOY4w4ZaWeE8HWMinb9TNS3r3WeuJr3Deoe/MPqEFb6dxqJK
	UL3NMMYioDVNIhPyaiSwXHxk8kYmoZq6WA3dlYQPbW5JkwinwfpaDIk0NeBv5zJsOtrBds7QgXZOA
	0UEtFAkjNvfFbFFyEpJyQdKzizO6iQx2AwtmrLifUm+1bWqcaqvS7b+qziMvylZ7Ro8De3CFkP9gJ
	VpAWXgfUCidkJHS83d0jHgE945xUKqGv8wX+DsE9casx9jBO0yNpZxQx5INeCwV+azEA+0KEcrOZF
	U/Yoc5WjMWPHprvWCCRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMqYe-0002mn-UI; Sat, 04 May 2019 09:02:12 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMqYX-0002mN-Vt
 for linux-arm-kernel@lists.infradead.org; Sat, 04 May 2019 09:02:07 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 328C9206BB;
 Sat,  4 May 2019 09:02:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1556960525;
 bh=0HZkZL9+I1+nEWaQ8L+l+Qk9L37TE+cDxjDKQFi3lR4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=sXlFYt/gekvCpmVrEJ1kh89YcejLx5OXMuCHj+pbUfveEorE7uUURo5+Xd/QOxshh
 G7VAjy4dYKRuRrzpQHjwHAKPFQ4/vrWfLXOkCAnixni9c/QCKftw4UKHQ9XNIbOpz8
 wypPlbeEvAs5LS+Zb2lCGAUnaMtzuuqNqRsTNA+k=
Date: Sat, 4 May 2019 11:02:03 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Dragan Cvetic <draganc@xilinx.com>
Subject: Re: [PATCH V3 04/12] misc: xilinx_sdfec: Add open, close and ioctl
Message-ID: <20190504090203.GD13840@kroah.com>
References: <1556402706-176271-1-git-send-email-dragan.cvetic@xilinx.com>
 <1556402706-176271-5-git-send-email-dragan.cvetic@xilinx.com>
 <20190502172304.GB1874@kroah.com>
 <BL0PR02MB5681F4C4AF4786AC6241DDA1CB350@BL0PR02MB5681.namprd02.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <BL0PR02MB5681F4C4AF4786AC6241DDA1CB350@BL0PR02MB5681.namprd02.prod.outlook.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190504_020206_049715_BEC30A35 
X-CRM114-Status: GOOD (  15.07  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "arnd@arndb.de" <arnd@arndb.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, Michal Simek <michals@xilinx.com>,
 Derek Kiernan <dkiernan@xilinx.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 03, 2019 at 04:44:57PM +0000, Dragan Cvetic wrote:
> > -----Original Message-----
> > From: Greg KH [mailto:gregkh@linuxfoundation.org]
> > Sent: Thursday 2 May 2019 18:23
> > To: Dragan Cvetic <draganc@xilinx.com>
> > Cc: arnd@arndb.de; Michal Simek <michals@xilinx.com>; linux-arm-kernel@lists.infradead.org; robh+dt@kernel.org;
> > mark.rutland@arm.com; devicetree@vger.kernel.org; linux-kernel@vger.kernel.org; Derek Kiernan <dkiernan@xilinx.com>
> > Subject: Re: [PATCH V3 04/12] misc: xilinx_sdfec: Add open, close and ioctl
> > 
> > On Sat, Apr 27, 2019 at 11:04:58PM +0100, Dragan Cvetic wrote:
> > > +static int xsdfec_dev_open(struct inode *iptr, struct file *fptr)
> > > +{
> > > +	struct xsdfec_dev *xsdfec;
> > > +
> > > +	xsdfec = container_of(iptr->i_cdev, struct xsdfec_dev, xsdfec_cdev);
> > > +
> > > +	if (!atomic_dec_and_test(&xsdfec->open_count)) {
> > 
> > Why do you care about this?
> > 
> > And do you really think it matters?  What are you trying to protect from
> > here?
> 
> There is a request to increase the driver security. 

How does this affect "security" in any way?

> It is acceptable for us for now, even with non-perfections (will not
> be protected if opened twice with dup() or fork()).  This is covered
> in the documentation.

As this really "does nothing", no need to bother the kernel with trying
to keep this logic working properly.  So please just drop it.

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
