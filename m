Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC86182972
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 03:55:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/xzhDzIU5O6eBwQKx/WqDXC7p9Qz0lrK7IMIEiS0Pno=; b=U7jrv0C3RSHI+M
	fJKipTR6d+c1/v+21/oZaQDT69oFXzuho+DPoiAMlXKX62BLbVqpsW7Nn+rMxVRRqK3B5+IeWYnZC
	oYouakJq2YKhpLDG4xy9NWG7eeZ4fIL1+EWpfVmV66VQBzykkB/aY9VfBpTot9QRYA48cZ97CgGev
	2XHkheXcK/BhZxFWvH0hII/MppFh7wbuBfEZy+761s9nZlFe5blIMOUKL0jZi//AS7Yoda+lyvo8Z
	qvsmjQaLL0dO8ZZzPKwbLBxyK/oHTWNfd5gT6fiaEPpYB0gnsqypYPpKRjgzdWSycfxqmt6DJDtWh
	2cWAsa0MAu2C0C+Ti94Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huohY-0007cC-8Z; Tue, 06 Aug 2019 01:55:48 +0000
Received: from mail-eopbgr70075.outbound.protection.outlook.com ([40.107.7.75]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huohP-0007bM-Jw
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 01:55:41 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YdVdKIXR1l/YAKrF/ehgAmjloJ/Ky6JjITkv85GVsauTSUoonNK9QzJZhbcVxVohU1cJksjU4m9A6rzs49uNHO327SL802AWIhS6l+pUGamBIQy0X2PSa637MqmtUHHxqLFzdAAkKCzOIK2Sexf7ajo9oEsqf2w2xHMZ4O6LfNT3b3a+aYbIrfE4czDVKDUtEb//YJcccSz8yAM3K3znlJAToWr8ZQTHlmXCURKOSLHcVT5znDCjY+gNUS0ZLd9t2Y86TDs/vvOqnFNsmeJo6xO238z6MbIoUlJxXoRW6xJAzaDTQWg4SR4//BmoSPYJBrh6eJGzJpk3r3Unsn++Lg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BfkeCaQlWlgFserY3ZrBIfCH08boVsY4H7XHT04L0sU=;
 b=jDfKa01v/kQshBCLZApNQS4ZiidpER7qmyLmSFx6MR0osJL68vOmE2m7OYIjw+5qT/7YjsLrvUKovPTztgXrOTjLq0K8IDXlwRprozORe9emXNapmCwWPxykzG8fE4C78APx/qb0MBozDes3jr4lzs1jddPFLTT6dSrQAMTHICT6yEt70PzuP+Iv5dXBS4jtZGWGX1azwcgzsxeCi6c49c28UVVOs7/Wq3tjvXieFusgCMGfMV+bhGR52KkQcAXIuYgtGdVOKd7/j5gIhhMo5vDg1c+sVkG3JI9T9VyiJwZCGCkNIj/LZpP9gGDmiRxYj4/fEKaOi/nanxnNbSONgw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=nxp.com;dmarc=pass action=none header.from=nxp.com;dkim=pass
 header.d=nxp.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BfkeCaQlWlgFserY3ZrBIfCH08boVsY4H7XHT04L0sU=;
 b=f/SpXEHkJ012H5pboxSBdGB9/jn0Iag88a/1XbZOgGFidjUcBohk4xOG++ZpnyN0o21Oqauc1FS2KdlAGPEJQRGnJwtPjrfIefkAQnAhXib0sNz2QYNwcVk1ZpPn7vbMSKHuVdLM1FrhObgXxUnXkfmEKofZ8lE0xIy80nuhsWo=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3852.eurprd04.prod.outlook.com (52.134.71.143) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2136.16; Tue, 6 Aug 2019 01:55:33 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::7cdf:bddc:212c:f77e]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::7cdf:bddc:212c:f77e%4]) with mapi id 15.20.2136.018; Tue, 6 Aug 2019
 01:55:33 +0000
From: Anson Huang <anson.huang@nxp.com>
To: "catalin.marinas@arm.com" <catalin.marinas@arm.com>, "will@kernel.org"
 <will@kernel.org>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "mark.rutland@arm.com" <mark.rutland@arm.com>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>, "festevam@gmail.com"
 <festevam@gmail.com>, dl-linux-imx <linux-imx@nxp.com>,
 "daniel.lezcano@linaro.org" <daniel.lezcano@linaro.org>, "tglx@linutronix.de"
 <tglx@linutronix.de>, Leonard Crestez <leonard.crestez@nxp.com>, Aisheng Dong
 <aisheng.dong@nxp.com>, Daniel Baluta <daniel.baluta@nxp.com>, Jacky Bai
 <ping.bai@nxp.com>, "l.stach@pengutronix.de" <l.stach@pengutronix.de>, Abel
 Vesa <abel.vesa@nxp.com>, "andrew.smirnov@gmail.com"
 <andrew.smirnov@gmail.com>, "ccaione@baylibre.com" <ccaione@baylibre.com>,
 "angus@akkea.ca" <angus@akkea.ca>, "agx@sigxcpu.org" <agx@sigxcpu.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>
