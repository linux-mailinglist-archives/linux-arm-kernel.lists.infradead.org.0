Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA5401D6FDF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 06:36:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XCvsr3WfdI+a5r1Bm21kn2hCHvC/gvEsQHdcK96yO6o=; b=dChGZUWd78lpAL
	U/BLY31EoC0dKjaZRUP9PuCFckMACgwVjel7HH1WXRHbUSeNIRSmWWjiv/lalanHE8T3E9qQPoNvh
	FwKAS1qkIKr3N26gBx1W2kTfsb1fVa0Ha8gon+YnIjeqEKEioveOGrBxnvviWq4bVbouxZweCllOA
	eyC0xXYzb4K+T1op1y45FumO1+F0ZChcEPCuySDDAGBwPeABsxexSXY9vW+d5AMvoScz0/G8rUs6Y
	cmyaop3DPWLx9FRgQGQd0igPnKtnn3dtDXTSrAkW8dtCMgSmMgGVLYtqxowBpEH/XjH1zXBFSa6Tn
	WS2wXEHonwGgXznZWCAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaXVd-0004wO-Fq; Mon, 18 May 2020 04:36:13 +0000
Received: from mail-eopbgr150070.outbound.protection.outlook.com
 ([40.107.15.70] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaXVS-0004vm-Os
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 04:36:05 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BZgwlb/8MFyxr9Og/350EDr5BbVxe++SMXqYebNbL9zO9sE8WHsUObPAhKJ0A0qhgH/5gjngHFn7gCT5FrtICshegeOFkuvhFs42s9AMjP2KPztnRri0WKiUffdjnDH7tZs1Ey553YN/PnbdgugxcyOvxD5WDx/LxqfUfD0v9FhApvUQ2ZwFj5ILcF15Jfwy9ljgpRZMO2PL+Jbjt7doMgYo9v5IRktzzelORA+3vKbPHiQ0oiXL7V6tK6vjdhjym4iW7kOC8Y9DRht2W7KY1DOU9OcmiDqxNuuhKu2c2o0WXWlpzzxwgs5lXANdFU8cUXRm2xqKwijEKPh3gaGw7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Fh2Xe+isBqhjr0Ui8OybR/1YRp7+dsDYd18FVnPbsSA=;
 b=EDJMF/SwYiFfmw5TzMdjRxgMLV1+82Nsiaje3LawHZbgz4BfcjzU30dnQS/Wk19VFKS4bB4ufUYZUBBaQFp0f5vOx8uWlgKYc3PT2bIRMCHIIGjA1IiXvUXjq+6e+B0KEo4Bf7v8NIT65rfrjTc4NXEa0KQCGC9857if6YfmJJ9i6I53DQsy1TvOSKMCjB4QVTzuYeg++j+CgVD1/0zNhyw6P/9sMvs4past6L9Tsrr5riHRDTDEZ5Z8cjtrJKBrbdkjpOu4ioD2QqLoUGp9PFyFY94HLUneS16breEEK63l3vNx9cYyEahHK01q94imACyt82e94wBgCODNWuEjpg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Fh2Xe+isBqhjr0Ui8OybR/1YRp7+dsDYd18FVnPbsSA=;
 b=G2osXfrXdNvubmcQxxJ6v8IjadFM0wxrL28o++K8PQG8hVkQ4RLn7QMhloc+jXPQVMGIIptJYGZTbkjGZoRR+xOQppT9rrfmrg8vVZmp597+70U01sUkdgFujfgNRhJVRfECvTJCAM/RuzK5P2U6W+6Oqi6xNbgsSjm2jy6VIg4=
Received: from AM6PR0402MB3607.eurprd04.prod.outlook.com
 (2603:10a6:209:12::18) by AM6PR0402MB3461.eurprd04.prod.outlook.com
 (2603:10a6:209:3::25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.33; Mon, 18 May
 2020 04:35:58 +0000
Received: from AM6PR0402MB3607.eurprd04.prod.outlook.com
 ([fe80::35f8:f020:9b47:9aa1]) by AM6PR0402MB3607.eurprd04.prod.outlook.com
 ([fe80::35f8:f020:9b47:9aa1%7]) with mapi id 15.20.3000.034; Mon, 18 May 2020
 04:35:58 +0000
From: Andy Duan <fugang.duan@nxp.com>
To: Aisheng Dong <aisheng.dong@nxp.com>, Steffen Trumtrar
 <s.trumtrar@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>
Subject: RE: [PATCH] ARM: dts: imx7d-pinfunc: add input mux for ENET2 mdio
Thread-Topic: [PATCH] ARM: dts: imx7d-pinfunc: add input mux for ENET2 mdio
Thread-Index: AQHWKq3aOdOVoo6/TEyJrflUDB2tmaitOnaQgAAKtuA=
Date: Mon, 18 May 2020 04:35:58 +0000
Message-ID: <AM6PR0402MB3607E70A60E62656D1898424FFB80@AM6PR0402MB3607.eurprd04.prod.outlook.com>
References: <20200515114151.6516-1-s.trumtrar@pengutronix.de>
 <AM6PR04MB4966710261BD821190B2F0FD80B80@AM6PR04MB4966.eurprd04.prod.outlook.com>
In-Reply-To: <AM6PR04MB4966710261BD821190B2F0FD80B80@AM6PR04MB4966.eurprd04.prod.outlook.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: nxp.com; dkim=none (message not signed)
 header.d=none;nxp.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: bc907064-787b-421e-3265-08d7fae4f64b
x-ms-traffictypediagnostic: AM6PR0402MB3461:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR0402MB34615419FB25E05E2265901BFFB80@AM6PR0402MB3461.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:421;
x-forefront-prvs: 04073E895A
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: TMXluX0bAj7i++Hjk+gcuP8KZckixe1PHCHb92OCE1Io0jiqsWP78FskNJgO/2OKeiJWTQ2xpjnm+SIl0qOF2enE//6MV9h8bD6K9c5rCXg+OgU2pfnOYiWKo7osd5n/N1PdcJ29l0CwVLwEi2gYkhYcOEi5Mw7g2FAMlyeM0HKo6V+C12JX7+JfT+zdFsEvNTBIcn6GS8AVKzl1b4qft7ZcHhx+h8e9ABXWL1fgtBho2JWEDQWSsMMRucZCTdAw4w9IqxwqSby0WLA/ZYwY6wR6WiUPVRNuNqUyzGZrEAt6c/beXI/KYCamzHwswS7DZeDejM21BbMLqKWurWYtagI81Jaot9TacUwTMs9r4tL9uk5Ol3qPEFt+qlsDusYzmYjWLNMLsYqefCBi0RAtNs+UE0CZExrm6jdAG/lU1a1BGsftI60qZpqP6BGZRqVB
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR0402MB3607.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(366004)(39860400002)(376002)(346002)(136003)(396003)(110136005)(54906003)(52536014)(71200400001)(316002)(33656002)(26005)(6506007)(66476007)(64756008)(76116006)(66556008)(478600001)(66446008)(66946007)(186003)(7696005)(4326008)(9686003)(5660300002)(55016002)(86362001)(2906002)(8936002)(8676002);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: 1m0uOVVFEe8Eoym9ZzKiZ0UvBdoziiVOFcagAOloxXTKK9bMcKzqZC02lyvci2TTbRodhmVQ6qs+ROa0cujdKj+pEUzxdh9prGRA/8ZmcF/UerCNs5Tt168WngojXhBCsdsGfc8g6+3XTU+2P9B6hi7SB4UBpJx0VQWTv1yMPHjw4TnbBtaQM9CLjs4yhsVY6VkSz9JjDul3BNuOiZKYKfNqveJVDzxHo9AfQTQC7z51k6Ez2HNF0a5lVsQRpTVjllM7HkBxM+KFyHpt63gn0OZkmdZuP24ULz/Y7/XQi9woMA5VJ7SIWP8NHgMtwiM0pWkU+ePBQ86ujTofNkpJZpyeBqsJ6k4XzuYGaeaP61tg+LBgL0ztlmnZNlGqROSMQK+d6FCqCc6vWbQQvJtiHL1MZHuH30XXApxLsijK0yKqVkkl5hoNktFIGsStLUol4aa87JUBGgB7UM40RvCiUkOFDl10uhIukHWHiVjXINM=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bc907064-787b-421e-3265-08d7fae4f64b
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 May 2020 04:35:58.7355 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: riEWbR2WBNUZLBWRYObUYIjbDY/ZWFfnfTcz0zUqL4u/AgkRQnTQDKH2R53HfOvRHs+GaNNCSyK9ORHASDYuQw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR0402MB3461
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200517_213602_809391_D82224A2 
X-CRM114-Status: GOOD (  14.72  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.15.70 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.15.70 listed in wl.mailspike.net]
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
Cc: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, Rob Herring <robh+dt@kernel.org>,
 Fabio Estevam <festevam@gmail.com>, dl-linux-imx <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Aisheng Dong <aisheng.dong@nxp.com> Sent: Monday, May 18, 2020 11:55 AM
> > From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> > Sent: Friday, May 15, 2020 7:42 PM
> >
> > Add the missing input mux for ENET2 mdio. Without this setting, it is
> > not possible to read the MDIO answers back from the PHY.
> >
> > Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> > ---
> >  arch/arm/boot/dts/imx7d-pinfunc.h | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/arch/arm/boot/dts/imx7d-pinfunc.h
> > b/arch/arm/boot/dts/imx7d-pinfunc.h
> > index 08ca1608fdb1..69f2c1ec8254 100644
> > --- a/arch/arm/boot/dts/imx7d-pinfunc.h
> > +++ b/arch/arm/boot/dts/imx7d-pinfunc.h
> > @@ -592,7 +592,7 @@
> >  #define MX7D_PAD_UART2_RX_DATA__ECSPI1_SS3
> > 0x0130 0x03A0 0x0000 0x3 0x0
> >  #define MX7D_PAD_UART2_RX_DATA__ENET2_1588_EVENT1_IN
> > 0x0130 0x03A0 0x0000 0x4 0x0
> >  #define MX7D_PAD_UART2_RX_DATA__GPIO4_IO2
> > 0x0130 0x03A0 0x0000 0x5 0x0
> > -#define MX7D_PAD_UART2_RX_DATA__ENET2_MDIO
> > 0x0130 0x03A0 0x0000 0x6 0x0
> > +#define MX7D_PAD_UART2_RX_DATA__ENET2_MDIO
> > 0x0130 0x03A0 0x0574 0x6 0x1
> 
> It's strange that I didn't find this select input setting from latest RM.
> Anything I missed?
> 
> Also copy Andy to comment.
> 
Check the RM in my local, it define the signal select input from UART2_RX_DATA,
it is correct with the change.

Aisheng, we can check together for our RM version.
> Regards
> Aisheng
> 
> >  #define MX7D_PAD_UART2_TX_DATA__UART2_DCE_TX
> > 0x0134 0x03A4 0x0000 0x0 0x0
> >  #define MX7D_PAD_UART2_TX_DATA__UART2_DTE_RX
> > 0x0134 0x03A4 0x06FC 0x0 0x3
> >  #define MX7D_PAD_UART2_TX_DATA__I2C2_SDA
> > 0x0134 0x03A4 0x05E0 0x1 0x0
> > --
> > 2.26.2

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
