Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA8489B75D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 21:51:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=48EeDVXFekwUF+s3QKDWoTT5+sKQjK8GRSagesX/EbA=; b=JnAfFUiV8aF19D
	GHJY4JLl2kp/TSVWaANLnRM3l4btF8/aAn1VBSYEps9JMBMNfk8JQgIXzgT9FkHgISfE4EGmzFrta
	VKfTe7HTGEmGCaTX1WYt62xQelzoxl10+57DWmKeq1mVT4howygGO/p0DyWLsh0XlpFEsTqfcY38g
	+LISwgKgktSXLwkf9ttaoRfdhPN4rp27EJ0NgdtRGE4UiXB1HnJJP6sH1ErE08bM6YDFVdQc5Ux7l
	MoEunWg/8vAHj70U9nY/Ssb4XWsNag24wWbbGoEmYlV3SHb8N9PNV6upy6anDpOjK4drtK23S8ksy
	EbCzLjD2jgWZoLnSxB+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1Faf-0002Ba-89; Fri, 23 Aug 2019 19:51:17 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1FaZ-0002BP-SX
 for linux-arm-kernel@bombadil.infradead.org; Fri, 23 Aug 2019 19:51:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=J0J1L9hWX0M0GO5imNmPlcsuPIdxRsatHSM5gMnCEpU=; b=fZF1PtlmulEyZZI5BxMTGCctp
 3Z97N19VRkA8M4CgWDeJoKVfb/Ejq7tAWwWuKBVvwNYbQ52fEznsfeYQ03+HT43ayBYuCRVv4AIps
 Tm/lbrCV86nPNwoYc8ucTgJAZLezGmQIWvOKUVNffpOdCMtyR1eQVZhM7UjFHUmnh8oGziscW9GJT
 QPUUZi6rSlmhuTPfJ6Z1Y5TLiiEuBzw/6kKNC+Yc6llIH6bCGNiVVR0pzGximLFKML9p2g6/IdZDv
 3NCn9d+SQfXsyTQc5wU0wbI0WzMqmw4BuNWVCc8bVXSNWPhmOia0PYeKVvV4fOJrrZo8kbTVxaFgI
 nIlG3N/BA==;
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1Faq-0003BH-Sl
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 19:51:31 +0000
X-Originating-IP: 90.65.161.137
Received: from localhost (lfbn-1-1545-137.w90-65.abo.wanadoo.fr
 [90.65.161.137])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id 17EB91BF205;
 Fri, 23 Aug 2019 19:50:30 +0000 (UTC)
Date: Fri, 23 Aug 2019 21:50:30 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Subject: Re: [PATCH] ARM: at91: move platform-specific asm-offset.h to
 arch/arm/mach-at91
Message-ID: <20190823195030.GD30479@piout.net>
References: <20190823024346.591-1-yamada.masahiro@socionext.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190823024346.591-1-yamada.masahiro@socionext.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_205128_971080_3B85B8E2 
X-CRM114-Status: GOOD (  24.79  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.7 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.201 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-kernel@vger.kernel.org,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 linux-arm-kernel@lists.infradead.org, Russell King <linux@armlinux.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 23/08/2019 11:43:45+0900, Masahiro Yamada wrote:
> <generated/at91_pm_data-offsets.h> is only generated and included by
> arch/arm/mach-at91/, so it does not need to reside in the globally
> visible include/generated/.
> 
> I renamed it to arch/arm/mach-at91/pm_data-offsets.h since the prefix
> 'at91_' is just redundant in mach-at91/.
> 
> My main motivation of this change is to avoid the race condition for
> the parallel build (-j) when CONFIG_IKHEADERS is enabled.
> 
> When it is enabled, all the headers under include/ are archived into
> kernel/kheaders_data.tar.xz and exposed in the sysfs.
> 
> In the parallel build, we have no idea in which order files are built.
> 
>  - If at91_pm_data-offsets.h is built before kheaders_data.tar.xz,
>    the header will be included in the archive. Probably nobody will
>    use it, but it is harmless except that it will increase the archive
>    size needlessly.
> 
>  - If kheaders_data.tar.xz is built before at91_pm_data-offsets.h,
>    the header will not be included in the archive. However, in the next
>    build, the archive will be re-generated to include the newly-found
>    at91_pm_data-offsets.h. This is not nice from the build system point
>    of view.
> 
>  - If at91_pm_data-offsets.h and kheaders_data.tar.xz are built at the
>    same time, the corrupted header might be included in the archive,
>    which does not look nice either.
> 
> This commit fixes the race.
> 
> Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
> ---
> 
>  arch/arm/mach-at91/.gitignore   | 1 +
>  arch/arm/mach-at91/Makefile     | 5 +++--
>  arch/arm/mach-at91/pm_suspend.S | 2 +-
>  3 files changed, 5 insertions(+), 3 deletions(-)
>  create mode 100644 arch/arm/mach-at91/.gitignore
> 
Applied, thanks.

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
