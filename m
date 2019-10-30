Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E468E9933
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 10:33:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O6WUSz3gyNDxpUIR1nq58IeuXGIM4QAB8X9p14n6KRA=; b=rlWX9NoVlQPGgx
	3L1adC6a/j9TxEra0oWAbpPrZaPdYDf8j4hLbSPiD65CXlGM/S1hKbkkzSO4v1n+zTNGXGx7woKwF
	3PhJJclQOwTqnQZepd6rTVe5JySNN4zmEG+V3b2ergYdgZSuFjVPNu4mJE14t9vuaSsV/iu9JxQ5p
	XtH+APr3TtNxuoABK07wKADqIm6p5YzhPP02bHflDI3/HnfWcZ2ptBye282AYmyCM3avamY+Kn7Tg
	ZxozYOP72NFtClR9IQOTQj2o+i4Z8a0IdmH1NsXwU0JiYnIjESJgXFuD5IpT1bzAove8FnJe04mgK
	gW5ExRIYEHlWpnh/2WTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPkLz-00016X-JI; Wed, 30 Oct 2019 09:33:23 +0000
Received: from mail-vi1eur04on0606.outbound.protection.outlook.com
 ([2a01:111:f400:fe0e::606]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPkLp-00015e-Mr
 for linux-arm-kernel@lists.infradead.org; Wed, 30 Oct 2019 09:33:15 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eIpZizWnAIUnvnCyrtW9WTckFJu17ieNc1KYP2Kwn/vikSVob/sx2PyUIEotFZdsPuxRIVd58rQhfFx2nanDzXxVtH8lk5CKKV+H4UeD1s4kcgJeBh5gKDT1yA99iBTNNX7ca8BkFYyE9n1HbvyBuWNH5MS9hzpxwgQxvjB09x2+L6Gvlglsv7vYysw7PUZFz/5r6tDXOjBpO1qfU9qDHvMEaELffxSPfh3HJDEZPHeOwb5JfIZrdn7rAwFpZ4lxIbgOUPfrLw0YrlaqrsYX+qyx0u78zp7Be8fUvdEjvazgTFeBt0UVEacPhXb6liN39f8SUJhL1l62y3noIfSyhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GJdeO7rYrVjx0Ti1GbpH8jJ1LFVliFAbZ+b7pAtbdX0=;
 b=fiuGYOW9U32mIEGPWQyH/8ze0k+63sntvKizpcUpFgxh3yM9fws607QdrAbDiV4Lxns+RUOESaQ+RInSzweW9QU8DbEnnxGOCoVmLqMfoJTlZh/K4+8uBMOsV/rzi7azY3nnGHMG/KMOg8CgkpxZzOr+wdF+uin5yCLVDfvpGv19ZQy8cQy55TB4ho4zAE4SFSrnOl+JeRxWVbo0gIM+ICwp65+K/JTuICVhAp36/Qkmu2SgUNjOq/YcvOTiDAsU0w55X22nJKmctaSmGI49ftxLapNAL/QvPkxETz33K+CjyOZ9jZOy9t8Npdvab6Smy9k6v/NskUhcLxnjqGRkcQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GJdeO7rYrVjx0Ti1GbpH8jJ1LFVliFAbZ+b7pAtbdX0=;
 b=F/ZFzMBn5OmTC+zxtPD57HJz4b+Qu6TPEXhs4pMDjYjT+h+up6Oz9jOdDlEFren6YVqZBikO0zUQSfYXvzk+xcWyPIo0B7YXUoEl70+PqoOtjPfGcZAXJ/bMm7+czIm8F0n2lSosa+sWiE5yuHhqyYpg4xyFDGeWn2TwEsQzE6I=
Received: from AM0PR04MB5779.eurprd04.prod.outlook.com (20.178.202.151) by
 AM0PR04MB3985.eurprd04.prod.outlook.com (52.134.124.143) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2387.24; Wed, 30 Oct 2019 09:33:09 +0000
Received: from AM0PR04MB5779.eurprd04.prod.outlook.com
 ([fe80::4122:fda5:e903:8c02]) by AM0PR04MB5779.eurprd04.prod.outlook.com
 ([fe80::4122:fda5:e903:8c02%3]) with mapi id 15.20.2347.033; Wed, 30 Oct 2019
 09:33:09 +0000
From: Abel Vesa <abel.vesa@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>
Subject: Re: [PATCH] clk: imx: imx8mq: fix sys2/3_pll_out_sels
Thread-Topic: [PATCH] clk: imx: imx8mq: fix sys2/3_pll_out_sels
Thread-Index: AQHVijhIlRv5T5+Fgk+U/4a62CwQt6dvxcIAgAMv34A=
Date: Wed, 30 Oct 2019 09:33:09 +0000
Message-ID: <20191030093307.s6hfcstxbqhd3iht@fsr-ub1664-175>
References: <1571900044-22079-1-git-send-email-peng.fan@nxp.com>
 <20191028085258.GZ16985@dragon>
In-Reply-To: <20191028085258.GZ16985@dragon>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: LO2P265CA0412.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:a0::16) To AM0PR04MB5779.eurprd04.prod.outlook.com
 (2603:10a6:208:131::23)
