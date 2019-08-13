Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A56A8B7BC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 14:00:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MWed3Gfo4Ffc+bom3v+z1VgcOZsA5518Yc68AZ9v3nc=; b=mKK4lnk4aPmCIJ
	5wWd3iApn/Mclw8zyoQllmy64gOop6g4EZnkN09f2WuRRkLBgg002B4eJazMDhzxHsG1bdWP4b14H
	CqiHCJQtSeO7zUuRRO8NwavDSJ1LGt2liVY9wfWEbPTzZFLep+yohEismAVuZfZUJcIzKbtHLVNZp
	D3yVsUMUA0mb7023anqK9HOW+uOLNJSKAruAEpgu1xytAyfnP1WqvdNt+vBVLwEi0sgtp4VoEO8+S
	NhgiTthTgFD8nJuKvzns2Yxp/vEa6Zop8YVMPvIL1cUezIj5Z7VvLpAqkf2Jdi35dsoBhLBLUQZT3
	ysTyAkl5luNhtn+Yn0Hw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxVT9-0003rZ-0R; Tue, 13 Aug 2019 12:00:03 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hxVSv-0003qK-Jb
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 11:59:50 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id F26AF28;
 Tue, 13 Aug 2019 04:59:47 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 15FB23F694; Tue, 13 Aug 2019 04:59:46 -0700 (PDT)
Date: Tue, 13 Aug 2019 12:59:45 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH] arm64: cpufeature: Don't treat granule sizes as strict
Message-ID: <20190813115944.GI62772@arrakis.emea.arm.com>
References: <20190812150225.25386-1-will@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190812150225.25386-1-will@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_045949_691837_49A6899D 
X-CRM114-Status: GOOD (  14.03  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Mark Rutland <mark.rutland@arm.com>, khilman@baylibre.com,
 Suzuki Poulose <suzuki.poulose@arm.com>, linux-arm-kernel@lists.infradead.org,
 Marc Zyngier <maz@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Aug 12, 2019 at 04:02:25PM +0100, Will Deacon wrote:
> If a CPU doesn't support the page size for which the kernel is
> configured, then we will complain and refuse to bring it online. For
> secondary CPUs (and the boot CPU on a system booting with EFI), we will
> also print an error identifying the mismatch.
> 
> Consequently, the only time that the cpufeature code can detect a
> granule size mismatch is for a granule other than the one that is
> currently being used. Although we would rather such systems didn't
> exist, we've unfortunately lost that battle and Kevin reports that
> on his amlogic S922X (odroid-n2 board) we end up warning and taining
> with defconfig because 16k pages are not supported by all of the CPUs.
> 
> In such a situation, we don't actually care about the feature mismatch,
> particularly now that KVM only exposes the sanitised view of the CPU
> registers. Treat the granule fields as non-strict and let Kevin run
> without a tainted kernel.
> 
> Cc: Mark Rutland <mark.rutland@arm.com>
> Cc: Marc Zyngier <maz@kernel.org>
> Cc: Suzuki Poulose <suzuki.poulose@arm.com>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Reported-by: Kevin Hilman <khilman@baylibre.com>
> Signed-off-by: Will Deacon <will@kernel.org>

Queued for 5.3-rc5. Thanks.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
