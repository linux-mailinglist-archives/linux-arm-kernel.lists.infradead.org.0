Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE8081A6562
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Apr 2020 12:49:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YkROV0wmXY64ua9n4KfjR3OFSP7ucyFHNhzzjZte5iw=; b=q9nF3jigwOjjGm
	mBGRsUHn3vO6b+fLSnFNKqw9mqW2pOgodQQzZcuaRd2UHjKvl4W/edk/wVJ06a0BRyhlptOj9MFUR
	nOI4cbq4Pyt5uq2zk3xhQRbWcSLslT+Mp1oA8U69oKzCKEMqHwY5SxYvlDFejHqi8OglLZ5KltLjy
	JuMMW8k640LBzbBb/OmQG7dmoMKGQj5y9mDxspHqEUkFhuVPXwd3oQuTZCBw9CA65rI58qlfEJu96
	BuIw2FhjX0Ye8dbByYJfpArIMagfNtAUP7iQbSURv0aYfEUPMP9Y/FUK25aCvs1nUgYpOQC8Ub7m6
	4ESinRRXr+LF6bRg+0og==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNwec-0006gZ-DQ; Mon, 13 Apr 2020 10:49:26 +0000
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNweV-0006g7-Gm
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Apr 2020 10:49:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1586774959; x=1618310959;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=cXrBHSYwDJETMu57qlB6ZWhmCg2C/tC6KLvHIrTHt28=;
 b=ChXLd26khKDTJYmY+dqelL93yrjRCXPOPk3PHDiKFqM725RPGb/uMF2E
 yqvxqJNlkyOMVN5jayPOOoGcqQcu8xEHOEgTCpit6W+xnVesGajHb4xDH
 b/a16nMdm3uWUJY7tAbA4H4lwxqY7l6j4Lb8llVraQRKzaPQBH38ph6zr
 mBrO20O34KeJsDUVkQpM4p8bMH67kxVIkDdyYx0PYHKqiRWOKAH3XVbfC
 V74LVdrWZuP5mykuuvLiu76tQ9TcoGeK8xN+LXJkPK9whwoV7fJM7ArA4
 BkQm57kf6Ja6Fauil+QOtiSr8I9AeamXJ3mNU7AnOoc62Nc6FweFpPm42 w==;
IronPort-SDR: Z3Ly5NLTpWqOoFV4uT9YabvDY6+rPWbaqLwZwYiUgvC1k4dQMQKJ3td73IffE0ROnakv//Lmdl
 bLpMBTZt+/wLe9ZmWSHh7RrcZL/odXELLbByKkxfLjrZK3wkVuyOXLTGNSfKYh1U7wvOTkxAi3
 7Zcpk3auo1k1YcijHVQP5abvYv5wFFabUguqx5P8L+1s+zzGmIGVsceATgvYTrDABaB6+rCoDW
 lYGtmqxZ3SxWBVVZa4Tsp7tH6BZk2d4nhuJjcZgjksv7LS50BCe4JIYl3/YRKkKasxrVAf33L9
 JJY=