x-originating-ip: [89.37.124.34]
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=abel.vesa@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 5581adeb-3d28-4495-0c61-08d75d1c2d1b
x-ms-traffictypediagnostic: AM0PR04MB3985:|AM0PR04MB3985:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB3985B577B619E88DF76FA4F4F6600@AM0PR04MB3985.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2276;
x-forefront-prvs: 02065A9E77
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(7916004)(4636009)(366004)(396003)(136003)(39860400002)(376002)(346002)(199004)(189003)(99286004)(11346002)(66446008)(64756008)(25786009)(66556008)(26005)(66476007)(54906003)(2906002)(478600001)(386003)(316002)(66946007)(6506007)(5660300002)(33716001)(71190400001)(71200400001)(53546011)(1076003)(14454004)(446003)(6512007)(186003)(44832011)(66066001)(6916009)(14444005)(86362001)(52116002)(256004)(8936002)(7736002)(486006)(6246003)(305945005)(9686003)(102836004)(4326008)(81166006)(6116002)(6436002)(81156014)(8676002)(6486002)(3846002)(76176011)(476003)(229853002)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB3985;
 H:AM0PR04MB5779.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Tg/2A49NKh1tqcvZURVhDbm2iQuwtM43yJDNHBoMPaWI0t0TZErjyyTIiKax7Ar20+ys35kX9Z5r74v6+EIOftFCyMe7J+7lqj791OKHkduXowBmidPtvACB1aWLdUdaI0Pi3QNTOn+M4irY3UzHJ5RqNLs/cjl0wlUVvsPefmy6M4lXsu51/Tk1MBleKRksRhneXPJK+qtyhc+K1vgqHBi2KBm8XKZHCfIjtBAMbVNfNVYGFOiQrUW9ocJKFAlH3NSh7qiLwPHBspKan+XBtgZ/6YGcgNoRcDBoWwFJ+bGyUV6fyktTHDtvYJRgUM75SU+VGpdu3XXz/75+i02Mlqg/jqyi92yNwQ1WM2YziGDlLXpUUaQxwVJ9Qj2QiIsuqB+t3igmv/yJ4/qK1KfqqOzb+Wpn9ke+D9pAz88moLepAjM6hiwqh27fWWehgGAq
