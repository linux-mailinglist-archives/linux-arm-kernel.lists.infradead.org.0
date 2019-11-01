Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FD74EC039
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 10:02:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c7+BAqm/pJ+vJFZb8rQothK2KtO/LUUf99CYZI8tY/A=; b=copTZn5TB8LJR3
	VWEWwd106b8hP0o+S2vr6a6LEfgYPvhzLC/mQwTC2yisH8Tri7Va2HIUdlwvNdsnHlxmhSEVsGgWY
	pWXnfXOM5C4XIQO6rKOT2HzjU0+9sbhVX+2I/lMST4ZR6ttddJLOPFvep1YeipQQ63kbWuYrwCQgu
	B/20gGZ4TQH6gggTe/oiDWBt6SEO101Zp1t/nRmunpxTQ47oQNRmStPcqbPDOcxoldtZXlcaxffqi
	Nw6hfQDqmHsLW9HVWd3mvk8HFeS/TKwF5M01p4lx8HJ/1r2wPij1I3YE1O+1Kqt0wwBs9itvJmh6q
	iVh4viQ0LkYc2ibInzRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQSpH-0007BV-JJ; Fri, 01 Nov 2019 09:02:35 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQSp7-0007Af-GO; Fri, 01 Nov 2019 09:02:27 +0000
Received: from localhost (unknown [84.241.195.165])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DC5402080F;
 Fri,  1 Nov 2019 09:02:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572598944;
 bh=03ykDqOkaZ+vfMFgBSEbYV3PoG8YuXm3FEcL5G+ws2Q=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=eEu30SGt42zSHoc5LlbGoOeueGeW6yn0Qevu53KZYtf2dIR9IyWJRdto8azhTnLLm
 6gO3bZr94b44n6IGTAVS/RmtJTvo9eAogiTW5naegoh007djmcOALGxUqyTSZuQ7GU
 jNrB4ZY3g8V4ej2K+GtEc1otaCuzw3cf+nx6Z35A=
Date: Fri, 1 Nov 2019 10:02:21 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Chunfeng Yun <chunfeng.yun@mediatek.com>
Subject: Re: [RFC PATCH] usb: common: change usb_debug_root as static variable
Message-ID: <20191101090221.GC2671695@kroah.com>
References: <1572575349-5596-1-git-send-email-chunfeng.yun@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1572575349-5596-1-git-send-email-chunfeng.yun@mediatek.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_020225_566747_6D023C25 
X-CRM114-Status: GOOD (  15.53  )
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
Cc: Fabrizio Castro <fabrizio.castro@bp.renesas.com>,
 Felipe Balbi <felipe.balbi@linux.intel.com>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Nov 01, 2019 at 10:29:09AM +0800, Chunfeng Yun wrote:
> Try to avoid using extern global variable, and provide two
> functions for the usage cases

That is 3 different things all in one patch, not generally considered a
good thing at all.

Also, who is going to use these new functions?  Why are they needed?

> Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
> ---
> NOTE:
>     Prepared but not send out patches for drivers using usb_debug_root,
> because I'm not sure whether this patch is needed, and many drivers
> will be modified.
> ---
>  drivers/usb/common/common.c | 16 ++++++++++++++--
>  include/linux/usb.h         |  5 ++++-
>  2 files changed, 18 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/usb/common/common.c b/drivers/usb/common/common.c
> index 1433260d99b4..639ee6d243a2 100644
> --- a/drivers/usb/common/common.c
> +++ b/drivers/usb/common/common.c
> @@ -293,8 +293,20 @@ struct device *usb_of_get_companion_dev(struct device *dev)
>  EXPORT_SYMBOL_GPL(usb_of_get_companion_dev);
>  #endif
>  
> -struct dentry *usb_debug_root;
> -EXPORT_SYMBOL_GPL(usb_debug_root);
> +static struct dentry *usb_debug_root;

Doesn't this break things as-is?  You can't do that in a single patch
either :(

> +
> +struct dentry *usb_debugfs_create_dir(const char *name)
> +{
> +	return debugfs_create_dir(name, usb_debug_root);
> +}
> +EXPORT_SYMBOL_GPL(usb_debugfs_create_dir);
> +
> +struct dentry *usb_debugfs_create_file(const char *name, umode_t mode,
> +			void *data, const struct file_operations *fops)
> +{
> +	return debugfs_create_file(name, mode, usb_debug_root, data, fops);

I doubt many people want to create a file in the usb "root" debugfs
directory, right?  They _should_ be just creating a new subdirectory in
there instead.

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
