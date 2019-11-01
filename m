Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26DBFEBBA8
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 02:20:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bcTNwrj8P5SHm4Np2N+y1KGkIFEmnN+/4h2X/UMxXmY=; b=VB4MdMSsxo5v5S
	uUC9h6qzWdENK/H3ZB6x4O23ZjNMkDOamE5LBw6O/8c/OJyUx8X+uzZ1QxziAWmG0Wbf6O6gx+C5U
	Cvej0tvJtCAx1hDeiQXIEw3g/NeA/jQjEyzAYXvxU16WDP4+mvrlOWOgJ6RDchXvgDt/+HQO7LWho
	22rBdsoP9gGgvTw0aFzUxQPdKEoGQS25GtnmhRVlPWgy2Zt77PGNTeMZTv7Yh2bkx7Et5zsERZ78J
	JbRL/TMLKVuBQZV+ASnhYoZjkRinP2Ik6YOwO5+NdLXlVvD080V8Xh9NGkHQKxiM0Z9qK+6tHhNiF
	vRvYscHknmkdxbN0DUnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQLcC-0002DD-1m; Fri, 01 Nov 2019 01:20:36 +0000
Received: from mail-eopbgr00084.outbound.protection.outlook.com ([40.107.0.84]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQLc4-0002CD-3J
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 01:20:30 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZR8ZgvhD3TKJi81/CiDKUAzso2pSbe0DQIDsyeCsKH8IYVYU/+me97Jb+X878wpl2WgS20SS8LKRr7Q7kNIwPd43mIhzZ3guqvgUubLNCp+KNji1KlVzZgih7mMv/XeFFn0r7ZpUzHR9emLPiqiEXfB6s3E20SPy7HmULNxt2uXH4bJ8t6vmKGIipIPYyx4gyvEYLlxYKKhdHMb6lWFjlM5M8Cu9Wfsf3ZmYFM3GTjKZQBKI+iLNn8vU5vCqV8qoKYfUxILBNUm0GAw5kLumwKC75X2+/YJtpl12uGfLsnm+CU23PINbSgEEj/oF/VwIh9Mp5N6HQJ7TVMt/TqPbLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3/QMYuCC/1N4dp1tGM+9XYnDee+YSkSoOub9mjAUhUM=;
 b=oEKB5Jj4QIrPuC0v3OordrLXZNl8vDfb7937p8juZA1O5UH0BiN1RNJbTPsDwRzIlK4jxadL6ew2qHppqob90jZRwNeoSTHjwinulUKsHCOPQtEsz7h60JioGUxzdyVmvRFti8LXAh5yYX5jPkVEDTf/yW8ZDD6dtRttke1+On1Qq9VtEHFJxjKhcd1NWFn1aoFny4Ia2MiKTOQFuQmBFf/luycKXFNNU0nQ3Q+WrNxcDajMqg4IHU2Yz06LGwqi/hVN/XOAPiFq1mAUFAQ52Vq9mXodnZpBDC9rDi9iUnSZRPKMMwa11EVWPUj7FGN5cHBXD4lHQqH1kl+FglU/VQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3/QMYuCC/1N4dp1tGM+9XYnDee+YSkSoOub9mjAUhUM=;
 b=lJmFCSoOPF88nA2zYZjWrYnjc1IEzftecymf9iNgYzu8xnhh7z9dAumHSrd4udASArNobO71d/j+v9vLkeENFlFXOmCmzPOYMTUdsQDkpKqW1ojgYYyoHQ6cUbS6nxBwQ2NF/qViORK+PONHRtDwj9az3xvwKwN12FyIe7mJICE=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB6148.eurprd04.prod.outlook.com (20.179.33.208) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2387.24; Fri, 1 Nov 2019 01:20:22 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::843c:e722:27cb:74e1]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::843c:e722:27cb:74e1%5]) with mapi id 15.20.2387.028; Fri, 1 Nov 2019
 01:20:22 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Leonard Crestez <leonard.crestez@nxp.com>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>
Subject: RE: [PATCH V2 1/2] arm64: dts: imx8mm-evk: add phy-reset-gpios for
 fec1
Thread-Topic: [PATCH V2 1/2] arm64: dts: imx8mm-evk: add phy-reset-gpios for
 fec1
Thread-Index: AQHVh/j+k1XoWkwF8kWzRGGsNvXoFad1lK+Q
Date: Fri, 1 Nov 2019 01:20:22 +0000
Message-ID: <AM0PR04MB448130E87B85C5F5AB31496288620@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <1571652977-4754-1-git-send-email-peng.fan@nxp.com>
 <VI1PR04MB70239911C3C71E0503808F85EE630@VI1PR04MB7023.eurprd04.prod.outlook.com>
