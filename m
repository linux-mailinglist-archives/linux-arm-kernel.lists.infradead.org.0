Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3159BF93B2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 16:10:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4MD0NZ7Sk7AVQrYiD7rD05hIEqyHtblZdymY32ZUaYI=; b=eaI91V5e+cc6kD
	V0zt3hR7BpHO7eXiH66xff3n81ItFJwfh4FsZmkCGfblhz+e2kVj7fWnHHku8l0DzqRZrDH+fsOAa
	mceAsF+DLMRhjsTI/h69JiDwlJrnds68PMSksvjco6tMhjcA2pA/n0IFORUusFHftLF9Vls/VR29e
	Hta3Qk/aRjYPD2KXgzMfCBlMUEPcO9IYFVeZbJ3J73jv5JlG5obdYm288pND5cs6YQrfGt9B+VFOc
	POIoHqhlN6CXqdyuFswx3uNgy1gsZIhCm7malw/lIW1scC3MqQ/0RXNW7kWtXNw+sOEvLqOlcoE6i
	3pAXMQeLOw7Gh45H9/bA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUXoG-0000wu-GX; Tue, 12 Nov 2019 15:10:24 +0000
Received: from mail-eopbgr80050.outbound.protection.outlook.com ([40.107.8.50]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUXo7-0000vb-An
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 15:10:16 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Kl4D4rV+tTYigdBoP0LJ44rNhicb6sBhvg6LYgWEoL4dHpf5c1nPm2nB2BqMGViTmI6WfSUxrd5dBWiQcF9pbZnYQMnowYbn51Kzs45iH2wX82+F0D5UlMT3HXWLSsKHFg0ZqntvOkW3KUcjbMgc4KnIfJgcXPpijKmGqLTdOrfD9kEUyXxVNuXO9yDc34+yam37fmN8sKNFQVuL+b19JMFtIFkYRZyvNJgTi/k72KbDkTpFdpZsXOCCCxkJ/MvEeclE32KZeNxCQm+CBsmoC9VLVzYEvWIovHg1Hj9iJGvFo6FqLwDi+JvWAg/ZW+7uPw/ojKreP4bsj9SWqOJHgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dztztVnatxYEo7Do6v5rCP3ACyhW8HFSEMDdISM9eoo=;
 b=W5OflWjEenlwd6hmlHfMqRgdN06kIczLrHJpHw9E305f3/QKSC6ady8GP6u3IaG61WPpj7LENeAojJXIMBkcjaqsDv2FQLWeO3/Ygxx7snNhIV7v05YJBlT2KeyCVXDnYpQvqu+Yc7QllpuSr0MD2FshK2bmdr/Qs8eE5YIqAUF9VQQl5M2GTy+vcX5NrTbk1c6yct/EHG0c9Ts7kQusn/NmfXCmY60Mp8bhaIsp5jx2JqX5Uz2eWIkL3QDtR2FF3v3C5gKt02iQH2bGs/J3vAQ4BxN8Pedx9CyC2ItoqXLh/xNDF3bnsD/IDc9tY1m1n+c/7403t1VbqNJtUfJRNA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dztztVnatxYEo7Do6v5rCP3ACyhW8HFSEMDdISM9eoo=;
 b=ClSeF6DQz3SQmHX78jdeqPDIvRZ5Jx2yXDb0jZNNLrDsc64M+Tb77Bx0a1vsCY7r9I0lonJ8zi2fpY+3ed++lGJd1Q4KR+n4JZPubNTmdFVGYFmjS3aEreO9UZKc2HTi3QTUi5iESo4dKdP6+B48e56oAhY73mnTmbGsRLcDYmA=
Received: from AM0PR04MB5779.eurprd04.prod.outlook.com (20.178.202.151) by
 AM0PR04MB5457.eurprd04.prod.outlook.com (20.178.113.147) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2430.25; Tue, 12 Nov 2019 15:10:10 +0000
Received: from AM0PR04MB5779.eurprd04.prod.outlook.com
 ([fe80::fd44:1b14:587c:9fde]) by AM0PR04MB5779.eurprd04.prod.outlook.com
 ([fe80::fd44:1b14:587c:9fde%7]) with mapi id 15.20.2430.027; Tue, 12 Nov 2019
 15:10:10 +0000
From: Abel Vesa <abel.vesa@nxp.com>
To: Leonard Crestez <leonard.crestez@nxp.com>
Subject: Re: [PATCH v4 1/6] clk: imx8m: Set CLK_GET_RATE_NOCACHE on dram clocks
Thread-Topic: [PATCH v4 1/6] clk: imx8m: Set CLK_GET_RATE_NOCACHE on dram
 clocks
Thread-Index: AQHVloV7VZOJz0hWAkeO+G3807P1dqeHqX8A
Date: Tue, 12 Nov 2019 15:10:09 +0000
Message-ID: <20191112151008.5spfh7y5xzppk4s5@fsr-ub1664-175>
References: <cover.1573252696.git.leonard.crestez@nxp.com>
 <0e0eeeee546a3bb664935184d66866f1c66458ce.1573252696.git.leonard.crestez@nxp.com>
 <20191112111803.c5624in2masqipqf@fsr-ub1664-175>
 <VI1PR04MB702387DCA9DB5A0A3F6288EDEE770@VI1PR04MB7023.eurprd04.prod.outlook.com>
In-Reply-To: <VI1PR04MB702387DCA9DB5A0A3F6288EDEE770@VI1PR04MB7023.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM3PR04CA0147.eurprd04.prod.outlook.com (2603:10a6:207::31)
 To AM0PR04MB5779.eurprd04.prod.outlook.com
 (2603:10a6:208:131::23)
x-originating-ip: [89.37.124.34]
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=abel.vesa@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: e617868e-1576-4286-50b5-08d76782689d
x-ms-traffictypediagnostic: AM0PR04MB5457:|AM0PR04MB5457:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB5457057E559698CA92B00EEBF6770@AM0PR04MB5457.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 021975AE46
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(7916004)(4636009)(366004)(346002)(136003)(396003)(376002)(39860400002)(199004)(189003)(6246003)(5660300002)(6486002)(14454004)(478600001)(6436002)(4326008)(6862004)(229853002)(25786009)(66476007)(3846002)(6512007)(9686003)(66946007)(66556008)(64756008)(66446008)(1076003)(6116002)(14444005)(486006)(446003)(256004)(71190400001)(81156014)(7416002)(99286004)(11346002)(81166006)(44832011)(54906003)(52116002)(66066001)(476003)(8676002)(8936002)(6636002)(186003)(76176011)(71200400001)(386003)(6506007)(53546011)(86362001)(33716001)(2906002)(7736002)(305945005)(316002)(102836004)(26005)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5457;
 H:AM0PR04MB5779.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: T9fQXSzCQFmpUb97+BdguccGjsric9igcMnkcYHDTMMuWFbTTaOW0CzmAga7mhvVaU34pDeKaYiQiQk4zFX3wV4pFKc/nZkE2b9TjqomJV3rxHIDvWPqDzxTpv2aSzH56t5hlMTmswc50zhdzsltKGBAlMR+IG9vg/XDpwfONyUERhYtFqZwWQQVCzoFF8UT9dcfR4Rci9HA6jv/DNvbWdUePIrvbRAlldQoMN3gxNkqs+YHnoEqI7hcjgQqGy4bBy93JF/HKmm0HnegeQIzp2l0osxeVcbXvPPuHZ2YXYrFCYdtdWBuOYNH2lX4OiWVHP0rJ2SHQcmD3UlojYmLuHsyUMpmEqHZhV+2rVqgBx+JhFYZF47em4GlWlAn/mtKV3E/MxE3yKI12MmFJy/xqQObMHFiRkrxvwACY5TGj/gaRO8/KluXkj7KLHnOeQgz
Content-ID: <CEBC11D2F4C3804D8B849B3252B2D1CF@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e617868e-1576-4286-50b5-08d76782689d
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Nov 2019 15:10:09.7862 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: txkS3UEo/uv0zvf5u/GtkwcT/2VejBnUUpum6BVpkUuJboWqFjGM7N5JJHmdmTKy1JeFX8l8dvWwSDUU3s7U9w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5457
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_071015_378605_58F93AFD 
X-CRM114-Status: GOOD (  19.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.50 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 =?iso-8859-2?Q?Artur_=A6wigo=F1?= <a.swigon@partner.samsung.com>,
 Jacky Bai <ping.bai@nxp.com>, Viresh Kumar <viresh.kumar@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>, Angus Ainslie <angus@akkea.ca>,
 Alexandre Bailon <abailon@baylibre.com>, Matthias Kaehlcke <mka@chromium.org>,
 Saravana Kannan <saravanak@google.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 Chanwoo Choi <cw00.choi@samsung.com>, MyungJoo Ham <myungjoo.ham@samsung.com>,
 dl-linux-imx <linux-imx@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Martin Kepplinger <martink@posteo.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Aisheng Dong <aisheng.dong@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 Stephen Boyd <sboyd@kernel.org>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 Georgi Djakov <georgi.djakov@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 19-11-12 13:43:35, Leonard Crestez wrote:
> On 12.11.2019 13:18, Abel Vesa wrote:
> > On 19-11-09 00:39:51, Leonard Crestez wrote:
> >> These clocks are only modified as part of DRAM frequency switches during
> >> which DRAM itself is briefly inaccessible. The switch is performed with
> >> a SMC call to by TF-A which runs from a SRAM area; upon returning to
> >> linux several clocks bits are modified and we need to update them.
> >>
> >> For rate bits an easy solution is to just mark with
> >> CLK_GET_RATE_NOCACHE so that new rates are always read back from
> >> registers.
> >>
> >> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
> >> ---
> >>   drivers/clk/imx/clk-imx8mm.c | 11 +++++++++--
> >>   drivers/clk/imx/clk-imx8mn.c | 12 ++++++++++--
> >>   drivers/clk/imx/clk-imx8mq.c | 15 +++++++++++----
> >>   3 files changed, 30 insertions(+), 8 deletions(-)
> 
> >> --- a/drivers/clk/imx/clk-imx8mn.c
> >> +++ b/drivers/clk/imx/clk-imx8mn.c
> >> @@ -428,12 +428,20 @@ static int imx8mn_clocks_probe(struct platform_device *pdev)
> >>   	clks[IMX8MN_CLK_AHB] = imx8m_clk_composite_critical("ahb", imx8mn_ahb_sels, base + 0x9000);
> >>   	clks[IMX8MN_CLK_AUDIO_AHB] = imx8m_clk_composite("audio_ahb", imx8mn_audio_ahb_sels, base + 0x9100);
> >>   	clks[IMX8MN_CLK_IPG_ROOT] = imx_clk_divider2("ipg_root", "ahb", base + 0x9080, 0, 1);
> >>   	clks[IMX8MN_CLK_IPG_AUDIO_ROOT] = imx_clk_divider2("ipg_audio_root", "audio_ahb", base + 0x9180, 0, 1);
> >>   	clks[IMX8MN_CLK_DRAM_CORE] = imx_clk_mux2_flags("dram_core_clk", base + 0x9800, 24, 1, imx8mn_dram_core_sels, ARRAY_SIZE(imx8mn_dram_core_sels), CLK_IS_CRITICAL);
> >> -	clks[IMX8MN_CLK_DRAM_ALT] = imx8m_clk_composite("dram_alt", imx8mn_dram_alt_sels, base + 0xa000);
> >> -	clks[IMX8MN_CLK_DRAM_APB] = imx8m_clk_composite_critical("dram_apb", imx8mn_dram_apb_sels, base + 0xa080);
> >> +
> >> +	/*
> >> +	 * DRAM clocks are manipulated from TF-A outside clock framework.
> >> +	 * Mark with GET_RATE_NOCACHE to always read div value from hardware
> >> +	 */
> >> +	clks[IMX8MN_CLK_DRAM_ALT] = __imx8m_clk_composite("dram_alt", imx8mn_dram_alt_sels, base + 0xa000,
> >> +			CLK_GET_RATE_NOCACHE);
> >> +	clks[IMX8MN_CLK_DRAM_APB] = __imx8m_clk_composite("dram_apb", imx8mn_dram_apb_sels, base + 0xa080,
> >> +			CLK_IS_CRITICAL | CLK_GET_RATE_NOCACHE);
> > 
> > nitpick: I think it looks better if we stick to one line each clock.
> > I know it's against the 80 chars rule, but at least is consistent.
> 
> Yes, there are longer lines in the imx8m* files anyway.
> 
> If I fix this (in all instances) can I also add a "reviewed-by"?
> 

Sorry, I forgot to add the line.

For all the clock related changes:

Reviewed-by: Abel Vesa <abel.vesa@nxp.com>

> --
> Regards,
> Leonard

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
