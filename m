Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92683127B63
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 13:58:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i/H9xbtJLQXEJELlFVkLIaR/ukrfF4Ce0u+LNFXz2mg=; b=KW070/pXSFspiC
	EZG4bnzwURJ369UwHrrj+AqIMyJ7aWrzEagQJrLR9pX+tc3qTdz7OmF0Gsnkt8NboWAUSF+B6CeoK
	BHcF+5FFh2lRyemXeVV71nga5bE55QgNjXBNsRk2azilMRIJ+5nNpbzb40xNwUdeZMdrUfbpaKp+x
	CqotKekfxECpqfGN06QMZd5t8hQ4GD7xp8AUiLpgaF9RGuCs5VkE8NYDv/F2C1O/no/U0U5H4+/qF
	O4S4SbADSRsnalqJ3vJj1NNqCIXXZwy9aR8OCSH3H5WgMEc9KCVSnPNye7gOS0D0VzKBNpFeP76uU
	RGMTQaUV6XOmbCprgMew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiHrK-0002t3-Mr; Fri, 20 Dec 2019 12:58:22 +0000
Received: from esa1.microchip.iphmx.com ([68.232.147.91])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiHrC-0002sU-2g
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Dec 2019 12:58:16 +0000
Received-SPF: Pass (esa1.microchip.iphmx.com: domain of
 Nicolas.Ferre@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa1.microchip.iphmx.com;
 envelope-from="Nicolas.Ferre@microchip.com";
 x-sender="Nicolas.Ferre@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa1.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa1.microchip.iphmx.com;
 envelope-from="Nicolas.Ferre@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa1.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Nicolas.Ferre@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: RqwA9fy17F7oJ3Fa/tVUEsMv/jgi3nrz+ImNuXDWzDuzCovXrMVkw6eWuo/rUPGM+x3maUDZz1
 rbXZH59CwDC1iBSAiAL9Zbkk1YpetGnShDs4quPiXwjLLWBhT4h41s8Y4KpUPnuMJNQgr5QcMn
 aDF3LO3SpP0qUZQq6p1SCCBzF2cLN8gsC/kLs68zTqSzCthCJB9+kbU873KQWzKem52ZE89hwH
 1Sj84TLlcRXyYDChmqeLNwfnr6SUI5ERbbsQTLc6AQoLVStvlU+flde7kfhM7bqXQT2SOHScQ+
 qm8=
X-IronPort-AV: E=Sophos;i="5.69,335,1571727600"; d="scan'208";a="62465885"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 20 Dec 2019 05:57:55 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 20 Dec 2019 05:57:47 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 20 Dec 2019 05:57:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=C0upOjaiffY5dPkLap+SfcE37568Rh9k/Qv75LC/OV5QqeTmBjd3paKbjjM35wBR/nIAjyu3aOdUHeGh0Gu3h/rNr3pN0TCU7FNd5V3f68kBbaTqEPjB+MYYj176iUWO3On1qOwG8QCQ9TKp/b479pjukss00fcbabIUafkruxyWzo6sEW+QU9ovqk6jcIglJGvE/1LYyxFlfvajiycfRiCn92sLTUwhSlo6veOgU4uwflnsAX6odq1GsdQZSus/8ApF3/2sr4CZvQAesQYuRhWKBG5aS0JUzFLd7NxhdXgsCqq4qOi+CQ2vlvy7jTMN40vgE01eSk1+hY9A9Ql9oA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HNqv6Tde6XKHsbpSTPamb2B1GmCzwxBIKh6eWNqlq00=;
 b=dMP93JsI62iA2dsmFEG8SsOUHs0lhVj7trM+qWTk9lL8uM4Y9rwhvvq/eT9cLm2Nn9McJhDA/yYnX8+ZYcMEsMft2oPij5mVTCqY2ED5b+v7UIgYm/FitMDY2u/0oCR0kNMkJnB8CC9LEOCFX6C7jD56HT0VBIexlpKuHrlTG+nXIPfik9zQ2uNPZHINPPYB5Jvs6XQcheGWTUMZ8dwsi2JHT1bbXQGhy4iQygDejbjEZpnhb1liK2EOe0kwM+nrruKwURVjMO7Lsq1xTtxMuKuzdH4iwY5f+gurlEW93pFAVZR898zz/4nlRX/MXWuqAvZ4z5Ukz8xpBC3ICchG7Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HNqv6Tde6XKHsbpSTPamb2B1GmCzwxBIKh6eWNqlq00=;
 b=j33KHkN7V5bF6N7OWxbSqwJ5TY69F1cpE8F6/2dDNFv2Q8ty379/FRGJdrYPboKB0ZyM+neRqY+mzfkfu80yMf2Uaff0W05aYOhZPhZGe3+acKPrfDpQKa4cDc/qj/DFKGf2nZCzbXe+C2ewIV8x1kkJOPAEIzzgC4Zs1Rf0ZSM=
Received: from SN6PR11MB2830.namprd11.prod.outlook.com (52.135.91.21) by
 SN6PR11MB3326.namprd11.prod.outlook.com (52.135.111.151) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2559.14; Fri, 20 Dec 2019 12:57:44 +0000
Received: from SN6PR11MB2830.namprd11.prod.outlook.com
 ([fe80::9439:53a6:d896:d176]) by SN6PR11MB2830.namprd11.prod.outlook.com
 ([fe80::9439:53a6:d896:d176%7]) with mapi id 15.20.2559.012; Fri, 20 Dec 2019
 12:57:44 +0000
From: <Nicolas.Ferre@microchip.com>
To: <linux-arm-kernel@lists.infradead.org>, <kamel.bouhara@bootlin.com>,
 <sre@kernel.org>, <Ludovic.Desroches@microchip.com>,
 <alexandre.belloni@bootlin.com>
Subject: Re: [PATCH v4 2/2] power: reset: Introduce generic reset reason
Thread-Topic: [PATCH v4 2/2] power: reset: Introduce generic reset reason
Thread-Index: AQHVtx1e6foGrC6l50eiBTG5gMblF6fC++WA
Date: Fri, 20 Dec 2019 12:57:43 +0000
Message-ID: <f10067302173395ef0afdc0daede9ca53b1a7ed5.camel@microchip.com>
References: <20191220100740.117897-1-kamel.bouhara@bootlin.com>
 <20191220100740.117897-2-kamel.bouhara@bootlin.com>
In-Reply-To: <20191220100740.117897-2-kamel.bouhara@bootlin.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [213.41.198.74]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 509b804d-84aa-42cd-aae1-08d7854c3487
x-ms-traffictypediagnostic: SN6PR11MB3326:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SN6PR11MB33265CC9B91C4FE12CC6E9F3E02D0@SN6PR11MB3326.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1751;
x-forefront-prvs: 025796F161
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(39860400002)(346002)(376002)(136003)(396003)(199004)(189003)(66556008)(2616005)(36756003)(71200400001)(66476007)(8936002)(2906002)(6506007)(26005)(64756008)(66446008)(81166006)(81156014)(66946007)(76116006)(6486002)(478600001)(186003)(86362001)(91956017)(6512007)(4326008)(316002)(5660300002)(8676002)(110136005)(66574012)(41533002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:SN6PR11MB3326;
 H:SN6PR11MB2830.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: fn/rzuF3qVhvi0epmGGWX5tlR2GB0/nXaqdE3YYpU2Pb6b4jn2y4p+8BzV5J4YMXyXWyMO7uYtyBhH26iqnoupD5vY4uR/qvaL61ZlK4AnF0x8Uja7AyMMADwP+PHIZo+zv4xHYWcPTFyOSGTPb0NW+liW4Np+thF8OYjhLYvIsgiA/E4o+yeu3pNckKriGELNqvaDtVWKv4qX4j41xaZBC+rv67Je99JlHXkvGO4ONG22jXlBCk3FfXwUWbDaWXZa1wneNbqcY7EdFpQRQSErB3h/jKR8uazv2K1ji9v/hGLcBNPvcT8VKrixeKmCveC78Sm5PP5NSGqF8kvAf8quC+seZvDxylFUgcLSoJidHx7re5x/9Wvm9GdiLf9sdJev8rBQWZqGlWpbCch62+RTMz2dv7vaaI5P5JM1FT7BFety78KYF25XTM1k9Atnmw2L6j2VhwxJRY9r8Er9As4uFgvbNj3bALG/UtVMHEU0EQKADNMBSZa2u+ZVYzMAJ6
Content-ID: <75114ED36671854A93FA67124C682F4A@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 509b804d-84aa-42cd-aae1-08d7854c3487
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Dec 2019 12:57:43.9890 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: J87sbx36Kdkg9VxVg/FgudeDk4fUtmEr95BInWqkMwt3UYe9I5nshBzNENa/0LdvjgXzO0UiCR8kw+VSOKBTctkT4R+4qYoRxb1joBr47LQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB3326
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_045814_152564_9848540E 
X-CRM114-Status: GOOD (  13.18  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.147.91 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: thomas.petazzoni@bootlin.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

TGUgdmVuZHJlZGkgMjAgZMOpY2VtYnJlIDIwMTkgw6AgMTE6MDcgKzAxMDAsIEthbWVsIEJvdWhh
cmEgYSDDqWNyaXQgOg0KPiBFWFRFUk5BTCBFTUFJTDogRG8gbm90IGNsaWNrIGxpbmtzIG9yIG9w
ZW4gYXR0YWNobWVudHMgdW5sZXNzIHlvdSBrbm93IHRoZQ0KPiBjb250ZW50IGlzIHNhZmUNCj4g
DQo+IFRoaXMgaW50cm9kdWNlIHNvbWUgZ2VuZXJpYyBzb3VyY2VzIG9mIHJlc2V0IHJlYXNvbiB0
byBleHBvc2UgdGhyb3VnaA0KPiBzeXNmcyBpbnRlcmZhY2UuIFVwZGF0ZSB0aGUgQUJJIGRvY3Vt
ZW50YXRpb24gdG8gbGlzdCBjdXJyZW50IHBvd2VyIG9uDQo+IHNvdXJjZXMuDQo+IA0KPiBTaWdu
ZWQtb2ZmLWJ5OiBLYW1lbCBCb3VoYXJhIDxrYW1lbC5ib3VoYXJhQGJvb3RsaW4uY29tPg0KDQpB
Y2tlZC1ieTogTmljb2xhcyBGZXJyZSA8bmljb2xhcy5mZXJyZUBtaWNyb2NoaXAuY29tPg0KDQo+
IC0tLQ0KPiAgLi4uL3N5c2ZzLWRldmljZXMtcGxhdGZvcm0tcG93ZXItb24tcmVhc29uICAgIHwg
MTIgKysrKysrKysrKysrDQo+ICBpbmNsdWRlL2xpbnV4L3Bvd2VyL3Bvd2VyX29uX3JlYXNvbi5o
ICAgICAgICAgfCAxOSArKysrKysrKysrKysrKysrKysrDQo+ICAyIGZpbGVzIGNoYW5nZWQsIDMx
IGluc2VydGlvbnMoKykNCj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBEb2N1bWVudGF0aW9uL0FCSS90
ZXN0aW5nL3N5c2ZzLWRldmljZXMtcGxhdGZvcm0tcG93ZXItDQo+IG9uLXJlYXNvbg0KPiAgY3Jl
YXRlIG1vZGUgMTAwNjQ0IGluY2x1ZGUvbGludXgvcG93ZXIvcG93ZXJfb25fcmVhc29uLmgNCj4g
DQo+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL0FCSS90ZXN0aW5nL3N5c2ZzLWRldmljZXMt
cGxhdGZvcm0tcG93ZXItb24tDQo+IHJlYXNvbiBiL0RvY3VtZW50YXRpb24vQUJJL3Rlc3Rpbmcv
c3lzZnMtZGV2aWNlcy1wbGF0Zm9ybS1wb3dlci1vbi1yZWFzb24NCj4gbmV3IGZpbGUgbW9kZSAx
MDA2NDQNCj4gaW5kZXggMDAwMDAwMDAwMDAwLi45MThhYjE3OGZlZTcNCj4gLS0tIC9kZXYvbnVs
bA0KPiArKysgYi9Eb2N1bWVudGF0aW9uL0FCSS90ZXN0aW5nL3N5c2ZzLWRldmljZXMtcGxhdGZv
cm0tcG93ZXItb24tcmVhc29uDQo+IEBAIC0wLDAgKzEsMTIgQEANCj4gK1doYXQ6ICAgICAgICAg
IC9zeXMvZGV2aWNlcy9wbGF0Zm9ybS8uLi4vcG93ZXJfb25fcmVhc29uDQo+ICsNCj4gK0RhdGU6
ICAgICAgICAgIE9jdG9iZXIgMjAxOQ0KPiArS2VybmVsVmVyc2lvbjogNS41DQo+ICtDb250YWN0
OiAgICAgICBLYW1lbCBCb3VoYXJhIDxrYW1lbC5ib3VoYXJhQGJvb3RsaW4uY29tPg0KPiArRGVz
Y3JpcHRpb246ICAgVGhpcyBmaWxlIHNob3dzIHN5c3RlbSBwb3dlciBvbiByZWFzb24uDQo+ICsg
ICAgICAgICAgICAgICBUaGUgcG9zc2libGUgc291cmNlcyBhcmU6DQo+ICsgICAgICAgICAgICAg
ICBHZW5lcmFsIFN5c3RlbSBQb3dlci1PTiwgUlRDIHdha2V1cCwgV2F0Y2hkb2cgdGltZW91dCwN
Cj4gKyAgICAgICAgICAgICAgIFNvZnR3YXJlIHJlc2V0LCBVc2VyIHJlc2V0IGJ1dHRvbiwgQ1BV
IGNsb2NrIGZhaWx1cmUsDQo+ICsgICAgICAgICAgICAgICBPc2NpbGxhdG9yIEZhaWx1cmUsIExv
dyBwb3dlciBtb2RlIGV4aXQsIFVua25vd24uDQo+ICsNCj4gKyAgICAgICAgICAgICAgIFRoZSBm
aWxlIGlzIHJlYWQgb25seS4NCj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvcG93ZXIvcG93
ZXJfb25fcmVhc29uLmgNCj4gYi9pbmNsdWRlL2xpbnV4L3Bvd2VyL3Bvd2VyX29uX3JlYXNvbi5o
DQo+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0DQo+IGluZGV4IDAwMDAwMDAwMDAwMC4uNWVmOGU3OGYz
ZGU0DQo+IC0tLSAvZGV2L251bGwNCj4gKysrIGIvaW5jbHVkZS9saW51eC9wb3dlci9wb3dlcl9v
bl9yZWFzb24uaA0KPiBAQCAtMCwwICsxLDE5IEBADQo+ICsvKiBTUERYLUxpY2Vuc2UtSWRlbnRp
ZmllcjogR1BMLTIuMC1vbmx5ICovDQo+ICsvKg0KPiArICogQXV0aG9yOiBLYW1lbCBCb3VoYXJh
IDxrYW1lbC5ib3VoYXJhQGJvb3RsaW4uY29tPg0KPiArICovDQo+ICsNCj4gKyNpZm5kZWYgUE9X
RVJfT05fUkVBU09OX0gNCj4gKyNkZWZpbmUgUE9XRVJfT05fUkVBU09OX0gNCj4gKw0KPiArI2Rl
ZmluZSBQT1dFUl9PTl9SRUFTT05fR0VORVJBTCAiR2VuZXJhbCBzeXN0ZW0gcG93ZXItb24iDQo+
ICsjZGVmaW5lIFBPV0VSX09OX1JFQVNPTl9SVEMgIlJUQyB3YWtldXAiDQo+ICsjZGVmaW5lIFBP
V0VSX09OX1JFQVNPTl9XQVRDSERPRyAiV2F0Y2hkb2cgdGltZW91dCINCj4gKyNkZWZpbmUgUE9X
RVJfT05fUkVBU09OX1NPRlRXQVJFICJTb2Z0d2FyZSByZXNldCINCj4gKyNkZWZpbmUgUE9XRVJf
T05fUkVBU09OX1VTRVIgIlVzZXIgcmVzZXQgYnV0dG9uIg0KPiArI2RlZmluZSBQT1dFUl9PTl9S
RUFTT05fQ1BVX0ZBSUwgIkNQVSBjbG9jayBmYWlsdXJlIg0KPiArI2RlZmluZSBQT1dFUl9PTl9S
RUFTT05fWFRBTF9GQUlMICJDcnlzdGFsIG9zY2lsbGF0b3IgZmFpbHVyZSINCj4gKyNkZWZpbmUg
UE9XRVJfT05fUkVBU09OX0xPV19QT1dFUiAiTG93IHBvd2VyIG1vZGUgZXhpdCINCj4gKyNkZWZp
bmUgUE9XRVJfT05fUkVBU09OX1VOS05PV04gIlVua25vd24iDQo+ICsNCj4gKyNlbmRpZiAvKiBQ
T1dFUl9PTl9SRUFTT05fSCAqLw0KPiAtLQ0KPiAyLjI0LjANCj4gDQpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcg
bGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
