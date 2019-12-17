Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24110122F89
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 16:01:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d1HRwOv7jL8NTlgIB9ezvqZMYocFG9wtNNdPKLKmGD4=; b=CDKDfKG5ZEmir9
	sfYUQJsHvaiqkfF+chv7T8btlXAxF2fUcR0Ti5cYVfyzznuuEmO9oRwwbbxmSFt2Nm2rH2RNAAEoC
	RVTyxPqQCvdQayYZnVFVEuh5ZPnRBAtH+QiTW8xJWeSj/YR57tgBk5WFtvVALHKNsgdUOnMOnj8v6
	lwfJWrddGFzG9uttzynF1vVEwqilTMGbXySg6gYWmh4qpiSzECXycJbi6fyn/csKgH9MQkDYzABki
	ZNOYYTNUt36tBWb0msqnaqMGM6OHCosqtxSg7M1fFKCCDmGUwZm8oN6szw+Mqo6Jw9957/P8ztk6J
	ZRduYfEWcnYEoZ3L4neQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihELE-0004KZ-Kq; Tue, 17 Dec 2019 15:00:52 +0000
Received: from mail-dm6nam11on2073.outbound.protection.outlook.com
 ([40.107.223.73] helo=NAM11-DM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihEL5-0004Jd-Hz
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 15:00:45 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XlAvK+NiJO5E93puafyje2fk/fuQkVk7nIEnDVFw7hzcQL+u6rygt664ytHsZO9xr/k8q6z4w07RtYUjT4u41DbRe+dOMCr13LceC96wEwqA70f+Ymcrtdqb9qsNXnaOwVcaispmb2hcWaeFY0ow9evnH1+fulOsobkyk7pFFPPOe/tAjucmosdd+Oc+qTk+M+2LRQR+lSOI/4CCJ6r0/2tGDne7TuwmVoAwEnmw4lsaSWSby96GuMKNsXeyTP5YEoMzAQsu0aDXaCcz+FtmAcS9WNYvJ6IoxQQpbIL3WwkRBjqW7nOzClHqd1o8CG13Xoi/HqgPKGdW4/lFtbMWrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=V1m/xWx/6c4QiohZBfzSiVJiftjl77uZxLdlVhnub1o=;
 b=kFb06RzZRHCTN1SEmW1ns5sh9NnoPKRjG2auhHsviyrpcc5MCQ0MHle6mgNRs1MEjvEG+zlJIea1rW9rRKVxZ3zY93vCFKepXZvcTMUH23aRYdgyyiOM/3mlKwD4w2JjpckmmFnDcGNm0VHJJsOPSXYAuDwrrw9Fq+bEd9PBJc4Raev7KhjCcxO4uH2XLq9W7Dhm3X6otFj6aS5w6Ngv7qDYPAOSRsJYlE9zydc1Li2boRs9Gu7tMNtsYVzuQgfbax3WXnNpM1WOTk5zQSigIWNN5DkpTAiX8sIt7nlcfxDIoyO6HyNwSr84nlhhlUwUlp/yslGMDNatRgu//Cps5g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=V1m/xWx/6c4QiohZBfzSiVJiftjl77uZxLdlVhnub1o=;
 b=hN+kGbOFdbMKGA9cdOU1EB80MjKw6/CfMRkSmvOtXNMQ75udroZd9+fzjLDy+D1FSxlR7bFKYo37U5Q51PJaexyyCwNfuekAgqDv/F34dxTBNNcdlDGyK84mqj+A6lwQDfzE6fJS9G3MhQSCsMcztwl88PCalwmYGqZYrrsbYYo=
Received: from CY4PR06CA0049.namprd06.prod.outlook.com (2603:10b6:903:13d::11)
 by BN8PR02MB5762.namprd02.prod.outlook.com (2603:10b6:408:b0::28)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2538.15; Tue, 17 Dec
 2019 15:00:36 +0000
Received: from CY1NAM02FT040.eop-nam02.prod.protection.outlook.com
 (2603:10b6:903:13d:cafe::f1) by CY4PR06CA0049.outlook.office365.com
 (2603:10b6:903:13d::11) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2538.16 via Frontend
 Transport; Tue, 17 Dec 2019 15:00:35 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 CY1NAM02FT040.mail.protection.outlook.com (10.152.75.135) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2538.14
 via Frontend Transport; Tue, 17 Dec 2019 15:00:34 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1ihEKr-0000vF-T1; Tue, 17 Dec 2019 07:00:29 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1ihEKm-00026Z-OT; Tue, 17 Dec 2019 07:00:24 -0800
Received: from [172.30.17.107] by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <michals@xilinx.com>)
 id 1ihEKd-0001l3-Py; Tue, 17 Dec 2019 07:00:15 -0800
