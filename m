Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AEF898A162
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 16:42:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZtFwIBcP+amvvITjdGJFj8FSWKQ2vBcMyWdoK9jPvM4=; b=dQyeHYelqrwzYW
	EE+tiFXJcbyGneucp6zJiw5cnEx7CDwlirXcoCAIjn6ZD1b7UeUbowVjzrLAcokuMbzcsvnVgXyN+
	XMAjENJx0kV+KhITly/PXmjrfeProSrGcSE6YKKu6TekVrbkJPYJR0KQrrBolEbVSvDW0hcaixT7I
	mbVpQn3znlB/aoAjKqSr42ZlgauFqpS0e4fjeBPl7WeY6TtTPOuAZ5nKMIjR09Mu1hfK5SyfAe8mG
	ybEOJVMT+sjoeuz20I6YkGbOtPdY5p7Nr3g3ypjo1sFf4OiHR8rN29CXZYfr2CS+zh3Rp9Ern+9tJ
	hvTAN96DplTv5k4fJ7Qw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxBWd-000724-Qr; Mon, 12 Aug 2019 14:42:19 +0000
Received: from mail-am5eur03on0604.outbound.protection.outlook.com
 ([2a01:111:f400:fe08::604]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxBWK-00071Y-Md
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 14:42:02 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZGNoF37X2NXQZPCCcvVxyka+tS1272v1veQgNrQ0sNEqqATiYWgGtZQhdJXpRMNAETq87LqqHBZTtUSPJfArgcS5SQTlmj+FzXREKAQOEAQFf9bJ3rU75MNhz5W/kqaE5jsP6wQq82gzFQCXPT1ioBVKdm2nfbAQvUfEx+rBTeKd5G3b2XrLPeXC5+bGXufzDF0H6YVegcgM5Oa1oRUk9n1hSuynKmxk1PcPe4Tq9ilx+1dvISn58TWkg5VfwkBqyJvwqltyovZqcgrwdh95hVBJ9JNpQR8f+Xp4xsXd8ijoJ17IZApQqM/Cd9rx1o5HHzW5AnmYvTd+LujWTUtiSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yZP2kPCD1+SM0GHLseZPDw8qEkLIyLc/G/bwpaKURuA=;
 b=lT+SMk/He8gwpFVlAUJ+xlV/bT3wQvVo0QHZIC/lUvFyuDPIbF/S+n68nk0b+iMNCSvwsfkqSVNG/gLwDNijH885zHyKhHDcFT/DCZNxi/eYUtkjgfh1O3R7cmRBMdJpcxm3poUYoXwFgxApDmItuPxFyXPwEwfDo0XEZywuv8CdPhjsL8HOUh1KEluxNDbIQ7P5iThR3E4PdV1nbC5SUEEeS4BJZdQSzW3AKKSylf2w1yMbC27j1+yDVWwvBb5w0T1f+BH+IDqcBLiAjjx03NIQKK6jSK+puiNFatcnZu7kT29hHZ2bPG31js7N+sYcqh06/3lBMFnNFQgMOAjogg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yZP2kPCD1+SM0GHLseZPDw8qEkLIyLc/G/bwpaKURuA=;
 b=RrrcPQ7riNlCQYZBtrKEXDIHq8JYPPzRChvWeG6TtyTH2EoPYLw3NkZzEm4gxHzY/Ldgz4kK6RJm1/IWMl7prD8djwlNH7YyrYaux+aV9/VEwiqfbuxserR71/MlIF6YY/lasVhlONm9Xoj6ome+YjggF5fVXdJAf1fBkzKNXoQ=
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com (52.134.92.158) by
 AM0PR04MB4388.eurprd04.prod.outlook.com (52.135.148.18) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.15; Mon, 12 Aug 2019 14:41:55 +0000
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::5553:29b6:d66c:6afe]) by AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::5553:29b6:d66c:6afe%5]) with mapi id 15.20.2157.022; Mon, 12 Aug 2019
 14:41:55 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>, Dong Aisheng <dongas86@gmail.com>
Subject: RE: [PATCH v3 02/11] dt-bindings: clock: imx-lpcg: add support to
 parse clocks from device tree
