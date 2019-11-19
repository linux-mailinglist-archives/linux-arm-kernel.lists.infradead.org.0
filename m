Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17F8310299F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 Nov 2019 17:45:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=vctMSligBYoZkQwFQVSgja9nPNX0Cpdm6bDAs59qfDc=; b=OkDnrLkgCl/5QB
	B9+q2N67bLpLWQ6PpasiB1wSujFxzsJjkCUrlqTmsYjWXEFkqmULQ7nug346Bjj/t17B5EFF2J4Zt
	qHBe3daB6Zm5i/zC9N6N9PzqGhg76HdDeKGgTrxubH4P/zR4PfITKBzlrmO4T5bphToCQi4/m86Di
	I0yvI2Dv1bvWPPzcq7NJjeESgqJTtNrHjtX2zSv+GBSQyXY7BjdoH+H0czWoVN5na7py3LRyP/469
	HAkUqx6azqw2Rn9Soa5HSHYpIWUjOJGR76/F+xssljHNw0y5lvQIrJm1rYNqzQeiRyzrny55LHOl4
	+UJ6GWlgRDqsGKvnAEuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iX6d2-0005Zx-GF; Tue, 19 Nov 2019 16:45:24 +0000
Received: from mail-eopbgr30040.outbound.protection.outlook.com ([40.107.3.40]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX6ct-0005ZM-Gk
 for linux-arm-kernel@lists.infradead.org; Tue, 19 Nov 2019 16:45:17 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GW0FjHjSXmmhDlkoShLdOoVNk5WzsBJZvESCS+qM7u1H7EMIkI3q3EYamrIIL+aJFsdDduplMraVKDU4sFviP+Co3mdrkvqrbP3dCWGAf8gz30MpSzraaK2GpduaaghD/B8CO5+Xg0XbXFqHkbcwsKgfqTVGg2ly9a2r8L7iKuMIxthr+KVaqQDZg0vqewpy1yNCs5LC1cNCHn5ef6SY9hHUKc0ZrNOFPzaTPF/hGTpQCRyCxoqfJ+Y/7xfjdjUYPW4QLf61EYgRgHaPS8YtcgybdJs/QRyhYQ2h5lvDZNh6zyjQBoMFSoupRKeR0ZATREZ4NgUgK6n95PPUFQ1B9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QyLJsJu95tbbKGa3xk+HzRtM4IoVJOhm1KLwhuHReUw=;
 b=OrSDAqOpvwMOD81aPL8266CoeHE3hu/E+TU7sqdRSKGBTc1VUHceUUMVzIleMhcZWz9KhnFtV+rtCAN3FlmjNdyKYNrcl2Kat3HI19qAMMHyjCywxPzTp4ja/oqDk5VCK59aL48pH8c4E0WcfhcqXVuzV9baHP+61ie/4zvp44Uwefu8vPLok7b7CqmA7laHY+TxjWIBVbxo/SVHBCjbA8V+fGyTWoaj6bHhyfXPd/0YJUIAdZ1RsAyfg94BEXl4CBKDY5V+HtfVNicazPuQ98ntNstkK9QCN699NAplx9z9/qPkM1/JWs+cNGLcjsHnwWIX9adGQoCUOyoJjvrbRg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QyLJsJu95tbbKGa3xk+HzRtM4IoVJOhm1KLwhuHReUw=;
 b=HX+z1mR/wmYpeBd3DZjiwtRpRRVYeFfxQKQTkKHjscgfc69TiawMqT16a2I+74VNEETdJRy+OFljIJlJ60yks9zdTNtDjlKXZDS0YcG1SVli+5TtAm89aMdNrneKVqAkntNROlVvP9IWVid4EZlcGoRbT6fe2tD+E4kWP9vGAhI=
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com (10.186.159.144) by
 VI1PR04MB4432.eurprd04.prod.outlook.com (20.177.54.80) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2451.23; Tue, 19 Nov 2019 16:45:11 +0000
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::dd0c:72dc:e462:16b3]) by VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::dd0c:72dc:e462:16b3%5]) with mapi id 15.20.2451.031; Tue, 19 Nov 2019
 16:45:11 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Peng Fan <peng.fan@nxp.com>, "sboyd@kernel.org" <sboyd@kernel.org>, Abel
 Vesa <abel.vesa@nxp.com>
