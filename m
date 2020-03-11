Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E127818115B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 08:02:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NYK3OdEmgMyjBnXZaEOVMGw8Zm8ZGRfHZplz9ZUYDak=; b=U/qCuxgZrfS7OR
	1P0M//bYWJ/feb78mWXRx5hAYpn18iKSFGpt0b4cy50S4KZrFTqD2+ym9XxJj+AoqbzLpVZOspYij
	fW7/JagpBez9DP562A9/BSo3GlXsF40DZsbos2qVpd6ZwdJYJRZzRWaHW1kIOxhHI2anp9BYuPh3O
	erUv3LkkOr+283A8Lj+sknlO4VxzN+P11tehNz9rspbTCN0A5h2gtXHQwtauAogYhQwsfoCtHAHCd
	TFmDNPMCEg+gvdR0ictTwIiduV6KAAxpDakBsIheMPokG8S3v2tVe1pVSgDYmAyQjmJ72rVb8D2E3
	6lQo8/0j2bgDghc5gheg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBvNc-0007UJ-DI; Wed, 11 Mar 2020 07:02:12 +0000
Received: from mail-eopbgr40062.outbound.protection.outlook.com ([40.107.4.62]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBvNR-0007St-Jk
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 07:02:03 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FBV8ro3XG9txzWAQBm18kwSLIDx7DaP+LGbBZfrgNNYOG/6thqBKSemG3gScSt+Hw2fLOlGuxfEOiZoO8a0R/+lYPiZfOAam8qPri7ttRU8lGoRrFp3TMFov31032zEHrUOJjUqOQv4IyYSsDclPFB7i4AbdX6L2AJxRzjaXMssGp/+GpeQwdp4ISyazRQe8GTRI4+SsKmBbPdIcfe4sIf3huGe3ycSyzLO/RqMfJgx26mLsbDjP7CUeNbo14RsuJ5GqwRUvQIGMJSqkKx3jFknyBVS3+M5xqdLFE3OE2Ynhsf8pesCvqzRbeD3YqEUxVYsZ0R/2PslJDypKJ1uVOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Lk9Wn0+htLRNVbM2f3rrVCj5a/3VsXDQoAOud/DBtG8=;
 b=of6x3KDgIAvb1mrRWaCaH0qPE2uB3JSaKshynLNr+DK93Y8e/9FNwBEEDOu3JsMnWKgsqxQEyiaH/0RtaJCD71ggfrbE3UDhtTA+vbgzeft/3xKak6s1Yc2UpNskkqroRMmswZZUyXa/rj/tmYG+WNyZe9oEByOdRENusw9x5KHP1rjSziVupEqTn7QeVUXqMQ2ejH1CcEw1SqZ/dnrQiF4qJPzMXFgPM/eMTW1n3sR+JVZqSQiedLvIofWRaQezKbYraKKXKqHEIoOIZJ/s7VXqv8/WIsc6zfg6EdXRQYHvYj+cDYGjblWgaMtjOYmZz9Lg1jNvLyVHNVGZObvj0g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Lk9Wn0+htLRNVbM2f3rrVCj5a/3VsXDQoAOud/DBtG8=;
 b=iDd5gpDPxl2MqYkBqrVO6EXMbIe1R+XYzd2BwmtNOq7vQUL81r+uMKOTv4RoFIIE7WWUfRRu78uOrXb0YFfxkEL1XDUjOrLMjFaVde+QBrlLMu4C6TX9ROSjTsjrFr3HGEbVE33tCsYdulTxXMGRCq1djQPPhhpw493I3fLyseM=
Received: from AM6PR0402MB3911.eurprd04.prod.outlook.com (52.133.30.10) by
 AM6PR0402MB3592.eurprd04.prod.outlook.com (52.133.20.152) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2793.17; Wed, 11 Mar 2020 07:01:54 +0000
Received: from AM6PR0402MB3911.eurprd04.prod.outlook.com
 ([fe80::5d20:834c:6d58:6110]) by AM6PR0402MB3911.eurprd04.prod.outlook.com
 ([fe80::5d20:834c:6d58:6110%5]) with mapi id 15.20.2793.013; Wed, 11 Mar 2020
 07:01:53 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>
Subject: RE: [PATCH 1/4] clk: imx8mn: A53 core clock no need to be critical
Thread-Topic: [PATCH 1/4] clk: imx8mn: A53 core clock no need to be critical
Thread-Index: AQHV67lWYlwi4heaT0+36i2d6OFDc6hDCFmAgAAENWA=
Date: Wed, 11 Mar 2020 07:01:53 +0000
Message-ID: <AM6PR0402MB3911A7252D42D875FBCCE30FF5FC0@AM6PR0402MB3911.eurprd04.prod.outlook.com>
References: <1582620554-32689-1-git-send-email-Anson.Huang@nxp.com>
 <20200311064005.GE29269@dragon>
In-Reply-To: <20200311064005.GE29269@dragon>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 32f5db02-9bbe-40c0-6ffa-08d7c58a14b6
x-ms-traffictypediagnostic: AM6PR0402MB3592:|AM6PR0402MB3592:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR0402MB3592D7C573C833B1FBD5DA0BF5FC0@AM6PR0402MB3592.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0339F89554
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(136003)(366004)(39860400002)(396003)(346002)(199004)(4326008)(81166006)(54906003)(52536014)(5660300002)(81156014)(8676002)(316002)(64756008)(6506007)(71200400001)(66446008)(2906002)(7696005)(26005)(66556008)(66476007)(86362001)(8936002)(76116006)(66946007)(478600001)(44832011)(186003)(6916009)(33656002)(55016002)(9686003)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR0402MB3592;
 H:AM6PR0402MB3911.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: MmOLlUJdOR84QrspVGzcuun/sPvsJxJSiL4vvFNkf6oJztdyEdifB6YspkQn84Pi/CBC+nNANXaj6eFPhBrPiN9ZaBBxOZph/9beBKVfcYVkW5fx+el6ygJzDm2Zzxt6sUE8YEgq3+N03nSHntcBAEMYkxMUgSrbj3TCGztLFzBC5fZ+GINUJMmG9s2uH/AkTwYBCu8ZWOq8Ui7tzTQAwRx8F5RcuSH/1gUQJCkmzydzqD/FhtQ5L2gv7bBnD0ATEFqgX62PfkIftpCKvZCgN+LAZ1i5NAk1sp74XyMjwFgqB9cl12EMk3zUFXSP4VpT2gw67oV30Dp2NvJLWBzNqP/94XjOfCPlEm1U+UfCtVDXizq8yr0rdCEWEi6rkBKfoQO9N3vFpQNjLo6iJdZhh6P4E/sNvYDwthZ3QSAM1ZxC+M/Nr0KAnlrj1oo17hMI5cPFVm1e44cOApXcYF7EoIBdHzNOuWw8+u+1nUG/ZgMK02x3NSJA/x7FvhI44yo/
x-ms-exchange-antispam-messagedata: cLZhg3lhcamf0LcQBfXcgs7gHmHSMp4mn6OwDv37b3cIx4EmQuq/dRuOThLHKmIzI5cb0R4XZFANc466auYtSMSpvJ1+56kpByaA9P+oMjJHIHgdOppM6wlG7cFldxwA2KC0OX1Ntl0XpgEihRWA+Q==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 32f5db02-9bbe-40c0-6ffa-08d7c58a14b6
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Mar 2020 07:01:53.8454 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dL5Tm4iwAC9FhFugFo6/Nx7G7H06u/MzWwZPrU32QrzJSJUqpGCrW1A6o9cKvKZGK1wubvziZZ166ZNfMFYvDg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR0402MB3592
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_000201_654560_42169D87 
X-CRM114-Status: GOOD (  18.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.62 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Peng Fan <peng.fan@nxp.com>, Andy Duan <fugang.duan@nxp.com>,
 Abel Vesa <abel.vesa@nxp.com>, "sboyd@kernel.org" <sboyd@kernel.org>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Jacky Bai <ping.bai@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Shawn

> Subject: Re: [PATCH 1/4] clk: imx8mn: A53 core clock no need to be critical
> 
> On Tue, Feb 25, 2020 at 04:49:11PM +0800, Anson Huang wrote:
> > 'A53_CORE' is just a mux and no need to be critical, being critical
> > will cause its parent clock always ON which does NOT make sense,
> 
> I do not quite understand what problem this patch is trying to fix.  In the end,
> all the ancestor clocks of "arm", including "arm_a53_core" will still be ON, as
> "arm" has CLK_IS_CRITICAL flag.  What is the difference you are trying to
> make here?

This patch actually is to fix the clock parent switch flow of A53, previous flow is incorrect,
the reason why it works is the IMX8MN_CLK_A53_CORE is marked as CRITICAL,
but if with correct flow of parent switch, the "arm" as CLK_IS_CRITICAL flag is enough and
IMX8MN_CLK_A53_CORE will be enabled because it is "arm" clk's parent.

The A53 clock parent switch should be put after the "arm" clk creation, then no need to have
CLK_IS_CRITICAL flag for IMX8MN_CLK_A53_CORE, and its usecount will be 1 as expected.
Previous implementation will has use count equal 2 which is incorrect.

Anson

> 
> Shawn
> 
> > to make sure CPU's hardware clock source NOT being disabled during
> > clock tree setup, need to move the 'A53_SRC'/'A53_CORE' reparent
> > operations to after critical clock 'ARM_CLK' setup finished.
> >
> > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > ---
> >  drivers/clk/imx/clk-imx8mn.c | 8 ++++----
> >  1 file changed, 4 insertions(+), 4 deletions(-)
> >
> > diff --git a/drivers/clk/imx/clk-imx8mn.c
> > b/drivers/clk/imx/clk-imx8mn.c index 83618af..0bc7070 100644
> > --- a/drivers/clk/imx/clk-imx8mn.c
> > +++ b/drivers/clk/imx/clk-imx8mn.c
> > @@ -428,7 +428,7 @@ static int imx8mn_clocks_probe(struct
> platform_device *pdev)
> >  	hws[IMX8MN_CLK_GPU_SHADER_DIV] =
> hws[IMX8MN_CLK_GPU_SHADER];
> >
> >  	/* CORE SEL */
> > -	hws[IMX8MN_CLK_A53_CORE] =
> imx_clk_hw_mux2_flags("arm_a53_core", base + 0x9880, 24, 1,
> imx8mn_a53_core_sels, ARRAY_SIZE(imx8mn_a53_core_sels),
> CLK_IS_CRITICAL);
> > +	hws[IMX8MN_CLK_A53_CORE] = imx_clk_hw_mux2("arm_a53_core",
> base +
> > +0x9880, 24, 1, imx8mn_a53_core_sels,
> > +ARRAY_SIZE(imx8mn_a53_core_sels));
> >
> >  	/* BUS */
> >  	hws[IMX8MN_CLK_MAIN_AXI] =
> > imx8m_clk_hw_composite_critical("main_axi", imx8mn_main_axi_sels,
> base
> > + 0x8800); @@ -559,15 +559,15 @@ static int imx8mn_clocks_probe(struct
> > platform_device *pdev)
> >
> >  	hws[IMX8MN_CLK_DRAM_ALT_ROOT] =
> > imx_clk_hw_fixed_factor("dram_alt_root", "dram_alt", 1, 4);
> >
> > -	clk_hw_set_parent(hws[IMX8MN_CLK_A53_SRC],
> hws[IMX8MN_SYS_PLL1_800M]);
> > -	clk_hw_set_parent(hws[IMX8MN_CLK_A53_CORE],
> hws[IMX8MN_ARM_PLL_OUT]);
> > -
> >  	hws[IMX8MN_CLK_ARM] = imx_clk_hw_cpu("arm", "arm_a53_core",
> >  					   hws[IMX8MN_CLK_A53_CORE]->clk,
> >  					   hws[IMX8MN_CLK_A53_CORE]->clk,
> >  					   hws[IMX8MN_ARM_PLL_OUT]->clk,
> >  					   hws[IMX8MN_CLK_A53_DIV]->clk);
> >
> > +	clk_hw_set_parent(hws[IMX8MN_CLK_A53_SRC],
> hws[IMX8MN_SYS_PLL1_800M]);
> > +	clk_hw_set_parent(hws[IMX8MN_CLK_A53_CORE],
> > +hws[IMX8MN_ARM_PLL_OUT]);
> > +
> >  	imx_check_clk_hws(hws, IMX8MN_CLK_END);
> >
> >  	ret = of_clk_add_hw_provider(np, of_clk_hw_onecell_get,
> > clk_hw_data);
> > --
> > 2.7.4
> >
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
