Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D5AD13216C
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 09:31:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5aFmU+S/EZfqFRABONSN0tr2MAmcZnNmPljFEbCcgh8=; b=nQhMQD7fVKNGTk
	PNcxyJoyojKw/omLarn+QwTTIuQeHPQqnNNhLszMNkzUgFbbIIYPAYKAMLDW1FiBKEI4bcZRKNRn1
	eZZNh3RuHJFZfsm6HWiqKAMEejOCLiPGmhOLowoZ27GsjitsYXrPRsprLAskSYiRwaj7pZUkaWQTE
	sRUVZQ0tMlqILjN+4LKH+gIwINH7c2J0grlj/rTayekRFssSsCDDjlEZR7YH+AKCHm8SuGJauyEsH
	B+4JQcxi0IvbEAaSq0cB/OjTK+QIXa0em9qatl4DI5Vn2D9KqXe/qZEtr4FjSc2ze1c1hOqBEhVkE
	rbOopWq1SP+tm66Xa9oQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iokH1-0003TB-Hr; Tue, 07 Jan 2020 08:31:35 +0000
Received: from mail-am6eur05on2076.outbound.protection.outlook.com
 ([40.107.22.76] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iokGl-0003S0-82
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 08:31:21 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VEo3OKRvo4RuthXlYHBOBZUoSsEOqJFmoOWI4MYa399YFnUbI0mz/RfNSzZHj0tRg8SlFENKpPy6dQ+JGISincrNsi9mJHzJsi6mqxs8KopGk9VqCkaEfUGlDyNL9zWFoC6nq2i/ZHNcfGHGnYq1zA9z9It1lt6h9y1WGQ7jVsSPlqe1NufyBvduPFvph26bqMP7/jPuXzy5i5JBFrCeSmDYz+9NEMnQlQV7iU18RntcyzNIWly8PvF7asUYqgj+CVMiuTJ9rc9m2XZR/qigWUdHCF0n7FhdtldZy69/5XXQkY/HlpUeexgULtf5EMa/+BSYqe0/fKDl4yOaeiIclQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EoYesY8cbHtBv0CDkJZmgycuW0WcBanZcHwPBkMW8Oc=;
 b=RK+tpUIz6KusYM81oG1SbYd5f61WQzvD66FIz4h/P0ScQg1+blOgq4oiCTGdEqXdO+Xgf3Uu9OUijbAAiCNYGL1cFPgaJrJl4KtS8/rzbj/Ec0F8PvxTvA3rVjxSK++hEWXakCac4lK8+5T4TGUtYyVWHkzDLD3hn93FeaP7NFCTeiBJgQqPvvFAfql6I0lsDv4sYuLPB+MPIlRz0rQDz6nJdePA4jHWqRC58eQkhT71kaksm/PaRkBF3w2KgKYCA2o0Ki0iSV8vRsVl2Mwe0Aos9tW4mUi60c9OYgGDAuIGHmGmCk8UFF+nW+uXGJ4k2Z+0MCdmNXO+JNBFdJc9qw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EoYesY8cbHtBv0CDkJZmgycuW0WcBanZcHwPBkMW8Oc=;
 b=ELcm+RwLX6eJrQi93W9UIJCqDH8Kexui1g3zp3LGnQLCAMVkjEHafVVC3oI/rTnieJM+5oFLngD/FfLidPRJw7/EWYWuV1QEsh5AmzCLjPwvH1uru1gPAVGHYf7JaElB1sL+jOyLSb92VXufqeLGe8PL8mH5vfD4smjMgQRjSVU=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3899.eurprd04.prod.outlook.com (52.134.71.154) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2602.15; Tue, 7 Jan 2020 08:31:12 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d968:56ad:4c0c:616f]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d968:56ad:4c0c:616f%7]) with mapi id 15.20.2602.016; Tue, 7 Jan 2020
 08:31:12 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Stephen Boyd <sboyd@kernel.org>, Abel Vesa <abel.vesa@nxp.com>,
 "bjorn.andersson@linaro.org" <bjorn.andersson@linaro.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "dinguyen@kernel.org" <dinguyen@kernel.org>, "festevam@gmail.com"
 <festevam@gmail.com>, "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-clk@vger.kernel.org"
 <linux-clk@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "marcin.juszkiewicz@linaro.org"
 <marcin.juszkiewicz@linaro.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "maxime@cerno.tech" <maxime@cerno.tech>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>, "olof@lixom.net"
 <olof@lixom.net>, Jacky Bai <ping.bai@nxp.com>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, "will@kernel.org"
 <will@kernel.org>
Subject: RE: [PATCH 2/3] clk: imx: Add support for i.MX8MP clock driver
Thread-Topic: [PATCH 2/3] clk: imx: Add support for i.MX8MP clock driver
Thread-Index: AQHVvFuWiN3d+7pKeE+rF1Aj40+sqqfdAdWAgABZqkCAAZTXsA==
Date: Tue, 7 Jan 2020 08:31:12 +0000
Message-ID: <DB3PR0402MB391625E9E0C5078C64DAA523F53F0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1577412748-28213-1-git-send-email-Anson.Huang@nxp.com>
 <1577412748-28213-2-git-send-email-Anson.Huang@nxp.com>
 <20200106025914.A180E206F0@mail.kernel.org>
 <DB3PR0402MB39164DCE1E5A819A5A614E86F53C0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
