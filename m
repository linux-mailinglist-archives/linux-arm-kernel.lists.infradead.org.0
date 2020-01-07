Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 295C3132074
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 08:28:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1p72ZYmJPQ/gDSZVaRRxdoPO4uEdf7mF3wPyRrjy+Xc=; b=ctEIUgCz03fCrp
	77rrcsZJRT1ZopRvKeIdg4G3efL9gtBN9RhuHRPdajoqg3wjZk4Bd7tpUWPa2dM3eoq1vcH209pwk
	QTAt24xDq+BDwBipARHtos2hU/Ab2ffOCkmLorYOIMgIBGI9NN2z/rDFWtSvvCby7cFM/9v4wHAGn
	mTyj5crQmrOQvh98aFgaWlPekt/YrUJNRWdSrZUTNJw0NrYdZSpljpowB/JEr1qAXyX/RTAtibPJk
	RE7UbbkU89K1KBORvBBwCwNMjPp5wbIuo4rXubIiCknJCw0JnnRyT7Gw2TpVl3c2DUF/FZc0QwVGe
	Wvs7BAdTih2g1hlynJ2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iojIH-0004Ey-5T; Tue, 07 Jan 2020 07:28:49 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iojI2-0004Ea-FC; Tue, 07 Jan 2020 07:28:35 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5D9892075A;
 Tue,  7 Jan 2020 07:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578382114;
 bh=BVHo00NklGMrI82+E8WLgTOJ1z15QHxTgAO8Fq717sA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=nrxKsb6LMgTMxCisihf0knznX31hWsxuWd0MVXC5grjJoJUSqRDGAgHh7ooQTMJYH
 KBobJ1+QA81K2CWQz8KHY3FUPaUM8owjIIUF19hEmp/PMzzxi4KRdsG35RZ8+UGsZm
 sDz+iosUV/Amkv7OgASYfuvhsQeDHSX6cKC4hA34=
Date: Tue, 7 Jan 2020 08:28:31 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Ivan Sistik <sistik@3ksolutions.sk>
Subject: Re: [PATCH] tty: serial: amba-pl011: added RS485 support
Message-ID: <20200107072831.GB1014453@kroah.com>
References: <20200106235203.27256-1-sistik@3ksolutions.sk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200106235203.27256-1-sistik@3ksolutions.sk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_232834_526911_955B9D75 
X-CRM114-Status: GOOD (  11.20  )
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
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Stefan Wahren <stefan.wahren@i2se.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Scott Branden <sbranden@broadcom.com>,
 Ray Jui <rjui@broadcom.com>, Russell King <linux@armlinux.org.uk>,
 linux-kernel@vger.kernel.org, Eric Anholt <eric@anholt.net>,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-serial@vger.kernel.org, Jiri Slaby <jslaby@suse.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jan 07, 2020 at 12:52:03AM +0100, Ivan Sistik wrote:
> --- a/drivers/tty/serial/amba-pl011.c
> +++ b/drivers/tty/serial/amba-pl011.c
> @@ -14,6 +14,9 @@
>   * not have an RI input, nor do they have DTR or RTS outputs.  If
>   * required, these have to be supplied via some other means (eg, GPIO)
>   * and hooked into this driver.
> + *
> + * Added software RS485 support, 05/jan/2020, Ivan Sistik
> + *     sistik@3ksolutions.sk

No need for this, that is what git changelogs are for :)

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
