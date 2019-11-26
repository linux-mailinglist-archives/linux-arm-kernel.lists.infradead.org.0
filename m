Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE49A109D5E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 Nov 2019 12:57:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=04qhbHX+GgPT42rwjXjeF8IQ0dH5sKUNeecSinaQdxc=; b=I51+pWJurGvNfj
	34GHLuPSanXaldm/cdg5B0N+J12YWGKyjx/aq1CTURL0K947zT6EiwRk8WKD/uJnDmM1WUaFVHe1k
	VXMN34y79a48D1hg8GFM9ugml/f9UnUGT9xPZa0iJ0piqgAisUpNGHeSiFAzAwUBHcyuar3sllP67
	Qi/afTA8+2hTbTfWOho5PUm2jGXwRwB96VZGmVLCeSiuYAsSaTJ8kFq5qGqh3vCwjnsq/XCjG05cV
	/iFyIa3JmqhFg6lmLGtb8F2AJUOquuEdo/aIxeNmKDMXrJiCEm17VZAvFmVOTwB+U/FzsZvWVoSNl
	X9s+4Gvp6GH4j8S8asxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZZSm-00015U-KN; Tue, 26 Nov 2019 11:57:00 +0000
Received: from mail-eopbgr790054.outbound.protection.outlook.com
 ([40.107.79.54] helo=NAM03-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZZSS-0000as-AB
 for linux-arm-kernel@lists.infradead.org; Tue, 26 Nov 2019 11:56:41 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=h5RUw7q0ndUpTWrrrcdCwgmEtGPUxIUI189c4GaJDHSVzRSPt0PLHMRXdiWMw95O3+D+rbvlypj+gcZxDo0O1GfHj+/MnD1CXZHSd5v8SLk/3Q9UJt0npIW+VoP9bRTV6bcveU8UGD5HOwc3eVTmrmcMVn/oWhVDKiOQ3+O9DkiBA8YgWO1Onyi9qnZ80++nUN99yS8sM73wsCGF/rrAJbxWHYWgv+PcFNzDXfrFbir280brBkQtkVV0GCCbpo6DZRhObLe4bN8TEbOrxn3JXrRkdzpusVNuypCwnV18qpW4/qor5F1e9F0TZLfTZWh8MERfcTY+KF/zAuwiDqB/rQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uoz0kP7TlyyO8x7+RhU2QNe28uAYxMWtipV31PkCT0k=;
 b=bHx6hKpoutKIkx1wk+nFTYJE+SjAQFRiEACe/bdSsh2YXE1yiTggKcAHXeRdEDqvWvkq+JW2rCd2YFLxd1B+pkGDKI/L7gJ3OJdcY0f88rVMUx3mDej57csBzKvFSfzhT9YjnOBbP8D+4HuapdL7I3BbWHIPaWzOQHgXBNvqJP5eyCEz9XXoMxxRn5bNS4lEmPkQwJLwXw6FBB4s4+nReRB8fXIPUFrFIFI8rB9vsgZKNTrZLjjJGT7ZmlRCUF1P6FhNsf04opLE9S4FRq+iiOSP/amA+exPSSXx2jd3KySOPVkFS6kzoyD+Tj6Lhe9WcpsStWzadnavor9xmQNG7w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=xilinx.com; dmarc=pass action=none header.from=xilinx.com;
 dkim=pass header.d=xilinx.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uoz0kP7TlyyO8x7+RhU2QNe28uAYxMWtipV31PkCT0k=;
 b=Y8HjHE2YaJE3kYJyDQhY3ki4AKAgZrlMd/wgufzTjZNNffRsKfTfLblagSj+ID7M800/Y0zwlO+BIVRVqiMbF/jObEfq5ytKZML8RLhcxw5EQLfJ/9CdH+tEyWhN1x9/NN2iloPNqXWF9q/6jUHkVB5ueTnaY78DFzsXPV7UWPw=
Received: from BYAPR02MB4055.namprd02.prod.outlook.com (52.135.202.143) by
 BYAPR02MB4696.namprd02.prod.outlook.com (52.135.235.209) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2474.17; Tue, 26 Nov 2019 11:56:37 +0000
Received: from BYAPR02MB4055.namprd02.prod.outlook.com
 ([fe80::fccc:d399:e650:9a9e]) by BYAPR02MB4055.namprd02.prod.outlook.com
 ([fe80::fccc:d399:e650:9a9e%5]) with mapi id 15.20.2474.023; Tue, 26 Nov 2019
 11:56:36 +0000
From: Rajan Vaja <RAJANV@xilinx.com>
To: "daniel.lezcano@linaro.org" <daniel.lezcano@linaro.org>,
 "tglx@linutronix.de" <tglx@linutronix.de>
Subject: RE: [PATCH] drivers: clocksource: Use ttc driver as platform driver
Thread-Topic: [PATCH] drivers: clocksource: Use ttc driver as platform driver
Thread-Index: AQHVlVaOW+EHQwVffUWJv7WplPkHr6edcAHggAAGWTA=
Date: Tue, 26 Nov 2019 11:56:36 +0000
Message-ID: <BYAPR02MB40553CE8C7355FBA8E659F22B7450@BYAPR02MB4055.namprd02.prod.outlook.com>
References: <1573122659-13947-1-git-send-email-rajan.vaja@xilinx.com>
 <BYAPR02MB4055F607B83F35B5FBF68CC6B7450@BYAPR02MB4055.namprd02.prod.outlook.com>
In-Reply-To: <BYAPR02MB4055F607B83F35B5FBF68CC6B7450@BYAPR02MB4055.namprd02.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=RAJANV@xilinx.com; 
x-originating-ip: [14.142.15.114]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 8258dc0f-0f8f-4d65-4eea-08d77267b0ce
x-ms-traffictypediagnostic: BYAPR02MB4696:
x-microsoft-antispam-prvs: <BYAPR02MB4696C40008F7EE939F514F56B7450@BYAPR02MB4696.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4941;
x-forefront-prvs: 0233768B38
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(136003)(39860400002)(396003)(366004)(376002)(189003)(13464003)(199004)(478600001)(14454004)(8936002)(86362001)(66946007)(66476007)(66556008)(64756008)(55236004)(2501003)(76176011)(316002)(7696005)(6506007)(5660300002)(55016002)(66446008)(229853002)(256004)(14444005)(2906002)(33656002)(7736002)(305945005)(102836004)(74316002)(3846002)(26005)(186003)(71190400001)(6116002)(4326008)(71200400001)(52536014)(110136005)(53546011)(54906003)(99286004)(25786009)(76116006)(2940100002)(81156014)(9686003)(8676002)(66066001)(446003)(6436002)(6246003)(81166006)(11346002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR02MB4696;
 H:BYAPR02MB4055.namprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: xilinx.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Cd09L+3NHlOri9vCPQS1U+EVyakNttCHioqctZRvSWN8AJeYde/E4cxohZ+DmqFysmaPGCv+wU/YPKyx/0JZMjwggtWaQZStm5ZQGjWXNTF7ST7I8nhBA8eambNwUKfwqIdKz0LdofjE0KYKwhgzPdl5jp+vR3bO5YjFX7LRkJZS6TeHyheIY1WYHPE04jx4lm0o+5khTMIdj7BRsAia8nEmbFwNcfymOLFHUduOdg+r3eAEtLFg986DeQdZMxk28p/1b69Isa7cGiusgTx1qO32TIgiC8xQ7UYpwp4MpDv0SAHH3dygKPs08ASbR68tCzOo73mtaEses5zKKY3l8MBnwSBWNubw1q2cCNBOyDzZe7KYGMpDXYqbV89RCF9ogkUnnXyF7qzsarrdnA7/m27H2W+41nO2SKgrr6JS8WPYS5BhOZKQgLpSxSKc90VZ
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8258dc0f-0f8f-4d65-4eea-08d77267b0ce
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Nov 2019 11:56:36.8853 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +cGXQUABB1zs/9WRWPHSHi3m0HtnNJ8v1acP01rgR6tL4LWUaAqe7hp+mrZOL9M5ap+wQyrbsHahhLCsNvP2Nw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR02MB4696
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_035640_368626_FCC8DCA6 
X-CRM114-Status: GOOD (  18.43  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.79.54 listed in list.dnswl.org]
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

Please ignore this request.

Thanks,
Rajan

> -----Original Message-----
> From: Rajan Vaja
> Sent: 26 November 2019 05:06 PM
> To: Rajan Vaja <RAJANV@xilinx.com>; ichal.simek@xilinx.com;
> daniel.lezcano@linaro.org; tglx@linutronix.de
> Cc: linux-arm-kernel@lists.infradead.org; linux-kernel@vger.kernel.org
> Subject: RE: [PATCH] drivers: clocksource: Use ttc driver as platform driver
> 
> Request for review.
> 
> Thanks,
> Rajan
> 
> > -----Original Message-----
> > From: Rajan Vaja <rajan.vaja@xilinx.com>
> > Sent: 07 November 2019 04:01 PM
> > To: ichal.simek@xilinx.com; daniel.lezcano@linaro.org; tglx@linutronix.de
> > Cc: linux-arm-kernel@lists.infradead.org; linux-kernel@vger.kernel.org; Rajan
> Vaja
> > <RAJANV@xilinx.com>
> > Subject: [PATCH] drivers: clocksource: Use ttc driver as platform driver
> >
> > Currently TTC driver is TIMER_OF_DECLARE type driver. Because of
> > that, TTC driver may be initialized before other clock drivers. If
> > TTC driver is dependent on that clock driver then initialization of
> > TTC driver will failed.
> >
> > So use TTC driver as platform driver instead of using
> > TIMER_OF_DECLARE.
> >
> > Signed-off-by: Rajan Vaja <rajan.vaja@xilinx.com>
> > ---
> >  drivers/clocksource/timer-cadence-ttc.c | 26 ++++++++++++++++++--------
> >  1 file changed, 18 insertions(+), 8 deletions(-)
> >
> > diff --git a/drivers/clocksource/timer-cadence-ttc.c b/drivers/clocksource/timer-
> > cadence-ttc.c
> > index 88fe2e9..38858e1 100644
> > --- a/drivers/clocksource/timer-cadence-ttc.c
> > +++ b/drivers/clocksource/timer-cadence-ttc.c
> > @@ -15,6 +15,8 @@
> >  #include <linux/of_irq.h>
> >  #include <linux/slab.h>
> >  #include <linux/sched_clock.h>
> > +#include <linux/module.h>
> > +#include <linux/of_platform.h>
> >
> >  /*
> >   * This driver configures the 2 16/32-bit count-up timers as follows:
> > @@ -464,13 +466,7 @@ static int __init ttc_setup_clockevent(struct clk *clk,
> >  	return 0;
> >  }
> >
> > -/**
> > - * ttc_timer_init - Initialize the timer
> > - *
> > - * Initializes the timer hardware and register the clock source and clock event
> > - * timers with Linux kernal timer framework
> > - */
> > -static int __init ttc_timer_init(struct device_node *timer)
> > +static int __init ttc_timer_probe(struct platform_device *pdev)
> >  {
> >  	unsigned int irq;
> >  	void __iomem *timer_baseaddr;
> > @@ -478,6 +474,7 @@ static int __init ttc_timer_init(struct device_node *timer)
> >  	static int initialized;
> >  	int clksel, ret;
> >  	u32 timer_width = 16;
> > +	struct device_node *timer = pdev->dev.of_node;
> >
> >  	if (initialized)
> >  		return 0;
> > @@ -532,4 +529,17 @@ static int __init ttc_timer_init(struct device_node
> *timer)
> >  	return 0;
> >  }
> >
> > -TIMER_OF_DECLARE(ttc, "cdns,ttc", ttc_timer_init);
> > +static const struct of_device_id ttc_timer_of_match[] = {
> > +	{.compatible = "cdns,ttc"},
> > +	{},
> > +};
> > +
> > +MODULE_DEVICE_TABLE(of, ttc_timer_of_match);
> > +
> > +static struct platform_driver ttc_timer_driver = {
> > +	.driver = {
> > +		.name	= "cdns_ttc_timer",
> > +		.of_match_table = ttc_timer_of_match,
> > +	},
> > +};
> > +builtin_platform_driver_probe(ttc_timer_driver, ttc_timer_probe);
> > --
> > 2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