In-Reply-To: <DB3PR0402MB39164DCE1E5A819A5A614E86F53C0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.67]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 2c372a9b-7275-4dbe-a461-08d7934bf478
x-ms-traffictypediagnostic: DB3PR0402MB3899:|DB3PR0402MB3899:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB3899DE45153874971FA78443F53F0@DB3PR0402MB3899.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 027578BB13
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(366004)(376002)(39860400002)(396003)(346002)(189003)(199004)(44832011)(7416002)(186003)(6506007)(5660300002)(7696005)(2906002)(26005)(52536014)(71200400001)(33656002)(8676002)(4326008)(478600001)(81156014)(81166006)(110136005)(86362001)(316002)(66476007)(66556008)(8936002)(9686003)(64756008)(66946007)(76116006)(66446008)(55016002)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3899;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: NsSk5t0DN8y+iksHCRlfyrVw6bYV5uyMJ14KmMU2CDcHlorWA13dSA3oOBrzz00qfJEE8SCPCKgcBP9LsqS5xQ7iGWwK2hzTFhEurN5gdAkNDGW1aN4Nfo5NqgSi45LnNvEUJjlnSzg3UpMtexDlOLqITivz2MKZLRlXnowo6hH/WiPqeFNC05Lk+N20IM9WDVkqcg05Iv+T7+3FnvK5lsz54wEj7Q+lmBMU6Q9k/AXy7em0Mih14CPJun4K/tScCX9liYQUNSshgF4QYun82BYCnq+mv76cJfIy8XRKnWscEmRxTDSC0fVhbwOEO1sKL7oyLn7INja+xmrKwQNH/KoriemD1DkvIg+v3TfvLSdvke4ebWX7C1LlDBEwy2nxGIK8T37UR0N1F6OcE0/qzvkaByMHHv2QhKGec7QtC5CgA/LbIpi8KFOFd34YVy8EQLO5hiot9NzC+a0PjC1abQeQoHx9e5wSiR38MTJ+9eFDuH92Y76pUyb5m6Ew/gZG
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2c372a9b-7275-4dbe-a461-08d7934bf478
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jan 2020 08:31:12.8282 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yEBv6hhrOoIEVnQrdmIJMz82KCNkzfQpyu2mzoGSU34PRQG16pyRj9nNeYs0rWyxka4AOiZe+09hXbE3GZc0lw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3899
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_003120_256995_5DC78275 
X-CRM114-Status: GOOD (  12.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.22.76 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Stephen

> > > +       clks[IMX8MP_AUDIO_PLL1_OUT] = imx_clk_gate("audio_pll1_out",
> > "audio_pll1_bypass", base, 13);
> > > +       clks[IMX8MP_AUDIO_PLL2_OUT] = imx_clk_gate("audio_pll2_out",
> > "audio_pll2_bypass", base + 0x14, 13);
> > > +       clks[IMX8MP_VIDEO_PLL1_OUT] = imx_clk_gate("video_pll1_out",
> > "video_pll1_bypass", base + 0x28, 13);
> > > +       clks[IMX8MP_DRAM_PLL_OUT] = imx_clk_gate("dram_pll_out",
> > "dram_pll_bypass", base + 0x50, 13);
> > > +       clks[IMX8MP_GPU_PLL_OUT] = imx_clk_gate("gpu_pll_out",
> > "gpu_pll_bypass", base + 0x64, 11);
> > > +       clks[IMX8MP_VPU_PLL_OUT] = imx_clk_gate("vpu_pll_out",
> > "vpu_pll_bypass", base + 0x74, 11);
> > > +       clks[IMX8MP_ARM_PLL_OUT] = imx_clk_gate("arm_pll_out",
> > "arm_pll_bypass", base + 0x84, 11);
> > > +       clks[IMX8MP_SYS_PLL1_OUT] = imx_clk_gate("sys_pll1_out",
> > "sys_pll1_bypass", base + 0x94, 11);
> > > +       clks[IMX8MP_SYS_PLL2_OUT] = imx_clk_gate("sys_pll2_out",
> > "sys_pll2_bypass", base + 0x104, 11);
> > > +       clks[IMX8MP_SYS_PLL3_OUT] = imx_clk_gate("sys_pll3_out",
> > > + "sys_pll3_bypass", base + 0x114, 11);
> >
> > Any reason why we can't get back clk_hw pointers instead and register
> > a hw based provider?
> 
> Because i.MX8M series SoCs are still NOT using hw based clock
> implementation, some of the APIs are shared, like imx_clk_pll14xx() and
> imx8m_clk_composite() etc., so I think it is better to keep
> them(i.MX8MQ/i.MX8MM/i.MX8MN/i.MX8MP) aligned, and I will find a
> chance soon to do a patch series to switch all of them to hw based clock,
> does it make sense to you?

Please ignore this, I will do necessary patches together in this series to support
hw clk based provider for i.MX8M SoCs, i.MX8MP will use hw based provider,
and old i.MX8M SoCs will be handled later with separate patch.

Thanks,
Anson
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
