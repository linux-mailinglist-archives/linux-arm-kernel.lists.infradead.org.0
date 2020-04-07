Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 253691A0FCA
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Apr 2020 17:00:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=lEXvMZyHTCdpfW6AXo24If1xr+/iPDkk2DjyAntdSZ4=; b=QXWHZAOkCPPgS0OfY8Oq+oxob
	PrF+mAIhPoav72J+fsdXTjHeLR9JPrUdRlelLs68r33WTwU4KPtV5K4GhrGoTLtRZbIW+3IW+p6q2
	y3YHr1945kde9RSx6sk2eZnpeafCYIl+N6gbHWBHtmgOWkc6oKyTxWFIgMnNBS2uq3ZD3h8a1GTxA
	msBTHxeHg8Mhh25FU5pfVKfDUw1yILDOKwu+OMgXSnbUeC3LmcqbMFUlQZk17rBsUwqKhc/ASqFo9
	wVP70kyHODJkrredGb29LzSMUDRwkovhdlLz6W63UJyfbiF+Sav4OJ2HTh4+dP2SCsXhGAAWt594s
	5alcQ9Ezg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLpiC-0000DY-S1; Tue, 07 Apr 2020 15:00:24 +0000
Received: from lhrrgout.huawei.com ([185.176.76.210] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLphv-00067r-G9
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Apr 2020 15:00:09 +0000
Received: from lhreml724-chm.china.huawei.com (unknown [172.18.7.106])
 by Forcepoint Email with ESMTP id 6A8204EF480C674BA4D4;
 Tue,  7 Apr 2020 15:59:56 +0100 (IST)
Received: from [127.0.0.1] (10.210.168.238) by lhreml724-chm.china.huawei.com
 (10.201.108.75) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1913.5; Tue, 7 Apr 2020
 15:59:55 +0100
Subject: Re: [PATCH 0/6] perf/imx_ddr: Add namespace for i.MX8 DDR Perf
To: Joakim Zhang <qiangqing.zhang@nxp.com>
References: <20200222104621.2258-1-qiangqing.zhang@nxp.com>
 <6dbeabcf-c15a-0bbd-cef4-b25d0133854f@huawei.com>
 <DB7PR04MB4618D2E1892120EB659B8695E6EC0@DB7PR04MB4618.eurprd04.prod.outlook.com>
 <2f81eb7a-a6e4-1cc6-cd0a-ca3d749bd552@huawei.com>
 <DB7PR04MB4618C0A8DD9BAB2A529CDCECE6EA0@DB7PR04MB4618.eurprd04.prod.outlook.com>
 <a2cc0772-4f5d-aba3-1f5c-7d4eef7a3f72@huawei.com>
 <DB7PR04MB461803AD15E47AA880F0915DE6EA0@DB7PR04MB4618.eurprd04.prod.outlook.com>
 <55836919-41b5-0834-f7a7-1a2a34535677@huawei.com>
 <bd67910e-1522-39cd-5527-b9b18f3da96d@huawei.com>
 <DB8PR04MB6795996085AD2167E2358907E6C30@DB8PR04MB6795.eurprd04.prod.outlook.com>
From: John Garry <john.garry@huawei.com>
Message-ID: <ccab39b0-c84f-e529-4067-07466b5433a1@huawei.com>
Date: Tue, 7 Apr 2020 15:59:33 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.2
MIME-Version: 1.0
In-Reply-To: <DB8PR04MB6795996085AD2167E2358907E6C30@DB8PR04MB6795.eurprd04.prod.outlook.com>
Content-Language: en-US
X-Originating-IP: [10.210.168.238]
X-ClientProxiedBy: lhreml738-chm.china.huawei.com (10.201.108.188) To
 lhreml724-chm.china.huawei.com (10.201.108.75)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_080007_792426_B8230D6E 
X-CRM114-Status: GOOD (  16.03  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [185.176.76.210 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 Zhangshaokun <zhangshaokun@hisilicon.com>, Jiri Olsa <jolsa@redhat.com>,
 Frank Li <frank.li@nxp.com>, Linuxarm <linuxarm@huawei.com>,
 "acme@kernel.org" <acme@kernel.org>,
 "linux-perf-users@vger.kernel.org" <linux-perf-users@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>, "will@kernel.org" <will@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Joakim,

> 
> It can't work on my platform:
> 
> root@imx8mmevk:~# cat /sys/bus/event_source/devices/imx8_ddr0/identifier
> i.mx8mm
> 
> 
> root@imx8mmevk:~# ./perf list metric
> List of pre-defined events (to be used in -e):
> 
> Metrics:
> 
>    imx8mm_ddr0_read.all
>         [Bytes of all masters read from ddr0. Unit: uncore_i.mx8,ddrc ]

I think I simply missed something in jevents.c . Can you add this, 
regenerate, and retry:

diff --git a/tools/perf/pmu-events/jevents.c 
b/tools/perf/pmu-events/jevents.c
index 675aec9881ce..16dcf00c792a 100644
--- a/tools/perf/pmu-events/jevents.c
+++ b/tools/perf/pmu-events/jevents.c
@@ -258,6 +258,7 @@ static struct map {
        { "hisi_sccl,l3c", "hisi_sccl,l3c" },
        /* it's not realistic to keep adding these, we need something 
more scalable ... */
        { "smmuv3_pmcg", "smmuv3_pmcg" },
+       { "imx8_ddr", "imx8_ddr" },
        { "L3PMC", "amd_l3" },
        {}


> 
> 
> root@imx8mmevk:~# ./perf stat -a -I 1000 -M imx8mm_ddr0_read.all
> event syntax error: ''
>                        \___ parser error
> 
>   Usage: perf stat [<options>] [<command>]
> 
>      -M, --metrics <metric/metric group list>
>                            monitor specified metrics or metric groups (separated by ,)
> 
> However, it can work on branch: private-topic-perf-5.6-pmu-events-upstream-v2. What changes have you made compared to last?
> 
> Could you help do below change? Since some Socs may have two ddr controller(ddr0/ddr1) with the same event code.

The perf tool can handle that. So just run perf with -v option, and it 
will show event count breakdown per PMU, like this:

root@ubuntu:/# ./perf stat -v -e smmuv3_pmcg.l1_tlb sleep 1
Using CPUID 0x00000000480fd010
Using SYSID HIP08
-> smmuv3_pmcg_200100020/event=0x8a/
-> smmuv3_pmcg_200140020/event=0x8a/
-> smmuv3_pmcg_100020/event=0x8a/
-> smmuv3_pmcg_140020/event=0x8a/
-> smmuv3_pmcg_200148020/event=0x8a/
-> smmuv3_pmcg_148020/event=0x8a/
smmuv3_pmcg.l1_tlb: 0 1001221690 1001221690
smmuv3_pmcg.l1_tlb: 0 1001220090 1001220090
smmuv3_pmcg.l1_tlb: 101 1001219660 1001219660
smmuv3_pmcg.l1_tlb: 0 1001219010 1001219010
smmuv3_pmcg.l1_tlb: 0 1001218360 1001218360
smmuv3_pmcg.l1_tlb: 134 1001217850 1001217850


Here smmuv3_pmcg_200100020, smmuv3_pmcg_200140020, etc are all instances 
of the same PMU, like your DDRC.

And if you want to run just for a single PMU, try like:

./perf stat -e smmuv3_pmcg_200148020/smmuv3_pmcg.l1_tlb/

[thanks for jirka for that hint :) ]

Thanks,
John

> Delete file: tools/perf/pmu-events/arch/arm64/freescale/imx8mm/sys/ddrc.json
> Replace file: tools/perf/pmu-events/arch/arm64/freescale/imx8mm/sys/metrics.json, put all events into metric.
> [
>     {
> 	"PublicDescription": "ddr0 cycles event",
> 	"MetricName": "imx8mm_ddr0.cycles",
> 	"MetricExpr": "imx8_ddr0\\/cycles\\/",
> 	"Unit": "imx8_ddr",
> 	"Compat": "i.mx8mm"
>     },
>     {
> 	"PublicDescription": "ddr0 read-cycles event",
> 	"MetricName": "imx8mm_ddr0.read_cycles",
> 	"MetricExpr": "imx8_ddr0\\/read\\-cycles\\/",
> 	"Unit": "imx8_ddr",
> 	"Compat": "i.mx8mm"
>     },
>     {
> 	"PublicDescription": "ddr0 write-cycles event",
> 	"MetricName": "imx8mm_ddr0.write_cycles",
> 	"MetricExpr": "imx8_ddr0\\/write\\-cycles\\/",
> 	"Unit": "imx8_ddr",
> 	"Compat": "i.mx8mm"
>     },
>     {
> 	"PublicDescription": "ddr0 read event",
> 	"MetricName": "imx8mm_ddr0.read",
> 	"MetricExpr": "imx8_ddr0\\/read\\/",
> 	"Unit": "imx8_ddr",
> 	"Compat": "i.mx8mm"
>     },
>     {
> 	"PublicDescription": "ddr0 write event",
> 	"MetricName": "imx8mm_ddr0.write",
> 	"MetricExpr": "imx8_ddr0\\/write\\/",
> 	"Unit": "imx8_ddr",
> 	"Compat": "i.mx8mm"
>     },
>     {
> 	"PublicDescription": "bytes all masters read from ddr0 based on read-cycles event.",
> 	"MetricName": "imx8mm_ddr0_read.all",
> 	"MetricExpr": "( imx8_ddr0\\/read\\-cycles\\/ ) * 4 * 4",
> 	"ScaleUnit": "9.765625e-4MB",
> 	"Unit": "imx8_ddr",
> 	"Compat": "i.mx8mm"
>      },
>     {
> 	"PublicDescription": "bytes all masters write to ddr0 based on read-cycles event.",
> 	"MetricName": "imx8mm_ddr0_write.all",
> 	"MetricExpr": "( imx8_ddr0\\/write\\-cycles\\/ ) * 4 * 4",
> 	"ScaleUnit": "9.765625e-4MB",
> 	"Unit": "imx8_ddr",
> 	"Compat": "i.mx8mm"
>      }
> ]
> 
> Thanks.
> 
> Best Regards,
> Joakim Zhang
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
