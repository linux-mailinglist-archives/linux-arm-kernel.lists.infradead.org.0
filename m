Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C216120F2
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 19:23:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DgWW/A67ijKbtaGVjRSQBKCYfjWo+4XwAbDL4j3KfNQ=; b=Tr6rfStNRDndmq
	HF2NePxIoRLp7sVGlWROUBMoLD8CnB3R+4b4O1t5kLf0FW+ypN0ZFbGoV4hJTKVgiaAsFL/wGMyuG
	TgzmBJFrclwSxsYaGduoDZEzlZb4aTEX9pew55/sjeB77pP4nSVQtTjnFXUoJdxhvauRhyFuOiM63
	VQQ677e55CfetcSD007yedJH806oouMhCFjScDhTRobpkfyFG8/wZaG8GQZFlIW+xO3zPMf0Uyebz
	2sbdz2fO3ccjHplmPK18zz4Ixi5FU5Q2/iKdh0i+tnHLAZK3o1/kGXpN63ZhJTcQDJEeltnd4m2+E
	uf5SC0Qne5lFRpmlw8GQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMFQQ-0007B0-Ci; Thu, 02 May 2019 17:23:14 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMFQJ-0007AZ-IM
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 17:23:08 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3D7AF20651;
 Thu,  2 May 2019 17:23:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1556817786;
 bh=t2QvyURycKIiTirpOYn/f0cP4QvJwYDjk22RYCF4a+w=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=0lNIcEHEVT9rbk92gU+FW0N3Qz5n3G1kCyITcS1sJnzAGBVSQuP5hWVsC1PfATO32
 Heunaeq15bx7iceyRMN+Lt13IeCgeNjZbcTF0HwBaRq6MLYek0Vo3tDTx25aDESnlP
 z3FGoKjHRArhzb8Ir2amvCJJBoxSNgA63ocOiPYs=
Date: Thu, 2 May 2019 19:23:04 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Dragan Cvetic <dragan.cvetic@xilinx.com>
Subject: Re: [PATCH V3 04/12] misc: xilinx_sdfec: Add open, close and ioctl
Message-ID: <20190502172304.GB1874@kroah.com>
References: <1556402706-176271-1-git-send-email-dragan.cvetic@xilinx.com>
 <1556402706-176271-5-git-send-email-dragan.cvetic@xilinx.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1556402706-176271-5-git-send-email-dragan.cvetic@xilinx.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_102307_624756_81DA9C72 
X-CRM114-Status: GOOD (  14.69  )
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, arnd@arndb.de,
 michal.simek@xilinx.com, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 Derek Kiernan <derek.kiernan@xilinx.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Apr 27, 2019 at 11:04:58PM +0100, Dragan Cvetic wrote:
> +static int xsdfec_dev_open(struct inode *iptr, struct file *fptr)
> +{
> +	struct xsdfec_dev *xsdfec;
> +
> +	xsdfec = container_of(iptr->i_cdev, struct xsdfec_dev, xsdfec_cdev);
> +
> +	if (!atomic_dec_and_test(&xsdfec->open_count)) {

Why do you care about this?

And do you really think it matters?  What are you trying to protect from
here?

> +		atomic_inc(&xsdfec->open_count);
> +		return -EBUSY;
> +	}
> +
> +	fptr->private_data = xsdfec;
> +	return 0;
> +}
> +
> +static int xsdfec_dev_release(struct inode *iptr, struct file *fptr)
> +{
> +	struct xsdfec_dev *xsdfec;
> +
> +	xsdfec = container_of(iptr->i_cdev, struct xsdfec_dev, xsdfec_cdev);
> +
> +	atomic_inc(&xsdfec->open_count);

You increment a number when the device is closed?

You are trying to make it hard to maintain this code over time :)


> +	return 0;
> +}
> +
> +static long xsdfec_dev_ioctl(struct file *fptr, unsigned int cmd,
> +			     unsigned long data)
> +{
> +	struct xsdfec_dev *xsdfec = fptr->private_data;
> +	void __user *arg = NULL;
> +	int rval = -EINVAL;
> +	int err = 0;
> +
> +	if (!xsdfec)
> +		return rval;
> +
> +	if (_IOC_TYPE(cmd) != XSDFEC_MAGIC)
> +		return -ENOTTY;
> +
> +	/* check if ioctl argument is present and valid */
> +	if (_IOC_DIR(cmd) != _IOC_NONE) {
> +		arg = (void __user *)data;
> +		if (!arg) {
> +			dev_err(xsdfec->dev,
> +				"xilinx sdfec ioctl argument is NULL Pointer");

You just created a way for userspace to spam the kernel log, please do
not do that :(



> +			return rval;
> +		}
> +	}
> +
> +	if (err) {
> +		dev_err(xsdfec->dev, "Invalid xilinx sdfec ioctl argument");
> +		return -EFAULT;

Wrong error, you did not have a memory fault.

Again, you just created a way to spam the kernel log by a user :(

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
