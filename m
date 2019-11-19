Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BFD71025A4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 Nov 2019 14:42:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P0oMEdfwxU7RAoSxGPwG2AhkQTxCPFEXDH5FAe1YTqc=; b=s7E0txn9kxjD31
	JCJgczfj4IxO+/jTYxmLs29uv65fbvpP+9SeRBLoxHHm1Ts3TKteHRmqkvUF7XawBhLIu4Ox8+BHT
	fGJNHHb2itqKw537GFRQIQV1pnHv/NXn3OiSjdGhflM8eDKnZz/PuerQuk8JxwXjmX1x/yFrAHiTv
	i1jLfebHYDp+5qTM6qjlD1LicmqPVUMagjfx6bg4m/bJRyZ/4yu17xWrUPZbAnz9oPzCE2IAtaMCv
	udoc+FCJDthYazE5QREA/6AXU3pzxex2mUSvLw8A6xRcuwYq4i1ITgGR4bcquw6uD2ttwo6vG0WIB
	vIYbGY6kA9r4iF2J/erw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iX3lx-0001FF-Cd; Tue, 19 Nov 2019 13:42:25 +0000
Received: from mail-eopbgr10055.outbound.protection.outlook.com ([40.107.1.55]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX3lo-0001EC-FU
 for linux-arm-kernel@lists.infradead.org; Tue, 19 Nov 2019 13:42:18 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lZWBUXRRYqDleBMrt1Mc48yU8jD4XY7Kix463Co2WrCAw/bAJBrrF5CtCAeZdPNcU/0wHDjxyKEBHCLyHCsrvw8+vZUjcGYYuWIJA5gXZWucRdxxy78n0oiPqUZTH2J1ULIyZQDUJ/5cFHRgptvZzg606fm6jOnsjfW0OOVIWtO/HLWW/gnT2hfYUcmz3APRqLjdDoxe9uakYvOA8x4i7yEsvjIYvA6naU9OrM9qEHcltKB1JSyBkD6VPeGRYPPV7tm8tFB+fHleVtU6As8WNVly7iwdud3y6C9uNeqqwx7utm31vQCXlH4g7sa80xhy3BQnT6Eg1fRBfiB5Qyro3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZrcA4FocLholhOcDCTRyJy7X5KnYvEgUiUvLfJrq0gQ=;
 b=CZBRWY3hO13iv/CAO5CHc1ZH3xcqlM9RijPmW/dM0C/08T40eJ5C2b/lV5o29/7Kkz76tPjCoF5AaLqNn2mHkSZSpdvBQ/H2F433ykWCSFtc9P41ab1LOE0tqabEHNNQlTNvOzmJNtLZLIcZPfDy3EZNmQ/OYeeiIPBWxphp9JFfZFYABNimGM/oEmQ8pc71Zqu71e6B+4ZMfNapQzGQD1BIMZLvWLe6am+5jUsIMV/0W0B/jaQbsAObu5YkBaLN/K5evtrwXATsL1r6dcK8y45y5IIU9W/WGDUDcuGkEL4RTXSZUxb27CXXK4/GkJXORBHwaDT3GQyMkAzNbriiOA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZrcA4FocLholhOcDCTRyJy7X5KnYvEgUiUvLfJrq0gQ=;
 b=mdXTCrtqa8RY6YugOQtIqa2WrJWAUTCjqLd1hbmSDGdxXkg0EwkA7tfhT+qiR1Pf7gNOiiH+5NTq9Rynq28dYLcGDh4lyzc11ay2xCiM4XONwczxMm9QBli+iNXB6rGZ9dWqqrGNV/WWnbJfGKstvEcaocfK355EJGyG2EF13Vg=
Received: from AM0PR04MB5779.eurprd04.prod.outlook.com (20.178.202.151) by
 AM0PR04MB5587.eurprd04.prod.outlook.com (20.178.117.140) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2451.28; Tue, 19 Nov 2019 13:42:07 +0000
Received: from AM0PR04MB5779.eurprd04.prod.outlook.com
 ([fe80::fd44:1b14:587c:9fde]) by AM0PR04MB5779.eurprd04.prod.outlook.com
 ([fe80::fd44:1b14:587c:9fde%7]) with mapi id 15.20.2451.029; Tue, 19 Nov 2019
 13:42:07 +0000
From: Abel Vesa <abel.vesa@nxp.com>
To: Peng Fan <peng.fan@nxp.com>
Subject: Re: [PATCH V3 0/4] clk: imx: imx8m[x]: switch to clk_hw API
Thread-Topic: [PATCH V3 0/4] clk: imx: imx8m[x]: switch to clk_hw API
Thread-Index: AQHVnrhjSBoXgoVf/UaxtVvL2YWuSKeSgNGA
Date: Tue, 19 Nov 2019 13:42:06 +0000
Message-ID: <20191119134205.yxylwjfv27dxtt4o@fsr-ub1664-175>
References: <1574154146-8818-1-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1574154146-8818-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM3PR03CA0071.eurprd03.prod.outlook.com
 (2603:10a6:207:5::29) To AM0PR04MB5779.eurprd04.prod.outlook.com
 (2603:10a6:208:131::23)
x-originating-ip: [89.37.124.34]
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=abel.vesa@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 8c75200f-4139-4471-6807-08d76cf644c3
x-ms-traffictypediagnostic: AM0PR04MB5587:|AM0PR04MB5587:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB55879998836CF7C65E308BF1F64C0@AM0PR04MB5587.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4502;
x-forefront-prvs: 022649CC2C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(7916004)(366004)(199004)(189003)(99286004)(446003)(11346002)(44832011)(486006)(6506007)(76176011)(476003)(66446008)(5660300002)(71200400001)(8936002)(186003)(81166006)(81156014)(9686003)(966005)(14454004)(8676002)(66066001)(33716001)(3846002)(6116002)(2906002)(6512007)(498600001)(25786009)(6306002)(4326008)(64756008)(66556008)(86362001)(102836004)(66946007)(66476007)(53546011)(229853002)(52116002)(386003)(54906003)(7736002)(305945005)(6436002)(6862004)(1076003)(256004)(6486002)(6636002)(6246003)(71190400001)(26005)(14444005)(32563001)(15585785002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5587;
 H:AM0PR04MB5779.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: RGbPUwkGIonwVa8V4qG9cv9W1i2t+g8fQcBtMdsSw8SxkhOq7D98kQuxgTL6zDxR3+zoxePuuNF+1zLcz1C/ZXKfh98uUI5OoXASxWD9rJWjCK4euhTrIHpxuh4qc2iFC1+b+++UDMDsFf1C5+D4uMkK9tfySH4+mwSfgc4ay5gyUG/ttpgZtSauSB9+ME0r0D3QpkzYvCUV5o7Yj3pb2AlTE91C0CZNu4bNUKPChgU1OMKpS1JiwRVQwpmmo2GOMQsxCCGRq20+wgri3jsoM+vj7LIG4SrrF7PW/Yd1ElTG1dUorRsWbk0PmRc56nthBibZSFzZf1Oc8gyLInaZdN0M2LUn3Puotm3B+/Sp9ZNzYyKgDj3wDG+z5jXmB1qrlampmB31As6fo2sLhh5s2Gd5UW+UzNJu71VsCZOMR4up75AtkxA1wnkbItYmUUYQ
Content-ID: <8473AC6E9198EC45AB658BB8F970F4A4@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8c75200f-4139-4471-6807-08d76cf644c3
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Nov 2019 13:42:06.9854 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: SebeVTzmxsVnW9bCk+mbuJCo8fS1UO6AklNx2nbeXt/aC6ia1wh/2tDqdxducXDqkgOVnBcX+lHJOZNSk9zj1A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5587
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_054216_566346_D6131519 
X-CRM114-Status: GOOD (  12.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.55 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Jacky Bai <ping.bai@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 Alice Guo <alice.guo@nxp.com>, "sboyd@kernel.org" <sboyd@kernel.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 19-11-19 09:04:46, Peng Fan wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> V3:
>  Rebased to linux-next to avoid conflict, not based on shawn's clk/imx
>  correct a few pll of imx8mn to imx_pll1443x_pll per Leonard's comments
>  add Abel's R-b tag
> 

Adding the R-b tag again here:

Reviewed-by: Abel Vesa <abel.vesa@nxp.com>

> V2:
>  Add a new patch patch 1/4 to avoid build warning for arm64
>  clk: imx: Remove __init for imx_obtain_fixed_clk_hw() API
>  https://patchwork.kernel.org/cover/11224933/
> 
> This patchset is to Switch i.MX8MN/M/Q clk driver to clk_hw
> based API.
> 
> Based on linux-next branch, with [1] applied.
> 
> [1]  clk: imx: switch to clk_hw based API
>      https://patchwork.kernel.org/cover/11217881/
> 
> Peng Fan (4):
>   clk: imx: Remove __init for imx_obtain_fixed_clk_hw() API
>   clk: imx: imx8mn: Switch to clk_hw based API
>   clk: imx: imx8mm: Switch to clk_hw based API
>   clk: imx: imx8mq: Switch to clk_hw based API
> 
>  drivers/clk/imx/clk-imx8mm.c | 550 +++++++++++++++++++++--------------------
>  drivers/clk/imx/clk-imx8mn.c | 475 ++++++++++++++++++------------------
>  drivers/clk/imx/clk-imx8mq.c | 569 ++++++++++++++++++++++---------------------
>  drivers/clk/imx/clk.c        |   4 +-
>  4 files changed, 819 insertions(+), 779 deletions(-)
> 
> -- 
> 2.16.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