Subject: RE: [PATCH V5 1/5] clocksource: imx-sysctr: Add internal clock
 divider handle
Thread-Topic: [PATCH V5 1/5] clocksource: imx-sysctr: Add internal clock
 divider handle
Thread-Index: AQHVNupa/BF0ohbs50COjHmVK/z9Babthhpw
Date: Tue, 6 Aug 2019 01:55:32 +0000
Message-ID: <DB3PR0402MB3916B06E8907604A71169063F5D50@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <20190710063056.35689-1-Anson.Huang@nxp.com>
In-Reply-To: <20190710063056.35689-1-Anson.Huang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 94f5b32b-3ce9-448f-f2e2-08d71a112ad4
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3852; 
x-ms-traffictypediagnostic: DB3PR0402MB3852:
x-microsoft-antispam-prvs: <DB3PR0402MB3852CCEEEA3DCE61CD03316FF5D50@DB3PR0402MB3852.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 0121F24F22
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(136003)(366004)(376002)(346002)(39860400002)(189003)(199004)(99286004)(8936002)(110136005)(7736002)(81166006)(33656002)(81156014)(8676002)(305945005)(229853002)(316002)(2201001)(6116002)(3846002)(256004)(4326008)(6246003)(2906002)(478600001)(25786009)(2501003)(7696005)(76176011)(5660300002)(66066001)(71200400001)(52536014)(55016002)(476003)(26005)(68736007)(486006)(186003)(102836004)(71190400001)(9686003)(446003)(11346002)(74316002)(53936002)(6436002)(66946007)(66556008)(64756008)(6506007)(86362001)(7416002)(66476007)(76116006)(14454004)(66446008)(44832011)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3852;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: lp+9fGIieLJmvfMNYjldcpoVy6NLdrsyGTwKFWFD927dN8361QgYAwHiSqOVKOEbg+0UsPMAh3Sz8tlxGCB5aHNqNTvmWz3APkUD/VlVmRq2Rps/AqFjQSpbgCrTWN91jkQ72cUWy63TBfBhCTqpejA2Mz0Wtyigbc/osc7Fqk30DWGJzffJh9ESiXaZxkN8Ei71tNTYWI5jXhFPOlpPe8VvY8t8N5WUr84yr4sSppU/F/SbDFLBqrw6VwJFcqVXk7TNkqNcM+y3EUwE9U86W1IlpnPk/lWAf7qL1yEEvsQu3412J6dr82Di8s7HRwddRLVtfTVwGlGtq/5BLegRB4VnqCZwGtZeM13HcGIgvictzlqHKnphovp9h/MA/Oyi3jXXa2nQr3TsRhpvl7VeDfDNx+n6wW7FDhljFdTWEIE=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 94f5b32b-3ce9-448f-f2e2-08d71a112ad4
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Aug 2019 01:55:33.0420 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: anson.huang@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3852
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_185539_746789_E1807C39 
X-CRM114-Status: GOOD (  17.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.75 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Gentle ping...

> From: Anson Huang <Anson.Huang@nxp.com>
> 
> The system counter block guide states that the base clock is internally divided
> by 3 before use, that means the clock input of system counter defined in DT
> should be base clock which is normally from OSC, and then internally divided
> by 3 before use.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
> Changes since V4:
> 	- to solve the clock driver probed after system counter driver issue,
> now we can easily switch to
> 	  use fixed clock defined in DT and get its rate, then divided by 3 to
> get real clock rate for
> 	  system counter driver, no need to add "clock-frequency" property in
> DT.
> ---
>  drivers/clocksource/timer-imx-sysctr.c | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/drivers/clocksource/timer-imx-sysctr.c
> b/drivers/clocksource/timer-imx-sysctr.c
> index fd7d680..b7c80a3 100644
> --- a/drivers/clocksource/timer-imx-sysctr.c
> +++ b/drivers/clocksource/timer-imx-sysctr.c
> @@ -20,6 +20,8 @@
>  #define SYS_CTR_EN		0x1
>  #define SYS_CTR_IRQ_MASK	0x2
> 
> +#define SYS_CTR_CLK_DIV		0x3
> +
>  static void __iomem *sys_ctr_base;
>  static u32 cmpcr;
> 
> @@ -134,6 +136,9 @@ static int __init sysctr_timer_init(struct device_node
> *np)
>  	if (ret)
>  		return ret;
> 
> +	/* system counter clock is divided by 3 internally */
> +	to_sysctr.of_clk.rate /= SYS_CTR_CLK_DIV;
> +
>  	sys_ctr_base = timer_of_base(&to_sysctr);
>  	cmpcr = readl(sys_ctr_base + CMPCR);
>  	cmpcr &= ~SYS_CTR_EN;
> --
> 2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
