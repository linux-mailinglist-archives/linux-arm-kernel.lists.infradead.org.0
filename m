Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9419E1B2601
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 14:29:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=q2iDp+HO4wp01hvsPPhkzHJmi/zAOqDbAs6d1P6lLj0=; b=L/A8XXn9VH6boEzLWo2hybz+m
	JK7Nul57jZuO1IKlcu4NwsToJyHjE9fIBHJpapKug4ZwoeOVTqXhctLxfoZQ8JsgbeeZk3eU2F8sl
	RFLeoEGNG4KOUOZJPpZvTQ0Y/UZYbX0l7vBmvu0G6RvEHvpeEuS7bvMgS+nh4B+v5oHRtIRQ1t+jD
	Kn+8R2Qn3KqXOZ8kwXGytjJHu2nv3mhbGTmaee/mCRVsZXGrRXLkoX+IDvEv1kSQOCD2vKt2hu52r
	cAPugbv1nB+67C8pyo8To+p5kjqUWVvlFUDXO7y2USOlqaL7zh9rDt8h1NbbAJ65YoOijLjCAK0iM
	KeyJnRJCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQs1Q-0005W5-PP; Tue, 21 Apr 2020 12:29:04 +0000
Received: from lhrrgout.huawei.com ([185.176.76.210] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQs1H-0005Tt-2e
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 12:28:56 +0000
Received: from lhreml724-chm.china.huawei.com (unknown [172.18.7.106])
 by Forcepoint Email with ESMTP id B77A8264D657765C6710;
 Tue, 21 Apr 2020 13:28:43 +0100 (IST)
Received: from [127.0.0.1] (10.210.168.25) by lhreml724-chm.china.huawei.com
 (10.201.108.75) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1913.5; Tue, 21 Apr
 2020 13:28:42 +0100
Subject: Re: [RFC PATCH v2 09/13] perf vendor events: Add JSON metrics for
 imx8mm DDR Perf
To: Joakim Zhang <qiangqing.zhang@nxp.com>, "peterz@infradead.org"
 <peterz@infradead.org>, "mingo@redhat.com" <mingo@redhat.com>,
 "acme@kernel.org" <acme@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "alexander.shishkin@linux.intel.com"
 <alexander.shishkin@linux.intel.com>, "jolsa@redhat.com" <jolsa@redhat.com>,
 "namhyung@kernel.org" <namhyung@kernel.org>, "will@kernel.org"
 <will@kernel.org>
References: <1587120084-18990-1-git-send-email-john.garry@huawei.com>
 <1587120084-18990-10-git-send-email-john.garry@huawei.com>
 <DB8PR04MB67959336311C0CF525BB24ADE6D40@DB8PR04MB6795.eurprd04.prod.outlook.com>
 <3486ee3b-7240-d5a7-5a3c-952133a5e9f0@huawei.com>
 <DB8PR04MB679576DAC6EBFFD13F129488E6D40@DB8PR04MB6795.eurprd04.prod.outlook.com>
 <d54e6c6b-0fe6-0cda-e93e-151ce50d0f66@huawei.com>
 <DB8PR04MB6795E2C668C959D4B551F9C3E6D50@DB8PR04MB6795.eurprd04.prod.outlook.com>
From: John Garry <john.garry@huawei.com>
Message-ID: <9c82611a-f9ef-7286-8ab7-f7b7ace680ce@huawei.com>
Date: Tue, 21 Apr 2020 13:28:09 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.2
MIME-Version: 1.0
In-Reply-To: <DB8PR04MB6795E2C668C959D4B551F9C3E6D50@DB8PR04MB6795.eurprd04.prod.outlook.com>
Content-Language: en-US
X-Originating-IP: [10.210.168.25]
X-ClientProxiedBy: lhreml719-chm.china.huawei.com (10.201.108.70) To
 lhreml724-chm.china.huawei.com (10.201.108.75)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_052855_268063_3A11909E 
X-CRM114-Status: GOOD (  11.83  )
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
Cc: "irogers@google.com" <irogers@google.com>,
 "ak@linux.intel.com" <ak@linux.intel.com>, Linuxarm <linuxarm@huawei.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Zhangshaokun <zhangshaokun@hisilicon.com>,
 "robin.murphy@arm.com" <robin.murphy@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 21/04/2020 03:40, Joakim Zhang wrote:
> For common events, cycles(event=0x00), read-cycles(event=0x2a), write-cycles(event=0x2b), read(event=0x35), write(event=0x38), all these events listed in file (tools/perf/pmu-events/arch/arm64/freescale/imx8mm/sys/ddrc.json) are compatible for all i.MX8 DDR Perf, only AXI events are various from each SoC. These events tested okay for MX8MM and MX8QM.
> 
> Same situation, metrics listed in file (tools/perf/pmu-events/arch/arm64/freescale/imx8mm/sys/metrics.json) is also compatible for all i.MX8 DDR Perf, since metric expression only contains read-cycles(event=0x2a) and write-cycles(event=0x2b).
> 
> Generally speaking, now pmu events and metrics on your branch should support both MX8MM and MX8QM without any change, as long as they export "i.mx8mm" identifier.

Right, but MX8QM should export "i.mx8qm" identifier for upstream eventually.

> 
> As I mentioned before, pmu events tested okay for MX8MM and MX8QM. Metric also tested okay for MX8MM.
> For MX8QM which has two HW PMU(ddr0/ddr1), metric can work, but it would add metric twice which I think if it is possible to improve it in your serials.
> 
> I guess the root cause is that "imx8_ddr.read_cycles" contains two HW PMU events (imx8_ddr0/read-cycles/ and imx8_ddr1/read-cycles/) and metricgroup can't handle it at present.

It should be ok, but I'll check it.

> 
> 8QM:
> root@imx8qmmek:~# ./perf stat -v -a -I 1000 -M imx8mm_ddr_read.all
> Using CPUID 0x00000000410fd030
> metric expr imx8_ddr.read_cycles * 4 * 4 for imx8mm_ddr_read.all
> found event imx8_ddr.read_cycles
> metric expr imx8_ddr.read_cycles * 4 * 4 for imx8mm_ddr_read.all
> found event imx8_ddr.read_cycles
> adding {imx8_ddr.read_cycles}:W,{imx8_ddr.read_cycles}:W
> imx8_ddr.read_cycles -> imx8_ddr0/event=0x2a/
> imx8_ddr.read_cycles -> imx8_ddr1/event=0x2a/
> imx8_ddr.read_cycles -> imx8_ddr0/event=0x2a/
> imx8_ddr.read_cycles -> imx8_ddr1/event=0x2a/
> imx8_ddr.read_cycles: 22748 1000378750 1000378750
> imx8_ddr.read_cycles: 24640 1000376625 1000376625
> imx8_ddr.read_cycles: 22800 1000375125 1000375125
> imx8_ddr.read_cycles: 24616 1000372625 1000372625
> #           time             counts unit events
>       1.000377250              47388      imx8_ddr.read_cycles      #    740.4 MB  imx8qm_ddr_read.all
>       1.000377250              47416      imx8_ddr.read_cycles

john

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
