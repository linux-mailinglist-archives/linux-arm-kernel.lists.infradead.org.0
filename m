Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FFE11B6AFD
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 03:59:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ptPTov23PZsyXzWnGq+SEozU3KUR6pT7PlQyM9i7nuc=; b=tTvvy9V4W0LpjS
	JqkkQl/1HhoTdj/D7RCMUqQLy8mN8j21TEnSy02QmeAUUT3cvRZjddpNKhHfix+0p+Tl9IJLTp3/Y
	JhPeJQJ+OiBPQP9TAZe9A3Yg7pS5AAqsjUljYrTubXuxdhpR1Qcx6bDya4DKfePkOwaHv202LnMG+
	Nbkcdll61Gmc/gYlNRZUxLUPgQuVMJ82b6aaMJtv2S8eHeY0dxNXLbJk9ZOn9PFtKIDnJTN/LGLkD
	tXVjSLPlW94MPVWjCbnE0/p/yEv0vBvH9Udw6uYhrC6rZS2MBxGO5aaTJi6nfeCvOK70I6Sg4rptt
	ESF3lUxcdAfLBZasJPLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRncd-0007Qt-BH; Fri, 24 Apr 2020 01:59:19 +0000
Received: from mail-eopbgr140089.outbound.protection.outlook.com
 ([40.107.14.89] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRncQ-0007Pc-2V
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 01:59:08 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=B7iydBW6lHuFisHprSdgOj+LSNE0Qwaf8hD1TKWul1RLv8aXUPMb5qcl4fncTEd0b8kp+FOeh36QC7wbqQ97FJkjJ6GA30JWk7HRGCh6hkhoamp5P80YX2wCL4rFX+VPcR13bGhpz/D9u3jzf2IdMF2mlujK9Y1Vdz3MQpVT2EjXwj/jcWKRweixVHIYrK19rv0lAOEweSl3r8JnzT9dCkqgkdxIL90+olYZ5ftQMNsfmQo00JcqDk+jBsoHoM9CavuZ4wTShgW7RWKX6ZtiQ4yLZMge+F/u9Bil8Jnx7HX3zQn3wLeuZ2mvdi4oOgdJPbMrh2R69MnQaI6LGdi5uw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uuy9geXnC9nAEj0Wpc//Eboz+dERgk1UiSlQtz+68IQ=;
 b=TIkKAFVirMu9MHSCyHnjYq1IwYxQxRmebghU4NVuNP+pJlfBOS3xNsE/dN/0QswKI8+D9m4eHkhItj0UKjPWqZ/MNX/ckTLNrBnrVTzrsUSOeA/dbHjvWeD8y8DPHpNvS5wAnTmd0Yx43D3Kw69/xrGq4n2kOmFyf5m5GkKZy1CTCJ97zG0eq/I25p3w7OFi78bzoBFJuwCwGnyfw5NMweFBOR3GHJFI43U0EeceO8LCw77CeoUbzAyjCnTqdskWYd8FAV1h8q6JEt8QHv9piWw6Z0QzP9n8pyqG0FyL1VsW86gc65EBvRNr5SvFdL2t1B1ZAiG9Sah6EGCETwZC/Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uuy9geXnC9nAEj0Wpc//Eboz+dERgk1UiSlQtz+68IQ=;
 b=YyX3K2JgY5XYKQWhv8bCsfRsBprRlMka4WdMdLEO8O4D1MdeFemztspf0eM1xW8l9ju3NEu7IDFYABzYvzTByShwF20T/dOTj3zPgjEflbtWoSgNqCziv7uHwRloRI70uvFnd9nPXZJEF19dKfaRXdA2uKIXpp64ttnqGHY0n58=
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com (2603:10a6:20b:2::14)
 by AM6PR04MB6328.eurprd04.prod.outlook.com (2603:10a6:20b:b7::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.29; Fri, 24 Apr
 2020 01:59:02 +0000
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::d9f7:5527:e89d:1ae3]) by AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::d9f7:5527:e89d:1ae3%7]) with mapi id 15.20.2921.032; Fri, 24 Apr 2020
 01:59:02 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Peng Fan <peng.fan@nxp.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>, 
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "sboyd@kernel.org"
 <sboyd@kernel.org>