Thread-Topic: [PATCH v3 02/11] dt-bindings: clock: imx-lpcg: add support to
 parse clocks from device tree
Thread-Index: AQHVO+pjXb1rvBqoLkqQaLlgvuAacqbpjRgAgAJ2cwCAC6CGgIAAFqig
Date: Mon, 12 Aug 2019 14:41:55 +0000
Message-ID: <AM0PR04MB42117575E82B4B762FE2143880D30@AM0PR04MB4211.eurprd04.prod.outlook.com>
References: <1563289265-10977-1-git-send-email-aisheng.dong@nxp.com>
 <1563289265-10977-3-git-send-email-aisheng.dong@nxp.com>
 <20190803135048.GL8870@X250.getinternet.no>
 <CAA+hA=TVv8m2GZr0W-u+S6XzJUCYrFDF95iyUGyAsbYMwatyZg@mail.gmail.com>
 <20190812130041.GD27041@X250>
In-Reply-To: <20190812130041.GD27041@X250>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=aisheng.dong@nxp.com; 
x-originating-ip: [180.172.160.231]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3894a9d8-8d7c-431f-19c0-08d71f333916
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB4388; 
x-ms-traffictypediagnostic: AM0PR04MB4388:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB4388146A6F9E88439FACC8D280D30@AM0PR04MB4388.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 012792EC17
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(346002)(366004)(376002)(136003)(39860400002)(189003)(199004)(7696005)(4326008)(14454004)(6506007)(44832011)(6246003)(81156014)(66946007)(478600001)(102836004)(9686003)(66446008)(99286004)(86362001)(76116006)(55016002)(229853002)(476003)(53936002)(486006)(6436002)(256004)(11346002)(81166006)(446003)(25786009)(14444005)(8936002)(66476007)(66556008)(64756008)(76176011)(110136005)(26005)(5660300002)(6116002)(3846002)(66066001)(316002)(52536014)(8676002)(54906003)(186003)(2906002)(74316002)(305945005)(71200400001)(71190400001)(33656002)(7736002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4388;
 H:AM0PR04MB4211.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: qi43ADw/k8HLsr6Rz9yBgBLMgJigIDMy4y0/oPFijgRgH5DZEsAvL6j0az9TNMf1u9DrcuEUeFeqx/sH7VoNnx9J8j/nrxLtqXC5uxjO7wsXeGS7MY/0KGLJt0XW60xQFftksajIqw/qIybYvAlxS+VI+V7ApmmrhlHkKmuY6L3vJOOnJ7+znCFwAiipcEt+Fm+HywB1KUYXNi/GAaABlgt7dAno17r+PISCsdo9MDNUQYv73u7U6Z3ZSFZO8aJSYAd/0msFi/d0ne/ImzM+hlZVUhzch0+qSTnpfaq/Afe4mYUg2WPPkIhtwW8nO/aLEVyirBzypgUrTvhYl6sKDtCWLevwSNBnEnGQ/0646sBlBEWkv+2lfN6gRr38TrKmNqt1CzrMdCpME4JJe1wELeOQwA9yiTo2Civci0JOSg0=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3894a9d8-8d7c-431f-19c0-08d71f333916
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Aug 2019 14:41:55.6907 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7u6NudIpcx7axDzbL0LHYF+C/tFwZWuLkyPOVmF8FQyIQpXUnptj8lTUCrxDmqkZLS9GqnhRWgLtr8lzjD1J7Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4388
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_074200_839980_5618D924 
X-CRM114-Status: GOOD (  27.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe08:0:0:0:604 listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree <devicetree@vger.kernel.org>,
 "sboyd@kernel.org" <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Rob Herring <robh+dt@kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>, linux-clk <linux-clk@vger.kernel.org>,
 "moderated list:ARM/FREESCALE IMX /
 MXC ARM ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> From: Shawn Guo <shawnguo@kernel.org>
> Sent: Monday, August 12, 2019 9:01 PM 
> On Mon, Aug 05, 2019 at 11:27:20AM +0800, Dong Aisheng wrote:
> > > > +- compatible:                Should be one of:
> > > > +                       "fsl,imx8qxp-lpcg"
> > > > +                       "fsl,imx8qm-lpcg" followed by
> "fsl,imx8qxp-lpcg".
> > > > +- reg:                       Address and length of the register set.
> > > > +- #clock-cells:              Should be 1. One LPCG supports multiple
> clocks.
> > > > +- clocks:            Input parent clocks phandle array for each clock.
> > > > +- bit-offset:                An integer array indicating the bit offset
> for each clock.
> > >
> > > I guess that the driver should be able to figure bit offset from
> > > 'clock-indices' property.
> > >
> >
> > Yes, it can be done in theory.
> > Then the binding may look like:
> > sdhc0_lpcg: clock-controller@5b200000 {
> >         ...
> >         #clock-cells = <1>;
> >         clocks = <&sdhc0_clk IMX_SC_PM_CLK_PER>,
> >                  <&conn_ipg_clk>, <&conn_axi_clk>;
> >         clock-indices = <0>, <16>, <20>;
> >         clock-output-names = "sdhc0_lpcg_per_clk",
> >                              "sdhc0_lpcg_ipg_clk",
> >                              "sdhc0_lpcg_ahb_clk";
> >         power-domains = <&pd IMX_SC_R_SDHC_0>; };
> >
> > usdhc1: mmc@5b010000 {
> >         ...
> >         clocks = <&sdhc0_lpcg 16>,
> >                  <&sdhc0_lpcg 0>,
> >                  <&sdhc0_lpcg 20>;
> >         clock-names = "ipg", "per", "ahb"; };
> >
> > However, after trying, i found  one limitation if using clock-indices
> > that users have to do a secondary search for the indices value from
> > clock names which is not very friendly.
> >
> > Formerly from the clock output names, user can easily get the clock
> > index as they're in fixed orders as output names, so very easily to
> > use.
> > e.g.
> > clocks = <&sdhc0_lpcg 1>,
> >          <&sdhc0_lpcg 0>,
> >          <&sdhc0_lpcg 2>;
> >
> > If using clock-indices, users have no way to know it's clock index
> > from clock output names order unless they do a secondary search from
> > the clock-indice array accordingly.
> > For example, for "sdhc0_lpcg_ahb_clk", user can easily know its
> > reference is <&sdhc0_lpcg 2>.
> > But if using clock-indice, we need search clock-indices array to find
> > its reference becomes <&sdhc0_lpcg 20>. So this seems like a drawback
> > if using clock-indices.
> 
> Shouldn't we have constant macro defined for those numbers, so that both
> 'clock-indices' and 'clocks' of client device can use?
> 

I think we can do it.
Does below one look ok to you?
#define IMX_LPCG_ CLK_0	0
#define IMX_LPCG_ CLK_1	4
#define IMX_LPCG_ CLK_2	8
#define IMX_LPCG_ CLK_3	12
#define IMX_LPCG_ CLK_4	16
#define IMX_LPCG_ CLK_5	20
#define IMX_LPCG_ CLK_6	24
#define IMX_LPCG_ CLK_7	28

The usage will look like:
<&sdhc0_lpcg IMX_LPCG_CLK_5>

> >
> > Therefore, personally i'm still a bit intend to the original way which
> > is more simple and straightforward from user point of view, unless
> > there's a strong objections on define another vendor private property.
> >
> > Shawn,
> > How do you think?
> > Should we enforce the complexity to users?
> >
> > > > +- hw-autogate:               Boolean array indicating whether
> supports HW autogate for
> > > > +                     each clock.
> > >
> > > Not sure why it needs to be a property in DT.  Or asking it
> > > different way, when it should be true and when false?
> > >
> >
> > It is one LPCG feature.
> > For some specific device LPCGs, it may support clock auto gating.
> > (depends on IP's capability. e.g. uSDHC).
> > So we define this feature in DT as well in case if user may want to
> > use it in the future.
> >
> > But AFAIK, there's still no one using it. Most drivers reply on
> > runtime PM to do clock management. Did not use LPCG auto gate off
> feature.
> > But the current LPCG driver API does support this parameter.
> >
> > If you think it's unnecessary to define it in DT as there're still no
> > users, i can remove it and disabling autogate in driver by default.
> 
> I would suggest to drop it then.
> 

Got it.

Regards
Aisheng

> Shawn
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