Subject: Re: [PATCH] drivers: clocksource: Use ttc driver as platform driver
To: Daniel Lezcano <daniel.lezcano@linaro.org>, Rajan Vaja
 <RAJANV@xilinx.com>, "tglx@linutronix.de" <tglx@linutronix.de>
References: <1573122988-18399-1-git-send-email-rajan.vaja@xilinx.com>
 <BYAPR02MB40555C1884AA318D9E79EFFEB7450@BYAPR02MB4055.namprd02.prod.outlook.com>
 <2ffe4baf-1de1-3f0e-311f-dd1fdaf1cee8@linaro.org>
From: Michal Simek <michal.simek@xilinx.com>
Message-ID: <d313e68d-81ea-29e0-1e0b-306716855ea0@xilinx.com>
Date: Tue, 17 Dec 2019 16:00:13 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <2ffe4baf-1de1-3f0e-311f-dd1fdaf1cee8@linaro.org>
Content-Language: en-US
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(136003)(396003)(376002)(346002)(13464003)(199004)(189003)(81156014)(478600001)(316002)(4326008)(8676002)(81166006)(426003)(70206006)(2616005)(31686004)(110136005)(336012)(44832011)(54906003)(356004)(9786002)(186003)(26005)(36756003)(5660300002)(2906002)(70586007)(31696002)(53546011)(8936002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN8PR02MB5762; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: f9325e4b-91c3-41e2-3338-08d78301de77
X-MS-TrafficTypeDiagnostic: BN8PR02MB5762:
X-Microsoft-Antispam-PRVS: <BN8PR02MB5762A63328E0EDB8B95EDAA5C6500@BN8PR02MB5762.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:7691;
X-Forefront-PRVS: 02543CD7CD
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: QLiOTzmT8xKWvEJW5/bQzgN0Md+yV198HR9MKK9AIbv2yJlOj5EMX3Kz/UBKQuLM20u4gx7kLXzJl17ZpRqPgmW34bLthkcvU7LCWrzsd9s2NT/0IftlaDUhgM/xev4gkj5/ZcaXy9zctyQ6EVVxMzz5s6LUQaGmBJt7++aWodRTpgAO093dzKBIE5QOW2WSsnFUa1RuU7Wm/1yzHpt8Is1V97rFshjRi2/rlCYkKUFQHWxmRTeysojp5aFri1bhuRv4CgaWyy72B+P343hL252/bKo5FpQxt9/XDw1yYWj4yUpjzFpr8MUmNBDxxpwKCgCtT6Urzp17rbPGXxPYZLu6JSB4OUtXiCgrI//GczhERegK8ODxxlTmHJcppasrlBNKlBNAAITCPtNBPVaL1HPl8PTXV79uFUpJDqtxRWC/wkcfjWW5MhEf5KtXlHix41OAuXM1BJBSvxo3ukZez+UqfCz2viLWzS6CMfi7lMVmYKVRqKrkxlmGaSCes2bv
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Dec 2019 15:00:34.5032 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: f9325e4b-91c3-41e2-3338-08d78301de77
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR02MB5762
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_070043_598691_83535C91 
X-CRM114-Status: GOOD (  16.91  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.223.73 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.223.73 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Jolly Shah <JOLLYS@xilinx.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 05. 12. 19 17:24, Daniel Lezcano wrote:
> On 26/11/2019 12:53, Rajan Vaja wrote:
>> Request for review.
> 
> Waiting from Michal Simek review ...
> 
> 
>>> -----Original Message-----
>>> From: Rajan Vaja <rajan.vaja@xilinx.com>
>>> Sent: 07 November 2019 04:06 PM
>>> To: Michal Simek <michals@xilinx.com>; daniel.lezcano@linaro.org;
>>> tglx@linutronix.de
>>> Cc: linux-arm-kernel@lists.infradead.org; Jolly Shah <JOLLYS@xilinx.com>; linux-
>>> kernel@vger.kernel.org; Rajan Vaja <RAJANV@xilinx.com>
>>> Subject: [PATCH] drivers: clocksource: Use ttc driver as platform driver
>>>
>>> Currently TTC driver is TIMER_OF_DECLARE type driver. Because of
>>> that, TTC driver may be initialized before other clock drivers. If
>>> TTC driver is dependent on that clock driver then initialization of
>>> TTC driver will failed.
>>>
>>> So use TTC driver as platform driver instead of using
>>> TIMER_OF_DECLARE.
>>>
>>> Signed-off-by: Rajan Vaja <rajan.vaja@xilinx.com>
>>> ---
>>>  drivers/clocksource/timer-cadence-ttc.c | 26 ++++++++++++++++++--------
>>>  1 file changed, 18 insertions(+), 8 deletions(-)
>>>
>>> diff --git a/drivers/clocksource/timer-cadence-ttc.c b/drivers/clocksource/timer-
>>> cadence-ttc.c
>>> index 88fe2e9..38858e1 100644
>>> --- a/drivers/clocksource/timer-cadence-ttc.c
>>> +++ b/drivers/clocksource/timer-cadence-ttc.c
>>> @@ -15,6 +15,8 @@
>>>  #include <linux/of_irq.h>
>>>  #include <linux/slab.h>
>>>  #include <linux/sched_clock.h>
>>> +#include <linux/module.h>
>>> +#include <linux/of_platform.h>
>>>
>>>  /*
>>>   * This driver configures the 2 16/32-bit count-up timers as follows:
>>> @@ -464,13 +466,7 @@ static int __init ttc_setup_clockevent(struct clk *clk,
>>>  	return 0;
>>>  }
>>>
>>> -/**
>>> - * ttc_timer_init - Initialize the timer
>>> - *
>>> - * Initializes the timer hardware and register the clock source and clock event
>>> - * timers with Linux kernal timer framework
>>> - */
>>> -static int __init ttc_timer_init(struct device_node *timer)
>>> +static int __init ttc_timer_probe(struct platform_device *pdev)
>>>  {
>>>  	unsigned int irq;
>>>  	void __iomem *timer_baseaddr;
>>> @@ -478,6 +474,7 @@ static int __init ttc_timer_init(struct device_node *timer)
>>>  	static int initialized;
>>>  	int clksel, ret;
>>>  	u32 timer_width = 16;
>>> +	struct device_node *timer = pdev->dev.of_node;
>>>
>>>  	if (initialized)
>>>  		return 0;
>>> @@ -532,4 +529,17 @@ static int __init ttc_timer_init(struct device_node *timer)
>>>  	return 0;
>>>  }
>>>
>>> -TIMER_OF_DECLARE(ttc, "cdns,ttc", ttc_timer_init);
>>> +static const struct of_device_id ttc_timer_of_match[] = {
>>> +	{.compatible = "cdns,ttc"},
>>> +	{},
>>> +};
>>> +
>>> +MODULE_DEVICE_TABLE(of, ttc_timer_of_match);
>>> +
>>> +static struct platform_driver ttc_timer_driver = {
>>> +	.driver = {
>>> +		.name	= "cdns_ttc_timer",
>>> +		.of_match_table = ttc_timer_of_match,
>>> +	},
>>> +};
>>> +builtin_platform_driver_probe(ttc_timer_driver, ttc_timer_probe);
>>> --
>>> 2.7.4
>>

Looks good. I have also tested it on zc706.

Tested-by: Michal Simek <michal.simek@xilinx.com>
Acked-by: Michal Simek <michal.simek@xilinx.com>

Note: headers are not sorted but they weren't even before this patch.

Thanks,
Michal



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