Subject: RE: [PATCH] clk: imx: introduce imx_clk_hw_critical
Thread-Topic: [PATCH] clk: imx: introduce imx_clk_hw_critical
Thread-Index: AQHWGTz23ipTFSUpC02goIyCROLLPKiGhOhwgAADf4CAADHRcIAAvOMAgAAM6xA=
Date: Fri, 24 Apr 2020 01:59:02 +0000
Message-ID: <AM6PR04MB49665A599A06623160EB592980D00@AM6PR04MB4966.eurprd04.prod.outlook.com>
References: <1587624748-27228-1-git-send-email-peng.fan@nxp.com>
 <AM6PR04MB4966934EE0411F7C3FF5AA2F80D30@AM6PR04MB4966.eurprd04.prod.outlook.com>
 <DB6PR0402MB2760793865AA2E67E1C33F4488D30@DB6PR0402MB2760.eurprd04.prod.outlook.com>
 <AM6PR04MB4966460FE849E557FDA754F980D30@AM6PR04MB4966.eurprd04.prod.outlook.com>
 <DB6PR0402MB276068E21E36BFCCA91728D088D00@DB6PR0402MB2760.eurprd04.prod.outlook.com>
In-Reply-To: <DB6PR0402MB276068E21E36BFCCA91728D088D00@DB6PR0402MB2760.eurprd04.prod.outlook.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=aisheng.dong@nxp.com; 
x-originating-ip: [92.121.68.129]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 810c2ee4-1380-4178-bc1e-08d7e7f30fb5
x-ms-traffictypediagnostic: AM6PR04MB6328:|AM6PR04MB6328:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR04MB63288430082A1C44DFD2D9E680D00@AM6PR04MB6328.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 03838E948C
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR04MB4966.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(396003)(136003)(39860400002)(366004)(376002)(346002)(81156014)(8676002)(64756008)(8936002)(71200400001)(86362001)(66476007)(2906002)(966005)(5660300002)(76116006)(478600001)(66946007)(4326008)(33656002)(55016002)(7696005)(110136005)(52536014)(54906003)(9686003)(66556008)(316002)(26005)(186003)(6506007)(53546011)(44832011)(66446008);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: yXPJFVtBjmRO3Yjf9+2WI3CyyINzoTO3yvWrKHqCYe8NNG/CZAVRf5U/7u3hJGv9m2MVC5oWxB1d2WKFvRS5BsNa1QsAWuM8brS9jUvG+TPkiCXjK70F5uFcCf4pI1PkUwoPU8IeNFPr6TMBJmTNImUDAaa9aG9XCLKbUbXUfCbWkM2oN2RzFm4QXu+P9bxX3JGLMlCOfVd7Ja6+OANKRZ+RTM5ZiQ9XszG3LbnAM/psxm8thPgiSuRJ3FVrJYzYseWdYK8yp2N2eowqomu9HJtJut9VbDPE1jjadON8oyRCgddHOhXHGyIEfIYCQDec/BUN62OWcIIxDNh/GIuSIVaILAdvUAiokD5+FbyBNRCW5Au1pdblr4VwJDORbOEOtgFhoPodnfoa0UevNNHCRgG6yh+J7PBvKRPiYTz3YQAm3WNs6dAMbe54cyw0Hb+KV4uKsdSgmO+eueqNwoqy6onUY5nWhaUFOMvFmsOUAv2knQH4/px3oy3yEVsf5cLjnGoeY+t04H8AVJtRjtzopw==
x-ms-exchange-antispam-messagedata: ailYHvJMCcn01pGS3fzKBMOsw4zbyBQyiH1SWGqAhFPpnAYHTstcji7LUgYibiTysy6icZG9mENtVsSSAb1HYLWuVX8N1mw0GV6/x/1SSTSrlNzczZePPUY4Kp35+/MNTkf82+yY3yJBqu1Rd1Fl8A==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 810c2ee4-1380-4178-bc1e-08d7e7f30fb5
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Apr 2020 01:59:02.1564 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HBm2KT8tYNKSloLqzEGViBCJ3s2OKx2EC4G2/8ecJ/so92G87ELNDHUYCqDSuseCvzcMIxAUooh53WtOdN7HUA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB6328
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_185906_117061_863D9171 
X-CRM114-Status: GOOD (  29.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.14.89 listed in list.dnswl.org]
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

