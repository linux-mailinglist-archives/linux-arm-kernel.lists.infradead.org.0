Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E28C13527D
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 06:14:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NYqMfp3tyZsod8vljt7H5Bi9UzaKUucVtEXDf7bcxvY=; b=EQ48DzmLsooKaP
	Hrz56XNkuc14Xy554VK20TZP6uRJaIC6l0lSSgoIzzqnlvakYJdJC+4md1Kuy240gBnffKR1pWmL0
	jntmypKI3qRpqyOGAC5FGNqLl6yRaU2H1JhctlnnYIQjKbLzhwx0I85a6y/Xx8YH/KgY0qddFt3y6
	Lw+Pez4SN2mm44STFN4ROLoRNrRyB+lpXDZBmEIaH51tpm84SWuM3cve1HWoEIRYg4sfwiEaLAjv0
	89desa1pxYva1D859LwCAZ8jXzFyT23WjXPwqQndI/G4TQB5b71wVi7fSnyTKm0bb208NlKLHQSDN
	qPKgb+btheCNsQa7EedA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipQ9W-0000zm-CD; Thu, 09 Jan 2020 05:14:38 +0000
Received: from mail-eopbgr80070.outbound.protection.outlook.com ([40.107.8.70]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipQ9O-0000yu-L8
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 05:14:32 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Fowr2MQkUXFzEpiVezEDtHhBKaarZCBnl8Lf+74g8iF3npkIMsqyMFqTqqdVSiAFC2Nuf4DZYJRtzDOEQrlhXfHqXFol2l7Axwhi7u+dc1G2Tfx++t2TliTYkIh5zudSfLnsC72U0aWV2YhQhGWWFOn1mQ55yIeuTS7pCXXW3zfhZLJo6JHDWgB2xA6+t0aqrjacm5vkz6hKOO+sTtyzN9GxoaCrV+ubQHh9In5gMNQ03jWr2BCmgJ7VidnV02ihTA8Dcq90S0kz9k1ZFTKv1lHCGXXYMdyJXEuBYQoDJwIcNV25hJIWZ6KhG8XLYS7zMIWTmW+MH+GOrteqLipFXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bd85rFmelP/o2GcQ5qRkynq+u/o/1LJ6dLEODaLqEjE=;
 b=b8ZMfteBVpcg6EVwbYyqLJRYfuTG71zZV39gJdkcFN1k4pZqUM9VT93yndI6WWn49HpcJUKMyPMu2M1cYNF6NPKSJXhE1W0MXeZtiSdL6MqJyamiG/YMpZf6uRWe03MHwJcZ0uFYJFKo9RC4GT6uG+6NXfzavEA0zNdC6gBEzV7B2coUhvg4fle4s4KBY9wxgQgtR7T456+llnUFXMG1JRwwzhTkuLhMJV5uhbkmFx09EUnREdw1a1U5qvGDIPzdI9IuMM1AbeaiCqj0y3EHLNVlSUivwm5bCL7jWYSFnstO5QQAEbteaNkRmehTTJueu9D63OHSY+mPMhDeJK7qkg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bd85rFmelP/o2GcQ5qRkynq+u/o/1LJ6dLEODaLqEjE=;
 b=qigWHL3O/R/GllifPFevcF7w+94paSGvSNE/3rZ+Lnz0Uft7LmflaSk1SxgeGRVwVNu7VqmiokpGr6w8S3harrbEAsvWX/CiaL96RxO7rhY0TiZCBCNWY597dxUxYOz8kXgzVdGLtaBWiG3ZnR5mczSLb9wPx1P5u96zZEZ3Muo=
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com (52.135.139.151) by
 DB7PR04MB5305.eurprd04.prod.outlook.com (20.176.236.141) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2602.15; Thu, 9 Jan 2020 05:14:24 +0000
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::b40b:46af:9458:f2df]) by DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::b40b:46af:9458:f2df%6]) with mapi id 15.20.2602.018; Thu, 9 Jan 2020
 05:14:24 +0000
