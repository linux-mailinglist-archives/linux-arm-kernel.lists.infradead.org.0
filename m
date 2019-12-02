Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9614E10E53C
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 06:12:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aAadJdtM+A9if0S04DRpxvjMk/Sc2CZ5NhsAssahOYQ=; b=CpvJIe5Ic47OUf
	+/UvV3yyB/TGKxO60Li9BnBVGnQ/hy9han4O9AhDd8RwhmQ5YY0j4dTOoeFGfk7cNTBUAuvNZpgk0
	3l6TH4mEhM3pZuqF1bYlHZlLeBGTPCA/6RDwxOSOrBeBQtCItWI4onnNplNK8tv63LdGrVMyYc2+T
	muAa+0h7kq1joTI4QiFCA5uyxJmdVDwEZP3WJ1LdVRJW5tXWhXX1MKR/LNKLBlON8ywLBOga1jjUu
	5LlqZ0int4s5Zw4gk8eCufyTPWhVrnE8c3lU7/MKNH0ZBNfGlveb1bjtLNx3J93Z2qVlfMPTrOpZR
	YtW/q+UWl3cgYZrnOudg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibe0I-0008Rn-6Y; Mon, 02 Dec 2019 05:12:10 +0000
Received: from mail-eopbgr80075.outbound.protection.outlook.com ([40.107.8.75]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibe0B-0008RK-JY
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Dec 2019 05:12:05 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Mo+9EO7LxBpQDG5/xYboi8tkFYMp3myorGMSM4oDfn734tAYpQIT8fSiB1HVjnQVLa1q+Sx/vdrY6PTLqD56ZXf4kqWtfaON4eO0MzxGyXqufsM80+TmmyPpEACzJ36+2aRo+nyZeox8WNRR+bcjkNqglz3ZrSM/9k1INx02+2Z2gIn22im9hZ05HX2283/W9y83GI/h9+hSNyBFw+JEK1g704lRwNAUsRre1KQ3PvxNihxIsENof4ulJdkhX2igIH6VX0E+R5d44ZqNbPAwUQTzajSoyQAngIZwANz8HVFLcLVnTbTbRNinUHs9q0JR6OHLLxkK41Zm+mJ7vADWqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Yb2V7EmhsvkGeib2VwpJFua40AIVlAO+p2k1ZHEHfbs=;
 b=Lp+rwPnpZJz2frNYDNS5xq+pjCfLnN/Wh1hjNfgH506IGI11Dgzxn3Yb4LssxUzEmpwblkSJ4OIPUJ7M8jPkU6dt4qQ6A3sx0lL3VHtrReyOKYjLsCbFe9f51+41E8fqHuiGm/hQQvuNUTOXedBCHEpwQ05ib5o4X6ki1JpZYq1Ee6ps0kwsfjhxjTsNUHp0cAK9vA1fMP6kKXS0HxqiJe9476Hz1L0ZAcPTpRK8YaugPi4uxXuVV8vUc3ODkO2tveOs5pTgcVDbniqLLHvn8e2TiGuv+vOeRVnV5nL23oj4fM4AaK+YbfqgKvHWHp8tHsryhONSrxtz4z/K2gEdRw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Yb2V7EmhsvkGeib2VwpJFua40AIVlAO+p2k1ZHEHfbs=;
 b=NQnIIpi3BuB5+PII8A3mx2QgvzPtQfgUhfnH2IekbP3VOCjkpXZeZE2L1qbI2vA2QJP2B4sgty1F9F11FltIVOGtRuRKc4/n6bYqsmBdJQzDHq5/WV3tBXSof751Be3rYS25VQrRg715A8uoCn5VeYHtntKhZwm1oLwtI0CKRC4=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4674.eurprd04.prod.outlook.com (52.135.149.144) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2495.20; Mon, 2 Dec 2019 05:12:00 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::f16d:a26a:840:f97c]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::f16d:a26a:840:f97c%4]) with mapi id 15.20.2495.014; Mon, 2 Dec 2019
 05:12:00 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Leonard Crestez <leonard.crestez@nxp.com>, Abel Vesa <abel.vesa@nxp.com>
Subject: RE: [PATCH 1/7] clk: imx: clk-pll14xx: Switch to clk_hw based API
Thread-Topic: [PATCH 1/7] clk: imx: clk-pll14xx: Switch to clk_hw based API
Thread-Index: AQHVjl58vmyH5lHO9kisrA51FWxJAKemgOdg
Date: Mon, 2 Dec 2019 05:11:59 +0000
Message-ID: <AM0PR04MB448194CBA97704849500B72B88430@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <1572356175-24950-1-git-send-email-peng.fan@nxp.com>
 <1572356175-24950-2-git-send-email-peng.fan@nxp.com>
 <20191202011721.GA17574@dragon>
 <AM0PR04MB4481B7D74A1861558523F21488430@AM0PR04MB4481.eurprd04.prod.outlook.com>
 <VI1PR04MB7023CAEB8ADA6B1CA0907A72EE430@VI1PR04MB7023.eurprd04.prod.outlook.com>
