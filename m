Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 487D5112A17
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 12:26:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FTzT+/fPYFmctLHOGIIaKlfqn9OaEyZpUglJ2OoWeEY=; b=iKkNZZLEvtTIIL
	TNk51OBWm3zYxiEDr3i/utQjoZ7QgzbGx5YLvZi0UnHm3BqJKiYM1oBcV9DXz4jRp3rQAkOPb/53A
	rdZLu8LWWPMS8MX5CDXDGqYkr+nGQXxuUds+TVlggDM/qK/YMMJs3FYQlFlHLUCIW2sI+jkMvo+OC
	WYcTVbztOttboS0aSHjHmN0nn3SRwXPUYX8H1rlhcahI924Jx4sHEDMpiaemwnMmyXuQkxfoswfXj
	+CmtQioOqCInD52lEenqAi0JiMmoYJIqCAFo1uclZc1rvNaZPYTHmwP7DZKIxZsHWKje65Ll7IvcY
	AOVgRzgcUmV0dVvYbCXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icSnP-00040t-Ds; Wed, 04 Dec 2019 11:26:15 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icSnG-000409-BG
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 11:26:07 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DF1FB31B;
 Wed,  4 Dec 2019 03:26:03 -0800 (PST)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.197.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 DF4E73F68E; Wed,  4 Dec 2019 03:26:02 -0800 (PST)
Date: Wed, 4 Dec 2019 11:26:00 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH] arm64: mm: Fix initialisation of DMA zones on non-NUMA
 systems
Message-ID: <20191204112600.GE13081@arrakis.emea.arm.com>
References: <20191203121013.9280-1-will@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191203121013.9280-1-will@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_032606_432468_C55AAF2A 
X-CRM114-Status: GOOD (  13.97  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-kernel@vger.kernel.org, Bjorn Andersson <bjorn.andersson@linaro.org>,
 John Stultz <john.stultz@linaro.org>, linux-arm-kernel@lists.infradead.org,
 Christoph Hellwig <hch@lst.de>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Dec 03, 2019 at 12:10:13PM +0000, Will Deacon wrote:
> John reports that the recently merged commit 1a8e1cef7603 ("arm64: use
> both ZONE_DMA and ZONE_DMA32") breaks the boot on his DB845C board:
> 
>   | Booting Linux on physical CPU 0x0000000000 [0x517f803c]
>   | Linux version 5.4.0-mainline-10675-g957a03b9e38f
>   | Machine model: Thundercomm Dragonboard 845c
>   | [...]
>   | Built 1 zonelists, mobility grouping on.  Total pages: -188245
>   | Kernel command line: earlycon
>   | firmware_class.path=/vendor/firmware/ androidboot.hardware=db845c
>   | init=/init androidboot.boot_devices=soc/1d84000.ufshc
>   | printk.devkmsg=on buildvariant=userdebug root=/dev/sda2
>   | androidboot.bootdevice=1d84000.ufshc androidboot.serialno=c4e1189c
>   | androidboot.baseband=sda
>   | msm_drm.dsi_display0=dsi_lt9611_1080_video_display:
>   | androidboot.slot_suffix=_a skip_initramfs rootwait ro init=/init
>   |
>   | <hangs indefinitely here>
> 
> This is because, when CONFIG_NUMA=n, zone_sizes_init() fails to handle
> memblocks that fall entirely within the ZONE_DMA region and erroneously ends up
> trying to add a negatively-sized region into the following ZONE_DMA32, which is
> later interpreted as a large unsigned region by the core MM code.
> 
> Rework the non-NUMA implementation of zone_sizes_init() so that the start
> address of the memblock being processed is adjusted according to the end of the
> previous zone, which is then range-checked before updating the hole information
> of subsequent zones.
> 
> Cc: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Christoph Hellwig <hch@lst.de>
> Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
> Link: https://lore.kernel.org/lkml/CALAqxLVVcsmFrDKLRGRq7GewcW405yTOxG=KR3csVzQ6bXutkA@mail.gmail.com
> Fixes: 1a8e1cef7603 ("arm64: use both ZONE_DMA and ZONE_DMA32")
> Reported-by: John Stultz <john.stultz@linaro.org>
> Signed-off-by: Will Deacon <will@kernel.org>

Queued for 5.5-rc1. Thanks.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
