Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FC201C5755
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 15:47:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qNZL2byJ5OCCXURq+dVG6x0WD/xxfAfn9/LFPNUg3zE=; b=geGv2++MMuEi5t
	WWJtgFrfX98nClfsTLxhRz/co9oDJc3tH79xLuAiUmQmU+yRQk0xYqkAvRWjZJd1OZy7TXwEgOKAF
	F5w0czL/XwRxByMZjSAFIFn75qFLuhmT6TNYRqvLl0MSt2IPtcECHUQE/JKcFeo41qdUYv1XlyugD
	Xw0qVx+HJmTl6yCAltCKYWioh76CUiiYHTKbXM5sWpyEqTl2+3sJLc7llYU4F+onwaI34QP50P4YY
	hw0NRJ0Ix4Kf1TrOS7DB9s6IoDRdkOz6XPDBjwpjkqwzb42c4EwTWRTxIyhdP3TzIUBSUrX33g+JF
	0vWLyEYFuxyVtz/izM6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVxuo-0006hU-K4; Tue, 05 May 2020 13:47:18 +0000
Received: from mail-eopbgr70055.outbound.protection.outlook.com ([40.107.7.55]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVxuh-0006em-KW
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 13:47:13 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=f8hJDPIkp2aeyYAyqqLU69zGpaWb6UdumC+mEHTeDhZOGJ5pcyEVNILXWDdTFKz6rGUHQDAdW7zMCjLxqqyNvJh0JlB20Mb9nEs3q6r0xq6YqTXI2vsrgLXDruWRAHt62eCuH1KZMuYVjvWQTgGLK/WrqsYkic8gmEl+8W8IyfymSD06STf0A5r1IxDv1DkuJwn3VCRTg1FDQHvw/rrJG9hoUguNgT/9zDn1HDTok1gaIGf3QB3uFsDSqR/uhsQwjY7TubK2DTSDLBIuCvsNfNl3pMY10uDhoukkNfEQtfJXyDJCvwgQ2NOeu7xiGmEqbY1iot2MzSjRdPPOYFaz6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YCweG+583GAbFnc9j8qI2nDMqE1uzQ/ye3o7Iokagos=;
 b=f//TbMNDcis29AGA2Cq3gnSk9fXiz4lxr37MwYaJBuNl4o1EJGWTdWrIn2mxuJ43MZhoQ6ikD7UOCcMqI7NzxvY7ECRLtznK0GTfQXotwMPNzQdn7R+7patIYIodX2ha8FcGFec+rq4FiANr08nTFn0ZZm7mzS71oh+PjXKrs+GdXcgnQRTyLjIMBFn4pmpWqDY+QdGYNnBG3YnGdrDJ/wsBeRjHx6sn6E+EAuBZvutih6NPQ/9e7/HOqS1EthnvSpv76bU1gfoLnmd4f05Ufrzs/tVBHz6OaYFdGpXczfbhoCLQIKOUFTxnCuNzpbFBXqMFWDVmHsx63RFzaNoKeg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YCweG+583GAbFnc9j8qI2nDMqE1uzQ/ye3o7Iokagos=;
 b=cnextCcO9fEzteza07K6WBsw8XaJCjyOQdFhA7x3VANtge/iHZ0+U1jXo1RTHofwfpssvPRem2MMKwK8U9s1UcWXGs6aGol4Cjba4krlbzf2Gv7zKtZF2e01I2FPL8Zxh9IhTXUdnGyQFWsjf1YQU3GmdvKRMOGqBvIKgiNNgMU=
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com (2603:10a6:20b:2::14)
 by AM6PR04MB6757.eurprd04.prod.outlook.com (2603:10a6:20b:fb::33) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2958.20; Tue, 5 May
 2020 13:47:03 +0000
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3c6c:a0e9:9a4e:c51d]) by AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3c6c:a0e9:9a4e:c51d%7]) with mapi id 15.20.2958.030; Tue, 5 May 2020
 13:47:03 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Stephen Boyd <sboyd@kernel.org>, "linux-clk@vger.kernel.org"
 <linux-clk@vger.kernel.org>