Subject: Re: [PATCH V3 0/4] clk: imx: imx8m[x]: switch to clk_hw API
Thread-Topic: [PATCH V3 0/4] clk: imx: imx8m[x]: switch to clk_hw API
Thread-Index: AQHVnrhjSBoXgoVf/UaxtVvL2YWuSA==
Date: Tue, 19 Nov 2019 16:45:11 +0000
Message-ID: <VI1PR04MB702313D66C0C6212FDCD9AF5EE4C0@VI1PR04MB7023.eurprd04.prod.outlook.com>
References: <1574154146-8818-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [212.146.100.6]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 875090e2-133c-4919-bb7e-08d76d0fd819
x-ms-traffictypediagnostic: VI1PR04MB4432:|VI1PR04MB4432:
x-ms-exchange-purlcount: 2
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB443279DB15662733FB1D2CBAEE4C0@VI1PR04MB4432.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5236;
x-forefront-prvs: 022649CC2C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(376002)(396003)(39860400002)(136003)(366004)(189003)(199004)(9686003)(6436002)(966005)(476003)(446003)(478600001)(26005)(76116006)(14454004)(33656002)(102836004)(316002)(256004)(52536014)(14444005)(2501003)(7736002)(305945005)(186003)(44832011)(486006)(6246003)(54906003)(6306002)(55016002)(229853002)(81156014)(64756008)(66556008)(66476007)(66946007)(8676002)(66066001)(25786009)(53546011)(91956017)(110136005)(86362001)(74316002)(4001150100001)(8936002)(71200400001)(6506007)(71190400001)(5660300002)(6636002)(3846002)(6116002)(4326008)(2906002)(99286004)(76176011)(66446008)(81166006)(7696005)(32563001)(15585785002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB4432;
 H:VI1PR04MB7023.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: aw+7j6QHRsAFaOqBANzFCGfU4Obn0ftICSkjq6WCzNzgXr7xQHp0cLsSBWnrAuTSuf1jYmN9zlNRwlVuipZIAG64+CV5dSvw1z8CJemgYBxNWz4jmHNOkRzuw0EFAu9E9oMgGHk3pRnPZjCKUc6qonWwyVNAnpuWXg/JiT7K7T3uCXIoLhSGebc14W+GafySF2I/LX4XfguH9UrqfT8g4kBx08ZYKWT3pMnMVkHOxgq28GBNJVDk3ZrGmIliG0kcT4f4uphNYNIlWodM2ghALD81Van5v0CQnB7407sq8TfVW1eT5vRmaFjMUhENnq49gL1F0pbsq8WtTSTS5+p0slvIB7IAEUrK2ZKbtrM3ZEg4Q+HXJYMcuJAjJHUBpLX2IfsY0DH1CtCYjD02q/df7/IKIE3V6+I9Z50IuVx9lfGhQ9phmaKXItQbMffqMUWWb/3XQTs8XfBk+2hcX4SXz9Q3jHr/AlBJ3R97PyCfIX8=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 875090e2-133c-4919-bb7e-08d76d0fd819
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Nov 2019 16:45:11.2083 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ww5mNdvvhPvI0CEuOVeaB6NNEmmz61Afo+g3v0UXKffsNs4bTFzhCsZ5fL3uar7UixS1OSjLHGR2leDjJYlzpQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB4432
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_084515_561344_41D716A5 
X-CRM114-Status: GOOD (  11.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.40 listed in list.dnswl.org]
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
 Alice Guo <alice.guo@nxp.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-11-19 11:04 AM, Peng Fan wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> V3:
>   Rebased to linux-next to avoid conflict, not based on shawn's clk/imx
>   correct a few pll of imx8mn to imx_pll1443x_pll per Leonard's comments
>   add Abel's R-b tag
> 
> V2:
>   Add a new patch patch 1/4 to avoid build warning for arm64
>   clk: imx: Remove __init for imx_obtain_fixed_clk_hw() API
>   https://patchwork.kernel.org/cover/11224933/
> 
> This patchset is to Switch i.MX8MN/M/Q clk driver to clk_hw
> based API.
> 
> Based on linux-next branch, with [1] applied.
> 
> [1]  clk: imx: switch to clk_hw based API
>       https://patchwork.kernel.org/cover/11217881/

For imx6/7 the big clks array was renamed to "hws" during the switch, 
maybe do this here as well as for consistency? Several non-imx drivers 
use the "hws" name as well.

It would be nice to avoid another patch in the future that rewrites most 
of the file, that kind of stuff makes it difficult to read history.

> Peng Fan (4):
>    clk: imx: Remove __init for imx_obtain_fixed_clk_hw() API
>    clk: imx: imx8mn: Switch to clk_hw based API
>    clk: imx: imx8mm: Switch to clk_hw based API
>    clk: imx: imx8mq: Switch to clk_hw based API
> 
>   drivers/clk/imx/clk-imx8mm.c | 550 +++++++++++++++++++++--------------------
>   drivers/clk/imx/clk-imx8mn.c | 475 ++++++++++++++++++------------------
>   drivers/clk/imx/clk-imx8mq.c | 569 ++++++++++++++++++++++---------------------
>   drivers/clk/imx/clk.c        |   4 +-
>   4 files changed, 819 insertions(+), 779 deletions(-)
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