In-Reply-To: <VI1PR04MB70239911C3C71E0503808F85EE630@VI1PR04MB7023.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 63dc22d6-544f-4045-3fc8-08d75e69aaa3
x-ms-traffictypediagnostic: AM0PR04MB6148:|AM0PR04MB6148:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB6148468A298E35FD86EB82BE88620@AM0PR04MB6148.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 020877E0CB
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(366004)(376002)(346002)(396003)(39860400002)(199004)(189003)(3846002)(14454004)(8936002)(81166006)(229853002)(8676002)(476003)(81156014)(7696005)(478600001)(102836004)(86362001)(55016002)(66066001)(6116002)(26005)(6246003)(99286004)(186003)(52536014)(2501003)(66946007)(66476007)(76176011)(5660300002)(76116006)(305945005)(33656002)(316002)(66446008)(66556008)(74316002)(6436002)(256004)(7736002)(64756008)(53546011)(2906002)(486006)(44832011)(71190400001)(11346002)(446003)(9686003)(110136005)(6506007)(54906003)(25786009)(4326008)(71200400001)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6148;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: BkPUoFV1NEeZUQrIjNYUec2MjYkksfa4gAWni+q9fh6PybWVfWyT782qO6b5yXTfZ5rauLJF4WM95Kz4eKw+0TOg9czYUlsTntiwIpQarIUWFmjKrKy4fjY+Bgr2hC5tP3TBaH+5hjHWAOaq0IvE2PWUxDlT6cHRwy5Yy3h27mSOIZZ0QAGuMgWS6oNxUiqkkoYnAbDayinT2Eb454rVjbvItACoXTha8kIEAyrO/5ZwGtc51iPVZypO7jIGKm0qZI36Ms6n7GFMJTsaTe0XbwbCSQeotRtyOG97tyZT4o42wynevQRJ9NsVKVmDuIG7VqTxf6Fh1ym/R1tcPFLczPFtEP/3JuoW16TDg5I+34qaDIG7Ly08K4sL7bKkTxsCPPFjWxSJUEiMTC5mPlYEHROxqVzSRRfTZYXmaH/1B6KyTXCNDBhLpDt11ux02Nd2
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 63dc22d6-544f-4045-3fc8-08d75e69aaa3
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Nov 2019 01:20:22.2087 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zbYErQWXZQpIjuK/pboxE6EFavLN5Nf9BlnXetQb7fg3TahKlKpdjtEUydal7dy8jmx2CB+zgctnrGRAvnLgXw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6148
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_182028_211478_3DC84554 
X-CRM114-Status: GOOD (  18.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.0.84 listed in list.dnswl.org]
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Andy Duan <fugang.duan@nxp.com>, Jacky Bai <ping.bai@nxp.com>,
 Anson Huang <anson.huang@nxp.com>, Daniel Baluta <daniel.baluta@nxp.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Jun Li <jun.li@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> Subject: Re: [PATCH V2 1/2] arm64: dts: imx8mm-evk: add phy-reset-gpios for
> fec1
> 
> On 21.10.2019 13:19, Peng Fan wrote:
> > From: Peng Fan <peng.fan@nxp.com>
> >
> > We should not rely on bootloader to configure the phy reset.
> > So introduce phy-reset-gpios property to let Linux handle phy reset
> > itself.
> >
> > Signed-off-by: Peng Fan <peng.fan@nxp.com>
> > Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>
> 
> This broke NFS boot for me in next-20191031: board now hangs on DHCP.
> 

Sorry for this. I not use sdcard when I did the test.

> It can be fixed by reverting this DT patch or by setting CONFIG_AT803X_PHY
> to y instead of m.

I prefer setting CONFIG_AT803X_PHY.

Thanks,
Peng.

> 
> Needing a phy module is not a bug but everybody will need to either
> adjust .config or build modules into an initramfs somehow.
> 
> > ---
> >
> > V2:
> >   U-Boot->bootloader
> >   Add R-b tag
> >
> >   arch/arm64/boot/dts/freescale/imx8mm-evk.dts | 1 +
> >   1 file changed, 1 insertion(+)
> >
> > diff --git a/arch/arm64/boot/dts/freescale/imx8mm-evk.dts
> > b/arch/arm64/boot/dts/freescale/imx8mm-evk.dts
> > index faefb7182af1..e4d66f7db09d 100644
> > --- a/arch/arm64/boot/dts/freescale/imx8mm-evk.dts
> > +++ b/arch/arm64/boot/dts/freescale/imx8mm-evk.dts
> > @@ -80,6 +80,7 @@
> >   	pinctrl-0 = <&pinctrl_fec1>;
> >   	phy-mode = "rgmii-id";
> >   	phy-handle = <&ethphy0>;
> > +	phy-reset-gpios = <&gpio4 22 GPIO_ACTIVE_LOW>;
> >   	fsl,magic-packet;
> >   	status = "okay";

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
