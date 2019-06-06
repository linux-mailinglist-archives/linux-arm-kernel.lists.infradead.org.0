Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB33737538
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 15:28:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NwIxdbOicSLHc4RcvtTuOIE+2sm+QfSLOYRaTGC3qRM=; b=dshXaScN/6DPZV
	7/iFKU2daTfoNr+OMm2e8wv5aDM9bzkdmUcV4t9qpWMjmKTtlq/9cXPmf/2es7o8TCv2cxsEAHYiV
	mQI09aCcw0Hw5elS8iN8yZScQqCLPGrvUBFbsni/c+yMsxw6D4xEYx9uujLTO3NDUtyT6LR9l9KAj
	lj2n68TsSahLVCXHznRPxKG4+3+HnXH8M2Ney74KSz7rIRmMo3cuchynwEaNLqquZL36KSzUCfFPI
	jZBdlIgqeMwV4Ghgh/m4APioVTJaaUZRMqsA4xaUOUzZaqHkZLiGC2l6fWnoaMEiUfElBImBkVwVF
	yG1k/68mJYhCxozPuxXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYsRp-0007uZ-B5; Thu, 06 Jun 2019 13:28:53 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYsRh-0007tq-Ey
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 13:28:46 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A539D20866;
 Thu,  6 Jun 2019 13:28:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559827725;
 bh=UHWrtQgpvixRqPbEtkrChsh4DvWxscCBoV1YMgNBxGg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=0yjG6Bddq99LhfiaYiI3rJevdiHeIpzCUmVUfkqh052ofns7xizCLJEEC9QW8AWiR
 KwnSd5ZR1pPhnX7ZbkgIru9bVWnT57pk77L+901o8LE12SSIIYQfwZaXMVJHPetSEF
 qLNBBwl2a5cdhPnL08ZRoTAHkkoZZn9s0Ju27f2w=
Date: Thu, 6 Jun 2019 15:28:42 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Dragan Cvetic <dragan.cvetic@xilinx.com>
Subject: Re: [PATCH V4 04/12] misc: xilinx_sdfec: Add open, close and ioctl
Message-ID: <20190606132842.GC7943@kroah.com>
References: <1558784245-108751-1-git-send-email-dragan.cvetic@xilinx.com>
 <1558784245-108751-5-git-send-email-dragan.cvetic@xilinx.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1558784245-108751-5-git-send-email-dragan.cvetic@xilinx.com>
User-Agent: Mutt/1.12.0 (2019-05-25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_062845_512887_37C02D35 
X-CRM114-Status: GOOD (  12.87  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, arnd@arndb.de,
 michal.simek@xilinx.com, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 Derek Kiernan <derek.kiernan@xilinx.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, May 25, 2019 at 12:37:17PM +0100, Dragan Cvetic wrote:
> +static int xsdfec_dev_open(struct inode *iptr, struct file *fptr)
> +{
> +	return 0;
> +}
> +
> +static int xsdfec_dev_release(struct inode *iptr, struct file *fptr)
> +{
> +	return 0;
> +}

empty open/close functions are never needed, just drop them.

> +
> +static long xsdfec_dev_ioctl(struct file *fptr, unsigned int cmd,
> +			     unsigned long data)
> +{
> +	struct xsdfec_dev *xsdfec;
> +	void __user *arg = NULL;
> +	int rval = -EINVAL;
> +
> +	xsdfec = container_of(fptr->private_data, struct xsdfec_dev, miscdev);
> +	if (!xsdfec)
> +		return rval;

It is impossible for container_of() to return NULL, unless something
very magical and rare just happened.  It's just doing pointer math, you
can never check the return value of it.

> +
> +	if (_IOC_TYPE(cmd) != XSDFEC_MAGIC)
> +		return -ENOTTY;

How can this happen?

> +
> +	/* check if ioctl argument is present and valid */
> +	if (_IOC_DIR(cmd) != _IOC_NONE) {
> +		arg = (void __user *)data;
> +		if (!arg)
> +			return rval;
> +	}
> +
> +	switch (cmd) {
> +	default:
> +		/* Should not get here */
> +		dev_warn(xsdfec->dev, "Undefined SDFEC IOCTL");

Nice that userspace has a way to fill up the kernel log :(

Just return the correct error here, don't log it.

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