> From: Peng Fan <peng.fan@nxp.com>
> Sent: Friday, April 24, 2020 9:08 AM
> 
> > Subject: RE: [PATCH] clk: imx: introduce imx_clk_hw_critical
> >
> > > From: Peng Fan <peng.fan@nxp.com>
> > > Sent: Thursday, April 23, 2020 6:54 PM
> > >
> > > > Subject: RE: [PATCH] clk: imx: introduce imx_clk_hw_critical
> > > >
> > > > > From: Peng Fan <peng.fan@nxp.com>
> > > > > Sent: Thursday, April 23, 2020 2:52 PM
> > > > >
> > > > > To i.MX8M SoC, there is an case is when running dual OSes with
> > > > > hypervisor, the clk of the hardware that passthrough to the 2nd
> > > > > OS needs to be setup by 1st Linux OS.
> > > > > So detect clock-critical from ccm node and enable the clocks to
> > > > > let the 2nd OS could use the hardware without touch CCM module.
> > > > >
> > > > > Signed-off-by: Peng Fan <peng.fan@nxp.com>
> > > > > ---
> > > > >  drivers/clk/imx/clk.c | 19 +++++++++++++++++++
> > > > > drivers/clk/imx/clk.h
> > > > > |  1
> > > > > +
> > > > >  2 files changed, 20 insertions(+)
> > > > >
> > > > > diff --git a/drivers/clk/imx/clk.c b/drivers/clk/imx/clk.c index
> > > > > 87ab8db3d282..ec7d422540c1 100644
> > > > > --- a/drivers/clk/imx/clk.c
> > > > > +++ b/drivers/clk/imx/clk.c
> > > > > @@ -177,3 +177,22 @@ static int __init imx_clk_disable_uart(void)
> > > > >  	return 0;
> > > > >  }
> > > > >  late_initcall_sync(imx_clk_disable_uart);
> > > > > +
> > > > > +int imx_clk_hw_critical(struct device_node *np, struct clk_hw *
> > > > > +const
> > > > > +hws[]) {
> > > > > +	struct property *prop;
> > > > > +	const __be32 *cur;
> > > > > +	u32 idx;
> > > > > +	int ret;
> > > > > +
> > > > > +	if (!np || !hws)
> > > > > +		return -EINVAL;
> > > > > +
> > > > > +	of_property_for_each_u32(np, "clock-critical", prop, cur, idx)
> > > > > +{
> > > >
> > > > Is there a binding for it already?
> > >
> > > I think clock-critical is a common bindings? See of_clk_detect_critical.
> > > Please review whether this approach is acceptable, if do need
> > > bindings, I could add that in v2.
> > >
> >
> > I'm ok if it's a common binding already supported by current clk framework.
> > But it seems to be more like a common clk feature rather than platform
> > feature.
> 
> Here is to use it for dual Linux case running on i.MX plaforms.
> It is to replace the init-on-array property in downstream kernel.
> 
> The recommended critical clock is using CLK_IS_CRITICAL flag in clk driver, not
> use clock-critical property.
> 

Clock-critical property seems DT usage of CLK_IS_CRITICAL flag and pure platform independent.
So I wonder if this feature could be added into of_clk_add_hw_provider.

> But here, we could not use CLK_IS_CRITICAL, because when support dual OSes,
> it is not flexible, and it will affect non hypervisor case.
> 

A bit confuing because you said the critical-clock property will only be used by
Hypervisor dts, then how to affect non hypervisor cases?

> > Also a bit strange that why I did not find the binding doc in latest kernel.
> > Maybe Stephen could comment more.
> 
> It is used here.
> https://elixir.bootlin.com/linux/v5.7-rc2/source/drivers/clk/clk.c#L4891

Yes, I also saw it, but didn't find binding doc.

Regards
Aisheng

> 
> >
> > BTW, if using this for dual OSes case, will those critical clocks
> > affect the normal users that not booting the second OS?
> 
> No. dual os using x-root.dts, not x.dts. critical-clock will be push in x-root.dts.
> 
> Thanks,
> Peng.
> 
> >
> > Regards
> > Aisheng
> >
> > > Thanks,
> > > Peng.
> > >
> > > >
> > > > Regards
> > > > Aisheng
> > > >
> > > > > +		ret = clk_prepare_enable(hws[idx]->clk);
> > > > > +		if (ret)
> > > > > +			return ret;
> > > > > +	}
> > > > > +
> > > > > +	return 0;
> > > > > +}
> > > > > diff --git a/drivers/clk/imx/clk.h b/drivers/clk/imx/clk.h index
> > > > > d4ea1609bcb7..701d7440f98c 100644
> > > > > --- a/drivers/clk/imx/clk.h
> > > > > +++ b/drivers/clk/imx/clk.h
> > > > > @@ -9,6 +9,7 @@ extern spinlock_t imx_ccm_lock;
> > > > >
> > > > >  void imx_check_clocks(struct clk *clks[], unsigned int count);
> > > > > void imx_check_clk_hws(struct clk_hw *clks[], unsigned int
> > > > > count);
> > > > > +int imx_clk_hw_critical(struct device_node *np, struct clk_hw *
> > > > > +const hws[]);
> > > > >  void imx_register_uart_clocks(struct clk ** const clks[]);
> > > > > void imx_mmdc_mask_handshake(void __iomem *ccm_base, unsigned
> > > > > int
> > chn);
> > > > > void imx_unregister_clocks(struct clk *clks[], unsigned int
> > > > > count);
> > > > > --
> > > > > 2.16.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