Content-ID: <EEB8FF15868EC04783EF629F12858420@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5581adeb-3d28-4495-0c61-08d75d1c2d1b
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Oct 2019 09:33:09.5788 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2DQte0/mmYKwM+IruiwBZwpGytFtHE3vXeKaByggSSxBQ7S/ZLYzGGvenzJV7zLqGna/31OMc0vafGTHVzYmeA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB3985
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_023313_836388_20DA256A 
X-CRM114-Status: GOOD (  16.88  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe0e:0:0:0:606 listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.0 FORGED_SPF_HELO        No description available.
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
Cc: Peng Fan <peng.fan@nxp.com>, Jacky Bai <ping.bai@nxp.com>,
 Anson Huang <anson.huang@nxp.com>, "sboyd@kernel.org" <sboyd@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 19-10-28 16:53:00, Shawn Guo wrote:
> @Abel, comments?
> 

Looks good to me.

Reviewed-by: Abel Vesa <abel.vesa@nxp.com>

> Shawn
> 
> On Thu, Oct 24, 2019 at 06:57:21AM +0000, Peng Fan wrote:
> > From: Peng Fan <peng.fan@nxp.com>
> > 
> > The current clk tree shows:
> >  osc_25m                              9       11        0    25000000          0     0  50000
> >     sys2_pll1_ref_sel                 1        1        0    25000000          0     0  50000
> >        sys3_pll_out                   1        1        0    25000000          0     0  50000
> >     sys1_pll1_ref_sel                 2        2        0    25000000          0     0  50000
> >        sys2_pll_out                   6        6        0  1000000000          0     0  50000
> > 
> > It is not correct that sys3_pll_out use sys2_pll1_ref_sel as parent,
> > sys2_pll_out use sys1_pll1_ref_sel as parent.
> > 
> > According to the current imx_clk_sccg_pll design, it uses both
> > bypass1/2, however set bypass2 as 1 is not correct, because it will
> > make sys[x]_pll_out use wrong parent and might access wrong registers.
> > 
> > So correct bypass2 to 0 and fix sys2/3_pll_out_sels.
> > 
> > After fix, the tree shows:
> >  osc_25m                             10       12        0    25000000          0     0  50000
> >     sys3_pll1_ref_sel                 1        1        0    25000000          0     0  50000
> >        sys3_pll_out                   1        1        0    25000000          0     0  50000
> >     sys2_pll1_ref_sel                 1        1        0    25000000          0     0  50000
> >        sys2_pll_out                   6        6        0  1000000000          0     0  50000
> >     sys1_pll1_ref_sel                 1        1        0    25000000          0     0  50000
> >        sys1_pll_out                   5        5        0   800000000          0     0  50000
> > 
> > Fixes: e9dda4af685f ("clk: imx: Refactor entire sccg pll clk")
> > Signed-off-by: Peng Fan <peng.fan@nxp.com>
> > ---
> >  drivers/clk/imx/clk-imx8mq.c | 8 ++++----
> >  1 file changed, 4 insertions(+), 4 deletions(-)
> > 
> > diff --git a/drivers/clk/imx/clk-imx8mq.c b/drivers/clk/imx/clk-imx8mq.c
> > index 05ece7b5da54..e17f0ebfacb0 100644
> > --- a/drivers/clk/imx/clk-imx8mq.c
> > +++ b/drivers/clk/imx/clk-imx8mq.c
> > @@ -35,8 +35,8 @@ static const char * const audio_pll2_bypass_sels[] = {"audio_pll2", "audio_pll2_
> >  static const char * const video_pll1_bypass_sels[] = {"video_pll1", "video_pll1_ref_sel", };
> >  
> >  static const char * const sys1_pll_out_sels[] = {"sys1_pll1_ref_sel", };
> > -static const char * const sys2_pll_out_sels[] = {"sys1_pll1_ref_sel", "sys2_pll1_ref_sel", };
> > -static const char * const sys3_pll_out_sels[] = {"sys3_pll1_ref_sel", "sys2_pll1_ref_sel", };
> > +static const char * const sys2_pll_out_sels[] = {"sys2_pll1_ref_sel", };
> > +static const char * const sys3_pll_out_sels[] = {"sys3_pll1_ref_sel", };
> >  static const char * const dram_pll_out_sels[] = {"dram_pll1_ref_sel", };
> >  static const char * const video2_pll_out_sels[] = {"video2_pll1_ref_sel", };
> >  
> > @@ -345,8 +345,8 @@ static int imx8mq_clocks_probe(struct platform_device *pdev)
> >  	clks[IMX8MQ_VIDEO_PLL1_OUT] = imx_clk_gate("video_pll1_out", "video_pll1_bypass", base + 0x10, 21);
> >  
> >  	clks[IMX8MQ_SYS1_PLL_OUT] = imx_clk_sccg_pll("sys1_pll_out", sys1_pll_out_sels, ARRAY_SIZE(sys1_pll_out_sels), 0, 0, 0, base + 0x30, CLK_IS_CRITICAL);
> > -	clks[IMX8MQ_SYS2_PLL_OUT] = imx_clk_sccg_pll("sys2_pll_out", sys2_pll_out_sels, ARRAY_SIZE(sys2_pll_out_sels), 0, 0, 1, base + 0x3c, CLK_IS_CRITICAL);
> > -	clks[IMX8MQ_SYS3_PLL_OUT] = imx_clk_sccg_pll("sys3_pll_out", sys3_pll_out_sels, ARRAY_SIZE(sys3_pll_out_sels), 0, 0, 1, base + 0x48, CLK_IS_CRITICAL);
> > +	clks[IMX8MQ_SYS2_PLL_OUT] = imx_clk_sccg_pll("sys2_pll_out", sys2_pll_out_sels, ARRAY_SIZE(sys2_pll_out_sels), 0, 0, 0, base + 0x3c, CLK_IS_CRITICAL);
> > +	clks[IMX8MQ_SYS3_PLL_OUT] = imx_clk_sccg_pll("sys3_pll_out", sys3_pll_out_sels, ARRAY_SIZE(sys3_pll_out_sels), 0, 0, 0, base + 0x48, CLK_IS_CRITICAL);
> >  	clks[IMX8MQ_DRAM_PLL_OUT] = imx_clk_sccg_pll("dram_pll_out", dram_pll_out_sels, ARRAY_SIZE(dram_pll_out_sels), 0, 0, 0, base + 0x60, CLK_IS_CRITICAL);
> >  	clks[IMX8MQ_VIDEO2_PLL_OUT] = imx_clk_sccg_pll("video2_pll_out", video2_pll_out_sels, ARRAY_SIZE(video2_pll_out_sels), 0, 0, 0, base + 0x54, 0);
> >  
> > -- 
> > 2.16.4
> > 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
