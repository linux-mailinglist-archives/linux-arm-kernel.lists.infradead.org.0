Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 111CA8398C
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 21:22:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0l2w1yz5jZ1OFB/X7v55cbqGrZgXJAHOVG+MXVLGi3A=; b=nMEO6cOshvjwCb
	/zhMbyobe9C7NsZuLy2bXh1oR3hCg0E4rdEJNEfg7+pbKmnNUAxcoreCBU3WQ0odwaBTri0vIySSk
	GG9d7la724TphSwI9uJsxwGwGvEhMdFv1PABUy0ZLE9KuKWmBiILezREVB9XrSNag0Qo6NoYeCP3v
	5fa30TLc59JE3Px4ezm2SKroD0XYLaaIsNAqLYAyrNl+pdqyjbm7mqqplxvhOY2SIDPJXYgHyYapk
	W4jkYU52XePoOL0Efcu4bkUZ1AyEb4hzrF8Q9eoeGjCER+a8nHy0OhL0L304I2BTjKOd98uNh9/9S
	rCzXCmfIkjtGLeNlBnug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hv52m-0007cP-SN; Tue, 06 Aug 2019 19:22:48 +0000
Received: from mail-eopbgr770112.outbound.protection.outlook.com
 ([40.107.77.112] helo=NAM02-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hv52d-0007bH-0B
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 19:22:40 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=og5+vyyYf3i7IaB3RrNiX5t3vfH50Iu50nXGKnRobSeC2ULB3g7J0G9lpuXPJ4xaGcG/jfbkRQ4ycjZ9rTdoZiIO0p0MxOrzZd5Cdk1UigdiKy47upVOBhI/NiUJ0kKza4v3bEKTRWIUfbJZxvzccUhnJljwchSYKReUGS3xDZr5Jcm2UT6xsX85eTuyEKnve6HKe24XhKz/IW0pbLEc7cnF0UNLsluh8jzogtBNouvKyNrXsOPMzGJy6Tm5LlYTDJJYPa4DE8x6Sgsn0jYpzHASNM6MiNWP28rKDJ336RfFsxAhcWTBSAc/snX951vnHZEi+A4CUo5MsPEEdXUw7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FjDjIZmo3TB0DOu5whbGDo/gw+mIzRcOMjNbEHTLtyQ=;
 b=bE2N0owVMdocu4MumLP5rkKNhwoCgEVF62+rReBzgli9XafZuvkMbqQRAN69DfcPugNufPG5CIUE9hPoa2GhKxsZKdo4UgIL82XRgGQIRM8UbXyYNUyqV+0K9EhxAIRcb9xHbMgEdzGDDP7X9T9/FJkCW7pUBLglGFfrBKKLBKtc2C1qAh703Ez4SbHPOFEpqzvFwS/4mZatmiQZ4DWlW9Eb+4FSch9XjI4zIzdw3hqZ3dOx74szeVjW+ULDYUm2AlIovGAARhhhkaAY+u4iUK4ofP5gdk37i5ja80vcKotwyxnym91nLfx7gOkEBB98cMtxHT8jEXCvmpuyV5a9dA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=wavecomp.com;dmarc=pass action=none
 header.from=mips.com;dkim=pass header.d=mips.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wavecomp.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FjDjIZmo3TB0DOu5whbGDo/gw+mIzRcOMjNbEHTLtyQ=;
 b=pqN42yLsnwuOwNtp9Cs93Tez+8wMcSLW8TKSIkXe9VXTxkguorxNiNAXaByFtAZXQs7KHBmIQUnrVUdWcpn8Yi9Z3IWnRyosHO+zTLhQ/mQtiS3l7faneUSZlAdlrIBEKHankNbh3rLPehNJZ+LbwMpO8HevBvm0za6xYA1VaYA=
Received: from MWHPR2201MB1277.namprd22.prod.outlook.com (10.172.60.12) by
 MWHPR2201MB1405.namprd22.prod.outlook.com (10.174.162.143) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2136.14; Tue, 6 Aug 2019 19:22:34 +0000
Received: from MWHPR2201MB1277.namprd22.prod.outlook.com
 ([fe80::f566:bf1f:dcd:862c]) by MWHPR2201MB1277.namprd22.prod.outlook.com
 ([fe80::f566:bf1f:dcd:862c%10]) with mapi id 15.20.2136.018; Tue, 6 Aug 2019
 19:22:34 +0000
From: Paul Burton <paul.burton@mips.com>
To: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Subject: Re: [PATCH] MIPS: BCM63XX: Mark expected switch fall-through
Thread-Topic: [PATCH] MIPS: BCM63XX: Mark expected switch fall-through
Thread-Index: AQHVTIxMKSVW35J0VE2RoitBixsOOw==
Date: Tue, 6 Aug 2019 19:22:34 +0000
Message-ID: <MWHPR2201MB12776913F4FF97FA337424B2C1D50@MWHPR2201MB1277.namprd22.prod.outlook.com>
References: <20190805185533.GA10551@embeddedor>
In-Reply-To: <20190805185533.GA10551@embeddedor>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: BYAPR01CA0053.prod.exchangelabs.com (2603:10b6:a03:94::30)
 To MWHPR2201MB1277.namprd22.prod.outlook.com
 (2603:10b6:301:18::12)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=pburton@wavecomp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [12.94.197.246]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 57416390-34f1-48e3-667b-08d71aa36f07
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:MWHPR2201MB1405; 
x-ms-traffictypediagnostic: MWHPR2201MB1405:
x-microsoft-antispam-prvs: <MWHPR2201MB1405B6F3EB8F3BBCADC86EC0C1D50@MWHPR2201MB1405.namprd22.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3968;
x-forefront-prvs: 0121F24F22
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(366004)(396003)(136003)(39850400004)(376002)(346002)(199004)(189003)(229853002)(6246003)(53936002)(4326008)(4744005)(52536014)(44832011)(102836004)(66556008)(66476007)(7696005)(6506007)(386003)(26005)(66446008)(66946007)(64756008)(446003)(52116002)(33656002)(14454004)(9686003)(256004)(14444005)(6436002)(2906002)(42882007)(486006)(476003)(186003)(316002)(11346002)(66066001)(74316002)(55016002)(7736002)(71200400001)(5660300002)(71190400001)(99286004)(81156014)(478600001)(25786009)(81166006)(8936002)(305945005)(6116002)(54906003)(76176011)(3846002)(8676002)(6916009)(68736007);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MWHPR2201MB1405;
 H:MWHPR2201MB1277.namprd22.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: wavecomp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: ezw/F22sCmuM+Z4gMzzHXEZqJ+prL47raYnbM1TFulE5flllzES1RLp2G9JGk3RKVS4Ly0WLgi4Ngdj7QCtBcmRj9Sd9IVRpbgIJhu76/li9ADEFeZsk8SaJ7xmaf2+zRrYqSlrSqQG78Tza4GuI3jUvHWV84/ztvmv3TcKfbboWBE0YGpiDugTW3LXEuz6SMYol/imsXkYgmAX2cZtDF+yhbOXocXm0pti5Xq7AA8H/Diy97x6okBKd9ZypiapW4eOQP3S4jWw3oSHz5eHMeMxTaqhL4qCOjcPEensunjGZ7WSo7xxJQQzs0Drtvj13tZ8XREIJWF9msVS9P/N6ziHQsJYUKkgq5cyg+gLnqTeeCBVhrT2+nNZa1TawUiDHQGo12t/kp7OEebVSvAiBVY4+gpVh6dPGEVNBlnFyhiQ=
MIME-Version: 1.0
X-OriginatorOrg: mips.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 57416390-34f1-48e3-667b-08d71aa36f07
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Aug 2019 19:22:34.2576 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 463607d3-1db3-40a0-8a29-970c56230104
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pburton@wavecomp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR2201MB1405
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_122239_102110_EC0D9F38 
X-CRM114-Status: UNSURE (   9.19  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.77.112 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Paul Burton <pburton@wavecomp.com>, Florian Fainelli <f.fainelli@gmail.com>,
 "Gustavo A. R. Silva" <gustavo@embeddedor.com>,
 James Hogan <jhogan@kernel.org>,
 "linux-mips@vger.kernel.org" <linux-mips@vger.kernel.org>,
 Ralf Baechle <ralf@linux-mips.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "bcm-kernel-feedback-list@broadcom.com"
 <bcm-kernel-feedback-list@broadcom.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGVsbG8sDQoNCkd1c3Rhdm8gQS4gUi4gU2lsdmEgd3JvdGU6DQo+IE1hcmsgc3dpdGNoIGNhc2Vz
IHdoZXJlIHdlIGFyZSBleHBlY3RpbmcgdG8gZmFsbCB0aHJvdWdoLg0KPiANCj4gVGhpcyBwYXRj
aCBmaXhlcyB0aGUgZm9sbG93aW5nIHdhcm5pbmcgKEJ1aWxkaW5nOiBiY202M3h4X2RlZmNvbmZp
ZyBtaXBzKToNCj4gDQo+IGFyY2gvbWlwcy9wY2kvb3BzLWJjbTYzeHguYzogSW4gZnVuY3Rpb24g
4oCYYmNtNjN4eF9wY2llX2Nhbl9hY2Nlc3PigJk6DQo+IGFyY2gvbWlwcy9wY2kvb3BzLWJjbTYz
eHguYzo0NzQ6Njogd2FybmluZzogdGhpcyBzdGF0ZW1lbnQgbWF5IGZhbGwgdGhyb3VnaCBbLVdp
bXBsaWNpdC1mYWxsdGhyb3VnaD1dDQo+IGlmIChQQ0lfU0xPVChkZXZmbikgPT0gMCkNCj4gXg0K
PiBhcmNoL21pcHMvcGNpL29wcy1iY202M3h4LmM6NDc3OjI6IG5vdGU6IGhlcmUNCj4gZGVmYXVs
dDoNCj4gXn5+fn5+fg0KPiANCj4gU2lnbmVkLW9mZi1ieTogR3VzdGF2byBBLiBSLiBTaWx2YSA8
Z3VzdGF2b0BlbWJlZGRlZG9yLmNvbT4NCg0KQXBwbGllZCB0byBtaXBzLWZpeGVzLg0KDQpUaGFu
a3MsDQogICAgUGF1bA0KDQpbIFRoaXMgbWVzc2FnZSB3YXMgYXV0by1nZW5lcmF0ZWQ7IGlmIHlv
dSBiZWxpZXZlIGFueXRoaW5nIGlzIGluY29ycmVjdA0KICB0aGVuIHBsZWFzZSBlbWFpbCBwYXVs
LmJ1cnRvbkBtaXBzLmNvbSB0byByZXBvcnQgaXQuIF0NCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0Cmxp
bnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
