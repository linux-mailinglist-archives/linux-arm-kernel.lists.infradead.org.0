Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC66515CFAC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 03:07:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v59DjEWNNPjtsuMTWi5ORKU4VCcoVi/JJxnrfVrSNG8=; b=snz8QYnfvWbFwo
	i159Lfm/l/SDgUj+kNpND3QBKb9e2GeGACPvpdHLsmsl/ChjigBmj9+lPl11CAtL+PNm/7q9NWrRA
	yjFkklfwUSFrogHZ2mrjtOe/26AWJxwrYWEfmqe/ykkjRkd1JdNjZO8geeeTxz1aLYf3ccreG0IMf
	812g2437h7l4UmaopplLN5AMlPPBK6W86tXQsuaVCNE6+vNtgbfa+kZPvgniYVmADbHpGcMj8ZIkU
	RCiZiO0TKB8+6ixjx4H1KCvu8051HyyPmmiREaZVAcP0ucqDQVJD4YNwA6Ujpt5ayAglWrhdNutMw
	0dNL4TwD7f6/4aqCtDuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2QNu-00054M-Ad; Fri, 14 Feb 2020 02:07:14 +0000
Received: from mail-am6eur05on2048.outbound.protection.outlook.com
 ([40.107.22.48] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2QNk-000545-Of
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 02:07:06 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GkcaGcCHY7zliP+FDRb6mOfd0xJRkPBvSKN38rOMNJFkE08r2E/2TP3D0+nL/v0Bc1yIhEO5NcpQE9bum1XL6RRHA1DRAzqDoufUla6QnGeRexgFcPoA1jP17op3wL9frDLFBqXGN3O9AWI/GTKJBbpuNNVRo7CvHr1+pO7M+81eSpTjtt5A717W1LDm+vtra7tzTdGoD76ezP4DwkuuzWFIFHERit7YekPVBT+tpxYBQJ7HqPmlAIHc4TjvCg311hjFeHTUGGxYvW6iKapPKqt1gazGU6IQ7w2IkfGJN08h6wYifRnyAfGEtTTVOoVGyfBV5kMPsD4ITZ2L7qV26Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=C5R/eKh90aMh5dm4vQAEXJxNYaSaJXbutHXbmxRh8h0=;
 b=V9uZCvDP2k7IKHNqeWtgVV0TEtIUAQ0GufEMDxYvEmYZYPqNgY99rQUmOpsse8c2pZr9xJvPSUCYejiMhodfGsiSXh/k4IVIkH8VV8RxmyjOGQ0FBtIwbbKcp5BhnFl5uXbmQ5e7Duy7YOcHBhU6psIXKH+0nGRlQI3HM1yDPO9hkbgRbGdlfkmNtP1VQf6xmsVuHcFvHXXIcm95ml3Ol+PV0YG1237m78WFKtrg448VwEGIbDYTyp40kQWsO1bfpHsidWgpVuIJhhrNNxyG6VgD2kkx3O3/91WUBuWaKwklqAulNZQiztlBPV6n1cJBLkxFymhkhEfB4egrRyQsQQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=C5R/eKh90aMh5dm4vQAEXJxNYaSaJXbutHXbmxRh8h0=;
 b=Wo2J2HateegZtUWmCuIgF2CIVs97cwyPd3OOTX7ds5ZY0qxg8aeChiLcuHeTzNToTZrKCBOinLBAJECA1JEB/AyOvu9wAa6/j4BDypO2ZJN5mxxdozQUS/XsxQd16Jd4nQZH8R7GfPbBdSrouvFmT7ZKgMSszBePfXhj/BGwrEA=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB5729.eurprd04.prod.outlook.com (20.178.203.21) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2729.25; Fri, 14 Feb 2020 02:07:02 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2729.024; Fri, 14 Feb 2020
 02:07:02 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>, Leonard Crestez <leonard.crestez@nxp.com>
Subject: RE: [PATCH] soc: imx: gpcv2: include linux/sizes.h
Thread-Topic: [PATCH] soc: imx: gpcv2: include linux/sizes.h
Thread-Index: AQHVz5BXyAubQ0TzS0yJ7H4dFw5eW6gaFsqAgAAAjGA=
Date: Fri, 14 Feb 2020 02:07:02 +0000
Message-ID: <AM0PR04MB4481483CD085CA6AD6567F5788150@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <9e4549b47f0872a6a670d07b513f452c33f26501.1579524316.git.leonard.crestez@nxp.com>
 <20200214020332.GB22842@dragon>
In-Reply-To: <20200214020332.GB22842@dragon>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: db628e35-bba5-4354-1f0c-08d7b0f294f7
x-ms-traffictypediagnostic: AM0PR04MB5729:|AM0PR04MB5729:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB5729779A18D22B05E664D9A188150@AM0PR04MB5729.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 03137AC81E
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(346002)(396003)(136003)(39860400002)(366004)(199004)(189003)(110136005)(4744005)(54906003)(966005)(71200400001)(52536014)(316002)(478600001)(8676002)(5660300002)(9686003)(81166006)(33656002)(55016002)(81156014)(6636002)(4326008)(76116006)(8936002)(26005)(66476007)(66946007)(2906002)(44832011)(64756008)(6506007)(186003)(86362001)(7696005)(66446008)(66556008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5729;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 0QP2ILVdyf5JX6DycQhilshVm+b+mR3U/gPmGj/bIUQI7SdEnEbGTl4HolNg3hbSxo9c0halXyglozUa+Hr5ZgxRXGotW/nIk2MKrWydf86kL9V0qVyKXKJdgjhcP0FZFbRk9KPczSXv1e8etKR5Nm1Qjud8QbcR5QBZfxIXmwIfItsruwOBBVyVb+cs4KCp5Z/1nL+sG6xOfZKuNPve6B+xfXIjc/fbirVLg79adX02gawi14VNvv3lBDop9a3sUgaIz97ajTFbnbfMP4qqi6uEQLiHcev5SdRkznv+H02Jq++yH2xtunl1T56k4shKHSrTozen7laD1+VdlKMeyqfaMAA16JDXYwAyvy78Y4epdAwY0UMpm1bkXjpOz0408bgomTT0isr6KwZ9iCv8+sSBceE9hR1uI8l0068NYhSzVLH3ZtLF6mqABN7d57rfMOfV0FTE3MFgWppe+kvywdi1PZaK4IvKE1GaHe9YaapqU2qSDk8l0k/tISysQ1hNeUa7M6GNIIelr7+roCpmxA==
x-ms-exchange-antispam-messagedata: 7Ph5FgBH+Mk1ksmDU4rUcvRhk8DTrvFlPqQFZQ9a/ROT4G0Bs3t3N8cOaKBBrz3baelPhcVyFkwu1PvSuOjl8cXVsq5sytbZ55r4b9+iBJcgtcATC1Pz76+k0WjtKk275P7MEAfTJISHj2QmcmN90w==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: db628e35-bba5-4354-1f0c-08d7b0f294f7
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Feb 2020 02:07:02.2722 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1wYoNrzqBkd60gBZPWIe1YX4eCmdgd4PAIakEyBnhGgQBpjiP0h+RI0XbdI/oqhDSzyYpq4YXnmv0STofn5zNw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5729
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_180704_882669_A1994390 
X-CRM114-Status: UNSURE (   8.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.22.48 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.22.48 listed in list.dnswl.org]
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Shawn

> Subject: Re: [PATCH] soc: imx: gpcv2: include linux/sizes.h

I included this patch in https://patchwork.kernel.org/cover/11353557/

Patch 1/2 is exactly the same with this one.
Patch 2/2 needs this patch or patch 1/2.

Thanks,
Peng.

> 
> On Mon, Jan 20, 2020 at 02:51:28PM +0200, Leonard Crestez wrote:
> > This header is included indirectly on arm/arm64 but not on x86 so
> > CONFIG_COMPILE_TEST breaks. Fix by including <linux/sizes.h> directly.
> >
> > Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
> 
> Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
