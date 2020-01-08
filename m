Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27AEF133AB5
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 06:11:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E8uO6uyAY/uoLvOfe1qobwqGWIGdnVo/1E/FCp88stg=; b=GrMu+jWhKH2uMs
	cUVtSjPnllswt2z0k7rCmTUnKkEbWNGjlGvIBEO1TX4irKX8K3uFYhalSdv+Rj37P6Jng19cXwKkZ
	50v0hcG/0Wk7bwsb+ai2PUhx4T/FDgbo/wViVz9DM8g0JvNrkPqV3gHDRMrzS7Z+zwLGYLey7/W5u
	mqeyv1KBXnDPDbB1QMMP1cPuYMRse4YQA3d0LV68cSlsuu0PCrYacb92Cp1uuXq0Hy1q5MISdE4w2
	q0+VQBScGFLu9xNPlFLOI+7G0iDqCmyKKkt0w0Op/YY2lH7hoHymP3gF5jlg3a0I4cSFZRa9WbRXj
	ReNEscvO2Z+HJyIqsMJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ip3dK-0000qP-7F; Wed, 08 Jan 2020 05:11:54 +0000
Received: from mail-ve1eur01on0601.outbound.protection.outlook.com
 ([2a01:111:f400:fe1f::601]
 helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ip3dD-0000po-3Q
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 05:11:48 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZvgoPxE9ChCayLO4uz2W02Vg8PpoF0L2IUh8WVzf7LllEBBlQOTXBbjNCD3HJT5IiyqUXOzgGaDinegExAUCAgvoSOWkaSpO0igdFJXF2Z1PP/fe41SF98pFKpURTtGPgeHaJA/ND8QWr/Tc5z+KXs+Qj38lxrBb9MXTKZRgpPGyPrwJZSsYKu4jsSURF7twiBgaJf/B3hsAJAt0nVr21iKHe0yEQYy/6fcteBbBkFE2iiBWlJ+gROXMnvUFREhkJPne9GEN1t4jfDEDlnb2bKQQPW9K6mvJIr0TMf75khuz873QP12LmFKMKQoY+7oRdw/hQgsyc6RVouktnEyZkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=x1xitszVvajqCvFsDLs/0aTpMdESsgZGEvG+3c242MA=;
 b=A9Wl+21ZqalmRsdhqD3NfV7v5/6lTzfsMyB5VvgUSjYqnGUqClHuSqWgvuXtkL3AhexzjvgbzUTgxmpc39Wh/2E/0GaR2532LquUWM+VinYRg1aM+kWRx+aJSv4AXZVgj6NWBAE78ZTk+d0StimxoiZE1YkHHq2hzCA+eKQ/GW8qjsdW0MYBK78K3D5yNV+0AGCCyKwuV9xZxS3gj0i/BeKPcod52PbqlQ45eafVixOivaLIU2T/tWc937zJjK91r7DKTdPMpk/2p3H7WY6C481atKY3p4YEKXrRCBSrKvfJLyhoDgTzZypeZKlhoLW3rarXI6imNNCI0c+B4PyHTg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=x1xitszVvajqCvFsDLs/0aTpMdESsgZGEvG+3c242MA=;
 b=OPc31lk7UGdiK2FskEzk8Awt2iqHr0PhGlYGn2zxEngkt4+O3rtPrWFN0mI4xwrLZZ/l7Riw+IwLAZ4usDKRg9xHmiSboKmPdH4o1McpBtzRDPWzj3qUDhhNgwuDS/h35pCbb3Y5ZjXpauqR5n4qenjWYzkTp1geb1b1aMEydH8=
Received: from VI1PR0402MB3600.eurprd04.prod.outlook.com (52.134.3.146) by
 VI1PR0402MB2878.eurprd04.prod.outlook.com (10.175.23.147) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2602.12; Wed, 8 Jan 2020 05:11:43 +0000
Received: from VI1PR0402MB3600.eurprd04.prod.outlook.com
 ([fe80::18c:4d15:c3ab:afa6]) by VI1PR0402MB3600.eurprd04.prod.outlook.com
 ([fe80::18c:4d15:c3ab:afa6%7]) with mapi id 15.20.2602.015; Wed, 8 Jan 2020
 05:11:43 +0000
From: Andy Duan <fugang.duan@nxp.com>
To: Andre Renaud <arenaud@designa-electronics.com>
Subject: RE: [EXT] Re: iMX6/UART imprecise external abort
Thread-Topic: [EXT] Re: iMX6/UART imprecise external abort
Thread-Index: AQHVt69z4K9VUksIR0CZH5d48DlS+qfEMPEQgABM4YCAAnmM4IAAjVWAgBheRgCAADZHsIAAKH8AgAASpcA=
Date: Wed, 8 Jan 2020 05:11:43 +0000
Message-ID: <VI1PR0402MB3600308E2ADB7FC57535A87CFF3E0@VI1PR0402MB3600.eurprd04.prod.outlook.com>
References: <CAEj2-1PyhkhEJ1+uRWio4vYxGuFOuR9mpZOdxmDDjGt_Az+3uA@mail.gmail.com>
 <FD3C2267-A9B8-45BB-B027-C85DB5E60829@designa-electronics.com>
 <VI1PR0402MB36003DBB288BC2B02A505ADCFF2C0@VI1PR0402MB3600.eurprd04.prod.outlook.com>
 <CAOMZO5BXMdzTBVaM7xbetgDLB9Aycd=yrUe00weGgcQtgZZBXQ@mail.gmail.com>
 <VI1PR0402MB36007146C33D2B4F7F24FB46FF2E0@VI1PR0402MB3600.eurprd04.prod.outlook.com>
 <20191223101627.p4a72y6ai5ns7pit@pengutronix.de>
 <20200107222406.vw7ewgm7uilu2x6e@pengutronix.de>
 <VI1PR0402MB3600DACC1709D2FB5EB25E9AFF3E0@VI1PR0402MB3600.eurprd04.prod.outlook.com>
 <CAEj2-1Nh=-Qc4Q1diDSbe=9yOO-UBYR2BQm7hF9vo-qgCOst=Q@mail.gmail.com>
In-Reply-To: <CAEj2-1Nh=-Qc4Q1diDSbe=9yOO-UBYR2BQm7hF9vo-qgCOst=Q@mail.gmail.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=fugang.duan@nxp.com; 
x-originating-ip: [119.31.174.67]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 704b0784-0ae0-4a86-fe83-08d793f94093
x-ms-traffictypediagnostic: VI1PR0402MB2878:
x-microsoft-antispam-prvs: <VI1PR0402MB2878668F1AB66AFC77A5C6E2FF3E0@VI1PR0402MB2878.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 02760F0D1C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(376002)(346002)(396003)(39860400002)(366004)(189003)(199004)(186003)(64756008)(5660300002)(66946007)(66556008)(66476007)(7696005)(52536014)(53546011)(4326008)(6506007)(26005)(76116006)(4744005)(478600001)(66446008)(6916009)(71200400001)(55016002)(316002)(86362001)(9686003)(33656002)(54906003)(81156014)(81166006)(8936002)(8676002)(2906002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0402MB2878;
 H:VI1PR0402MB3600.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: YHxRga2SVyXTsJmXqo2Zxw6vR+kIeS060B0uqaGwWnx4RXCiTjVFuUmOky1guEMCY9vikYxhUnj8BopXOFeIx+1vnL/F32gyCSHZVvJ0fRA5mMFn6ZX4l0+5XnmQCZFjbIcVAjM20Vm5B60IJLVudGcxQC3lS2ambVo0DevJt9ZC2U1hp5hWrxRHBfi2WNIgL80oRMBIW0EUYoFfHiJ3HM5D1R9HqJs+rv1nqERejxzEEZO8T7AVLdbkzENm7AA40fGUFMPPtndncv7MLDcJFJZDQfePYz9igC8M0RLMa9h9rC5vrAvFMIAjhLImtmfocHw9jbGvnbnrFKVco42M92vawvOHaQ7l5X3Jr5G+ig8sR+xZum8xk9KDKlC7RYaCLILMk4f+Tdea43zX2aL4K6ndacGOFzFK574WNqr73us0j+exHEgWrnF22ghCxqHC
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 704b0784-0ae0-4a86-fe83-08d793f94093
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jan 2020 05:11:43.5115 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: isB9YyQwMAZnP3xAM+hCJ34AN+QQi9h5+xKeLMFkSDbmRwXwYQSPnZw67hyko4JrsyCL0VzjBR6xxFweNaDpmA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0402MB2878
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_211147_233578_BF2A56CE 
X-CRM114-Status: UNSURE (   9.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe1f:0:0:0:601 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.0 FORGED_SPF_HELO        No description available.
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
Cc: "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "moderated list:ARM/FREESCALE IMX / MXC
 ARM ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>,
 =?utf-8?B?VXdlIEtsZWluZS1Lw7ZuaWc=?= <u.kleine-koenig@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Andre Renaud <arenaud@designa-electronics.com> Sent: Wednesday, January 8, 2020 12:03 PM
> On Wed, Jan 8, 2020 at 2:43 PM Andy Duan <fugang.duan@nxp.com> wrote:
> > @Andre Renaud,  can you add kernel command line "nosmp" to check the
> issue ?
> > Suppose one core cannot reproduce the issue.
> 
> We have done this test previously, and 'nosmp' does resolve the issue.
> 
> Regards,
> Andre

So it more likely the cause explained by Uwe.

Regards,
Andy
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
