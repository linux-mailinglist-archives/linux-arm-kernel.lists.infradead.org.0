Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6748D1B9F33
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 10:59:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kSJo3H0KrtWQw90muudMhwIX23igT2G+B2y5a42eb7k=; b=WpZi4DGdzCjS4L
	UPvCohcc6Dyym8iclzXTt34lPTLZeGVw2uDPnoOWZdhKwRqNxo1oaPMKXgHx3gl+5fLHYuudJAo4s
	mTNZdYbCjfqqEEu0YdXOvGITQHgHNIzpQXDXqDSmiWOKjDNAqrAkmoVrqfEUPdCq5XvrsxiVOhHaz
	q5MKtWeALi8jfNV86MKyTBQXpptxtSFNtgtCFpi8i7RlSQjtG8I+PnRY4C6YWBejXLUbyyn9dcwAc
	56No17SWcu9QYbQzWiyNaXQxDCmpid4gLwMJ1YSvmg9pnqFIEfuTw3IDHI0v0MvVRQefkpJkMktjo
	QpgIM/zy/wIhkJAlmftQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSzbW-00069A-21; Mon, 27 Apr 2020 08:59:06 +0000
Received: from mail-vi1eur05on2086.outbound.protection.outlook.com
 ([40.107.21.86] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSzbI-000689-RR
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 08:58:54 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=i9f/fq3blev9rbCEpL2w1bNP3PjbUFV0NeHkTHd2YGB9CDQ2rLuqjhFpcT1nkRnol8dV3HqLpGPLKVAK1X3dOqo1BwyzBAVf34SqXI8O0zP8bYM+jpcaIIe6H5NlJFqNiAVGLtKddcQDFypFQTmg8aqbdSjj8wLLtBLKCwLZvBYxpx3ma3Bx631QgH/gJgBuba5ObG42Y8rHIdswfg1dLthU6SqakhzuzCQhO58zqrgvDNgvPwUNoEit9WUr5BkrnTlQp6pbSQ3oGJF9P5BWaLJWTG2P0PzD4Ox2wTkB6IrR23aPqBcql+RhtRJzHpwyq87CvFeMRFyS4SQuSNxj5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7L+t0uo8/Q6dvV762NrAvxk+bHM+qr1Hptvt6C8Sglw=;
 b=kULDH4e7q2196XegGoo8p4WAW1rQCXzg4YxqmdtaHQrdn/H+Chitp1CZ7/9usCIusJ1qHjDLgmwd/iGAjnCHp4erLDcj975NguzrYtFj+q5g7curf4bhTY3mRNKetlCS2/aW7edMAaQbyC51tB/j2CGIrmf2gChEfCxKB0bLZKTyk2hhPA6Os1C+rQTx0Ofima3+zpTTkGjKWNddCCrpCqUPSe4sw9jAuY0ToBJ2XtjUMcz5thleftCwPNObR75uxGSkPG/KWGW1PxnyET9xEGX0RkcN2Tm7xhYTjeAbZW0qWDDc7i7hm9nmFBq/63y/MrQeZEnih2LrLEGmckoWqQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7L+t0uo8/Q6dvV762NrAvxk+bHM+qr1Hptvt6C8Sglw=;
 b=ThZEAUXk/VqPDZ7A2SqqjvGzmcnSwTKQaC5I3SUVOaQBm2BpDnYzIOL21Xy5sn+jlZBAIiSTG/ihCKZGtuFO3Lz7XxpXKPrSBhksPN8vjCKFtpWWwK6r5nKszFn9DjOXGpEXRzNnl04laI4YURHI1ycsbynvbo0aRK8Pr1zM5os=
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com (2603:10a6:4:a1::14)
 by DB6PR0402MB2711.eurprd04.prod.outlook.com (2603:10a6:4:96::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.13; Mon, 27 Apr
 2020 08:58:50 +0000
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871]) by DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871%6]) with mapi id 15.20.2937.020; Mon, 27 Apr 2020
 08:58:49 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Aisheng Dong <aisheng.dong@nxp.com>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>, "sboyd@kernel.org"
 <sboyd@kernel.org>, Abel Vesa <abel.vesa@nxp.com>
Subject: RE: [PATCH V2 06/10] clk: imx8m: migrate A53 clk root to use
 composite core
Thread-Topic: [PATCH V2 06/10] clk: imx8m: migrate A53 clk root to use
 composite core
