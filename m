Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 380C7326C9
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 04:51:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xDdO1YJOBfZPwmyjNUslacRfFKl4PVZgCAkGleFZX/o=; b=Nzf7CIa5VzaPa5
	kRkKtmIZV2NdvNvSFDk3vsl6wrQXKEmhVc9gS++92un26/3CTTyZeYc2ajcEZyNxa2Acp7l16t1NT
	w/vovn8uj+sU/PG/C4ln0t1LCHYIZz4YtlHzXk20MhfuTk/xUm5t+uRwBO4vuTL6dbIxvRfCqGlz+
	8ENa+wZJ8f9NsMl4wgA8IjqBVeg2vQCERsasgKD4VitI0SU4GLivGX7jBLMOu/tFGllwvDrAuokX8
	C4tDNLDMxNNfzUxyF2xiNT6Pk1KNik6xdV0OWKLpD5Y+81tPMwAeYgUhjaEy9Adj/WkpfhsCUD96f
	BEF3OEbKd2K3VKypaBgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXd46-0000QN-Pi; Mon, 03 Jun 2019 02:51:14 +0000
Received: from mail-eopbgr30058.outbound.protection.outlook.com ([40.107.3.58]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXd3z-0000PU-Sz
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 02:51:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4SmWoqJSneWeLmHCMTw5WTlnZGfm8dE5b0oRTak8TRQ=;
 b=j7+8aIfM1iV2JxNeCMpndipUcyV8xUKdFe3fhQvACi7gDTpgoopLRfGRxwSKAaOwIsx6n9vnugd2MjdCQ1w71sAkwxwpROM4ZC0JHr/zxaPZ0gW8YH7oqtJ5yf56PdiAK6z13cn4o7nCo3SWoDu6taMwil338zCY75QVsIxDFpg=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3644.eurprd04.prod.outlook.com (52.134.70.17) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1943.17; Mon, 3 Jun 2019 02:51:04 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::5835:e874:bd94:fec]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::5835:e874:bd94:fec%5]) with mapi id 15.20.1943.018; Mon, 3 Jun 2019
 02:51:04 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Fabio Estevam <festevam@gmail.com>
Subject: RE: [PATCH] arm64: dts: imx8mm: Fix build warnings
Thread-Topic: [PATCH] arm64: dts: imx8mm: Fix build warnings
Thread-Index: AQHVGaXO4iCjF9SbWUifvQR5SJsW3qaJOl6AgAAAj8A=
Date: Mon, 3 Jun 2019 02:51:04 +0000
Message-ID: <DB3PR0402MB3916DEAAAF8992D12BFAE302F5140@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <20190603004820.36247-1-Anson.Huang@nxp.com>
 <CAOMZO5B_1HTg6i2Aybv1Hdm4jXg=1R7FRbOnkAXjjG0mk3RZ=A@mail.gmail.com>
In-Reply-To: <CAOMZO5B_1HTg6i2Aybv1Hdm4jXg=1R7FRbOnkAXjjG0mk3RZ=A@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a37a7226-3f60-4425-d0df-08d6e7ce5217
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3644; 
x-ms-traffictypediagnostic: DB3PR0402MB3644:
x-microsoft-antispam-prvs: <DB3PR0402MB36446C8A06C60E43DF825B3BF5140@DB3PR0402MB3644.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:597;
x-forefront-prvs: 0057EE387C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(396003)(376002)(39860400002)(346002)(136003)(13464003)(189003)(199004)(6916009)(316002)(4744005)(54906003)(71200400001)(71190400001)(52536014)(478600001)(8676002)(26005)(68736007)(7736002)(81166006)(14454004)(476003)(8936002)(486006)(186003)(305945005)(81156014)(1411001)(11346002)(66066001)(55016002)(9686003)(66476007)(102836004)(6436002)(64756008)(66446008)(73956011)(66946007)(76176011)(99286004)(6506007)(53546011)(7696005)(66556008)(86362001)(6246003)(74316002)(53936002)(229853002)(76116006)(7416002)(4326008)(5660300002)(33656002)(446003)(25786009)(256004)(3846002)(6116002)(14444005)(44832011)(2906002)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3644;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: ODg+yYB95TRa0hpREUIERxQKFGBc2IfbyFWBSN3Mh+xLOQ6OanZiw6vT8wPtQNeBBRdZXCmUqj7ZtOIsz8yrf5AvK9/DicckrfbhS5m8SM9CeBiioQVfdv4o+kRB7s+ivDfrvWSGas7Hq7XqZCKEb3MHeLWWYszEQGqdAtPpHCKxtXn+P21FVmgtiFrhhuFD+7gNWVqX7ie7lBrd/OI2gFblYUtljUYswoxf6j+rLlgMPcf17FZ+z+vpNlRHC7DwJR1NMs1Zto/LxZ4u/UpFUiyqtCYA0yHu95B57FAnOlc3SYcueF8zfn2tMPSneEj/JQxwBtzmPjHCOHOgKc6+dEj2BcJo0tXCWHh//HwqvYs0bGx6FrjMGR8JBiZLiqsFHljGRnFcSnXx6Tj5WmUU+SFPUvO2oef8iJv+gxFnZpA=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a37a7226-3f60-4425-d0df-08d6e7ce5217
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Jun 2019 02:51:04.3746 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: anson.huang@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3644
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190602_195107_939575_9C73E58A 
X-CRM114-Status: GOOD (  11.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.58 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, Aisheng Dong <aisheng.dong@nxp.com>,
 Jacky Bai <ping.bai@nxp.com>, "open list:OPEN
 FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>,
 viresh kumar <viresh.kumar@linaro.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Fabio

> -----Original Message-----
> From: Fabio Estevam <festevam@gmail.com>
> Sent: Monday, June 3, 2019 10:49 AM
> To: Anson Huang <anson.huang@nxp.com>
> Cc: Rob Herring <robh+dt@kernel.org>; Mark Rutland
> <mark.rutland@arm.com>; Shawn Guo <shawnguo@kernel.org>; Sascha
> Hauer <s.hauer@pengutronix.de>; Sascha Hauer <kernel@pengutronix.de>;
> Leonard Crestez <leonard.crestez@nxp.com>; Aisheng Dong
> <aisheng.dong@nxp.com>; viresh kumar <viresh.kumar@linaro.org>; Jacky
> Bai <ping.bai@nxp.com>; open list:OPEN FIRMWARE AND FLATTENED
> DEVICE TREE BINDINGS <devicetree@vger.kernel.org>; moderated
> list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE <linux-arm-
> kernel@lists.infradead.org>; linux-kernel <linux-kernel@vger.kernel.org>; dl-
> linux-imx <linux-imx@nxp.com>
> Subject: Re: [PATCH] arm64: dts: imx8mm: Fix build warnings
> 
> Hi Anson,
> 
> On Sun, Jun 2, 2019 at 9:46 PM <Anson.Huang@nxp.com> wrote:
> >
> > From: Anson Huang <Anson.Huang@nxp.com>
> >
> > This patch fixes below build warning with "W=1":
> 
> I have already sent patches to fix these warnings.

OK, thanks, then please ignore this patch.

Anson.
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
