Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E31D51ACCD2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 18:11:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=UmJYENNmFV12e5gcMXPa8RqXRjIoBUIWhIzOgXaPXK8=; b=mxi2Q8i8Er2VBL0iB2LNpt4iH
	preBxML0a3dNLfq0FRB7NcFxbdcs/1ms6p5NGA2c6zjFDPYpKpZFH8rq8tbUCUGTSC3bQK2MvKgxG
	J71ZixymG8osR/wPrpt2WrDDiDMSSSNzhsZV2U3A+HzpPdoVF/QcGhFbusD9X5CQQZ1dV+/euwFAE
	MzTvgAT6eUfVVN0YBYS+ROJ5ypNLtj4Gn5FZMXuBrnyFarF6PtylP0zI3WO0d/0pqRAaeYWK9pO9m
	nRXWnOm0OAFTkaP1NuoN3aJF/9fedkL5A4Wyh1cZaV2xWhWY8jX2xwy141Nj7uqYpXua8sPZ6mfhu
	Bt6xqBslg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP76j-00033P-D2; Thu, 16 Apr 2020 16:11:17 +0000
Received: from lhrrgout.huawei.com ([185.176.76.210] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP76c-00031j-7k
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 16:11:12 +0000
Received: from lhreml724-chm.china.huawei.com (unknown [172.18.7.107])
 by Forcepoint Email with ESMTP id 3749EBF174D47BC31CD5;
 Thu, 16 Apr 2020 17:10:52 +0100 (IST)
Received: from [127.0.0.1] (10.210.169.188) by lhreml724-chm.china.huawei.com
 (10.201.108.75) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1913.5; Thu, 16 Apr
 2020 17:10:51 +0100
Subject: Re: [PATCH 0/6] perf/imx_ddr: Add namespace for i.MX8 DDR Perf
To: Joakim Zhang <qiangqing.zhang@nxp.com>, <irogers@google.com>
References: <20200222104621.2258-1-qiangqing.zhang@nxp.com>
 <DB7PR04MB4618D2E1892120EB659B8695E6EC0@DB7PR04MB4618.eurprd04.prod.outlook.com>
 <2f81eb7a-a6e4-1cc6-cd0a-ca3d749bd552@huawei.com>
 <DB7PR04MB4618C0A8DD9BAB2A529CDCECE6EA0@DB7PR04MB4618.eurprd04.prod.outlook.com>
 <a2cc0772-4f5d-aba3-1f5c-7d4eef7a3f72@huawei.com>
 <DB7PR04MB461803AD15E47AA880F0915DE6EA0@DB7PR04MB4618.eurprd04.prod.outlook.com>
 <55836919-41b5-0834-f7a7-1a2a34535677@huawei.com>
 <bd67910e-1522-39cd-5527-b9b18f3da96d@huawei.com>
 <DB8PR04MB6795996085AD2167E2358907E6C30@DB8PR04MB6795.eurprd04.prod.outlook.com>
 <ccab39b0-c84f-e529-4067-07466b5433a1@huawei.com>
 <VI1PR04MB68000808CEE4BC23403C35A0E6C00@VI1PR04MB6800.eurprd04.prod.outlook.com>
 <ca2db002-975a-ffe0-2dfc-c85f4e6205bb@huawei.com>
 <VI1PR04MB6800F2A5949F0AFAF2E82CE0E6C00@VI1PR04MB6800.eurprd04.prod.outlook.com>
 <0b3999b8-c307-6b4a-1a1b-e90b45f50b61@huawei.com>
 <DB8PR04MB67957F63165ACC0483F6AE39E6D80@DB8PR04MB6795.eurprd04.prod.outlook.com>
From: John Garry <john.garry@huawei.com>
Message-ID: <8341b035-2fac-52dd-45d1-2bf6f5ea4ba4@huawei.com>
Date: Thu, 16 Apr 2020 17:10:20 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.2
MIME-Version: 1.0
In-Reply-To: <DB8PR04MB67957F63165ACC0483F6AE39E6D80@DB8PR04MB6795.eurprd04.prod.outlook.com>
Content-Language: en-US
X-Originating-IP: [10.210.169.188]
X-ClientProxiedBy: lhreml701-chm.china.huawei.com (10.201.108.50) To
 lhreml724-chm.china.huawei.com (10.201.108.75)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_091110_425034_561DF439 
X-CRM114-Status: GOOD (  11.53  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [185.176.76.210 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 Zhangshaokun <zhangshaokun@hisilicon.com>, "will@kernel.org" <will@kernel.org>,
 Linuxarm <linuxarm@huawei.com>, "acme@kernel.org" <acme@kernel.org>,
 "linux-perf-users@vger.kernel.org" <linux-perf-users@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>, Jiri Olsa <jolsa@redhat.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

+ Ian (please check the patch at the bottom, thanks)

On 16/04/2020 08:15, Joakim Zhang wrote:
>> ?
>>
>> If that doesn't work, then I'll try this myself.
> Hi John,
> 
> It still cannot work with this code change.
> 

So I got a SMMUv3 PMCG test metric working here:

https://github.com/hisilicon/kernel-dev/commits/private-topic-perf-5.7-sys-pmu-events-v1-debug

as follows:

john@ubuntu:~/perf list metric

List of pre-defined events (to be used in -e):

Metrics:

   smmuv3_pmcg.fake
        [SMMUv3 PMCG fake metric]

john@ubuntu:~/sudo ./perf stat -a -M smmuv3_pmcg.fake sleep 1

  Performance counter stats for 'system wide':

    531510      smmuv3_pmcg.transaction  (49.90%)
124914193      smmuv3_pmcg.cycles       (49.90%)
    531331      smmuv3_pmcg.transaction  (50.29%)
124879887      smmuv3_pmcg.cycles       (50.29%)
    531269      smmuv3_pmcg.transaction  (50.45%)
124867388      smmuv3_pmcg.cycles       (50.45%)
    531372      smmuv3_pmcg.transaction  (50.45%)
124896723      smmuv3_pmcg.cycles       (50.45%)
    531431      smmuv3_pmcg.transaction  (50.12%)
124901700      smmuv3_pmcg.cycles       (50.12%)
    531574      smmuv3_pmcg.transaction  (49.72%)
124924231      smmuv3_pmcg.cycles       (49.72%)
    531598      smmuv3_pmcg.transaction  (49.56%)
124916914      smmuv3_pmcg.cycles       (49.56%)
    531440      smmuv3_pmcg.transaction  (49.56%)
124902473      smmuv3_pmcg.cycles       (49.56%)

        1.001167246 seconds time elapsed

So you can compare this to yours.

I did have to fix what looks like a bug in mainline on that branch:

--->8-----

perf parse-events: Fix comparison of evsel and leader pmu name

Since we now strdup() the pmu name for the event selector, use strcmp()
instead of pointer equality for comparison.

Fixes: d4953f7 ("perf parse-events: Fix 3 use after frees found with 
clang ASANutil/parse-events.c")
Signed-off-by: John Garry <john.garry@huawei.com>
---
tools/perf/util/parse-events.c
@@ -1629,7 +1629,7 @@ parse_events__set_leader_for_uncore_aliase(char 
*name, struct list_head *list,
		 * event. That can be used to distinguish the leader from
		 * other members, even they have the same event name.
		 */
		if ((leader != evsel) && (leader->pmu_name == evsel->pmu_name)) {
		if ((leader != evsel) && !strcmp(leader->pmu_name, evsel->pmu_name)) {
			is_leader = false;
			continue;
		}


---8<

Without it, I would get a spew of these:

assertion failed at util/parse-events.c:1637

@Ian, does this change look right? I am not intimately familiar with 
that code.

Thanks,
John



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
