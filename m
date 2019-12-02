Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC23E10E536
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 06:08:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=uH3bD7/0IcaKyNmbUFibx014Oj6JRUbVVFMWpbm7zCc=; b=o5TtMIvYIy9e7I
	10Y4WmeOXM9DtPKoIKm+Dqxye8vRE3hPBOM9I1ZwPIu4DDksMcoeGkG1YiQPJv4hvcQ22GJt1rkWu
	sXslDgH9v/R/3PQLU2GeZczRDsE5/aPPswQXGAdMB7+lw6ELWpQI47cDrnDqmp9dYkfJWEh/h6omi
	6K0ngKy63Kjpya3C8AKtuX7H8o40O8UllkR103IZ0/awpw2V8/+77hc8BbdQGNV9YHnjVwpsNQOcO
	bxB373BFRlbbJBM10P0q0dhiY/J6F8zIoZD30b2EITznoJ0HdTdA15JUe9B63PD9Cq+LVVRLLPOaa
	j+nXip8Lt8mqzUDbkUmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibdwL-0006qU-3H; Mon, 02 Dec 2019 05:08:05 +0000
Received: from mail-eopbgr00061.outbound.protection.outlook.com ([40.107.0.61]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibdwD-0006oa-8c
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Dec 2019 05:07:58 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mSQq+iYClyp9YObTpVHyn1YV5OUgdVijvgCyBDymQH6TkAkoGnCSzAIDl0Wq0vmGLoDEi4w5qpbH6MlANE2BVe09Iwzq15R4rh5Il1r7Pxf8N5MaEKQ2ujqPcEa3USRN02MNLOnhSfsDmHyNHzoGHzLFb/qMbXYyXdF1LvDOx2KM//hKuCvi6EWPgZAQD3PC/YRoJK8zvDHKM/HBSsGXgvTVOGz9djD8bNWeYTBpuyGPV0yeSRh75hRfpq5DDFOKOIQv8LO/zkFB0vAddexvsAidXyfPYYxdcIJvYsLp9sPhtDf+NHSyaBfeCha0F8/OjlaMArdInlfIdGWWlrl0aA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jUEk71V6iz/GFduNsYuas01vu7VaV5VLPvmCMeuybaY=;
 b=TE+0r2p6pSr0HEioXNrl/X3jKsBanWocF8VUaX3tQWIoJT2JCl8zP62vd4joEOwJDM3poQ8QJ288YT3jqwb6UciOSl2OiN4Jg3O6lg5LpVSlXNS6n3i/CAkyadlo2xCJQ7YPSnCme9XLkbyiQeHD3bwvVNL0DByU5VUiVX8MYuOUY9sX9mG0svASnDx+fd2DM3q5WSzN19bmkHLP8zzCGk1kNrHaDdgMCi4L4YKpMroZlu5Gdbk1sXNayS1PCqlZEPvv8Op1JDtjMcdu9vEUJmdRPVIXrVA/+6d9SogddZmh+79z8B5KCAFQzJBHZYsUasnjzSiwFDkPFYWaHecUcQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jUEk71V6iz/GFduNsYuas01vu7VaV5VLPvmCMeuybaY=;
 b=mXAH4Lf4NHKznOoQ0MicYHV6zt01y8B27Q4m17YqObrRQT3YDCmu+C4ztNb0pwGoAbe+iqs50K+NiUc6ePwwfZGvJ6jX7cFKTryNgb2z1dIjLuXrR7B2ncBcwZ7mVRxRUI3Lx7ErmuSeQHstUJKYZDyWC+XNi+0rwp5aLE2pl1M=
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com (10.186.159.144) by
 VI1PR04MB5967.eurprd04.prod.outlook.com (20.178.121.27) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2495.22; Mon, 2 Dec 2019 05:07:48 +0000
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::dd0c:72dc:e462:16b3]) by VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::dd0c:72dc:e462:16b3%5]) with mapi id 15.20.2495.014; Mon, 2 Dec 2019
 05:07:48 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Peng Fan <peng.fan@nxp.com>, Abel Vesa <abel.vesa@nxp.com>
Subject: Re: [PATCH 1/7] clk: imx: clk-pll14xx: Switch to clk_hw based API
Thread-Topic: [PATCH 1/7] clk: imx: clk-pll14xx: Switch to clk_hw based API
Thread-Index: AQHVjl59g0Rhyol1lkGW5Jui3luQOw==
Date: Mon, 2 Dec 2019 05:07:48 +0000
Message-ID: <VI1PR04MB7023CAEB8ADA6B1CA0907A72EE430@VI1PR04MB7023.eurprd04.prod.outlook.com>
References: <1572356175-24950-1-git-send-email-peng.fan@nxp.com>
 <1572356175-24950-2-git-send-email-peng.fan@nxp.com>
 <20191202011721.GA17574@dragon>
 <AM0PR04MB4481B7D74A1861558523F21488430@AM0PR04MB4481.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [92.121.36.197]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 7a29bf61-281a-46bc-8507-08d776e59354
