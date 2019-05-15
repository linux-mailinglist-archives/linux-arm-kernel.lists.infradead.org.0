Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BBB91EA93
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 May 2019 11:02:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1I1lh/kIpBg02LQSaeIFA7nx/MTqlgiPTtOph5d+9Ck=; b=OwCzAC/YSSpbgS4N4vksXqXZC
	3hZSLXblyAbyxqq0hhVhfaAEpkzd5OQ/bmXTyzo4qhQAuaQkvchNOxTnvFjYoN4M7EUPqXgeWNXgK
	uEWakeQL5tha2b0tn/8ngEwjGFRlk50cpSpp2f++WZKusVYivPXQWvcvKRfxfz9gszinH6RkuuHPb
	3RYKcxtydJjZY9BrV72/saBPAXjwRFuaudP6lccOhrOVCfaDXmjoJ+Q7QtMttflwH0jzueQme518A
	La6WiPAA6g6sGBHJ7dQ9duYxppV405pk8T60/MJzul6VRr/x7+i3W+juKem3llzAZ7UTik18/2KCc
	60YBMm//w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQpo0-0000yk-Mh; Wed, 15 May 2019 09:02:32 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQpns-0000y2-Q7
 for linux-arm-kernel@lists.infradead.org; Wed, 15 May 2019 09:02:26 +0000
Received: from DGGEMS414-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id A5EA2FF5CA70894C1290;
 Wed, 15 May 2019 17:02:12 +0800 (CST)
Received: from [127.0.0.1] (10.202.227.238) by DGGEMS414-HUB.china.huawei.com
 (10.3.19.214) with Microsoft SMTP Server id 14.3.439.0;
 Wed, 15 May 2019 17:02:09 +0800
Subject: Re: [PATCH v2 1/3] perf vendor events arm64: Remove [[:xdigit:]]
 wildcard
To: Florian Fainelli <f.fainelli@gmail.com>, <linux-kernel@vger.kernel.org>
References: <20190513202522.9050-1-f.fainelli@gmail.com>
 <20190513202522.9050-2-f.fainelli@gmail.com>
From: John Garry <john.garry@huawei.com>
Message-ID: <153ce6d0-d4dd-ef2f-9fd7-47335cfeb67b@huawei.com>
Date: Wed, 15 May 2019 10:02:01 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.3.0
MIME-Version: 1.0
In-Reply-To: <20190513202522.9050-2-f.fainelli@gmail.com>
X-Originating-IP: [10.202.227.238]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_020225_075209_5D777B6C 
X-CRM114-Status: GOOD (  13.89  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
 Catalin Marinas <catalin.marinas@arm.com>, Will
 Deacon <will.deacon@arm.com>, Arnaldo Carvalho de Melo <acme@kernel.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>,
 Ganapatrao Kulkarni <ganapatrao.kulkarni@cavium.com>,
 Namhyung Kim <namhyung@kernel.org>,
 Sean V Kelley <seanvk.dev@oregontracks.org>, Jiri Olsa <jolsa@redhat.com>,
 "moderated
 list:ARM PMU PROFILING AND DEBUGGING" <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 13/05/2019 21:25, Florian Fainelli wrote:
> ARM64's implementation of get_cpuidr_str() masks out the revision bits
> [3:0] while reading the CPU identifier, there is no need for the
> [[:xdigit:]] wildcard.
>
> Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
> ---
>  tools/perf/pmu-events/arch/arm64/mapfile.csv | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/tools/perf/pmu-events/arch/arm64/mapfile.csv b/tools/perf/pmu-events/arch/arm64/mapfile.csv
> index 59cd8604b0bd..da5ff2204bf6 100644
> --- a/tools/perf/pmu-events/arch/arm64/mapfile.csv
> +++ b/tools/perf/pmu-events/arch/arm64/mapfile.csv
> @@ -12,7 +12,7 @@
>  #

JFYI, this was discussed before, but this a53 entry seemed to make it 
though:
https://lkml.org/lkml/2018/3/7/1236

>  #
>  #Family-model,Version,Filename,EventType
> -0x00000000410fd03[[:xdigit:]],v1,arm/cortex-a53,core
> +0x00000000410fd030,v1,arm/cortex-a53,core
>  0x00000000420f5160,v1,cavium/thunderx2,core
>  0x00000000430f0af0,v1,cavium/thunderx2,core
>  0x00000000480fd010,v1,hisilicon/hip08,core
>



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