Subject: RE: [PATCH V6 03/12] clk: imx: scu: add two cells binding support
Thread-Topic: [PATCH V6 03/12] clk: imx: scu: add two cells binding support
Thread-Index: AQHV+tC64TxqK3VbT0yOF5mOJ1A2NaiZQMMAgAB2juA=
Date: Tue, 5 May 2020 13:47:02 +0000
Message-ID: <AM6PR04MB4966DEABA0CC38A7FFA3CD3180A70@AM6PR04MB4966.eurprd04.prod.outlook.com>
References: <1584279836-29825-1-git-send-email-aisheng.dong@nxp.com>
 <1584279836-29825-4-git-send-email-aisheng.dong@nxp.com>
 <158865530267.11125.15146015607102638423@swboyd.mtv.corp.google.com>
In-Reply-To: <158865530267.11125.15146015607102638423@swboyd.mtv.corp.google.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [218.82.155.143]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: f07dbba8-2815-4c03-546e-08d7f0facac5
x-ms-traffictypediagnostic: AM6PR04MB6757:|AM6PR04MB6757:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR04MB6757B64DEBA1FDAAB9B5D8BD80A70@AM6PR04MB6757.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0394259C80
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: x2I329L901L4PSH0oYhi69qrRiGFuOnJfEauGb8wMSDkPF48FcEoj6u/g/2v7SA2dnLH8D16y+P9n3H6bMfKaeqDf6vXS2VwjqGZLMN4YkmzdYiQzQvWwvFFNhuhoYVTx5dFDWRFjTWm7NIRMLl0reupK11EB1KeRg/Y4h+u9wKg2wyF6u/RLZaSz3zMktACrWyCWHDr6g4QKeNm8kYHH+5z6yPS1AbzkZMVTb6qnRr0bGxHbK0EOAkyfwth2WlAusVJPs6+FaUkk83sFk18stsrEXJgtTCf8rkqx19rnWucOzhBqS1dWTa1hkGId36S69/pvoxRgpQ3vGGvAbyg0Y2kshlhR65ZUSgPm6Zyqdp/g4DR7quUCpYTCRT9G3VegxEpEv3LVh3dPMz5HyBwWTDmOpTbGsb1PDR7/jJwRFE0gWmi1QBTza6/MrIunfkpOvKd/x5rg0jZUM+SgJ2Qb9WeNDJAKYbgi5TMeVNoOn3N5UN9EZ8Z//LrSS2szJ41Ty8yOrXRUO2BhdXsH/pKgw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR04MB4966.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(366004)(33430700001)(44832011)(110136005)(54906003)(71200400001)(33656002)(186003)(9686003)(26005)(498600001)(33440700001)(5660300002)(55016002)(2906002)(6506007)(66446008)(64756008)(66556008)(52536014)(66476007)(8936002)(86362001)(8676002)(7696005)(76116006)(66946007)(4326008);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: qTMUoy46scRvgEp1hFFkNdXbTEMFDU0CAysPiuFSH1QWd9RRC3Wetx35+RZ+fPTJhJ4M6P7+Jt/2FN40AwaaOjHoB9kr/8iQv2i17t8CVIt9ixhJmdftsEnH5gTvELIg5tiyE1BBCeSGinaCZa6bb+4iE3ftUV9TfK2CLV6ZwNQ+I2AOyPJ2OyteHLMuAMsdd/CyUIzmrG66wZ6KvBtbGWLpLnnDeEOBz/fYAuBIKcOMBG+hSo8+qXW735OnyXUaAx8KHWPhga6uhcIpA+Qt7l0tQErdMWaNydjrpLK3qlZEsMsRoYu+hNksLf3Te+kKD2ysDKgzt3vTm9Q2H/hPVBX2WhMgKdebi7CNgqn/cymI8kGae+5hl28JRjO+s5YVopAKcOsPCSWPS7R0T3pP3FCNY1AIWMK371eyHff1pQ/cWRvQwvW/6iYZRtSUAHnXNsf4/HhY8JYGBYtUK5Ljxt4C3Ok2Ra6mrwEENQgkPnT4R4O9YP83xo0WbItW4DOpi0TTs8LLKVVgVtNH2ViBtB+pkFL1Wxt4FNHJZ2JKRZYz45pfnrHa1q6AqgVNwzMqY1rgXhAAPM5IjtK+OGQWUx9iGkFoDXBINN7t4rnTIVaTUbSKKMwx5lXcE0KBJmnzP67J2AXuJ3GA53pr5rQNt0nw8sHK+Zvz5QtW83Uy9NqNJ0/ZNY4ixxUvyH//xT60QrrZsCpK+L6r2SD8Ye3radi2SfDmrSV8TjjoZhB1SAm6KX5are8A6qqxvvFjtr8O1QWoTU57BoeRchuK4GEuW2fF7i17IMajbPqOJYFox5M=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f07dbba8-2815-4c03-546e-08d7f0facac5
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 May 2020 13:47:02.9885 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6aLbgA/ZzklzfsDvaTDe3inxdK8UC8bUUBgF4t3KB5ipGsLPlZBa+Z9ajBrYP4K+5OwXIAR0HZB/iQES883LgQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB6757
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_064711_922232_837FAFB7 
X-CRM114-Status: GOOD (  25.56  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.7.55 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.7.55 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "mturquette@baylibre.com" <mturquette@baylibre.com>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Stephen,

Thanks for the review.

> From: Stephen Boyd <sboyd@kernel.org>
> Sent: Tuesday, May 5, 2020 1:08 PM
> 
> Quoting Dong Aisheng (2020-03-15 06:43:47)
> > This patch implements the new two cells binding for SCU clocks.
> > The usage is as follows:
> > clocks = <&uart0_clk IMX_SC_R_UART_0 IMX_SC_PM_CLK_PER>
> >
> > Due to each SCU clock is associated with a power domain, without power
> > on the domain, the SCU clock can't work. So we create platform devices
> > for each domain clock respectively and manually attach the required
> > domain before register the clock devices, then we can register clocks
> > in the clock platform driver accordingly.
> 
> That's odd. See below.
> 
> >
> > Note because we do not have power domain info in device tree and the
> > SCU resource ID is the same for power domain and clock, so we use
> > resource ID to find power domains.
> >
> > Later, we will also use this clock platform driver to support
> > suspend/resume and runtime pm.
> >
> > Cc: Stephen Boyd <sboyd@kernel.org>
> > Cc: Shawn Guo <shawnguo@kernel.org>
> > Cc: Sascha Hauer <kernel@pengutronix.de>
> > Cc: Michael Turquette <mturquette@baylibre.com>
> > Signed-off-by: Dong Aisheng <aisheng.dong@nxp.com>
> > ---
> [...]
> > diff --git a/drivers/clk/imx/clk-scu.c b/drivers/clk/imx/clk-scu.c
> > index b8b2072742a5..4fadff14d8b2 100644
> > --- a/drivers/clk/imx/clk-scu.c
> > +++ b/drivers/clk/imx/clk-scu.c
> > @@ -8,6 +8,9 @@
> >  #include <linux/arm-smccc.h>
> >  #include <linux/clk-provider.h>
> >  #include <linux/err.h>
> > +#include <linux/of_platform.h>
> > +#include <linux/platform_device.h>
> > +#include <linux/pm_domain.h>
> >  #include <linux/slab.h>
> >
> >  #include "clk-scu.h"
> > @@ -16,6 +19,20 @@
> >  #define IMX_SIP_SET_CPUFREQ            0x00
> >
> >  static struct imx_sc_ipc *ccm_ipc_handle;
> > +struct device_node *pd_np;
> > +
> > +struct imx_scu_clk_node {
> > +       const char *name;
> > +       u32 rsrc;
> > +       u8 clk_type;
> > +       const char * const *parents;
> > +       int num_parents;
> > +
> > +       struct clk_hw *hw;
> > +       struct list_head node;
> > +};
> > +
> > +struct list_head imx_scu_clks[IMX_SC_R_LAST];
> >
> >  /*
> >   * struct clk_scu - Description of one SCU clock @@ -128,9 +145,32 @@
> > static inline struct clk_scu *to_clk_scu(struct clk_hw *hw)
> >         return container_of(hw, struct clk_scu, hw);  }
> >
> > -int imx_clk_scu_init(void)
> > +int imx_clk_scu_init(struct device_node *np)
> >  {
> > -       return imx_scu_get_handle(&ccm_ipc_handle);
> > +       struct platform_device *pd_dev;
> > +       u32 clk_cells;
> > +       int ret, i;
> > +
> > +       ret = imx_scu_get_handle(&ccm_ipc_handle);
> > +       if (ret)
> > +               return ret;
> > +
> > +       if (of_property_read_u32(np, "#clock-cells", &clk_cells))
> 
> Why wouldn't there be #clock-cells in the node?

Okay, will remove the check.

> 
> > +               return -EINVAL;
> > +
> > +       if (clk_cells == 2) {
> > +               for (i = 0; i < IMX_SC_R_LAST; i++)
> > +                       INIT_LIST_HEAD(&imx_scu_clks[i]);
> > +
> > +               pd_np = of_find_compatible_node(NULL, NULL,
> "fsl,scu-pd");
> > +               pd_dev = of_find_device_by_node(pd_np);
> > +               if (!pd_dev || !device_is_bound(&pd_dev->dev)) {
> 
> What is device_is_bound() check for? Add a comment?

Yes, I can add a comment in the code.
It is because SCU clock driver depends on SCU power domain to be ready first.

> 
> > +                       of_node_put(pd_np);
> > +                       return -EPROBE_DEFER;
> > +               }
> > +       }
> > +
> > +       return 0;
> >  }
> >
> >  /*
> > @@ -387,3 +427,99 @@ struct clk_hw *__imx_clk_scu(const char *name,
> > const char * const *parents,
> >
> >         return hw;
> >  }
> > +
> > +struct clk_hw *imx_scu_of_clk_src_get(struct of_phandle_args *clkspec,
> > +                                     void *data) {
> > +       unsigned int rsrc = clkspec->args[0];
> > +       unsigned int idx = clkspec->args[1];
> > +       struct list_head *scu_clks = data;
> > +       struct imx_scu_clk_node *clk;
> > +
> > +       list_for_each_entry(clk, &scu_clks[rsrc], node) {
> > +               if (clk->clk_type == idx)
> > +                       return clk->hw;
> > +       }
> > +
> > +       return ERR_PTR(-ENODEV);
> > +}
> > +
> > +static int imx_clk_scu_probe(struct platform_device *pdev) {
> > +       struct device *dev = &pdev->dev;
> > +       struct imx_scu_clk_node *clk = dev_get_platdata(dev);
> > +       struct clk_hw *hw;
> > +
> > +       hw = __imx_clk_scu(clk->name, clk->parents, clk->num_parents,
> > +                          clk->rsrc, clk->clk_type);
> > +       if (IS_ERR(hw))
> > +               return PTR_ERR(hw);
> > +
> > +       clk->hw = hw;
> > +       list_add_tail(&clk->node, &imx_scu_clks[clk->rsrc]);
> > +
> > +       dev_dbg(dev, "register SCU clock rsrc:%d type:%d\n", clk->rsrc,
> > +               clk->clk_type);
> > +
> > +       return 0;
> > +}
> > +
> > +static struct platform_driver imx_clk_scu_driver = {
> > +       .driver = {
> > +               .name = "imx-scu-clk",
> > +               .suppress_bind_attrs = true,
> > +       },
> > +       .probe = imx_clk_scu_probe,
> > +};
> > +builtin_platform_driver(imx_clk_scu_driver);
> > +
> > +static int imx_clk_scu_attach_pd(struct device *dev, u32 rsrc_id) {
> > +       struct of_phandle_args genpdspec = {
> > +               .np = pd_np,
> > +               .args_count = 1,
> > +               .args[0] = rsrc_id,
> > +       };
> > +
> > +       return of_genpd_add_device(&genpdspec, dev); }
> > +
> > +struct clk_hw *imx_clk_scu_alloc_dev(const char *name,
> > +                                    const char * const *parents,
> > +                                    int num_parents, u32 rsrc_id, u8
> > +clk_type) {
> > +       struct imx_scu_clk_node clk = {
> > +               .name = name,
> > +               .rsrc = rsrc_id,
> > +               .clk_type = clk_type,
> > +               .parents = parents,
> > +               .num_parents = num_parents,
> > +       };
> > +       struct platform_device *pdev;
> > +       int ret;
> > +
> > +       pdev = platform_device_alloc(name, PLATFORM_DEVID_NONE);
> > +       if (!pdev) {
> > +               pr_err("%s: failed to allocate scu clk dev rsrc %d
> type %d\n",
> > +                      name, rsrc_id, clk_type);
> > +               return ERR_PTR(-ENOMEM);
> > +       }
> > +
> > +       ret = platform_device_add_data(pdev, &clk, sizeof(clk));
> > +       if (ret) {
> > +               platform_device_put(pdev);
> > +               return ERR_PTR(ret);
> > +       }
> > +
> > +       pdev->driver_override = "imx-scu-clk";
> > +
> > +       ret = imx_clk_scu_attach_pd(&pdev->dev, rsrc_id);
> 
> Why do we have to allocate a device for each power domain? 

This is mainly for each clock runtime pm and suspend/resume support as they're
independent with each other.

> Is this because we
> don't have support for one device being in multiple power domains? That is
> supported now as far as I recall, by basically making dummy platform devices
> like this. 

I know kernel supports multi power domains, but I didn't realize it could be used
for our case.

> So maybe this code isn't necessary and we can have one platform
> device for the clk controller and then have it control certain power domains
> manually from runtime PM callbacks? It's possible the runtime PM callbacks are
> too simple for this case and we need to tell clk providers what clk is having
> runtime PM enabled for it.

To make sure I understand correctly, do you mean we use only one general clk controller
Runtime pm callback to handle all clocks runtime pm status manually?
If doing that, how do we handle different clocks pm requirements with only one device runtime
pm status (clock controller)?
e.g.
One Clock Provider
Consumer A -> Clock A -> Clock Provider resumed -> Clock A resumed
Consumer B -> Clock B (Since Clock Provided is already resumed, no chance to run callback to resume Clock B now).
(Note: assume all clocks need runtime pm enabled for i.MX case)

Or you mean we simply resume all clocks? but that seems lose the granularity
and possibly have no chance to enter runtime suspend anymore once there was one clock in use.

Not sure if I missed something. Please help clarify a bit more.

Right now, I'm a bit afraid this may make things a bit complicated as we have ~150 clocks
and ~150 power domains. Putting them all under one clock controller node in DT may scare people.
And even we did not create platform devices for each clock in the clock driver, using multi-pd
will still result in creating dummy platform devices for each clock automatically by power domain
framework. That means we didn't save any platform devices.

> Maybe we can adjust the core clk framework to introduce a callback for the clk
> that is runtime PM enabling and put the logic there about what to do?

That may help. Since we still only have one device for runtime pm state management,
Still not understand how to do it as it may mix the usage with the runtime pm framework.

Regards
Aisheng
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
