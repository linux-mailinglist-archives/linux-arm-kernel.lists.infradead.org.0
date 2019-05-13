Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B8CC1B4C4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 13:19:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Io59MIK5AuHOtzaC5bWXAKST/5g3MGJQD0clHSedFJQ=; b=ruxtpMJ28ZZAPY
	SAmE51QR3Wp5ugl2hUJLLOHEOPT+OpOU+3A9Zv6pAnViLqzYALl/9WuQq3/Kjg9utZV42z8JsYyoC
	0Zn4iIv3H6lNqEVL5j7ouCXVhpfcLVNExqPtBQOJwM/yXDSNOczUBKX31/hipkmu+1gVj+eQhbPja
	PiZvXp2tCZVhaZB58JOq44+1MFcyNyj5kdPp0bQpLDpNZiKpt+siolOaITk2PwWvcaYoxoNZagxbD
	f6KxFRIV7wCWjONxpHChewrJHMuE7Dca6nQdHTmz2DeYN6971VEhyWp9a+UsH7ethFpeSlMnIcx9y
	gwFY9tlB4yzlSE+Gi8mA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQ8ze-0003q6-4D; Mon, 13 May 2019 11:19:42 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQ8zX-0003pl-3o
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 11:19:36 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8FC0D374;
 Mon, 13 May 2019 04:19:34 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7B8543F703;
 Mon, 13 May 2019 04:19:32 -0700 (PDT)
Date: Mon, 13 May 2019 12:19:30 +0100
From: Will Deacon <will.deacon@arm.com>
To: Florian Fainelli <f.fainelli@gmail.com>
Subject: Re: [PATCH v2] perf vendor events arm64: Add Cortex-A57 and
 Cortex-A72 events
Message-ID: <20190513111930.GD6711@fuggles.cambridge.arm.com>
References: <20190502234704.7663-1-f.fainelli@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190502234704.7663-1-f.fainelli@gmail.com>
User-Agent: Mutt/1.11.1+86 (6f28e57d73f2) ()
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_041935_168881_DF958011 
X-CRM114-Status: GOOD (  12.45  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Catalin Marinas <catalin.marinas@arm.com>, john.garry@huawei.com,
 linux-kernel@vger.kernel.org, Arnaldo Carvalho de Melo <acme@kernel.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
 Jiri Olsa <jolsa@redhat.com>,
 "moderated list:ARM PMU PROFILING AND DEBUGGING"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 02, 2019 at 04:47:04PM -0700, Florian Fainelli wrote:
> diff --git a/tools/perf/pmu-events/arch/arm64/mapfile.csv b/tools/perf/pmu-events/arch/arm64/mapfile.csv
> index 59cd8604b0bd..69a73957e35c 100644
> --- a/tools/perf/pmu-events/arch/arm64/mapfile.csv
> +++ b/tools/perf/pmu-events/arch/arm64/mapfile.csv
> @@ -13,6 +13,8 @@
>  #
>  #Family-model,Version,Filename,EventType
>  0x00000000410fd03[[:xdigit:]],v1,arm/cortex-a53,core
> +0x00000000411fd07[[:xdigit:]],v1,arm/cortex-a57-a72,core

The 4-bit variant field should be 0x0, not 0x1. In fact, I think we could do
the same for the revision field too and use 0x0 instead of [[:xdigit:]] for
Cortex-A53, no? Our implementation of get_cpuid_str() masks these out for us.

Am I missing something?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
