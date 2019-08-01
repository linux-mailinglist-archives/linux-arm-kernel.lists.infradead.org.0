Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C03667DC5F
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 15:15:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ikFFLiI3S58NbHkFZ6tY4+OuINpBeSi6hFRViHoYJXU=; b=fa2Xp0m6+NMB8K
	rV8iBTXbtq9UAh+io0XRd+Uc/NLYs69X8kLYkJup6DQK69/WSoGL45w3/oIeZlAYKD0lXpJTYQDdE
	y82pRbiyWBe408IoJ6kdFXvzAGvsQEIoYRAsBK7da3vPZ3XTIP2gCSt59S82jxzdgc47KEFWfrul9
	jZz53y6be/MSdm14FZaV3ZFjkmJemv+0/F3skeZ6R+MNGZF86NriV5kqBt34fffU1f1ghMw+iOdsK
	k34bfTawrQXXPNM/UgPwg2In0S4PRqX/IiTVC5mZW43N0UrthMOGcsCV8H0I35xEI2oPQm5wDJQRL
	zWKAJlrh/Z1RY5Mp0ROQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htAvt-00021E-D3; Thu, 01 Aug 2019 13:15:49 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1htAvh-00020N-QN
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 13:15:39 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0A16F337;
 Thu,  1 Aug 2019 06:15:35 -0700 (PDT)
