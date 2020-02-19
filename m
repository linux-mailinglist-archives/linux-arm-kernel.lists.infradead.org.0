Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43A1A1646EC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 15:28:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1A/BROkf6rqTlqTBcTSnQysi3fZbp2verPj/dy30Bc0=; b=uzOfBudjOleW2OAjJgsjPnpQG
	VDyRWVJCYf8pXproFC1CPj0FCwISAanFwOf9FjsIs13/2r4lZm5dm6hn5w3gv8t94GA7A6WdzHiCp
	TtVi7FPW4ikV9VQymICb7OAP8sLILB/tOC9gKsaHot4ABTBt5v9IkRF/dpUneKrBariiV6wslIFxc
	OnXlvr5cnTJE3xBf4UjHk4ijvioWdWVuJxIRImW6/aNFCC5uGRemRHmOhUrMHvaiwriq1SOepLb0t
	i4LXwkKYBGuSyJhQd48q2fGWZYGdVPxVAiaGXY6fGp/9EZr4FvaUCHruRdh+7U2hTnDnCROGLEiSD
	WA+TaSuKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4QL8-0006La-Fu; Wed, 19 Feb 2020 14:28:38 +0000
Received: from lhrrgout.huawei.com ([185.176.76.210] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4QKy-0006Je-S3
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 14:28:30 +0000
Received: from lhreml702-cah.china.huawei.com (unknown [172.18.7.107])
 by Forcepoint Email with ESMTP id 15C509B6D1201F523513;
 Wed, 19 Feb 2020 14:28:12 +0000 (GMT)
Received: from lhreml724-chm.china.huawei.com (10.201.108.75) by
 lhreml702-cah.china.huawei.com (10.201.108.43) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Wed, 19 Feb 2020 14:28:11 +0000
Received: from [127.0.0.1] (10.202.226.45) by lhreml724-chm.china.huawei.com
 (10.201.108.75) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5; Wed, 19 Feb
 2020 14:28:11 +0000
Subject: Re: [PATCH RFC 0/7] perf pmu-events: Support event aliasing for
 system PMUs
To: Joakim Zhang <qiangqing.zhang@nxp.com>, Mark Rutland <mark.rutland@arm.com>
References: <1579876505-113251-1-git-send-email-john.garry@huawei.com>
 <20200218125707.GB20212@willie-the-truck>
 <a40903fe-d52f-96c6-a06a-fe834d71d625@huawei.com>
 <20200218133943.GF20212@willie-the-truck>
 <627cbc50-4b36-7f7f-179d-3d27d9e0215a@huawei.com>
 <20200218170803.GA9968@lakrids.cambridge.arm.com>
 <cb004f43-b2a4-ae23-9fd3-0f70bd69701b@huawei.com>
 <20200218181331.GB9968@lakrids.cambridge.arm.com>
 <DB7PR04MB46188F06D6CEA1430712E648E6100@DB7PR04MB4618.eurprd04.prod.outlook.com>
 <b6781341-3d28-bda8-621b-aeca413dc8ae@huawei.com>
 <DB7PR04MB46184AA7765C2393E2BE241CE6100@DB7PR04MB4618.eurprd04.prod.outlook.com>
From: John Garry <john.garry@huawei.com>
Message-ID: <476e386b-c032-71bb-d8f8-1701292636b4@huawei.com>
Date: Wed, 19 Feb 2020 14:28:10 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.2
MIME-Version: 1.0
In-Reply-To: <DB7PR04MB46184AA7765C2393E2BE241CE6100@DB7PR04MB4618.eurprd04.prod.outlook.com>
Content-Language: en-US
X-Originating-IP: [10.202.226.45]
X-ClientProxiedBy: lhreml738-chm.china.huawei.com (10.201.108.188) To
 lhreml724-chm.china.huawei.com (10.201.108.75)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_062829_057827_49E7D4FB 
X-CRM114-Status: GOOD (  14.99  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: "ak@linux.intel.com" <ak@linux.intel.com>,
 "suzuki.poulose@arm.com" <suzuki.poulose@arm.com>,
 "peterz@infradead.org" <peterz@infradead.org>,
 "jolsa@redhat.com" <jolsa@redhat.com>, Linuxarm <linuxarm@huawei.com>,
 "acme@kernel.org" <acme@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Zhangshaokun <zhangshaokun@hisilicon.com>,
 "alexander.shishkin@linux.intel.com" <alexander.shishkin@linux.intel.com>,
 "mingo@redhat.com" <mingo@redhat.com>,
 "james.clark@arm.com" <james.clark@arm.com>,
 Sudeep Holla <sudeep.holla@arm.com>,
 "namhyung@kernel.org" <namhyung@kernel.org>, Will Deacon <will@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "robin.murphy@arm.com" <robin.murphy@arm.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


>>> i.MX8MM and i.MX8MN, they use the same driver(DDRC_ID) and cortex-a53
>> integrated.
>>>
>>> If we want to monitor VPU, their *master id* is different from SoCs.
>>> On i.MX8MM, event is imx8_ddr0/axid-read,axi_id=0x08/ On i.MX8MN,
>>> event is imx8_ddr0/axid-read,axi_id=0x12/
>>>

So it seems that this master id and the axi_id are the same, which is 
some filtering key. Indeed, the actual event number is the same between 
SoC implementations.

And metric groups do support filtering, AFAIU.

>>> I try to write a JSON file to use these events, for now, I only can
>>> locate the file at the directory:
>>> tools/perf/pmu-events/arch/arm64/arm/cortex-a53/
>>>
>>> Perf tool loads all events when CPUID matched, which is now unreasonable,
>> we want related events are loaded for specific SoC.
>>
>> so we could have a folder like .../arch/arm64/nxp/system for these JSONs. The
>> perf tool can be updated to handle CPU and system events in separate folders.
>>
>>>
>>> All events will also be loaded if we use DDRC_ID to match in the future, this
>> seems to not be a good ideal.
>>
>> The important part is knowing which events are supported per implementation.
>> Is there any method in the driver of knowing the specific implementation, like
>> any DT compat string? Least preferred option would be DT machine ID.
> 
> I think, NO, master id could be different even they use the same DT compatible string.

Are you sure? Checking the dts files for your SoCs, I see this:

~/kernel-dev6/arch/arm64$ git grep  "fsl,imx8m-ddr-pmu"
boot/dts/freescale/imx8mm.dtsi:                 compatible = 
"fsl,imx8mm-ddr-pmu", "fsl,imx8m-ddr-pmu";
boot/dts/freescale/imx8mn.dtsi:                 compatible = 
"fsl,imx8mn-ddr-pmu", "fsl,imx8m-ddr-pmu";
boot/dts/freescale/imx8mq.dtsi:                 compatible = 
"fsl,imx8mq-ddr-pmu", "fsl,imx8m-ddr-pmu";

So it seems that you could use "fsl,imx8mm-ddr-pmu" vs 
"fsl,imx8mn-ddr-pmu" to differentiate, right?

John


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
