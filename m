Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BF3F1A98E2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 11:29:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=iiSQrFXrU4fKa/jD3am4v3nxStElWc/8St9JGb1URL4=; b=n6kkYsX94EqB3bHUqFq5zNAhz
	CEHIUBKnC+qG1dbDzGry6c2XVh+b9ii+YOH6PBJSb40pwWNJOIKrqCjKFda0WCDk3+9PwvqwHw4EI
	RncP5fByDGapezxuXXR32+rmGw63/vlydwhUYIbNIzLlkMAODVtIozPiY9K+UH7nQrwwGLAgwwg5P
	Yhs1QIbPCR2qlPUAdRf7LqTdNhAx8VwtODT99bPY7K8pqnF2KnQptgR99nHTpUI6EmOXKJM6JvPWp
	AHtEc9mjcWbXwQZ1WrsD2Tpd0onnCrPU3b0NGJxmKdpJe9juZqL9gBvJcUwOnmkdDY/OEqz9IZyZ7
	j63NhiNDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOeMK-0000VY-Rd; Wed, 15 Apr 2020 09:29:28 +0000
Received: from lhrrgout.huawei.com ([185.176.76.210] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOeM2-0000Sk-Hp
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 09:29:12 +0000
Received: from lhreml724-chm.china.huawei.com (unknown [172.18.7.108])
 by Forcepoint Email with ESMTP id 592458CC5CBB1DAE4D56;
 Wed, 15 Apr 2020 10:28:52 +0100 (IST)
Received: from [127.0.0.1] (10.47.0.131) by lhreml724-chm.china.huawei.com
 (10.201.108.75) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1913.5; Wed, 15 Apr
 2020 10:28:51 +0100
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
 <ccab39b0-c84f-e529-4067-07466b5433a1@huawei.com>
 <VI1PR04MB68000808CEE4BC23403C35A0E6C00@VI1PR04MB6800.eurprd04.prod.outlook.com>
 <ca2db002-975a-ffe0-2dfc-c85f4e6205bb@huawei.com>
 <VI1PR04MB6800F2A5949F0AFAF2E82CE0E6C00@VI1PR04MB6800.eurprd04.prod.outlook.com>
From: John Garry <john.garry@huawei.com>
Message-ID: <0b3999b8-c307-6b4a-1a1b-e90b45f50b61@huawei.com>
Date: Wed, 15 Apr 2020 10:28:16 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.2
MIME-Version: 1.0
In-Reply-To: <VI1PR04MB6800F2A5949F0AFAF2E82CE0E6C00@VI1PR04MB6800.eurprd04.prod.outlook.com>
Content-Language: en-US
X-Originating-IP: [10.47.0.131]
X-ClientProxiedBy: lhreml735-chm.china.huawei.com (10.201.108.86) To
 lhreml724-chm.china.huawei.com (10.201.108.75)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_022910_734213_3C9AAB93 
X-CRM114-Status: GOOD (  12.86  )
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

On 08/04/2020 12:41, Joakim Zhang wrote:
>> That code should be effectively the same.
>>
>> What does perf list show for the metrics now?
> root@imx8mmevk:~# ./perf list ddrc
> 
> List of pre-defined events (to be used in -e):
> 
> 
> ddrc:
>    imx8_ddr.cycles
>         [ddr cycles event. Unit: imx8_ddr]
>    imx8_ddr.read
>         [ddr read event. Unit: imx8_ddr]
>    imx8_ddr.read_cycles
>         [ddr read-cycles event. Unit: imx8_ddr]
>    imx8_ddr.write
>         [ddr write event. Unit: imx8_ddr]
>    imx8_ddr.write_cycles
>         [ddr write-cycles event. Unit: imx8_ddr]
> 
> root@imx8mmevk:~# ./perf list metric
> 
> List of pre-defined events (to be used in -e):
> 
> 
> Metrics:
> 
>    imx8mm_ddr_read.all
>         [bytes all masters read from ddr based on read-cycles event. Unit: imx8_d
> dr ]
>    imx8mm_ddr_write.all
>         [bytes all masters write to ddr based on read-cycles event. Unit: imx8_dd
> r ]
> 
> root@imx8mmevk:~# ./perf stat -a -I 1000 -v -M imx8mm_ddr_read.all
> Using CPUID 0x00000000410fd040
> adding
> event syntax error: ''
>                        \___ parser error
> 
>   Usage: perf stat [<options>] [<command>]
> 
>      -M, --metrics <metric/metric group list>
>                            monitor specified metrics or metric groups (separated by ,)
> 
> It seems that metricgroup fails to parse the metric expression.
> metric.json:
> [
>     {
> 	    "BriefDescription": "bytes all masters read from ddr based on read-cycles event",
> 	    "MetricName": "imx8mm_ddr_read.all",
> 	    "MetricExpr": "imx8_ddr.read_cycles * 4 * 4",
> 	    "ScaleUnit": "9.765625e-4MB",
> 	    "Unit": "imx8_ddr",

I noticed that previously we used imx8,ddr, which I think was wrong, so 
can you try to remove this here?

If that doesn't work, then I'll try this myself.

Thanks,
John

> 	    "Compat": "i.mx8mm"
>      },
>     {
> 	    "BriefDescription": "bytes all masters write to ddr based on write-cycles event",
> 	    "MetricName": "imx8mm_ddr_write.all",
> 	    "MetricExpr": "imx8_ddr.write_cycles * 4 * 4",
> 	    "ScaleUnit": "9.765625e-4MB",
> 	    "Unit": "imx8_ddr",
> 	    "Compat": "i.mx8mm"
>      }
> ]
> 
>>>>> root@imx8mmevk:~# ./perf stat


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
