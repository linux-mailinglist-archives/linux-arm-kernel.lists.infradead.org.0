Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCBDE1B6B04
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 04:03:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FmVGLVfQOzbES6/1FoMvKSwJgjVg2XrM6UFbEoR9kFw=; b=cINcvuPKxlm1/Z
	DkJ9RZK2TLsOEJrtyb6lX2eGTcz1VhM5Vn0nEh2jZiCbfeqWw/naK2O1iVaUf0hy79LBFkRYuxKrc
	7eNUWub20J1yb+QmEYf69QSxBR368ifbfnmzqxU3gnSopapS264XNqZvkbRmwz0/7OMM3b3VDWW3p
	m757A8taEcwtGd9Yhzr4DvA3rGgP8rxfd8fgiyHhZmACvD75rB0nlI9eiMzvjBHbp4x05f3avx1Uq
	GhHn+TVvzafvfakezyNDOZRvcUGY8pYjf6seB6Wor3DfhtSovw7Wim0f8qmG4h0aIK2RrXKXMFR2W
	gGNE6K4FIEDS1zRiGc4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRngP-0002xC-F0; Fri, 24 Apr 2020 02:03:13 +0000
Received: from mail-db8eur05on2064.outbound.protection.outlook.com
 ([40.107.20.64] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRngC-0002vm-QW
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 02:03:02 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ijtievauOvxcnuQwXBFy9wbLd/JphvjYCAZr0F3LE62igbKy0DzsXLrZOwgnmTe1nx8j9uonB9KGWTit+gp16m13PfHkcgAwX0b+5zlc7/bZClc0qnMuVTWIxhkWBJNYlCRrI+5aZi1X4FS1+N35/aXHx7hWxj987jYKQ0k5/qs+SgFFBdbWj6hHD+5EBgg2Sh1G0Vet7J4xAr+pgRt/8qOCkZ+lVF8H36LooxGRP+Ax02jJG9+XkCByqQ5pX9/9OtccXA6NWQ1KHOvikTZGwFFsAB8aR/NNXIJNAyQJpytBuURdkTL3ydehZ477rF+x3JdekWfHBjyvEDPWR7BZ0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dU0F6DxwJwUelxvKSOGGK0X2m6M1kIMQVmuznKFUQrI=;
 b=KaTIM/Yq/njlRV2hXJIv7kH4yFybktCUayJoDzOm3ontrw9gv/rE+nFkicMxTlAxVD6meSXPqI3j4Dtm6MRXMp4DGaBb4eWBfFqh8/xLY/gwHLo9Ud1gbm/iSfsDVAchh8764bEdhHCFZt2RaNQ3YSqIaMqoMEsgLIOX5XAVV2OvwATT4K0mMZqDx/jIfnUcqEwfUWUz53SuEkzVFWIfZg96nefJho4z4oKZ9MHMqE4FdhyS06V9hge1r+YjReg0V1+0VDXkF2S212EkRMojl0ju6bh7pTBhsIvt72RBNHqwgemqF2iV0prU8y/tCA96urPJR7LyyzyaKEHrhY7D/g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dU0F6DxwJwUelxvKSOGGK0X2m6M1kIMQVmuznKFUQrI=;
 b=P74hXmJioolUkuPHSGAdkb8hvMjvUqQaFaexC6jRwdNsBM9EZoUpE/qGLLG2HEUgxFxJVujjveLQ1BPeD6bvOr0kLi198MR9ryvfuQY+XeQddVDq30dj+iP4eZapAAillEOu4AwtZjrRbFdb5jY2Inlj4mw1yh+VAGiaiXdSw64=
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com (2603:10a6:4:a1::14)
 by DB6PR0402MB2824.eurprd04.prod.outlook.com (2603:10a6:4:98::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.13; Fri, 24 Apr
 2020 02:02:57 +0000
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871]) by DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871%6]) with mapi id 15.20.2937.012; Fri, 24 Apr 2020
 02:02:57 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Aisheng Dong <aisheng.dong@nxp.com>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "sboyd@kernel.org" <sboyd@kernel.org>
Subject: RE: [PATCH] clk: imx: introduce imx_clk_hw_critical
Thread-Topic: [PATCH] clk: imx: introduce imx_clk_hw_critical
Thread-Index: AQHWGTz1S3ryZr4eI06QzGNLele1k6iGhU2AgAACxjCAADVJgIAAt/hggAAQDACAAACyUA==
Date: Fri, 24 Apr 2020 02:02:57 +0000
Message-ID: <DB6PR0402MB27606091A98872EB60A5BA5788D00@DB6PR0402MB2760.eurprd04.prod.outlook.com>
References: <1587624748-27228-1-git-send-email-peng.fan@nxp.com>
 <AM6PR04MB4966934EE0411F7C3FF5AA2F80D30@AM6PR04MB4966.eurprd04.prod.outlook.com>
 <DB6PR0402MB2760793865AA2E67E1C33F4488D30@DB6PR0402MB2760.eurprd04.prod.outlook.com>
 <AM6PR04MB4966460FE849E557FDA754F980D30@AM6PR04MB4966.eurprd04.prod.outlook.com>
 <DB6PR0402MB276068E21E36BFCCA91728D088D00@DB6PR0402MB2760.eurprd04.prod.outlook.com>
 <AM6PR04MB49665A599A06623160EB592980D00@AM6PR04MB4966.eurprd04.prod.outlook.com>