From: Joakim Zhang <qiangqing.zhang@nxp.com>
To: Rob Herring <robh+dt@kernel.org>
Subject: RE: [PATCH V4 1/2] dt-bindings/irq: add binding for NXP INTMUX
 interrupt multiplexer
Thread-Topic: [PATCH V4 1/2] dt-bindings/irq: add binding for NXP INTMUX
 interrupt multiplexer
Thread-Index: AQHVtzJR1bo6WHpuN02oPlbZy7KDtKfgQkIAgAGmXnA=
Date: Thu, 9 Jan 2020 05:14:24 +0000
Message-ID: <DB7PR04MB4618A1607B4E95689CBEC353E6390@DB7PR04MB4618.eurprd04.prod.outlook.com>
References: <1576845281-32675-1-git-send-email-qiangqing.zhang@nxp.com>
 <1576845281-32675-2-git-send-email-qiangqing.zhang@nxp.com>
 <CAL_Jsq+ZJ0asAxaPFgiuHKC2o6UP_5Mht=EascFVpJ6AUoKPvA@mail.gmail.com>
In-Reply-To: <CAL_Jsq+ZJ0asAxaPFgiuHKC2o6UP_5Mht=EascFVpJ6AUoKPvA@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=qiangqing.zhang@nxp.com; 
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 6295e126-96b0-4591-1480-08d794c2caee
x-ms-traffictypediagnostic: DB7PR04MB5305:|DB7PR04MB5305:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB7PR04MB53051090D39971DDFE2D347CE6390@DB7PR04MB5305.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3383;
x-forefront-prvs: 02778BF158
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(396003)(376002)(136003)(366004)(39860400002)(189003)(199004)(13464003)(52536014)(66946007)(54906003)(7416002)(81156014)(4326008)(9686003)(66556008)(81166006)(76116006)(316002)(8676002)(66476007)(66446008)(2906002)(8936002)(186003)(55016002)(64756008)(6506007)(7696005)(26005)(4744005)(478600001)(33656002)(53546011)(5660300002)(71200400001)(86362001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR04MB5305;
 H:DB7PR04MB4618.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: edLI4nd1Q1x/BV5aurDzrel2pXDnAd5Q6h33xx1uTXITqu3qi28rsPrfTIN4KrGgZ6PIgfc2WiZB7uVHRotOTeiJ2py3C4o+Y7yxGMq5eLvs9lrMhOa/UKZsqHd75+tsVHiv94V8THj9LJ6E60QLASDBv2q9QWuI7Lr2OfAdbYNj9NqrC/oIbJ7sCNHRLu5Ec5qlRM5Mq/vyrT/oouCOPAIbdyXfUeOz5zCe48f1GHYcqCw+oeD/jo4thFUfcygJ8SYw4Pvg6hSJh7yQaVdkPTxqVVhaoXW3V0dKf9J5VCNBC+i2yYSxJcepW5Ohkm1tZZ1H5HZ3ZTFQUa87WC2GKv7GODi5C6Flc+TESR6aOBsaNGSdjJSuNkXw/Jc+4Xs4NdkKKNVa8V6k5jAO63fW/sfm1BqPFdj7wLSGrdgm41wguapuF6wVbwUeZmy6H55uU/MTIsMwmyWEKMSAXDU4sMwcF0a8i3aPrPi8hmZ0qttTEOrCScoabPQ1Lks5Y3tv
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6295e126-96b0-4591-1480-08d794c2caee
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jan 2020 05:14:24.4371 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3lV6r0FlQ1nKmvvsZ8M+LYPNy4Q0Q8Y2BrebxumVqRRlzDjPhukP854ZNKOplusmYMJTGvet8l+UfaRyEcfq7g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB5305
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_211431_020696_59176C32 
X-CRM114-Status: GOOD (  12.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Andy Duan <fugang.duan@nxp.com>,
 Jason Cooper <jason@lakedaemon.net>, Marc Zyngier <maz@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 Thomas Gleixner <tglx@linutronix.de>, Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM
 ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

DQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IFJvYiBIZXJyaW5nIDxyb2Jo
K2R0QGtlcm5lbC5vcmc+DQo+IFNlbnQ6IDIwMjDlubQx5pyIOOaXpSAxMjowMg0KPiBUbzogSm9h
a2ltIFpoYW5nIDxxaWFuZ3FpbmcuemhhbmdAbnhwLmNvbT4NCj4gQ2M6IE1hcmMgWnluZ2llciA8
bWF6QGtlcm5lbC5vcmc+OyBUaG9tYXMgR2xlaXhuZXIgPHRnbHhAbGludXRyb25peC5kZT47DQo+
IEphc29uIENvb3BlciA8amFzb25AbGFrZWRhZW1vbi5uZXQ+OyBNYXJrIFJ1dGxhbmQNCj4gPG1h
cmsucnV0bGFuZEBhcm0uY29tPjsgU2hhd24gR3VvIDxzaGF3bmd1b0BrZXJuZWwub3JnPjsgU2Fz
Y2hhDQo+IEhhdWVyIDxzLmhhdWVyQHBlbmd1dHJvbml4LmRlPjsgU2FzY2hhIEhhdWVyIDxrZXJu
ZWxAcGVuZ3V0cm9uaXguZGU+Ow0KPiBkbC1saW51eC1pbXggPGxpbnV4LWlteEBueHAuY29tPjsg
bGludXgta2VybmVsQHZnZXIua2VybmVsLm9yZzsgQW5keSBEdWFuDQo+IDxmdWdhbmcuZHVhbkBu
eHAuY29tPjsgbW9kZXJhdGVkIGxpc3Q6QVJNL0ZSRUVTQ0FMRSBJTVggLyBNWEMgQVJNDQo+IEFS
Q0hJVEVDVFVSRSA8bGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnPg0KPiBTdWJq
ZWN0OiBSZTogW1BBVENIIFY0IDEvMl0gZHQtYmluZGluZ3MvaXJxOiBhZGQgYmluZGluZyBmb3Ig
TlhQIElOVE1VWA0KPiBpbnRlcnJ1cHQgbXVsdGlwbGV4ZXINCj4gDQo+IE9uIEZyaSwgRGVjIDIw
LCAyMDE5IGF0IDY6MzggQU0gSm9ha2ltIFpoYW5nIDxxaWFuZ3FpbmcuemhhbmdAbnhwLmNvbT4N
Cj4gd3JvdGU6DQo+ID4NCj4gPiBUaGlzIHBhdGNoIGFkZHMgdGhlIERUIGJpbmRpbmdzIGZvciB0
aGUgTlhQIElOVE1VWCBpbnRlcnJ1cHQNCj4gPiBtdWx0aXBsZXhlciBmb3IgaS5NWDggZmFtaWx5
IFNvQ3MuDQo+IA0KPiA0IHZlcnNpb25zIGluIDIgZGF5cz8gRG9uJ3QgZG8gdGhhdC4gR2l2ZSBy
ZXZpZXdlcnMgc29tZSB0aW1lLg0KPiANCj4gQ29udmVydCB0aGlzIHRvIERUIHNjaGVtYSBwbGVh
c2UuIEFuZCBtYWtlIHN1cmUgdG8gc2VuZCB0byBEVCBsaXN0IGlmIHlvdSB3YW50DQo+IGl0IHJl
dmlld2VkLiBZb3Ugb25seSBzZW50IHYxIHRvIHRoZSBsaXN0Lg0KDQpUaGFua3MgUm9iLiBJIHdp
bGwgY29udmVydCB0aGlzIGludG8gRFQgc2NoZW1hLg0KDQpCZXN0IFJlZ2FyZHMsDQpKb2FraW0g
WmhhbmcNCj4gUm9iDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1hcm0ta2VybmVsCg==