Received: from e107155-lin (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 216BE3F575;
 Thu,  1 Aug 2019 06:15:34 -0700 (PDT)
Date: Thu, 1 Aug 2019 14:15:27 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>
Subject: Re: [PATCH] ARM: dts: vexpress: Add missing newline at end of file
Message-ID: <20190801131527.GA23424@e107155-lin>
References: <20190617143547.4721-1-geert+renesas@glider.be>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190617143547.4721-1-geert+renesas@glider.be>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_061537_942819_F9D91C42 
X-CRM114-Status: GOOD (  10.52  )
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Liviu Dudau <liviu.dudau@arm.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Sudeep Holla <sudeep.holla@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 17, 2019 at 04:35:47PM +0200, Geert Uytterhoeven wrote:
> "git diff" says:
>
>     \ No newline at end of file
>
> after modifying the file.
>

Sorry for missing this earlier. Just found this unread and thought of
applying it to v5.4

However doing a quick check on the tree revealed more file and wonder
why you are addressing only handful of them. Why not all in one go ?
My script showed the following files:

Documentation/ABI/testing/sysfs-bus-iio-dfsdm-adc-stm32
arch/arm/boot/dts/vexpress-v2m.dtsi
drivers/media/dvb-frontends/cxd2880/Kconfig
drivers/parport/Makefile
tools/perf/pmu-events/arch/powerpc/power9/cache.json
tools/perf/pmu-events/arch/powerpc/power9/floating-point.json
tools/perf/pmu-events/arch/powerpc/power9/frontend.json
tools/perf/pmu-events/arch/powerpc/power9/marked.json
tools/perf/pmu-events/arch/powerpc/power9/memory.json
tools/perf/pmu-events/arch/powerpc/power9/other.json
tools/perf/pmu-events/arch/powerpc/power9/pipeline.json
tools/perf/pmu-events/arch/powerpc/power9/pmc.json
tools/perf/pmu-events/arch/powerpc/power9/translation.json
tools/perf/pmu-events/arch/x86/bonnell/cache.json
tools/perf/pmu-events/arch/x86/bonnell/floating-point.json
tools/perf/pmu-events/arch/x86/bonnell/frontend.json
tools/perf/pmu-events/arch/x86/bonnell/memory.json
tools/perf/pmu-events/arch/x86/bonnell/other.json
tools/perf/pmu-events/arch/x86/bonnell/pipeline.json
tools/perf/pmu-events/arch/x86/bonnell/virtual-memory.json
tools/perf/pmu-events/arch/x86/broadwell/cache.json
tools/perf/pmu-events/arch/x86/broadwell/floating-point.json
tools/perf/pmu-events/arch/x86/broadwell/frontend.json
tools/perf/pmu-events/arch/x86/broadwell/memory.json
tools/perf/pmu-events/arch/x86/broadwell/other.json
tools/perf/pmu-events/arch/x86/broadwell/pipeline.json
tools/perf/pmu-events/arch/x86/broadwell/uncore.json
tools/perf/pmu-events/arch/x86/broadwell/virtual-memory.json
tools/perf/pmu-events/arch/x86/broadwellde/cache.json
tools/perf/pmu-events/arch/x86/broadwellde/floating-point.json
tools/perf/pmu-events/arch/x86/broadwellde/frontend.json
tools/perf/pmu-events/arch/x86/broadwellde/memory.json
tools/perf/pmu-events/arch/x86/broadwellde/other.json
tools/perf/pmu-events/arch/x86/broadwellde/pipeline.json
tools/perf/pmu-events/arch/x86/broadwellde/virtual-memory.json
tools/perf/pmu-events/arch/x86/broadwellx/cache.json
tools/perf/pmu-events/arch/x86/broadwellx/floating-point.json
tools/perf/pmu-events/arch/x86/broadwellx/frontend.json
tools/perf/pmu-events/arch/x86/broadwellx/memory.json
tools/perf/pmu-events/arch/x86/broadwellx/other.json
tools/perf/pmu-events/arch/x86/broadwellx/pipeline.json
tools/perf/pmu-events/arch/x86/broadwellx/virtual-memory.json
tools/perf/pmu-events/arch/x86/cascadelakex/cache.json
tools/perf/pmu-events/arch/x86/cascadelakex/floating-point.json
tools/perf/pmu-events/arch/x86/cascadelakex/frontend.json
tools/perf/pmu-events/arch/x86/cascadelakex/memory.json
tools/perf/pmu-events/arch/x86/cascadelakex/other.json
tools/perf/pmu-events/arch/x86/cascadelakex/pipeline.json
tools/perf/pmu-events/arch/x86/cascadelakex/virtual-memory.json
tools/perf/pmu-events/arch/x86/goldmont/cache.json
tools/perf/pmu-events/arch/x86/goldmont/frontend.json
tools/perf/pmu-events/arch/x86/goldmont/memory.json
tools/perf/pmu-events/arch/x86/goldmont/other.json
tools/perf/pmu-events/arch/x86/goldmont/pipeline.json
tools/perf/pmu-events/arch/x86/goldmont/virtual-memory.json
tools/perf/pmu-events/arch/x86/goldmontplus/cache.json
tools/perf/pmu-events/arch/x86/goldmontplus/frontend.json
tools/perf/pmu-events/arch/x86/goldmontplus/memory.json
tools/perf/pmu-events/arch/x86/goldmontplus/other.json
tools/perf/pmu-events/arch/x86/goldmontplus/pipeline.json
tools/perf/pmu-events/arch/x86/goldmontplus/virtual-memory.json
tools/perf/pmu-events/arch/x86/haswell/cache.json
tools/perf/pmu-events/arch/x86/haswell/floating-point.json
tools/perf/pmu-events/arch/x86/haswell/frontend.json
tools/perf/pmu-events/arch/x86/haswell/memory.json
tools/perf/pmu-events/arch/x86/haswell/other.json
tools/perf/pmu-events/arch/x86/haswell/pipeline.json
tools/perf/pmu-events/arch/x86/haswell/uncore.json
tools/perf/pmu-events/arch/x86/haswell/virtual-memory.json
tools/perf/pmu-events/arch/x86/haswellx/cache.json
tools/perf/pmu-events/arch/x86/haswellx/floating-point.json
tools/perf/pmu-events/arch/x86/haswellx/frontend.json
tools/perf/pmu-events/arch/x86/haswellx/memory.json
tools/perf/pmu-events/arch/x86/haswellx/other.json
tools/perf/pmu-events/arch/x86/haswellx/pipeline.json
tools/perf/pmu-events/arch/x86/haswellx/virtual-memory.json
tools/perf/pmu-events/arch/x86/ivybridge/cache.json
tools/perf/pmu-events/arch/x86/ivybridge/floating-point.json
tools/perf/pmu-events/arch/x86/ivybridge/frontend.json
tools/perf/pmu-events/arch/x86/ivybridge/memory.json
tools/perf/pmu-events/arch/x86/ivybridge/other.json
tools/perf/pmu-events/arch/x86/ivybridge/pipeline.json
tools/perf/pmu-events/arch/x86/ivybridge/uncore.json
tools/perf/pmu-events/arch/x86/ivybridge/virtual-memory.json
tools/perf/pmu-events/arch/x86/ivytown/cache.json
tools/perf/pmu-events/arch/x86/ivytown/floating-point.json
tools/perf/pmu-events/arch/x86/ivytown/frontend.json
tools/perf/pmu-events/arch/x86/ivytown/memory.json
tools/perf/pmu-events/arch/x86/ivytown/other.json
tools/perf/pmu-events/arch/x86/ivytown/pipeline.json
tools/perf/pmu-events/arch/x86/ivytown/virtual-memory.json
tools/perf/pmu-events/arch/x86/jaketown/cache.json
tools/perf/pmu-events/arch/x86/jaketown/floating-point.json
tools/perf/pmu-events/arch/x86/jaketown/frontend.json
tools/perf/pmu-events/arch/x86/jaketown/memory.json
tools/perf/pmu-events/arch/x86/jaketown/other.json
tools/perf/pmu-events/arch/x86/jaketown/pipeline.json
tools/perf/pmu-events/arch/x86/jaketown/virtual-memory.json
tools/perf/pmu-events/arch/x86/knightslanding/cache.json
tools/perf/pmu-events/arch/x86/knightslanding/frontend.json
tools/perf/pmu-events/arch/x86/knightslanding/memory.json
tools/perf/pmu-events/arch/x86/knightslanding/pipeline.json
tools/perf/pmu-events/arch/x86/knightslanding/virtual-memory.json
tools/perf/pmu-events/arch/x86/nehalemep/cache.json
tools/perf/pmu-events/arch/x86/nehalemep/floating-point.json
tools/perf/pmu-events/arch/x86/nehalemep/frontend.json
tools/perf/pmu-events/arch/x86/nehalemep/memory.json
tools/perf/pmu-events/arch/x86/nehalemep/other.json
tools/perf/pmu-events/arch/x86/nehalemep/pipeline.json
tools/perf/pmu-events/arch/x86/nehalemep/virtual-memory.json
tools/perf/pmu-events/arch/x86/nehalemex/cache.json
tools/perf/pmu-events/arch/x86/nehalemex/floating-point.json
tools/perf/pmu-events/arch/x86/nehalemex/frontend.json
tools/perf/pmu-events/arch/x86/nehalemex/memory.json
tools/perf/pmu-events/arch/x86/nehalemex/other.json
tools/perf/pmu-events/arch/x86/nehalemex/pipeline.json
tools/perf/pmu-events/arch/x86/nehalemex/virtual-memory.json
tools/perf/pmu-events/arch/x86/sandybridge/cache.json
tools/perf/pmu-events/arch/x86/sandybridge/floating-point.json
tools/perf/pmu-events/arch/x86/sandybridge/frontend.json
tools/perf/pmu-events/arch/x86/sandybridge/memory.json
tools/perf/pmu-events/arch/x86/sandybridge/other.json
tools/perf/pmu-events/arch/x86/sandybridge/pipeline.json
tools/perf/pmu-events/arch/x86/sandybridge/uncore.json
tools/perf/pmu-events/arch/x86/sandybridge/virtual-memory.json
tools/perf/pmu-events/arch/x86/silvermont/cache.json
tools/perf/pmu-events/arch/x86/silvermont/frontend.json
tools/perf/pmu-events/arch/x86/silvermont/memory.json
tools/perf/pmu-events/arch/x86/silvermont/other.json
tools/perf/pmu-events/arch/x86/silvermont/pipeline.json
tools/perf/pmu-events/arch/x86/silvermont/virtual-memory.json
tools/perf/pmu-events/arch/x86/skylake/cache.json
tools/perf/pmu-events/arch/x86/skylake/floating-point.json
tools/perf/pmu-events/arch/x86/skylake/frontend.json
tools/perf/pmu-events/arch/x86/skylake/memory.json
tools/perf/pmu-events/arch/x86/skylake/other.json
tools/perf/pmu-events/arch/x86/skylake/pipeline.json
tools/perf/pmu-events/arch/x86/skylake/uncore.json
tools/perf/pmu-events/arch/x86/skylake/virtual-memory.json
tools/perf/pmu-events/arch/x86/skylakex/cache.json
tools/perf/pmu-events/arch/x86/skylakex/floating-point.json
tools/perf/pmu-events/arch/x86/skylakex/frontend.json
tools/perf/pmu-events/arch/x86/skylakex/memory.json
tools/perf/pmu-events/arch/x86/skylakex/other.json
tools/perf/pmu-events/arch/x86/skylakex/pipeline.json
tools/perf/pmu-events/arch/x86/skylakex/virtual-memory.json
tools/perf/pmu-events/arch/x86/westmereep-dp/cache.json
tools/perf/pmu-events/arch/x86/westmereep-dp/floating-point.json
tools/perf/pmu-events/arch/x86/westmereep-dp/frontend.json
tools/perf/pmu-events/arch/x86/westmereep-dp/memory.json
tools/perf/pmu-events/arch/x86/westmereep-dp/other.json
tools/perf/pmu-events/arch/x86/westmereep-dp/pipeline.json
tools/perf/pmu-events/arch/x86/westmereep-dp/virtual-memory.json
tools/perf/pmu-events/arch/x86/westmereep-sp/cache.json
tools/perf/pmu-events/arch/x86/westmereep-sp/floating-point.json
tools/perf/pmu-events/arch/x86/westmereep-sp/frontend.json
tools/perf/pmu-events/arch/x86/westmereep-sp/memory.json
tools/perf/pmu-events/arch/x86/westmereep-sp/other.json
tools/perf/pmu-events/arch/x86/westmereep-sp/pipeline.json
tools/perf/pmu-events/arch/x86/westmereep-sp/virtual-memory.json
tools/perf/pmu-events/arch/x86/westmereex/cache.json
tools/perf/pmu-events/arch/x86/westmereex/floating-point.json
tools/perf/pmu-events/arch/x86/westmereex/frontend.json
tools/perf/pmu-events/arch/x86/westmereex/memory.json
tools/perf/pmu-events/arch/x86/westmereex/other.json
tools/perf/pmu-events/arch/x86/westmereex/pipeline.json
tools/perf/pmu-events/arch/x86/westmereex/virtual-memory.json
tools/perf/scripts/python/bin/intel-pt-events-report
tools/power/cpupower/bench/cpufreq-bench_plot.sh
tools/power/cpupower/bench/cpufreq-bench_script.sh

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
