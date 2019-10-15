Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CE67D7300
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 12:17:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UwDboofE/7OAS7MJfw616FGCRI4o844vLq9aMOvYGrA=; b=pt3lT01S38pnDb
	6yFb3kqTLyMLGBtWv4MoN8zGoaT9LTH1Jc/Mvi6Zg654YXMA6AtYxGhxPViqV8W3rnhK4DRIG/QTd
	1ruMpXvpC6MZx4rT9lTIfdxJ7/pKzh6pTDTU2FBGj/Pcbj+1ShEPKoZm+AkOB8oJv3PuyIRzk+xah
	tzMwRu3cZiYfrZgD3tDjfRqqUT3iK77id7dXWW8yAE8csGIfB4nsk1D2fNPVASN8rKm2x3RX97qoa
	xZlzrcM5q2rjgpfztR3vEAQqMxUyuxWVYi7abM1K2XuMQUFbHJfKLtj+dFBXFo5RcYWVEL+EuCunR
	eBi4l11P8LtGm1kwDahQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKJtV-0008Oy-ID; Tue, 15 Oct 2019 10:17:33 +0000
Received: from esa3.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKJtH-0008OL-Nm
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 10:17:21 +0000
Received-SPF: Pass (esa3.microchip.iphmx.com: domain of
 Tudor.Ambarus@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="Tudor.Ambarus@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa3.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa3.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Tudor.Ambarus@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: bYHzYPIk2FV1Y3RG/dE0h/xuVSTpXTAKbeDg2Gjkp7QjIOuqvSFHiHULcwx1yb4mgp8WWyu5t4
 36e7ax2ZUV6QgHL+bBs73x1ZTiE0u2Azzg7ly5yr+oPxblIMhil9y5nf0jq4Laws5lbJw2pTZ8
 j6fEhk4gsR4dB70GbmFiQzP3O7QOXKhS02E0aAtdO+u7/PBtkDa3bg9e/hmn+DCMpDt2FBGaY7
 fRDrhNI/+pH1dB48c3ANMYkBVKxVWNzzwZsp207zyON49PYvnnDhkjxcT66LJ0V6AuUIDzrDTJ
 KKw=
X-IronPort-AV: E=Sophos;i="5.67,299,1566889200"; d="scan'208";a="53004305"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 15 Oct 2019 03:17:14 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 15 Oct 2019 03:17:13 -0700
Received: from NAM05-BY2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Tue, 15 Oct 2019 03:17:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=A3lUVd2NhGdXIT2Y2hSUCYOOq4wNjNBRLsxTir7wSbfZs8lGTdvmKpcbnMmol1UNQN/X6JUDUKiYBv4u/ixEn7uaDnYOmCJRBXFFs9CGslidVTliba3PKkTJyXcK2zoAhcaZdnDW2nteId9KWHYjgFqKsBkurZORDXwCWRR/0aDrvJIlzKAWrMQXAC3kWq6brQLrTQnM1u5I32P8z5eIExLjBPn3SffWB4PjbxDqXL86Zdh7GrASHyPfOPSKsJdKEQ/AOZgbBww/P8evMj2vkaQhGqVg2inLMk7fYRiWPJy5UKg+axL7bkDs7TI8Gh+GDzRnBs+CAnTEPqfStFCFVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mAo0P6snmROp7n0odBmTFBK9zMnloO6vM3w9QHO1HkU=;
 b=O+W2JH/IwKUXGsHEiInyP/rPfv5CjlRcpK5hkdOBjyqTKNNxBTiI+e7cwZyDYjxD/frfGicfP+OS2VF8NnYInG71hP5kovqo1VQVn6jVKtn9+gDJ0RmTCzZydlf6O9HdWShqciyg/lR8rbIkAW85oDnRcSxdUeaTAl+gSpHaKl6q0yoODjpRXezJSua8YL/TGVlwbJGZjIM9AM46TJGkYvIR6K2OhAQoiKZUKWNyfa4KbfWtkdEcNU4ePsQtfcevh0JviWPAI8pzedj9AD/OEOU6voIXWW5Uc51zP/KL71qRuGgyB8bIjsX1s0dl+ewwVz0SjOcD7UywLcgiGUQ3cQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mAo0P6snmROp7n0odBmTFBK9zMnloO6vM3w9QHO1HkU=;
 b=ptQ/DxD0IpNbgLKfdiI9gwsyuDBfEnWBLATz0ewMssWQ1RaNNKPkSG0ykJfKllRLOIDax6D6QLIzV6P6wPZXPwhCy0FK2Eq7akYy3C7+uVn0xyVFB3kpKl2xUJF3yVOeHMUAHQh80jRUf2OZa9b6Qstp54DZM0yndGiKZ2rUmts=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (52.135.39.157) by
 MN2PR11MB3597.namprd11.prod.outlook.com (20.178.251.157) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.21; Tue, 15 Oct 2019 10:17:09 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::c09c:36c8:3301:4457]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::c09c:36c8:3301:4457%5]) with mapi id 15.20.2347.023; Tue, 15 Oct 2019
 10:17:09 +0000