In-Reply-To: <AM6PR04MB49665A599A06623160EB592980D00@AM6PR04MB4966.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 4e47ca25-6ad7-447f-378a-08d7e7f39bf7
x-ms-traffictypediagnostic: DB6PR0402MB2824:|DB6PR0402MB2824:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB6PR0402MB2824C27AEB9C832BE80FFDBD88D00@DB6PR0402MB2824.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 03838E948C
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB6PR0402MB2760.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(376002)(346002)(366004)(136003)(39860400002)(396003)(66446008)(186003)(86362001)(9686003)(8676002)(478600001)(5660300002)(81156014)(316002)(54906003)(8936002)(2906002)(966005)(110136005)(66556008)(66476007)(55016002)(64756008)(71200400001)(52536014)(33656002)(76116006)(7696005)(6506007)(4326008)(44832011)(66946007)(26005)(53546011);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: O2yjsTzy9j6HE0Ncu985wcD/FNnc7HY6vrLGg42r82nE58VxlkNIuRceMaZsZSnHK6QFUpTgF4nb0Dd6zEdGtCU1HzD3MQespLrvG8kYtXRhXwaox4LZWeLl08wEav10v+R1l1tMCG5WQRwj9mvzRzxA1J/09r7fSvqoJJqTyU11AgCmGaRxo87e9KwIlqivFQuhl48oxUJQ3Wvy0U0NwRd5GSk059NkjXGrYkZhUmbGvzvhdDTvVPIBUMpLoUtm546sYqUZ2+M99ieeBdxDjT8GWJJyTosqt5HcPE+fZjdVvJebnef83FM90BIPsX6F7xJj6Q6oQxGFJZsjGE2LA5bw+HwYfRJJGcz8CKcAxhXz+gvPNqQhjw/F9C5qjlV1QSWSLV5BvAUzwDq/exrOY+ejM3UhLkMW7EoyEVp3IjDm8wK0laQWeboYySYVIqAzP7F1CK24nCSQPYB6NLcT33YDarvRKm9nEi1GbLWxkUhXsiOYrKQdOXbsDkMaNcUH2djI0mpshduxX7WcCw5Ojw==
x-ms-exchange-antispam-messagedata: 9jizYNVdLrGWvZlxJ4d00CHS9MUel44COBSxTOXIhQ+3EdEMzbYZe31UsvMorHUEinEidv12BWY5wAv3d0Mcnqm3CU3srHx8MTfsQteHKd+hRP1cuBMhlBzpE+3ry2u4D8Bp5q9GCrAppfR1JKu0/Q==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4e47ca25-6ad7-447f-378a-08d7e7f39bf7
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Apr 2020 02:02:57.4464 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CGMuqZh9o2ODSGLtXPEoG10KLrdp0WXNgt91kUp47f8QYszdSmA73i9nXK8HWAKOl/TE/D5vkyXwvI+xJIP/Wg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0402MB2824
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_190300_866194_29BA63DE 
X-CRM114-Status: GOOD (  31.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.20.64 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.20.64 listed in wl.mailspike.net]
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
> > Sent: Friday, April 24, 2020 9:08 AM
> >
> > > Subject: RE: [PATCH] clk: imx: introduce imx_clk_hw_critical
> > >
> > > > From: Peng Fan <peng.fan@nxp.com>
> > > > Sent: Thursday, April 23, 2020 6:54 PM
> > > >
> > > > > Subject: RE: [PATCH] clk: imx: introduce imx_clk_hw_critical
> > > > >
> > > > > > From: Peng Fan <peng.fan@nxp.com>
> > > > > > Sent: Thursday, April 23, 2020 2:52 PM
> > > > > >
> > > > > > To i.MX8M SoC, there is an case is when running dual OSes with
> > > > > > hypervisor, the clk of the hardware that passthrough to the
> > > > > > 2nd OS needs to be setup by 1st Linux OS.
> > > > > > So detect clock-critical from ccm node and enable the clocks
> > > > > > to let the 2nd OS could use the hardware without touch CCM
> module.
> > > > > >
> > > > > > Signed-off-by: Peng Fan <peng.fan@nxp.com>
> > > > > > ---
> > > > > >  drivers/clk/imx/clk.c | 19 +++++++++++++++++++
> > > > > > drivers/clk/imx/clk.h
> > > > > > |  1
> > > > > > +
> > > > > >  2 files changed, 20 insertions(+)
> > > > > >
> > > > > > diff --git a/drivers/clk/imx/clk.c b/drivers/clk/imx/clk.c
> > > > > > index
> > > > > > 87ab8db3d282..ec7d422540c1 100644
> > > > > > --- a/drivers/clk/imx/clk.c
> > > > > > +++ b/drivers/clk/imx/clk.c
> > > > > > @@ -177,3 +177,22 @@ static int __init imx_clk_disable_uart(void)
> > > > > >  	return 0;
> > > > > >  }
> > > > > >  late_initcall_sync(imx_clk_disable_uart);
> > > > > > +
> > > > > > +int imx_clk_hw_critical(struct device_node *np, struct clk_hw
> > > > > > +* const
> > > > > > +hws[]) {
> > > > > > +	struct property *prop;
> > > > > > +	const __be32 *cur;
> > > > > > +	u32 idx;
> > > > > > +	int ret;
> > > > > > +
> > > > > > +	if (!np || !hws)
> > > > > > +		return -EINVAL;
> > > > > > +
> > > > > > +	of_property_for_each_u32(np, "clock-critical", prop, cur,
> > > > > > +idx) {
> > > > >
> > > > > Is there a binding for it already?
> > > >
> > > > I think clock-critical is a common bindings? See of_clk_detect_critical.
> > > > Please review whether this approach is acceptable, if do need
> > > > bindings, I could add that in v2.
> > > >
> > >
> > > I'm ok if it's a common binding already supported by current clk
> framework.
> > > But it seems to be more like a common clk feature rather than
> > > platform feature.
> >
> > Here is to use it for dual Linux case running on i.MX plaforms.
> > It is to replace the init-on-array property in downstream kernel.
> >
> > The recommended critical clock is using CLK_IS_CRITICAL flag in clk
> > driver, not use clock-critical property.
> >
> 
> Clock-critical property seems DT usage of CLK_IS_CRITICAL flag and pure
> platform independent.
> So I wonder if this feature could be added into of_clk_add_hw_provider.
> 
> > But here, we could not use CLK_IS_CRITICAL, because when support dual
> > OSes, it is not flexible, and it will affect non hypervisor case.
> >
> 
> A bit confuing because you said the critical-clock property will only be used by
> Hypervisor dts, then how to affect non hypervisor cases?

If put the array into hypervisor dts, it will not affect non hypervisor case.

I mean if using CLK_IS_CRITICAL in driver code, it will affect non hypervisor case.

Thanks,
Peng.

> 
> > > Also a bit strange that why I did not find the binding doc in latest kernel.
> > > Maybe Stephen could comment more.
> >
> > It is used here.
> > https://elixir.bootlin.com/linux/v5.7-rc2/source/drivers/clk/clk.c#L48
> > 91
> 
> Yes, I also saw it, but didn't find binding doc.
> 
> Regards
> Aisheng
> 
> >
> > >
> > > BTW, if using this for dual OSes case, will those critical clocks
> > > affect the normal users that not booting the second OS?
> >
> > No. dual os using x-root.dts, not x.dts. critical-clock will be push in
> x-root.dts.
> >
> > Thanks,
> > Peng.
> >
> > >
> > > Regards
> > > Aisheng
> > >
> > > > Thanks,
> > > > Peng.
> > > >
> > > > >
> > > > > Regards
> > > > > Aisheng
> > > > >
> > > > > > +		ret = clk_prepare_enable(hws[idx]->clk);
> > > > > > +		if (ret)
> > > > > > +			return ret;
> > > > > > +	}
> > > > > > +
> > > > > > +	return 0;
> > > > > > +}
> > > > > > diff --git a/drivers/clk/imx/clk.h b/drivers/clk/imx/clk.h
> > > > > > index d4ea1609bcb7..701d7440f98c 100644
> > > > > > --- a/drivers/clk/imx/clk.h
> > > > > > +++ b/drivers/clk/imx/clk.h
> > > > > > @@ -9,6 +9,7 @@ extern spinlock_t imx_ccm_lock;
> > > > > >
> > > > > >  void imx_check_clocks(struct clk *clks[], unsigned int
> > > > > > count); void imx_check_clk_hws(struct clk_hw *clks[], unsigned
> > > > > > int count);
> > > > > > +int imx_clk_hw_critical(struct device_node *np, struct clk_hw
> > > > > > +* const hws[]);
> > > > > >  void imx_register_uart_clocks(struct clk ** const clks[]);
> > > > > > void imx_mmdc_mask_handshake(void __iomem *ccm_base,
> unsigned
> > > > > > int
> > > chn);
> > > > > > void imx_unregister_clocks(struct clk *clks[], unsigned int
> > > > > > count);
> > > > > > --
> > > > > > 2.16.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