x-ms-traffictypediagnostic: VI1PR04MB5967:|VI1PR04MB5967:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB596713F839586FE903500787EE430@VI1PR04MB5967.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4941;
x-forefront-prvs: 0239D46DB6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(136003)(376002)(39860400002)(366004)(346002)(199004)(189003)(76176011)(7696005)(6506007)(53546011)(66066001)(99286004)(6636002)(71190400001)(71200400001)(74316002)(4326008)(44832011)(86362001)(110136005)(229853002)(54906003)(256004)(102836004)(446003)(316002)(305945005)(6246003)(7736002)(6436002)(6306002)(9686003)(26005)(8676002)(55016002)(52536014)(14454004)(6116002)(81156014)(3846002)(2906002)(186003)(33656002)(8936002)(966005)(81166006)(478600001)(25786009)(66476007)(66556008)(64756008)(66446008)(91956017)(76116006)(66946007)(5660300002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB5967;
 H:VI1PR04MB7023.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 3jP5wiRyf1JaltBduvEMcF6tdViLKGmbiUu3GMHGJNAIGWKoM5a3Y+a31A6T8KdchiNIaUrlJpb1XYm9Ujramh0b4rPaVXbqCc/R9OxlGsah3lVwEwv4vnFRmhdW2fE5wpPDZP4s9gSDXYI+j+m17GoY4bg+hSTfUeL0pL5BINL6iMqMSwmDb1lOOjjDT+bjcun6jiMYXdIloPsu2pWNKpIf7wJU3hpJ0Zkhj5gnxer0MiPNRfpcNnDDwxLKi+MFzss/zknSaX4nwect3YoFV/b7sIXFyEtQVdhGaAT3DRJRvuf2MigGxhpUQjv7yEvNUuxc1w+K+gMVIajs4sYiehN1K7t38L7lBwuRlwhZyiyIJH/3rjSxIOYswJMeoFp6fNLEc5s5h5fLQbFF7zo5mPAAcQKo3Ik79c1uYfQMHntu9TZMMIJ+sHGrtMjVfiqGgvubyjta5j9bySayO3yO6yVNLhdPm0f/C095G40RA1M=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7a29bf61-281a-46bc-8507-08d776e59354
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Dec 2019 05:07:48.6298 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mqVqF1mJ6G1KBnafD//XAyPKPAV3g5MgpB89p7ajRl0b0OG5AgSLyPVBSdtWozzBHxAGlQcRDKRV3EC3DOhD3w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB5967
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191201_210757_307125_A30D0865 
X-CRM114-Status: UNSURE (   7.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.0.61 listed in list.dnswl.org]
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

On 2019-12-02 4:26 AM, Peng Fan wrote:
>> Subject: Re: [PATCH 1/7] clk: imx: clk-pll14xx: Switch to clk_hw based API
>> On Tue, Oct 29, 2019 at 01:40:54PM +0000, Peng Fan wrote:
>>> From: Peng Fan <peng.fan@nxp.com>
>>>
>>> Switch the imx_clk_pll14xx function to clk_hw based API, rename
>>> accordingly and add a macro for clk based legacy. This allows us to
>>> move closer to a clear split between consumer and provider clk APIs.
>>>
>>> diff --git a/drivers/clk/imx/clk.h b/drivers/clk/imx/clk.h index
>>> bc5bb6ac8636..5038622f1a72 100644
>>> --- a/drivers/clk/imx/clk.h
>>> +++ b/drivers/clk/imx/clk.h
>>> @@ -97,8 +97,12 @@ extern struct imx_pll14xx_clk imx_1443x_pll;
>>> #define imx_clk_mux(name, reg, shift, width, parents, num_parents) \
>>>   	imx_clk_hw_mux(name, reg, shift, width, parents, num_parents)->clk
>>>
>>> -struct clk *imx_clk_pll14xx(const char *name, const char *parent_name,
>>> -		 void __iomem *base, const struct imx_pll14xx_clk *pll_clk);
>>> +#define imx_clk_pll14xx(name, parent_name, base, pll_clk) \
>>> +	imx_clk_hw_pll14xx(name, parent_name, base, pll_clk)->clk
>>> +
>>
>> I would suggest to use an inline function for this, which will be more readable
>> and complying to kernel coding style.
> 
> ok, I'll send out v2.

Blindly dereferencing ->clk will crash instead of propagating errors so 
you might want to use the to_clk helper from here:

https://patchwork.kernel.org/patch/11257811/

--
Regards,
Leonard

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
