Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24D1AD923A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 15:17:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SBHjmotdlR4vE/lPzolwk77CXT8kL75Qr1XTmkFjfA0=; b=QApZ2s8OnptGFO
	i6VCVLzraZRsSHtjalNZjm3YzsgLeQQDK06TPShhSKTXFtelhIEgdOPRiebe4yLZbp+eYf1rCQxt/
	KxEtFNPsaXy3kA8Vikg0+tWPG8aJzA8c/GQUucZVh/cR9+p624tHuswuDE4Y6QByA/tu9VLlFQWWB
	iekqvk2jMPoLVsWByHbvJXHgeIK94kVFJxY5ehmND1jah8OBS+Vu+/vXqfbDbRaRpqgiOAxeb4XuN
	jC/ubfJcXofgtJFeKHuSoW2nCFgXPRmXFt4vhX+BIkPuOrAwwaO4mY1/rJXpuUSZCVwakdvUo4UZ4
	bfohIgeTod5p0ICmVUzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKjBK-0005HL-8A; Wed, 16 Oct 2019 13:17:38 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKjBB-0005Gg-PC
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 13:17:31 +0000
Received: from localhost (unknown [209.136.236.94])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 638072064A;
 Wed, 16 Oct 2019 13:17:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571231848;
 bh=7ICZu5U89hohYmbn6gUIgQxhJVCaU/53F1xp5OJCAdw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=eunc4yEZFEINPkgHN8b4Tbj6+hH1biz99q2FXxR7IDh5zAgJi8zK2UH+lYxO3ePXc
 1L4L9fjwTz9sbtvSVgHYS7ATAQyL4PTv+mHRir5ttKx8fj4Cc+ene2SaYhlFb5jjzo
 pcUTb19YqjH+ArFzlqcanlrooE3Xi81U/oYfy+ck=
Date: Wed, 16 Oct 2019 06:17:28 -0700
From: Greg KH <gregkh@linuxfoundation.org>
To: Stefan-Gabriel Mirea <stefan-gabriel.mirea@nxp.com>
Subject: Re: [PATCH v7 0/5] Add initial support for S32V234-EVB
Message-ID: <20191016131728.GA56859@kroah.com>
References: <1571230107-8493-1-git-send-email-stefan-gabriel.mirea@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1571230107-8493-1-git-send-email-stefan-gabriel.mirea@nxp.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_061729_840551_5BE2F176 
X-CRM114-Status: GOOD (  14.16  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, corbet@lwn.net,
 catalin.marinas@arm.com, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org, leoyang.li@nxp.com, robh+dt@kernel.org,
 linux-serial@vger.kernel.org, jslaby@suse.com, shawnguo@kernel.org,
 will@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 16, 2019 at 03:48:22PM +0300, Stefan-Gabriel Mirea wrote:
> Hello,
> 
> NXP's S32V234[1] ("Treerunner") vision microprocessors are targeted for
> high-performance, computationally intensive vision and sensor fusion
> applications that require automotive safety levels. They include leading
> edge Camera Vision modules like APEX-2, ISP and GPU. The S32V234-EVB and
> S32V234-SBC boards are available for customer evaluation.
> 
> The following patch series introduces minimal enablement support for the
> NXP S32V234-EVB2[2] board, which leverages most of the SoC capabilities.
> Up to v2, this series also included the fsl_linflexuart driver, which has
> been included in Linux 5.4-rc1[3].
> 
> In the future, we aim to submit multiple drivers upstream, which can be
> found in the kernel of our Auto Linux BSP[4] ("ALB"), starting with basic
> pinmuxing, clock and uSDHC drivers.
> 
> For validation, you can use the U-Boot bootloader in the ALB[5], which we
> build and test with our patched version of the Linaro GCC 6.3.1 2017.05
> toolchain for ARM 64-bit, with sources available on [6].
> 
> Changes in v7:
> * Rebase the patch 'serial: fsl_linflexuart: Be consistent with the name'
>   on the tty-next branch in Greg's tty git tree.

I've taken patch 3 in my tty-next tree.  The others should probably go
through an arm-specific tree, right?

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