From: <Tudor.Ambarus@microchip.com>
To: <ard.biesheuvel@linaro.org>, <linux-crypto@vger.kernel.org>
Subject: Re: [PATCH 08/25] crypto: atmel-aes - switch to skcipher API
Thread-Topic: [PATCH 08/25] crypto: atmel-aes - switch to skcipher API
Thread-Index: AQHVgonIm1vV8QC86UWvs67bV5Bj+6dbfksA
Date: Tue, 15 Oct 2019 10:17:09 +0000
Message-ID: <2e544398-5407-430c-84b6-3f946f5dea0c@microchip.com>
References: <20191014121910.7264-1-ard.biesheuvel@linaro.org>
 <20191014121910.7264-9-ard.biesheuvel@linaro.org>
In-Reply-To: <20191014121910.7264-9-ard.biesheuvel@linaro.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR0802CA0044.eurprd08.prod.outlook.com
 (2603:10a6:800:a9::30) To MN2PR11MB4448.namprd11.prod.outlook.com
 (2603:10b6:208:193::29)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e107d797-022a-4a32-7cfb-08d75158d62a
x-ms-traffictypediagnostic: MN2PR11MB3597:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB3597B612EBEA898CE58635B8F0930@MN2PR11MB3597.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 01917B1794
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(346002)(136003)(39860400002)(376002)(366004)(199004)(189003)(86362001)(476003)(25786009)(36756003)(4326008)(31696002)(66446008)(66556008)(66476007)(81166006)(64756008)(81156014)(8936002)(107886003)(6512007)(6486002)(6246003)(54906003)(11346002)(76176011)(2616005)(26005)(486006)(53546011)(186003)(52116002)(446003)(110136005)(5660300002)(66066001)(102836004)(386003)(99286004)(6506007)(71190400001)(478600001)(305945005)(2501003)(3846002)(14454004)(256004)(14444005)(8676002)(6116002)(7736002)(316002)(71200400001)(229853002)(66946007)(6436002)(2906002)(31686004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB3597;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: l4HC46oDj34/2Oc9upeqoyXcRurl0ONCsLs8Eqmax13V5PyOwNFFh49sA5lqUZ0DmKmdHu9Cu7axI3DpO/YTR5LQPppMsSchNaRyoLwE3deZqYtXRn0rSHglhEqHU1X2Cjjw6tjJjOFTqc9WAurT/+PgjGCYHNpC7yN2eDjy4FcPMgi0KlNXODBdPivnjSeTcoVOvt/p0thrMEQOjybTxgl4+RQR1mIBoClW0uXwn8rsAE3xjOzJkvMgfzQyAsmof1OZnWFldGsD0OaSRGtRmzIBBccIP0LSjr/Qrd4Yk/DXjszyve41L0EY1jAiX6wT31mtorCmKu4lKnf7OE+03jrrW1LtW1MEszFrbiC87g5dQdK8SB/qHt1KPvvWAib7GDjXpX0z5EjKAgUO9CBrBLKMNcGtkFTp+wfQOwm/hoY=
Content-ID: <AFC722B619E118449CED0E6CA205DDCC@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: e107d797-022a-4a32-7cfb-08d75158d62a
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Oct 2019 10:17:09.0893 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yzkNKBXs2ZxgSTAyrZygSZb3C3vlIR5mooBrWbWSUDII2Ca2NuQuBcsJOg0hyET+vIlbjXCrURDiZrTIqILzKFkaN3sxejEy560DbmQXgIw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3597
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_031719_780378_7F3B2375 
X-CRM114-Status: GOOD (  12.35  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.153.233 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: alexandre.belloni@bootlin.com, herbert@gondor.apana.org.au,
 ebiggers@google.com, Ludovic.Desroches@microchip.com, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksIEFyZCwNCg0KVGhhbmtzIGZvciB3b3JraW5nIG9uIHRoaXMuDQoNCk9uIDEwLzE0LzIwMTkg
MDM6MTggUE0sIEFyZCBCaWVzaGV1dmVsIHdyb3RlOg0KPiBDb21taXQgN2E3ZmZlNjVjOGM1ICgi
Y3J5cHRvOiBza2NpcGhlciAtIEFkZCB0b3AtbGV2ZWwgc2tjaXBoZXIgaW50ZXJmYWNlIikNCj4g
ZGF0ZWQgMjAgYXVndXN0IDIwMTUgaW50cm9kdWNlZCB0aGUgbmV3IHNrY2lwaGVyIEFQSSB3aGlj
aCBpcyBzdXBwb3NlZCB0bw0KPiByZXBsYWNlIGJvdGggYmxrY2lwaGVyIGFuZCBhYmxrY2lwaGVy
LiBXaGlsZSBhbGwgY29uc3VtZXJzIG9mIHRoZSBBUEkgaGF2ZQ0KPiBiZWVuIGNvbnZlcnRlZCBs
b25nIGFnbywgc29tZSBwcm9kdWNlcnMgb2YgdGhlIGFibGtjaXBoZXIgcmVtYWluLCBmb3JjaW5n
DQo+IHVzIHRvIGtlZXAgdGhlIGFibGtjaXBoZXIgc3VwcG9ydCByb3V0aW5lcyBhbGl2ZSwgYWxv
bmcgd2l0aCB0aGUgbWF0Y2hpbmcNCj4gY29kZSB0byBleHBvc2UgW2FdYmxrY2lwaGVycyB2aWEg
dGhlIHNrY2lwaGVyIEFQSS4NCj4gDQo+IFNvIHN3aXRjaCB0aGlzIGRyaXZlciB0byB0aGUgc2tj
aXBoZXIgQVBJLCBhbGxvd2luZyB1cyB0byBmaW5hbGx5IGRyb3AgdGhlDQo+IGJsa2NpcGhlciBj
b2RlIGluIHRoZSBuZWFyIGZ1dHVyZS4NCj4gDQo+IENjOiBOaWNvbGFzIEZlcnJlIDxuaWNvbGFz
LmZlcnJlQG1pY3JvY2hpcC5jb20+DQo+IENjOiBBbGV4YW5kcmUgQmVsbG9uaSA8YWxleGFuZHJl
LmJlbGxvbmlAYm9vdGxpbi5jb20+DQo+IENjOiBMdWRvdmljIERlc3JvY2hlcyA8bHVkb3ZpYy5k
ZXNyb2NoZXNAbWljcm9jaGlwLmNvbT4NCj4gU2lnbmVkLW9mZi1ieTogQXJkIEJpZXNoZXV2ZWwg
PGFyZC5iaWVzaGV1dmVsQGxpbmFyby5vcmc+DQo+IC0tLQ0KPiAgZHJpdmVycy9jcnlwdG8vYXRt
ZWwtYWVzLmMgfCA1MDcgKysrKysrKysrKy0tLS0tLS0tLS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCAy
NDQgaW5zZXJ0aW9ucygrKSwgMjYzIGRlbGV0aW9ucygtKQ0KDQpkcml2ZXJzL2NyeXB0by9hdG1l
bC1hZXMuYzogSW4gZnVuY3Rpb24g4oCYYXRtZWxfYWVzX3JlZ2lzdGVyX2FsZ3PigJk6DQpkcml2
ZXJzL2NyeXB0by9hdG1lbC1hZXMuYzoyNTE1OjI0OiBlcnJvcjogcGFzc2luZyBhcmd1bWVudCAx
IG9mIOKAmGNyeXB0b191bnJlZ2lzdGVyX2FsZ+KAmSBmcm9tIGluY29tcGF0aWJsZSBwb2ludGVy
IHR5cGUgWy1XZXJyb3I9aW5jb21wYXRpYmxlLXBvaW50ZXItdHlwZXNdDQogIGNyeXB0b191bnJl
Z2lzdGVyX2FsZygmYWVzX3h0c19hbGcpOw0KICAgICAgICAgICAgICAgICAgICAgICAgXg0KSW4g
ZmlsZSBpbmNsdWRlZCBmcm9tIGRyaXZlcnMvY3J5cHRvL2F0bWVsLWFlcy5jOjMyOjA6DQouL2lu
Y2x1ZGUvbGludXgvY3J5cHRvLmg6NzAzOjU6IG5vdGU6IGV4cGVjdGVkIOKAmHN0cnVjdCBjcnlw
dG9fYWxnICrigJkgYnV0IGFyZ3VtZW50IGlzIG9mIHR5cGUg4oCYc3RydWN0IHNrY2lwaGVyX2Fs
ZyAq4oCZDQogaW50IGNyeXB0b191bnJlZ2lzdGVyX2FsZyhzdHJ1Y3QgY3J5cHRvX2FsZyAqYWxn
KTsNCiAgICAgXn5+fn5+fn5+fn5+fn5+fn5+fn5+DQoNCmFuZCB3aGVuIGFwcGx5aW5nIHRkZXM6
DQpBcHBseWluZzogY3J5cHRvOiBhdG1lbC10ZGVzIC0gc3dpdGNoIHRvIHNrY2lwaGVyIEFQSQ0K
LmdpdC9yZWJhc2UtYXBwbHkvcGF0Y2g6NjM3OiB0cmFpbGluZyB3aGl0ZXNwYWNlLg0KCQ0Kd2Fy
bmluZzogMSBsaW5lIGFkZHMgd2hpdGVzcGFjZSBlcnJvcnMuDQoNCkknbGwgdHJ5IHRvIHJldmll
dyB0aGUgYXRtZWwgcGFydCBuZXh0IHdlZWsuDQoNCkNoZWVycywNCnRhDQpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxp
bmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