X-IronPort-AV: E=Sophos;i="5.72,378,1580745600"; d="scan'208";a="135212751"
Received: from mail-bn8nam11lp2177.outbound.protection.outlook.com (HELO
 NAM11-BN8-obe.outbound.protection.outlook.com) ([104.47.58.177])
 by ob1.hgst.iphmx.com with ESMTP; 13 Apr 2020 18:49:17 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=il3Jje+njS2uki92Upoy287eivMhprkDffkdlfHPFlQKQMwHCb11gTybjsuAqAxgZFuejiMar1HOq+iiBTjooTbbmpy1X1ZDaNlqdVrvbnt4lRnLAD79BXGdTcvWv7Qrct/zgxPqvNX++GAfepz3q+7AyBocI2it8mCrJiRJKCJycEKIhgB+dZUYm67DPeQCk95ZZmbDrIkuWSvnViWPb2HXbttmJG2qzeQ6suy9fyYw0ovxFzG9lJ+nXclM81ZKENEIA2fEb53N6n+3/JqGeE9ZOXT7DslUrUCtf5/Tn09p+6+3pDxopPq2aKdclCPM9eCwxCqstiYTPdu+cd4EhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cXrBHSYwDJETMu57qlB6ZWhmCg2C/tC6KLvHIrTHt28=;
 b=ERlJ+dedtyzhMSq2/fvkM14ThEysUtzWzCUEIRlw1Ab6L9qy3x9agKXRnJyWv+8JKZBKvxzesc6SD1av8UkSEy4N1b2h5EeG2hp4e6QRtdSxq1jN+X0iZxb4sWE4Ry2B1IaJS5pcY9qBkkJFBsSip7mwr4bwPeEHRUFYsr8V82QC6PPIEZZF7e7t4hfST1YgGQ8G3XRm8jq3xKbClxe7i9o51cck3c4Kdk1ZI1QUklNYXwn4X+Kyuz+QKYZpszUPpkZo0rvuuZgJSzUck2J+2QPv3eKVMfv4LI76BXx/LjfDxWXTtVliCHJ/1rDsoadoEraJSiQWvM+MuKBoIufwbQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cXrBHSYwDJETMu57qlB6ZWhmCg2C/tC6KLvHIrTHt28=;
 b=szvMWsA7BgY9R5AYlv1WlLvHqzCCf2fbBVy/p+knVE2+2u9VCg8uNVgHAxcB/foskBo22BnsB1ZUBUaC0FAf4nSvyu7nMT/BDrujFX0bFKwq+OIbqfL6RxUg4u/05dA9usMjeXAGJwlkpDTBbGeSPuny5lPr1bbQoNkbz5JDQkI=