Thread-Index: AQHV+FjKzuc7KbaUCkiuyqa70SF6FKiLGbaAgAHZnPA=
Date: Mon, 27 Apr 2020 08:58:49 +0000
Message-ID: <DB6PR0402MB276031ADC7FB0209973655F588AF0@DB6PR0402MB2760.eurprd04.prod.outlook.com>
References: <1584008384-11578-1-git-send-email-peng.fan@nxp.com>
 <1584008384-11578-7-git-send-email-peng.fan@nxp.com>
 <AM6PR04MB49664159E56A48EC6C4CBCC880AE0@AM6PR04MB4966.eurprd04.prod.outlook.com>
In-Reply-To: <AM6PR04MB49664159E56A48EC6C4CBCC880AE0@AM6PR04MB4966.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 4f433613-9d8d-4aed-15e9-08d7ea8933f4
x-ms-traffictypediagnostic: DB6PR0402MB2711:|DB6PR0402MB2711:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB6PR0402MB2711842FC7F027349FDC5DB588AF0@DB6PR0402MB2711.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4125;
x-forefront-prvs: 0386B406AA
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB6PR0402MB2760.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(346002)(376002)(396003)(136003)(366004)(39860400002)(81156014)(8676002)(44832011)(33656002)(186003)(52536014)(110136005)(9686003)(7416002)(316002)(478600001)(54906003)(5660300002)(2906002)(8936002)(4326008)(55016002)(7696005)(6506007)(86362001)(26005)(6636002)(66556008)(64756008)(66446008)(76116006)(71200400001)(66476007)(66946007)(32563001);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: TeyeVhKxajZgndDBHCjV/ZPYebI3+pfEMB3t0ic6LzdgyBMSCmtt9DDpidA4IZXvvo2kilD6hUJ5CUcozPA2dc9ohVwXArJxQ5R97mZG0jcM4beLenObCvEWXeZRLDwR7JUwm2d3s+FDxIovJR9KLrreiQi324nW5m2eknBzdudO1b1HmzGRxKuKfjrJj6A+Kfme2sa+h/5+pzxHGBQeVWPsYMAbifXAgdSCXGoLyWAHwyxcZPV2kAXVBOiooEZUj1HFXZA0POE4Sm0F7YpYUW4F7iztxUi+39nwlYQAy8W7RdqpS8AMw2sNrC2Sv9zKQBUzUZhydObCScVBdEjk3E7nQpelijtFhxm3wyp2Aba0cr+xok7DnfLuM8s79Fy9OGQ++c63oYgfTeNlbIzs6AIAGfpQ9SqbNWB1QVRHAEPTUnyjXEpgM0eieCM0vgRbhk4B3lNlqhvt7WIYUh4uxeek0MuXYFw7V84Yo5pEkYMzsYqNixv+un2Vvi6A76xy
x-ms-exchange-antispam-messagedata: AxW7748LINQh++khNOZLxSMZP01/fZ2qCKNVZ9lsLcWmuC5srU6U8yuKZAfXA4k/AuTjcsXQktl+AKAKFEUyqyftHddSID2aJ20KWBjAi7CnpHB/by22ahleWB/5jhOw2ygp1+crLeQpereKh+EfYUKFGmt0nWpYgeYBWZCEQF1baS8LjnAkRENOguxlhXZSkQBo/ZE8MNRon2n0MmHT6j4ZAOk/SVgbazYZqpij3gXjpp21dP8j6N+d29c/NSocONp5tauusNw11iwuSUbWv0kHcBvK0Nc1oRkSv5fWJ2B5s8Qxq+BVFB8T1MV2dFJODKcmMJTelRsTM3snwcuYSXqs2iMoehGCRLbFwNbHkqxSTiz6ah5haQmIGG3hmgvtiAtg1aRG7929aOBieB9YF8PiI4hqTa04bdBYlY8/ffMdov3nkkxMC6v3/nCdPIJcOGOm7AvFVglWk6eqynPK1fLFxXNkhuIp0HSNlK4B1iQAIe5kzYDukB10prGFaEmNRUOqMJQ64Pc3kHVtrRki6ecPhmLK93PwApoPZIFJqHmwVkKaxL65wb11t0NGxpRZUkYvGEFgIbmqyHbddNzxU1bfFRf8zb38/CZn7uNiEx8NnytQ9qncmAbSNlTfYH+jkK4qXZLZX8VEYofbIkdgZ3tsRZFKlIbgkonJZQadpPS4hXOfBTiHeiea/P66ydUwpXoq3P8VHwEfeQ5CV4YNkxHAknmpM0O0H+r56sAxqhN61/HVk31TKUZDmHeyv/OF9tKVAfE14csZV4N31/Q1w9jbZrlitCCWUdOgMlPvNeY=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4f433613-9d8d-4aed-15e9-08d7ea8933f4
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Apr 2020 08:58:49.8158 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6U+NEGZGfR09G6NWal/2gnXHB+siy1yonW9MgNb7ssRhda/heJiryjo300LYNVZUDv531ownRFY7cj79LjzH3g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0402MB2711
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_015852_887979_9F7AD10A 
X-CRM114-Status: GOOD (  16.69  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.21.86 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.21.86 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Andy Duan <fugang.duan@nxp.com>, Jacky Bai <ping.bai@nxp.com>,
 Anson Huang <anson.huang@nxp.com>,
 "andrew.smirnov@gmail.com" <andrew.smirnov@gmail.com>,
 Daniel Baluta <daniel.baluta@nxp.com>, "agx@sigxcpu.org" <agx@sigxcpu.org>,
 "angus@akkea.ca" <angus@akkea.ca>, "heiko@sntech.de" <heiko@sntech.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "aford173@gmail.com" <aford173@gmail.com>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Jun Li <jun.li@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> Subject: RE: [PATCH V2 06/10] clk: imx8m: migrate A53 clk root to use
> composite core
> 
> > From: Peng Fan <peng.fan@nxp.com>
> > Sent: Thursday, March 12, 2020 6:20 PM
> >
> > Migrate A53 clk root to use composite core clk type. It will simplify
> > code and make it easy to use composite specific mux operation.
> >
> > Signed-off-by: Peng Fan <peng.fan@nxp.com>
> > ---
> >  drivers/clk/imx/clk-imx8mm.c | 6 +++---  drivers/clk/imx/clk-imx8mn.c
> > | 6
> > +++---  drivers/clk/imx/clk-imx8mq.c | 6 +++---
> >  3 files changed, 9 insertions(+), 9 deletions(-)
> >
> > diff --git a/drivers/clk/imx/clk-imx8mm.c
> > b/drivers/clk/imx/clk-imx8mm.c index
> > 5435042a06e3..12443e06f329 100644
> > --- a/drivers/clk/imx/clk-imx8mm.c
> > +++ b/drivers/clk/imx/clk-imx8mm.c
> > @@ -416,9 +416,9 @@ static int imx8mm_clocks_probe(struct
> > platform_device *pdev)
> >  		return PTR_ERR(base);
> >
> >  	/* Core Slice */
> > -	hws[IMX8MM_CLK_A53_SRC] = imx_clk_hw_mux2("arm_a53_src",
> base +
> > 0x8000, 24, 3, imx8mm_a53_sels, ARRAY_SIZE(imx8mm_a53_sels));
> > -	hws[IMX8MM_CLK_A53_CG] = imx_clk_hw_gate3("arm_a53_cg",
> > "arm_a53_src", base + 0x8000, 28);
> > -	hws[IMX8MM_CLK_A53_DIV] = imx_clk_hw_divider2("arm_a53_div",
> > "arm_a53_cg", base + 0x8000, 0, 3);
> > +	hws[IMX8MM_CLK_A53_DIV] =
> > imx8m_clk_hw_composite_core("arm_a53_div", imx8mm_a53_sels, base +
> > 0x8000);
> > +	hws[IMX8MM_CLK_A53_CG] = hws[IMX8MM_CLK_A53_DIV];
> > +	hws[IMX8MM_CLK_A53_SRC] = hws[IMX8MM_CLK_A53_DIV];
> 
> The former patch already breaks the compatibility.
> Not sure if we really need keep it for only A53 clock here as we are still at
> very early enablement Phase for MX8MP.  So we may just remove them
> IMHO.

i.MX8MM, not i.MX8MP.

Thanks,
Peng.

> Shawn, what's your suggestion?
> 
> Regards
> Aisheng
> 
> >
> >  	hws[IMX8MM_CLK_M4_CORE] =
> > imx8m_clk_hw_composite_core("arm_m4_core", imx8mm_m4_sels, base +
> > 0x8080);
> >  	hws[IMX8MM_CLK_VPU_CORE] =
> > imx8m_clk_hw_composite_core("vpu_core", imx8mm_vpu_sels, base +
> > 0x8100); diff --git a/drivers/clk/imx/clk-imx8mn.c
> > b/drivers/clk/imx/clk-imx8mn.c index 6cac6ca03e12..bd3759b4afd0
> 100644
> > --- a/drivers/clk/imx/clk-imx8mn.c
> > +++ b/drivers/clk/imx/clk-imx8mn.c
> > @@ -413,9 +413,9 @@ static int imx8mn_clocks_probe(struct
> > platform_device
> > *pdev)
> >  	}
> >
> >  	/* CORE */
> > -	hws[IMX8MN_CLK_A53_SRC] = imx_clk_hw_mux2("arm_a53_src", base
> +
> > 0x8000, 24, 3, imx8mn_a53_sels, ARRAY_SIZE(imx8mn_a53_sels));
> > -	hws[IMX8MN_CLK_A53_CG] = imx_clk_hw_gate3("arm_a53_cg",
> > "arm_a53_src", base + 0x8000, 28);
> > -	hws[IMX8MN_CLK_A53_DIV] = imx_clk_hw_divider2("arm_a53_div",
> > "arm_a53_cg", base + 0x8000, 0, 3);
> > +	hws[IMX8MN_CLK_A53_DIV] =
> > imx8m_clk_hw_composite_core("arm_a53_div", imx8mn_a53_sels, base +
> > 0x8000);
> > +	hws[IMX8MN_CLK_A53_SRC] = hws[IMX8MN_CLK_A53_DIV];
> > +	hws[IMX8MN_CLK_A53_CG] = hws[IMX8MN_CLK_A53_DIV];
> >
> >  	hws[IMX8MN_CLK_GPU_CORE] =
> > imx8m_clk_hw_composite_core("gpu_core", imx8mn_gpu_core_sels, base
> +
> > 0x8180);
> >  	hws[IMX8MN_CLK_GPU_SHADER] =
> > imx8m_clk_hw_composite_core("gpu_shader", imx8mn_gpu_shader_sels,
> base
> > + 0x8200); diff --git a/drivers/clk/imx/clk-imx8mq.c
> > b/drivers/clk/imx/clk-imx8mq.c index 201c7bbb201f..91309ff65441 100644
> > --- a/drivers/clk/imx/clk-imx8mq.c
> > +++ b/drivers/clk/imx/clk-imx8mq.c
> > @@ -405,9 +405,9 @@ static int imx8mq_clocks_probe(struct
> > platform_device
> > *pdev)
> >  		return PTR_ERR(base);
> >
> >  	/* CORE */
> > -	hws[IMX8MQ_CLK_A53_SRC] = imx_clk_hw_mux2("arm_a53_src", base
> +
> > 0x8000, 24, 3, imx8mq_a53_sels, ARRAY_SIZE(imx8mq_a53_sels));
> > -	hws[IMX8MQ_CLK_A53_CG] = imx_clk_hw_gate3_flags("arm_a53_cg",
> > "arm_a53_src", base + 0x8000, 28, CLK_IS_CRITICAL);
> > -	hws[IMX8MQ_CLK_A53_DIV] = imx_clk_hw_divider2("arm_a53_div",
> > "arm_a53_cg", base + 0x8000, 0, 3);
> > +	hws[IMX8MQ_CLK_A53_DIV] =
> > imx8m_clk_hw_composite_core("arm_a53_div", imx8mq_a53_sels, base +
> > 0x8000);
> > +	hws[IMX8MQ_CLK_A53_CG] = hws[IMX8MQ_CLK_A53_DIV];
> > +	hws[IMX8MQ_CLK_A53_SRC] = hws[IMX8MQ_CLK_A53_DIV];
> >
> >  	hws[IMX8MQ_CLK_M4_CORE] =
> > imx8m_clk_hw_composite_core("arm_m4_core", imx8mq_arm_m4_sels,
> base
> > + 0x8080);
> >  	hws[IMX8MQ_CLK_VPU_CORE] =
> > imx8m_clk_hw_composite_core("vpu_core", imx8mq_vpu_sels, base +
> > 0x8100);
> > --
> > 2.16.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
