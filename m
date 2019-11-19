Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49C6910107A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 Nov 2019 02:07:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dWfxxM1NDcQROZA0GkcACiYTVoUrTU5sauLjglfqmUQ=; b=p104/eCDN+BTsh
	Zd7X0QKFIlGLuefQWbBHMKuIyjSMdWP7WRYlkedJO2xeJzRPUzAPKTla3jLDnSBEJ6Y0l2RrIs66D
	NgFJKXYzJmfLnwgo3Ko2NVlm5Uyhcq1CbHFjmb1nL09ncUASjgnJJZo2IultKXTZs58RvNvYs3deC
	7LiTyI3+w5y89wRU3rCDkfpoXtYSuV2SfzHIKw6ZmPxiYWxC6SyZq2OS35KQTt7r4l4N31P3G7nk5
	uZPj+xzw/ZsvmSN0+8WaH1/JFsxcV+KFP0PxfHiwFgEIl1FoZK805wFND4dLKAQnPA1Hmkhx7hrVD
	dWIzhzTT28hAvqR8Ceag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWryv-0007Wa-0X; Tue, 19 Nov 2019 01:07:01 +0000
Received: from mail-eopbgr30045.outbound.protection.outlook.com ([40.107.3.45]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWryk-0007Uz-Vx
 for linux-arm-kernel@lists.infradead.org; Tue, 19 Nov 2019 01:06:55 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Wib4vMtmDY+NFksyOZAyEhwLZxN36lwVIHXGg+PGC2sC1TiUgvqWsvvgfmFHoH8JOIPc+nJoFSBENRoTSNrXKIQrGqdGWLeoYSW63/lp/WAAc+WrCzXzsTMcs/WvHvUbPv8ukadYFdRHxOuYtBXmH0BL0tMT0JAIcGOJVSFKDYVO78P40xlrtMQ5ZJlBN85YKT2lKMf4kMhJ0J+0bvl7ofWThcxxOVVgpJfg5Qx4JyvXKXBg4aYFCrn65+AAq7CbQXQk/5z8GAxOj6xttoL3t32yztTfSU6vVJqS/NzUM7Je6FZDKwc1D6hx9BXAsI7o99Gzp6xnP1RTGBK+SR+jSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aj8adp4a24dtW/PPvid+IbElHqvksM+7Xnt1TUBwgT8=;
 b=F66XWzac+IgYAhCzKaOUXyPtu8luD8UnAIF+3+LR8V/myKjE/5ssTJSmTztPOTVPvElBbFjbh/KO70tJVK0gSFA6ukqo1SlaVEd+Wkztb63Hkdn9x7yVBfG+8FmKh3dFb6W/98Lgf076k398UT3Vq3UFPRorTes5FKPtmKBqRUFr1XT50BMTjKxjjIrMGns8uuUFzfBLlTIwuC2s9Zn0knlfRf/6cqSW+ARK8k38Cyu25LMLdlxPKFG1mCH8s7h4i1OYeWGgO855pTOHK3YpxvGBihRcmxV1eVPdAubvDwpqZ37sIPTA2cjLqn1D3d2K1zt2zIWBYXdR0pbBSYzJnw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aj8adp4a24dtW/PPvid+IbElHqvksM+7Xnt1TUBwgT8=;
 b=rrwNfIkCZgGHIRyA4l14jGuNHxlcCc8sewCQvk7NUPJXKtRwe6wZfkp9E1OsoS/oIYWJpaQUUlKB+mFq2it1wzRX/TD3moGgW4d6OCyrmpA+NuoeMBrMU/ReFyhRb9QWIc0QdIREjEbyXz93sOPmKRPedcd0vvemzTDwycUxdtI=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB7137.eurprd04.prod.outlook.com (10.186.130.213) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2451.28; Tue, 19 Nov 2019 01:06:46 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::f16d:a26a:840:f97c]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::f16d:a26a:840:f97c%4]) with mapi id 15.20.2451.029; Tue, 19 Nov 2019
 01:06:46 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Leonard Crestez <leonard.crestez@nxp.com>, "sboyd@kernel.org"
 <sboyd@kernel.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>
