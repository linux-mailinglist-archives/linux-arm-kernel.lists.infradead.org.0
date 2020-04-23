Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC6D41B59AF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 12:54:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9cT0eMzIUqBimnSekEnGiSmPVvf0P+nQbFFcpwgGinI=; b=lZjCeLdI901Jtk
	3eaW7wu1M073M78UvihRhwkRt1E+z8+WvAhfSfkv3mKEQ798zx8g/apv98HFPsEhXklvw8gl+JUpk
	B3jtVB3E3okqYxY9pf3VPHyV4adyakYd4l/E74yIWki5YtZ5K9LlKpR+5ODYTiD/EEXT0p0MB3YF3
	8NlidFbYQ3crVS7fwKOXvIZIWZrAdjmogcZVLym6RdZRBOXpyT4aCvICk7bQmdwQ67CdTTjYoHNoP
	l81+2+e23R/kXzrWqCQ2Shr2K+xeFxRby1h0uVFi4dGsj68kZfu8aX3u1tvNr/I84sHMT/iQgJxEt
	m/LN0/ZcmyA041MDOH7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRZUQ-0005uY-Uj; Thu, 23 Apr 2020 10:53:54 +0000
Received: from mail-eopbgr60084.outbound.protection.outlook.com ([40.107.6.84]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRZUC-0005rB-7I
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Apr 2020 10:53:41 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bCRQomvGpQk1QYKau2n+XSJBfqLcFaEvLz8EnFOyu7cTqAslVZSvXA5kaC4wEGgFfTInQbGVqiA7srhKsO6LJAMuyB7Yaxj2YbFSN/GGwczIUS7B6L6wf14FTbaBfjZS9mT3Qvp11iMREcOEkvsk3f4K/GYjRhp9Dj/pYVLGaYXVawvoV7WFc20Ya9l+47tJvrQGg6TIYrHhcQWIGpaiK5RYXj95u9z3HcZIrHouTT16/4FugGvAhmA+jXkHKufpIYDmOarTECwOOaZNG7Qo90N0rtqOwSbk8YqX3hua8ITQs/P+4qTNNK0NDBEAYx/npjfg0RgjPDerNnh0K5QKXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=L6riY0DyntUrHz4LaSMdllRqrkaOnS98cV37+6F4LP0=;
 b=Wdy60ETr/ZtMPQLlvrnq6b72ph6nvyxO6kDC/L05G0+GMXMbT1a0oYakO8cdHc+p21yOMnB1xQKbSvZeKl16fIOoKbWUXR7gKLcpgGYtwrtIwSpw09qtNsT+Du72RUmYbvRCGrIQKKhZFjcRlLQYTQ/k9wuC5xmlcEIiVEHpCuWIuI0UAG6ulCUGabyHRUK5MbVvhOHJF+SezfgeQI0Yhr3k/YJHnV9u675z/MTi4SB2MqPk/6ew44DgA6uQBYulGYP2vjatAMGwA5EdUOA0R16QKOGCIef6C29/Dpm9J16f0i8kQeAWiOkOyc9PtzZgFtIRaCOd5ZAzTsIHaXKz2g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=L6riY0DyntUrHz4LaSMdllRqrkaOnS98cV37+6F4LP0=;
 b=BK9x/DNVvtYavmiNjQ3UGChsXAixt0WSI9Lc6gZ7gcbLnbuKJ72PtqI9ALjxSI4b/VKtgFNjcCfMq2x+qbaF5bO3Rgbiw5Kbz3oaD/N4sKpRuQzCWMJczrU6sRostYowxUXs4H8ljwe+iWDtB6RDo3ZRGUB3tyL+IROyDyF8lnk=
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com (2603:10a6:4:a1::14)
 by DB6PR0402MB2712.eurprd04.prod.outlook.com (2603:10a6:4:99::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.13; Thu, 23 Apr
 2020 10:53:37 +0000
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871]) by DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871%6]) with mapi id 15.20.2937.012; Thu, 23 Apr 2020
 10:53:37 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Aisheng Dong <aisheng.dong@nxp.com>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "sboyd@kernel.org" <sboyd@kernel.org>
Subject: RE: [PATCH] clk: imx: introduce imx_clk_hw_critical
Thread-Topic: [PATCH] clk: imx: introduce imx_clk_hw_critical
Thread-Index: AQHWGTz1S3ryZr4eI06QzGNLele1k6iGhU2AgAACxjA=
Date: Thu, 23 Apr 2020 10:53:37 +0000
Message-ID: <DB6PR0402MB2760793865AA2E67E1C33F4488D30@DB6PR0402MB2760.eurprd04.prod.outlook.com>
References: <1587624748-27228-1-git-send-email-peng.fan@nxp.com>
 <AM6PR04MB4966934EE0411F7C3FF5AA2F80D30@AM6PR04MB4966.eurprd04.prod.outlook.com>
