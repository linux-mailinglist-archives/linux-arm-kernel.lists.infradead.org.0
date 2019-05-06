Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4B9914519
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 May 2019 09:25:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=XoRYqFG3tUGOpPUcRn+V5cgF+PxPLZmDDveG/gjeFzo=; b=LOQwP2iS3x2xSZ7VY6LgCxY1/
	UkWRQR8aSGFkGOgeZGqtblW7DmH2ehadEUSsQWe58I5X6NPbS0ahlVojGfKun0WbJeeNVbcmo+gpp
	tK3qcP9EHEIBib7X33YF6pkYtkOFFTveIYZ47Rf/w4gaBFBYUYmS898GOUEERF/j+o01sclvB2T0r
	4AZo2LFXrlnoeBXTobmGP3LlfuKfr6VriiU3LMMn/GmfAZj0m4No6ZYaOVMtbPAMHGXjv9bWw8sMd
	B7emqZBmDTzPZYdTQ7Tv/bnZDANA3Zj1YJTtz3TMjuq6LeWcIx6ZS4PArT4B/SMAW7ROGG57za9/W
	ofACJmOWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNY0V-0007pu-6m; Mon, 06 May 2019 07:25:51 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNY0O-0007os-Sa
 for linux-arm-kernel@lists.infradead.org; Mon, 06 May 2019 07:25:46 +0000
Received: from DGGEMS405-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id B43233A4564CE369C6FA;
 Mon,  6 May 2019 15:25:33 +0800 (CST)
Received: from [127.0.0.1] (10.210.168.180) by DGGEMS405-HUB.china.huawei.com
 (10.3.19.205) with Microsoft SMTP Server id 14.3.439.0;
 Mon, 6 May 2019 15:25:30 +0800
Subject: Re: [PATCH v2] perf vendor events arm64: Add Cortex-A57 and
 Cortex-A72 events
To: Florian Fainelli <f.fainelli@gmail.com>, <linux-kernel@vger.kernel.org>
References: <20190502234704.7663-1-f.fainelli@gmail.com>
From: John Garry <john.garry@huawei.com>
Message-ID: <5c04ebac-3e3c-fa53-d287-3a602a350091@huawei.com>
Date: Mon, 6 May 2019 08:25:21 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.3.0
MIME-Version: 1.0
In-Reply-To: <20190502234704.7663-1-f.fainelli@gmail.com>
X-Originating-IP: [10.210.168.180]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_002545_159173_8B71562B 
X-CRM114-Status: GOOD (  15.11  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 Arnaldo Carvalho de Melo <acme@kernel.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
 Jiri Olsa <jolsa@redhat.com>,
 "moderated list:ARM PMU PROFILING AND DEBUGGING"
 <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 03/05/2019 00:47, Florian Fainelli wrote:
> The Cortex-A57 and Cortex-A72 both support all ARMv8 recommended events
> up to the RC_ST_SPEC (0x91) event with the exception of:
>
> - L1D_CACHE_REFILL_INNER (0x44)
> - L1D_CACHE_REFILL_OUTER (0x45)
> - L1D_TLB_RD (0x4E)
> - L1D_TLB_WR (0x4F)
> - L2D_TLB_REFILL_RD (0x5C)
> - L2D_TLB_REFILL_WR (0x5D)
> - L2D_TLB_RD (0x5E)
> - L2D_TLB_WR (0x5F)
> - STREX_SPEC (0x6F)
>
> Create an appropriate JSON file for mapping those events and update the
> mapfile.csv for matching the Cortex-A57 and Cortex-A72 MIDR to that
> file.

I suppose you could have also created separate a72 and a57 folders, and 
used a symbolic link for the json. That would have kept the folder 
structure consistent and neat.

>
> Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
Apart from the above:

Reviewed-by: John Garry <john.garry@huawei.com>

> ---
> Changes in v2:
>
> - added a shared directory for both Cortex-A57 and A72 (Will)
> - removed unsupported ARMv8 v3 events (John)
>
>  .../arm/cortex-a57-a72/core-imp-def.json      | 179 ++++++++++++++++++
>  tools/perf/pmu-events/arch/arm64/mapfile.csv  |   2 +
>  2 files changed, 181 insertions(+)
>  create mode 100644 tools/perf/pmu-events/arch/arm64/arm/cortex-a57-a72/core-imp-def.json
>
> diff --git a/tools/perf/pmu-even


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