In-Reply-To: <VI1PR04MB7023CAEB8ADA6B1CA0907A72EE430@VI1PR04MB7023.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [114.220.170.63]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 916f958b-6607-46c3-67c1-08d776e62927
x-ms-traffictypediagnostic: AM0PR04MB4674:|AM0PR04MB4674:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB46742BDE9CC06EF91189AC9B88430@AM0PR04MB4674.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 0239D46DB6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(366004)(39860400002)(346002)(136003)(376002)(199004)(189003)(25786009)(26005)(44832011)(99286004)(186003)(71200400001)(256004)(33656002)(71190400001)(76176011)(6436002)(3846002)(53546011)(6506007)(229853002)(7696005)(4326008)(6246003)(6306002)(9686003)(86362001)(55016002)(74316002)(8676002)(6636002)(102836004)(81156014)(2906002)(6116002)(8936002)(81166006)(446003)(11346002)(110136005)(54906003)(66066001)(14454004)(316002)(966005)(76116006)(66946007)(7736002)(66476007)(66556008)(64756008)(66446008)(52536014)(478600001)(5660300002)(305945005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4674;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: DH97Y5D4EyO9dnbDu6Ki5URuZhS93HUfEiVzzBB5t8Bjdls9YeTCHTO/Nyj2TEcinTLz0cC4NYpZuFtVxCKEKul8LkJ85CBRlHOD5eex1LDgoqz+y8Ekd750Ml4iZHUFWhR7SeuKtL5v0ZxOGD4aGOMwkaxiihGfK4M+QiilSWJry5O4NtPpaPvHSyLSa17m+s1+95CTIrcfXB9dGQh80e4yINmPLMRP8n52gPrd2JUNGg4lQlOVdvL/Kgf0/+Bd9Y03SZadaYpVsIdD4Y3LtwYVAqvmyWmJVrzFrwtp4U4ia6+HPLQn0jXO1YaEjGZ8uQ8z7BeDY3AeZbAaOVcYxwPOu/edgfs5RC3daVr8OjZoftFjS8QWOGupr9s6TzxUg3YyVXey26HEojlFL80w4TB0vVTCfUqEdD1dWIxrzl9jt3c9NgVjxCHeEnkg553au7TLqpULL2bAoNmmWPJ/coA9yUzliNoABRidqJutWM4=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 916f958b-6607-46c3-67c1-08d776e62927
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Dec 2019 05:11:59.9839 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lJykbdQhXbwElO3oePJAZnua6oBz4R5nzIgHaNJV7eqJ/BEenlbhyEAcF0AS9voD+vjEvrCHlKe138jUQULMZQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4674
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191201_211203_646228_C1248CF6 
X-CRM114-Status: GOOD (  13.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.75 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Jacky Bai <ping.bai@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 "sboyd@kernel.org" <sboyd@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> Subject: Re: [PATCH 1/7] clk: imx: clk-pll14xx: Switch to clk_hw based API
> 
> On 2019-12-02 4:26 AM, Peng Fan wrote:
> >> Subject: Re: [PATCH 1/7] clk: imx: clk-pll14xx: Switch to clk_hw
> >> based API On Tue, Oct 29, 2019 at 01:40:54PM +0000, Peng Fan wrote:
> >>> From: Peng Fan <peng.fan@nxp.com>
> >>>
> >>> Switch the imx_clk_pll14xx function to clk_hw based API, rename
> >>> accordingly and add a macro for clk based legacy. This allows us to
> >>> move closer to a clear split between consumer and provider clk APIs.
> >>>
> >>> diff --git a/drivers/clk/imx/clk.h b/drivers/clk/imx/clk.h index
> >>> bc5bb6ac8636..5038622f1a72 100644
> >>> --- a/drivers/clk/imx/clk.h
> >>> +++ b/drivers/clk/imx/clk.h
> >>> @@ -97,8 +97,12 @@ extern struct imx_pll14xx_clk imx_1443x_pll;
> >>> #define imx_clk_mux(name, reg, shift, width, parents, num_parents) \
> >>>   	imx_clk_hw_mux(name, reg, shift, width, parents,
> >>> num_parents)->clk
> >>>
> >>> -struct clk *imx_clk_pll14xx(const char *name, const char *parent_name,
> >>> -		 void __iomem *base, const struct imx_pll14xx_clk *pll_clk);
> >>> +#define imx_clk_pll14xx(name, parent_name, base, pll_clk) \
> >>> +	imx_clk_hw_pll14xx(name, parent_name, base, pll_clk)->clk
> >>> +
> >>
> >> I would suggest to use an inline function for this, which will be
> >> more readable and complying to kernel coding style.
> >
> > ok, I'll send out v2.
> 
> Blindly dereferencing ->clk will crash instead of propagating errors so you
> might want to use the to_clk helper from here:
> 
> https://patchwork.kernel.org/patch/11257811/

I not see Abel's patch applied, should I include Abel's patchset in my v2?
Or I posted out my v2 with only my changes based on Abel's patchset?

Thanks,
Peng.

> 
> --
> Regards,
> Leonard

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
