Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17B0EF2CA0
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 11:35:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HdHeY0myzsoYbkA6Xt5wjp07B6Bxln957N3vAQ9uAOc=; b=W5/Sl6rezyfR2D
	ZetYoXNaeJTlaUGDB5sGz6W7eu8EOGJjNt2PRQshrskjenWWsRjP0hzTB2nmnsuyKOLh2TZ46YMwl
	3LMBA4dWfARQi287JJny3W+Qlh7AWLEkoJhZbdvEFcEZ+c/g63K6P5E+dIkBJrFSxMnRAN+aDs6TV
	BWhj+PDj/VpekMaRUcFgpd+43DPxgFvibKsPDl9LvUuywVnK75bsZu/vIqoce+3rJukpSAdpHH7bP
	+heGf+2VIW0K90Uy0VUWwDohCgqFF1Ur6QspGDDqqi06CixazHnGAar67gOzXrVPMb5mmEr/F8waZ
	UEqtSbWf/bQpDRMe2FOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSf8u-0001HB-NY; Thu, 07 Nov 2019 10:35:56 +0000
Received: from mail-eopbgr700077.outbound.protection.outlook.com
 ([40.107.70.77] helo=NAM04-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSf7p-0007Yg-K3
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 10:34:51 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HeaBzJ3dW6AVV56aGHgOHTPLrleyhV+wP89snWIbiY2Tyh4OvKgytVbYjojc3fwXvcCxhn0IpWljnuwE9nkRDrfV5ZMFSreIEjYsXIOWhCcpKJmULT5jIYLnpSRUD9OzzNDrp5YXvPU6eYZJ2Lqfaa3dzKOldFxF5VV+uh1kAafMPMNVG6uIiv/7CUqSsKirFDpOrKUa6i8WsH1cqQc+72X3agoDZcCOF3fj4vYrPBuvnEt64GvsPawXFdjAp2Sd6AZNiVmbsVs5x9c/BdNE+q2WFUO2G8RnW+WtOaKte2kykJ+ik4pkGGzLOCnT9ijfbOlhHRUtM1TA90ZJ2Q/V/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3XjHzgK+Z9USwm6ksLZqXnQXExvmx0dsRel8jDrvjBQ=;
 b=L3FQ5FTXIIKhUdl4YLPEL/LrumGQWE46M5OEEWvoLBbdONlzQ20c4z9YBp05cOWdzf0+t4Xb9jtcujwayuSdMs+YoORlmq36wFQsu3SHJi1o35vZ444Ql92mqdASNJvYlOqtyfLQTxsOJ3L1yN9TCNTJNCn9915AdbpeSDAokF4ygr5X1NYBLHQ3IR3lArGx17pLFh0hvRmpZleWnz/YamKjgf6oGUM9uUFY69q0NDFVf8I2lTf9Ca6O7+TSWopU6KV53iFiQ7pTcM5BkziSNw3quDlSwzucN6lzAyvNAH7z1dj/0+WbKC8wZYn2c5ikW1iPvwHmt89EmA+d7fQvBw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=xilinx.com; dmarc=pass action=none header.from=xilinx.com;
 dkim=pass header.d=xilinx.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3XjHzgK+Z9USwm6ksLZqXnQXExvmx0dsRel8jDrvjBQ=;
 b=KXeyDoZhbPKvaCPMEa+rcDUEaJE8KDhsvC8Bj/f3TA3ITloj8nU2PTpOoyCfPVjwXvg4ypd9J1ybdS3Ij9HMXR449VM1Hd1xpBX9MLcRDtX6cD5q7IUwNZA1u2NK7QNBBCLvL+T37RQ5gthgXfOJOxq30hT50vnpYbVcR9kRa+M=
Received: from BYAPR02MB4055.namprd02.prod.outlook.com (52.135.202.143) by
 BYAPR02MB4119.namprd02.prod.outlook.com (20.176.252.16) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2408.24; Thu, 7 Nov 2019 10:34:46 +0000
Received: from BYAPR02MB4055.namprd02.prod.outlook.com
 ([fe80::e157:9458:610b:4e8f]) by BYAPR02MB4055.namprd02.prod.outlook.com
 ([fe80::e157:9458:610b:4e8f%6]) with mapi id 15.20.2408.024; Thu, 7 Nov 2019
 10:34:46 +0000
From: Rajan Vaja <RAJANV@xilinx.com>
To: Rajan Vaja <RAJANV@xilinx.com>, "daniel.lezcano@linaro.org"
 <daniel.lezcano@linaro.org>, "tglx@linutronix.de" <tglx@linutronix.de>
Subject: RE: [PATCH] drivers: clocksource: Use ttc driver as platform driver
Thread-Topic: [PATCH] drivers: clocksource: Use ttc driver as platform driver
Thread-Index: AQHVlVaOW+EHQwVffUWJv7WplPkHr6d/gr0Q
Date: Thu, 7 Nov 2019 10:34:46 +0000
Message-ID: <BYAPR02MB4055F334DB27797D2CA6314DB7780@BYAPR02MB4055.namprd02.prod.outlook.com>
References: <1573122659-13947-1-git-send-email-rajan.vaja@xilinx.com>
In-Reply-To: <1573122659-13947-1-git-send-email-rajan.vaja@xilinx.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=RAJANV@xilinx.com; 
x-originating-ip: [149.199.62.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 80eca67d-6765-453f-9650-08d7636e1c3b
x-ms-traffictypediagnostic: BYAPR02MB4119:|BYAPR02MB4119:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR02MB41195F569EE5E5C037C78104B7780@BYAPR02MB4119.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-forefront-prvs: 0214EB3F68
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(39860400002)(396003)(376002)(366004)(136003)(13464003)(189003)(199004)(8936002)(66066001)(8676002)(256004)(478600001)(99286004)(14454004)(2201001)(102836004)(81156014)(7696005)(26005)(7736002)(71190400001)(6506007)(81166006)(86362001)(316002)(305945005)(110136005)(53546011)(4326008)(66556008)(52536014)(186003)(2906002)(55016002)(54906003)(3846002)(5660300002)(6116002)(66946007)(2501003)(74316002)(76116006)(229853002)(71200400001)(446003)(66476007)(476003)(66446008)(25786009)(76176011)(6246003)(33656002)(6436002)(9686003)(64756008)(11346002)(486006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR02MB4119;
 H:BYAPR02MB4055.namprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: xilinx.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: btUZNI/x7QY6BTZLrnFSYnX0Hq6tC4rEZ6+3CfwUI4HccnoDVzNYA07kX3561LnQw02y3ytVRJ2SAbFfuZLsN6Ncfx6CRNKOsczWk835olHRCPIKW/eO5UPzul/JJ9wi0rrLdfd5+bkdNBQxPqXlGlPQKrm+AOYQGDwAoBT5dP7zWweuAZ5UilGySRnAibMu8y5cPu74OcGixSk1zkbprmHG68A/LiMBXDO+lI4ndBBR0hh7nyWFa8eAcBeMEB9pA+yfUWcwcn9zqY4fd5upiO3wiDN8LAD3g2OXLu0iwmVCZv7EEXVPGnP7eG19jJo2rOKdtVSChtAeQ/VZZ3NCddRURIQGzQ2xwcQkZ4e0ss6wpIKF6t3UNmHIYnXbWfABG7FVK6vJwWThz6kTstO6+x8AlvUN/mhJa8Lt2+YKXUY+V8jX9yiTQm/h7uHBCZlz
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 80eca67d-6765-453f-9650-08d7636e1c3b
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Nov 2019 10:34:46.5485 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3o4Xlj1R24p8ifv1Cid847jybp5WNvF74F86bqaC6BzInRnhqVIkGujxueli3QgpaEpzxcpqYkh4lpSBa+1NKg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR02MB4119
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_023449_693473_42EA83CC 
X-CRM114-Status: GOOD (  17.02  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.70.77 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Please discard this email as there is a typo in email address (michal.simek@xilinx.com -> ichal.simek@xilinx.com). I am sending new email.

Thanks,
Rajan

> -----Original Message-----
> From: Rajan Vaja <rajan.vaja@xilinx.com>
> Sent: 07 November 2019 02:31
> To: ichal.simek@xilinx.com; daniel.lezcano@linaro.org; tglx@linutronix.de
> Cc: linux-arm-kernel@lists.infradead.org; linux-kernel@vger.kernel.org; Rajan
> Vaja <RAJANV@xilinx.com>
> Subject: [PATCH] drivers: clocksource: Use ttc driver as platform driver
> 
> Currently TTC driver is TIMER_OF_DECLARE type driver. Because of
> that, TTC driver may be initialized before other clock drivers. If
> TTC driver is dependent on that clock driver then initialization of
> TTC driver will failed.
> 
> So use TTC driver as platform driver instead of using
> TIMER_OF_DECLARE.
> 
> Signed-off-by: Rajan Vaja <rajan.vaja@xilinx.com>
> ---
>  drivers/clocksource/timer-cadence-ttc.c | 26 ++++++++++++++++++--------
>  1 file changed, 18 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/clocksource/timer-cadence-ttc.c b/drivers/clocksource/timer-
> cadence-ttc.c
> index 88fe2e9..38858e1 100644
> --- a/drivers/clocksource/timer-cadence-ttc.c
> +++ b/drivers/clocksource/timer-cadence-ttc.c
> @@ -15,6 +15,8 @@
>  #include <linux/of_irq.h>
>  #include <linux/slab.h>
>  #include <linux/sched_clock.h>
> +#include <linux/module.h>
> +#include <linux/of_platform.h>
> 
>  /*
>   * This driver configures the 2 16/32-bit count-up timers as follows:
> @@ -464,13 +466,7 @@ static int __init ttc_setup_clockevent(struct clk *clk,
>  	return 0;
>  }
> 
> -/**
> - * ttc_timer_init - Initialize the timer
> - *
> - * Initializes the timer hardware and register the clock source and clock event
> - * timers with Linux kernal timer framework
> - */
> -static int __init ttc_timer_init(struct device_node *timer)
> +static int __init ttc_timer_probe(struct platform_device *pdev)
>  {
>  	unsigned int irq;
>  	void __iomem *timer_baseaddr;
> @@ -478,6 +474,7 @@ static int __init ttc_timer_init(struct device_node *timer)
>  	static int initialized;
>  	int clksel, ret;
>  	u32 timer_width = 16;
> +	struct device_node *timer = pdev->dev.of_node;
> 
>  	if (initialized)
>  		return 0;
> @@ -532,4 +529,17 @@ static int __init ttc_timer_init(struct device_node *timer)
>  	return 0;
>  }
> 
> -TIMER_OF_DECLARE(ttc, "cdns,ttc", ttc_timer_init);
> +static const struct of_device_id ttc_timer_of_match[] = {
> +	{.compatible = "cdns,ttc"},
> +	{},
> +};
> +
> +MODULE_DEVICE_TABLE(of, ttc_timer_of_match);
> +
> +static struct platform_driver ttc_timer_driver = {
> +	.driver = {
> +		.name	= "cdns_ttc_timer",
> +		.of_match_table = ttc_timer_of_match,
> +	},
> +};
> +builtin_platform_driver_probe(ttc_timer_driver, ttc_timer_probe);
> --
> 2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