Received: from SN6PR04MB4640.namprd04.prod.outlook.com (2603:10b6:805:a4::19)
 by SN6PR04MB4015.namprd04.prod.outlook.com (2603:10b6:805:3f::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2900.24; Mon, 13 Apr
 2020 10:49:16 +0000
Received: from SN6PR04MB4640.namprd04.prod.outlook.com
 ([fe80::3877:5e49:6cdd:c8b]) by SN6PR04MB4640.namprd04.prod.outlook.com
 ([fe80::3877:5e49:6cdd:c8b%5]) with mapi id 15.20.2900.028; Mon, 13 Apr 2020
 10:49:16 +0000
From: Avri Altman <Avri.Altman@wdc.com>
To: Alim Akhtar <alim.akhtar@samsung.com>, "robh@kernel.org"
 <robh@kernel.org>, "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
 "linux-scsi@vger.kernel.org" <linux-scsi@vger.kernel.org>
Subject: RE: [PATCH v5 4/5] scsi: ufs-exynos: add UFS host support for Exynos
 SoCs
Thread-Topic: [PATCH v5 4/5] scsi: ufs-exynos: add UFS host support for Exynos
 SoCs
Thread-Index: AQHWEJ3tZZYUB/0KkkO5PNiaFbmGc6h24Mtw
Date: Mon, 13 Apr 2020 10:49:15 +0000
Message-ID: <SN6PR04MB46402903F25BF57C2EA3DAC1FCDD0@SN6PR04MB4640.namprd04.prod.outlook.com>
References: <20200412073159.37747-1-alim.akhtar@samsung.com>
 <CGME20200412074218epcas5p3ef7973c8a47533a15a359b069da8003c@epcas5p3.samsung.com>
 <20200412073159.37747-5-alim.akhtar@samsung.com>
In-Reply-To: <20200412073159.37747-5-alim.akhtar@samsung.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Avri.Altman@wdc.com; 
x-originating-ip: [77.138.4.172]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 61c28761-1ab0-40ef-befc-08d7df984fbb
x-ms-traffictypediagnostic: SN6PR04MB4015:
x-microsoft-antispam-prvs: <SN6PR04MB401523E4836EC814F97122FDFCDD0@SN6PR04MB4015.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:483;
x-forefront-prvs: 037291602B
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR04MB4640.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10019020)(6029001)(4636009)(366004)(136003)(396003)(39860400002)(376002)(346002)(66476007)(66446008)(64756008)(66946007)(6506007)(76116006)(478600001)(186003)(66556008)(54906003)(316002)(110136005)(4744005)(7696005)(71200400001)(52536014)(5660300002)(86362001)(4326008)(26005)(7416002)(33656002)(55016002)(9686003)(8676002)(2906002)(8936002)(81156014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 2vrURz5+rrDaRkHSrIZO5ICagq0Fxrtzfp2tykPkx77j/ssGLQDd4aDjVM95jyDhouFpU0RaMbWdPX9eFyTncKgO+eOCJmoZF+KNhhO6jrKR01mO+vYBWxMkrNcT2HtoRtMIm+80c7XRJ/RdOuEIn/CieygGMtJcZlo4/IHqpo7PWSM2GpYY72YBXcHnLUru4xHvzydOF3EdX+C9yc2HptKoWeEAq36BiKbhraXV/Y7EB8XlEx3eIV/LRWfJDP3XFHpVgF5/KpYGvcPCooFCwSsHqSVPiWXjlJCzPsU2gs921/LjGVPPpRGEDcj4AHXdeHPmTkX9watOKjh4ogoMs+omSm/HzGY0PAURH7HO9pXZyV8wDJAzeEx14iQZMvQOP1EVhxmVg8f1Q+tsakufV2A1bdz90YBZsie75qdBbMSNfHz+xVHtj5/AzvTONXo+
x-ms-exchange-antispam-messagedata: eE6Ly8ehoz/lXwhvwM/vv3tNaiUPoKPVxDFSejQQovTxTpG9ikeexDi3qymJBt0mSLzUcmfy0oaX92DmrUgEOFT0DBEq0eXL9Vk95TdjU0zDv0qAc/eXJQx4rm5gy0yho5U1h/4vbLbhTqW+1iCajQ==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 61c28761-1ab0-40ef-befc-08d7df984fbb
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Apr 2020 10:49:16.0772 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UajJMu34pmO1JwiFlT1lqG2UvTymXKtPLyGpggj9+FhRfEwUyem7MvZGJYLNK7xbV98VTb7SU4E5zRys+KZmFg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR04MB4015
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_034919_703782_2A87608C 
X-CRM114-Status: GOOD (  12.21  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.42 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 "martin.petersen@oracle.com" <martin.petersen@oracle.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "krzk@kernel.org" <krzk@kernel.org>,
 "kwmad.kim@samsung.com" <kwmad.kim@samsung.com>,
 "cang@codeaurora.org" <cang@codeaurora.org>, Seungwon Jeon <essuuj@gmail.com>,
 "stanley.chu@mediatek.com" <stanley.chu@mediatek.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

PiANCj4gVGhpcyBwYXRjaCBpbnRyb2R1Y2VzIEV4eW5vcyBVRlMgaG9zdCBjb250cm9sbGVyIGRy
aXZlciwNCj4gd2hpY2ggbWFpbmx5IGhhbmRsZXMgdmVuZG9yLXNwZWNpZmljIG9wZXJhdGlvbnMg
aW5jbHVkaW5nDQo+IGxpbmsgc3RhcnR1cCwgcG93ZXIgbW9kZSBjaGFuZ2UgYW5kIGhpYmVybmF0
aW9uL3VuaGliZXJuYXRpb24uDQo+IA0KPiBSZXBvcnRlZC1ieToga2J1aWxkIHRlc3Qgcm9ib3Qg
PGxrcEBpbnRlbC5jb20+DQo+IFJlcG9ydGVkLWJ5OiBKdWxpYSBMYXdhbGwgPGp1bGlhLmxhd2Fs
bEBsaXA2LmZyPg0KPiBbcm9ib3Q6IGRyaXZlcnMvc2NzaS91ZnMvdWZzLWV4eW5vcy5jOjkzMTo4
LTEwOg0KPiAgV0FSTklORzogcG9zc2libGUgY29uZGl0aW9uIHdpdGggbm8gZWZmZWN0IChpZiA9
PSBlbHNlKQ0KPiBdDQo+IFJldmlld2VkLWJ5OiBLaXdvb25nIEtpbSA8a3dtYWQua2ltQHNhbXN1
bmcuY29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBTZXVuZ3dvbiBKZW9uIDxlc3N1dWpAZ21haWwuY29t
Pg0KPiBTaWduZWQtb2ZmLWJ5OiBBbGltIEFraHRhciA8YWxpbS5ha2h0YXJAc2Ftc3VuZy5jb20+
DQo+IFRlc3RlZC1ieTogUGF3ZcWCIENobWllbCA8cGF3ZWwubWlrb2xhai5jaG1pZWxAZ21haWwu
Y29tPg0KUmV2aWV3ZWQtYnk6IEF2cmkgQWx0bWFuIDxhdnJpLmFsdG1hbkB3ZGMuY29tPg0KDQpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0t
a2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2Vy
bmVsCg==