In-Reply-To: <AM6PR04MB4966934EE0411F7C3FF5AA2F80D30@AM6PR04MB4966.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 9978d410-e856-4e8d-ae8b-08d7e77493c5
x-ms-traffictypediagnostic: DB6PR0402MB2712:|DB6PR0402MB2712:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB6PR0402MB2712BA657479F72170D82EAE88D30@DB6PR0402MB2712.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 03827AF76E
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB6PR0402MB2760.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(346002)(376002)(39860400002)(396003)(366004)(136003)(7696005)(8676002)(66556008)(64756008)(71200400001)(81156014)(52536014)(66446008)(66946007)(76116006)(66476007)(5660300002)(2906002)(26005)(86362001)(6506007)(478600001)(316002)(33656002)(54906003)(8936002)(4326008)(44832011)(9686003)(55016002)(186003)(110136005);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: xCTit5i8VsH+hzTgrTxkUqlEL+r2vhGkqYoKyp9035N9QHHYdqNh/3dVrLoLC7D0PPCCcYIQ77tdv8FQV9gGtJh+0pi+jxCzp+avkiFjjcB5h0kK0P1Fyz2MnISl5pLWZNfccwp2mLc/Ba2nSn6v0Au+6FO3GSjBzxm2uI/x78fTbWLOBv7d8x3JHfYXG37pNkUzyr06IHwQd6/5lqHJwp0T6G2yfklC/awLoFG0xIsYnnI6E8QpucOa6OfDGYEkUc0Dgp6IPKbaaIQ4YLrT2Emxfoq8BexoePBO6+0V+0JpL5T8wiZfr+lPMfiVnJU+g9B/YRe08Ul10KObBbovwIRShJfq4K337rVLmAFi3xClhp9Lc1boRzNpE2QhQoIVV9izmohF+z51TFKGn9IS5f8SnSzOimjEAS9DfqZ6zz742CNtLWtb/HxXeVsohZcz
x-ms-exchange-antispam-messagedata: 08zg3xPOK/PycDsMeLVXj1qYcX6k1KvxDhQCQOwdqa979kCVYKjRr8IShovSxwU/CU0LQD1y6yv0UwarQknroFDLsDV4PfuvB0mwxEOZ7v/TYixG2utwLtXH/vP/2PoOvZ9/BGe8ZJcOIZOeakLKWw==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9978d410-e856-4e8d-ae8b-08d7e77493c5
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Apr 2020 10:53:37.6333 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BZjtPZZ4+rj6dEqZTDABcqzI1cst5tVPScgbBHh1hR9JsmkX5x/SZiXLLRScOd69SRxUcU8UzisNEXYt99P2FA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0402MB2712
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_035340_268908_1C403C41 
X-CRM114-Status: GOOD (  19.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.84 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Abel Vesa <abel.vesa@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> Subject: RE: [PATCH] clk: imx: introduce imx_clk_hw_critical
> 
> > From: Peng Fan <peng.fan@nxp.com>
> > Sent: Thursday, April 23, 2020 2:52 PM
> >
> > To i.MX8M SoC, there is an case is when running dual OSes with
> > hypervisor, the clk of the hardware that passthrough to the 2nd OS
> > needs to be setup by 1st Linux OS.
> > So detect clock-critical from ccm node and enable the clocks to let
> > the 2nd OS could use the hardware without touch CCM module.
> >
> > Signed-off-by: Peng Fan <peng.fan@nxp.com>
> > ---
> >  drivers/clk/imx/clk.c | 19 +++++++++++++++++++  drivers/clk/imx/clk.h
> > |  1
> > +
> >  2 files changed, 20 insertions(+)
> >
> > diff --git a/drivers/clk/imx/clk.c b/drivers/clk/imx/clk.c index
> > 87ab8db3d282..ec7d422540c1 100644
> > --- a/drivers/clk/imx/clk.c
> > +++ b/drivers/clk/imx/clk.c
> > @@ -177,3 +177,22 @@ static int __init imx_clk_disable_uart(void)
> >  	return 0;
> >  }
> >  late_initcall_sync(imx_clk_disable_uart);
> > +
> > +int imx_clk_hw_critical(struct device_node *np, struct clk_hw * const
> > +hws[]) {
> > +	struct property *prop;
> > +	const __be32 *cur;
> > +	u32 idx;
> > +	int ret;
> > +
> > +	if (!np || !hws)
> > +		return -EINVAL;
> > +
> > +	of_property_for_each_u32(np, "clock-critical", prop, cur, idx) {
> 
> Is there a binding for it already?

I think clock-critical is a common bindings? See of_clk_detect_critical.
Please review whether this approach is acceptable, if do
need bindings, I could add that in v2.

Thanks,
Peng.

> 
> Regards
> Aisheng
> 
> > +		ret = clk_prepare_enable(hws[idx]->clk);
> > +		if (ret)
> > +			return ret;
> > +	}
> > +
> > +	return 0;
> > +}
> > diff --git a/drivers/clk/imx/clk.h b/drivers/clk/imx/clk.h index
> > d4ea1609bcb7..701d7440f98c 100644
> > --- a/drivers/clk/imx/clk.h
> > +++ b/drivers/clk/imx/clk.h
> > @@ -9,6 +9,7 @@ extern spinlock_t imx_ccm_lock;
> >
> >  void imx_check_clocks(struct clk *clks[], unsigned int count);  void
> > imx_check_clk_hws(struct clk_hw *clks[], unsigned int count);
> > +int imx_clk_hw_critical(struct device_node *np, struct clk_hw * const
> > +hws[]);
> >  void imx_register_uart_clocks(struct clk ** const clks[]);  void
> > imx_mmdc_mask_handshake(void __iomem *ccm_base, unsigned int chn);
> > void imx_unregister_clocks(struct clk *clks[], unsigned int count);
> > --
> > 2.16.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