Subject: RE: [PATCH V2 2/4] clk: imx: imx8mn: Switch to clk_hw based API
Thread-Topic: [PATCH V2 2/4] clk: imx: imx8mn: Switch to clk_hw based API
Thread-Index: AQHVktMqCwK57JvXBUGi+SLZf4ysjKeRxVqg
Date: Tue, 19 Nov 2019 01:06:46 +0000
Message-ID: <AM0PR04MB4481F5F07FF493E75CFD1747884C0@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <1572846270-24375-1-git-send-email-peng.fan@nxp.com>
 <1572846270-24375-3-git-send-email-peng.fan@nxp.com>
 <VI1PR04MB7023CC47DC123A66627940E9EE4D0@VI1PR04MB7023.eurprd04.prod.outlook.com>
In-Reply-To: <VI1PR04MB7023CC47DC123A66627940E9EE4D0@VI1PR04MB7023.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: aed59b44-4cb6-428e-3491-08d76c8cbf92
x-ms-traffictypediagnostic: AM0PR04MB7137:|AM0PR04MB7137:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB71370900908CB724DC755885884C0@AM0PR04MB7137.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4714;
x-forefront-prvs: 022649CC2C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(39860400002)(136003)(396003)(376002)(346002)(189003)(199004)(186003)(55016002)(6116002)(14454004)(3846002)(4326008)(229853002)(2201001)(6246003)(76176011)(66066001)(2906002)(2501003)(7736002)(74316002)(25786009)(305945005)(86362001)(71200400001)(71190400001)(52536014)(66946007)(66556008)(64756008)(66446008)(66476007)(256004)(478600001)(9686003)(6436002)(5660300002)(99286004)(33656002)(26005)(110136005)(8676002)(486006)(53546011)(8936002)(81166006)(81156014)(44832011)(316002)(11346002)(102836004)(6506007)(76116006)(446003)(7696005)(476003)(54906003)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB7137;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: HExO8AaHioNVh8mc4ty2QVpaukJA+Wm1qInEzMpSwg7XD2Pi5t1aANL7pBtlzwG59rmwGafMySC5+dMsUAkku71d/zS8Mg8SE7hJsBbDJ/LQUZIqOGLmncT8piPWzW8dhYD3Gvu+6v4MicrRDVg2tsB/A8dsuVHIWWodqxNU/ASJeYz798+mT66qY8u9uCD72UUK/1uobk6GVwpi3tWN7Mn/JgATOnGdjOJo9Om3MQrB/IZXNK+8R1WMADGk3kKZ3BmhWk/D30dl0YIaKLsuqUmIpQHVQTelE9K3rMaoFf7TNXR9BsvPhcqUqMC26rkgPBSyJg4peKO2FpdB9e7WVIlQIHaaPtORWgu+Z5zxH3ow9BlsmC0dJ6YOPrV/tEzQxL3vvSe+E8b+rpYpRUkbtgGkoEPpvwdSuqhCbzLib76+GdGcaOji3/yofQWDY6yt
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: aed59b44-4cb6-428e-3491-08d76c8cbf92
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Nov 2019 01:06:46.0756 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UlAVNNcmdMs3nrIUcFmFMP3IPqQVR2XDwbFj4B1IOAmd3I6Foi7tokCgHfiGfgo7ko5sY11UiUexO8kxhI7dYA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB7137
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_170651_139489_8FEECC92 
X-CRM114-Status: GOOD (  14.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.45 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Abel Vesa <abel.vesa@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Jacky Bai <ping.bai@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> Subject: Re: [PATCH V2 2/4] clk: imx: imx8mn: Switch to clk_hw based API
> 
> On 2019-11-04 7:46 AM, Peng Fan wrote:
> > From: Peng Fan <peng.fan@nxp.com>
> >
> > Switch the entire clk-imx8mn driver to clk_hw based API.
> > This allows us to move closer to a clear split between consumer and
> > provider clk APIs.
> 
> > -	clks[IMX8MN_AUDIO_PLL1] = imx_clk_pll14xx("audio_pll1",
> "audio_pll1_ref_sel", base, &imx_1443x_pll);
> > -	clks[IMX8MN_AUDIO_PLL2] = imx_clk_pll14xx("audio_pll2",
> "audio_pll2_ref_sel", base + 0x14, &imx_1443x_pll);
> > -	clks[IMX8MN_VIDEO_PLL1] = imx_clk_pll14xx("video_pll1",
> "video_pll1_ref_sel", base + 0x28, &imx_1443x_pll);
> > -	clks[IMX8MN_DRAM_PLL] = imx_clk_pll14xx("dram_pll",
> "dram_pll_ref_sel", base + 0x50, &imx_1443x_pll);
> > -	clks[IMX8MN_GPU_PLL] = imx_clk_pll14xx("gpu_pll", "gpu_pll_ref_sel",
> base + 0x64, &imx_1416x_pll);
> > -	clks[IMX8MN_VPU_PLL] = imx_clk_pll14xx("vpu_pll", "vpu_pll_ref_sel",
> base + 0x74, &imx_1416x_pll);
> > -	clks[IMX8MN_ARM_PLL] = imx_clk_pll14xx("arm_pll", "arm_pll_ref_sel",
> base + 0x84, &imx_1416x_pll);
> > -	clks[IMX8MN_SYS_PLL1] = imx_clk_fixed("sys_pll1", 800000000);
> > -	clks[IMX8MN_SYS_PLL2] = imx_clk_fixed("sys_pll2", 1000000000);
> > -	clks[IMX8MN_SYS_PLL3] = imx_clk_pll14xx("sys_pll3", "sys_pll3_ref_sel",
> base + 0x114, &imx_1416x_pll);
> > +	clks[IMX8MN_AUDIO_PLL1] = imx_clk_hw_pll14xx("audio_pll1",
> "audio_pll1_ref_sel", base, &imx_1416x_pll);
> > +	clks[IMX8MN_AUDIO_PLL2] = imx_clk_hw_pll14xx("audio_pll2",
> "audio_pll2_ref_sel", base + 0x14, &imx_1416x_pll);
> > +	clks[IMX8MN_VIDEO_PLL1] = imx_clk_hw_pll14xx("video_pll1",
> "video_pll1_ref_sel", base + 0x28, &imx_1416x_pll);
> > +	clks[IMX8MN_DRAM_PLL] = imx_clk_hw_pll14xx("dram_pll",
> "dram_pll_ref_sel", base + 0x50, &imx_1416x_pll);
> > +	clks[IMX8MN_GPU_PLL] = imx_clk_hw_pll14xx("gpu_pll",
> "gpu_pll_ref_sel", base + 0x64, &imx_1416x_pll);
> > +	clks[IMX8MN_VPU_PLL] = imx_clk_hw_pll14xx("vpu_pll",
> "vpu_pll_ref_sel", base + 0x74, &imx_1416x_pll);
> > +	clks[IMX8MN_ARM_PLL] = imx_clk_hw_pll14xx("arm_pll",
> "arm_pll_ref_sel", base + 0x84, &imx_1416x_pll);
> > +	clks[IMX8MN_SYS_PLL1] = imx_clk_hw_fixed("sys_pll1", 800000000);
> > +	clks[IMX8MN_SYS_PLL2] = imx_clk_hw_fixed("sys_pll2", 1000000000);
> > +	clks[IMX8MN_SYS_PLL3] = imx_clk_hw_pll14xx("sys_pll3",
> > +"sys_pll3_ref_sel", base + 0x114, &imx_1416x_pll);
> 
> You are switching audio/video/dram PLL from imx_1443x_pll to
> imx_1416x_pll, are you sure this is correct?

That is a mistaken, copy/paste error. I'll fix in V3.

> 
> If this is intentional it should be an separate patch.
> 
> > -	clks[IMX8MN_CLK_ARM] = imx_clk_cpu("arm", "arm_a53_div",
> > -					   clks[IMX8MN_CLK_A53_DIV],
> > -					   clks[IMX8MN_CLK_A53_SRC],
> > -					   clks[IMX8MN_ARM_PLL_OUT],
> > -					   clks[IMX8MN_CLK_24M]);
> 
> > +	clks[IMX8MN_CLK_ARM] = imx_clk_hw_cpu("arm", "arm_a53_div",
> > +					      clks[IMX8MN_CLK_A53_DIV]->clk,
> > +					      clks[IMX8MN_CLK_A53_SRC]->clk,
> > +					      clks[IMX8MN_ARM_PLL_OUT]->clk,
> > +					      clks[IMX8MN_CLK_24M]->clk);
> 
> This series seems to be against Shawn's clk/imx but there is an additional
> patch in Stephen's tree which changes this 24M to PLL1_800M.
> Maybe that should be pulled into clk/imx? Otherwise it might spawn an
> unreadable merge conflicts since almost the entire file is rewritten.

Yes.

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
