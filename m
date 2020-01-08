Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32E6A134706
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 17:03:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4rUZc0izNigzt7wtpfsX5PgD9odLentp8Jgfq47XqTE=; b=NgSIcXJOQqJuIw
	TARUvbmWrwLK4HyQeBOCwrjVm9WFApfgO8O5sflR5RJd2KFMB/rv01lCehlEBOoIn44Bu6e+bWRDp
	pIe2frj623s7kslLofOnvbH9JCZ8JxlmgHQtCe+3oS0cQ1JFDqCJw2dfG3MgsuIwYf1A35gy2yJTb
	7AVUMbVRUWyJ2aAAX3kuiu3bz5Y7BB+Kbz2xRYTxio8k4aXzu5UEjHNXzImGdfAEE7YyMGjW1Mayu
	OQCqSnVRWrOF8OhGJh+jdh2ngkB1o/zfHgGrku8XxAnjIkImjXHDgOB421L/LMDx05mLT52o2QEM5
	0Y4BJNIY10WtNpo9t/6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipDno-0000JE-Cu; Wed, 08 Jan 2020 16:03:24 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipDne-0000HK-3K
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 16:03:18 +0000
Received-SPF: Pass (esa6.microchip.iphmx.com: domain of
 Codrin.Ciubotariu@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Codrin.Ciubotariu@microchip.com";
 x-sender="Codrin.Ciubotariu@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa6.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Codrin.Ciubotariu@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa6.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Codrin.Ciubotariu@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: Fjcqt/MFtgxfflEPaALX//IYViBcu6DQmNR32Bv1OcG09taWxC9ePdgUOul7Qzq7pD6k2EnWH1
 Ky55OxLUZ9Cx1NzBo+CZf7BjwKzdED0o6x4ecNn+Q7LOZjsHrq0YdjyTr5/WshktAZaFa/YMz/
 Ei7BtXxtxNFDkfAkbkcI9NxrKHhu5H9bsHLOnxgXeALaA1INLbyAp4sivQ16Sist/ueXGdCnqX
 jVewa0PloXx8g0tnohkT/bZ8Ebg7zBZo6ONeQJaZiLSoRD51t3ZapNsQ5qG4hIQC1gfTq4djl/
 pC0=
X-IronPort-AV: E=Sophos;i="5.69,410,1571727600"; d="scan'208";a="60120692"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 08 Jan 2020 09:03:04 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 8 Jan 2020 09:03:03 -0700
Received: from NAM02-CY1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Wed, 8 Jan 2020 09:03:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AcNBAxJ5B/BwC26FUNhRGBoxc4mbc+WuAzcHCcwFrp9u1rEKIPvQJRO0EIyfQEqAJS5guMmJt+AME78o8j7/xPETlY+SSYvpo7baoL3QtR0VDSIsh+rIjyv5iKa+2xgrzDcvOzsNnSNb3MIgB84i6m/3oHGItEz2EvEGKfsZt0lS49DbWYqNmxXpBSmdQu/zUSSLZOxH4RzhOPLb4MdZ/XfCRDJyOqVM98FlvLxpnu2AdCk3oBlLb0IHXDAWTTfraTAIuWn0iGsvAOf9AfHT1je74wUMrzeLdoRV3KPiT2UCe9P2Q9+MoRv4lKglZnmQXeQjRdNYBn6g/hur9kDeTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=h6LTdOGUBDF/FsNTDwxmYMUktlQd128kPcoKtUuSPS0=;
 b=jKV84Hm55BZJOn3Pfy+jOcMmz9GEduXLqsfS/z9dgRA6gZnMhWdPfquRb77aJg5ah6xSZoO+TMNVMotAzDWwuPvqd9Gylt2dzyw70EuFDNuAYYZoxWz4XvZu+Lp852OyDRJ0lhiA/zCYT3TuyxPRiuFXissl9Ho00L8BC+97TgiTW53ZiP3vsSSB24kqGmBgJg9+bxFruHoJXht3guxr+YiuKvRVFZwtyUdUYFcgVBIEeeDELVDNihf9RFMX6kWJ2SrBgKbGlibuzE4W/AQjIgRDstYefuo7Vtymt4uWahApkC6K3tDUxIIlIMcet7PPXbUCRZngBt8fnIgUCZZalA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=h6LTdOGUBDF/FsNTDwxmYMUktlQd128kPcoKtUuSPS0=;
 b=bziXN9sOPQONE406GiFdmpOQfHvce9It0Iv3SxcmF52Q9sJFiYLiOSkdI1sMX5DEWglkDs9vwYSMPraZC4ob5J9uAf4QBe2daWvciLLvLEUFaQWxnte/mUD/X0NLiR6vZehzcGY8w3sjoF5Ol8bd/m8AEH1XKA/yh+qjP0IWO5E=
Received: from BY5PR11MB4497.namprd11.prod.outlook.com (52.132.255.220) by
 BY5PR11MB3928.namprd11.prod.outlook.com (10.255.161.30) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2602.15; Wed, 8 Jan 2020 16:03:01 +0000
Received: from BY5PR11MB4497.namprd11.prod.outlook.com
 ([fe80::6189:c32:b55b:b3fd]) by BY5PR11MB4497.namprd11.prod.outlook.com
 ([fe80::6189:c32:b55b:b3fd%5]) with mapi id 15.20.2623.008; Wed, 8 Jan 2020
 16:03:01 +0000
From: <Codrin.Ciubotariu@microchip.com>
To: <richard.genoud@gmail.com>, <linux-serial@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] tty/serial: atmel: RS485 & ISO7816: wait for TXRDY before
 sending data
Thread-Topic: [PATCH] tty/serial: atmel: RS485 & ISO7816: wait for TXRDY
 before sending data
Thread-Index: AQHVxUwXFa3UBqH4kUi+I0sc8auwu6fgyRKAgAAmh4A=
Date: Wed, 8 Jan 2020 16:03:01 +0000
Message-ID: <d0fc5b47-26fd-e6d3-b50d-012e739b87c6@microchip.com>
References: <20200107111656.26308-1-codrin.ciubotariu@microchip.com>
 <b11e47c3-8b94-7915-ae5a-d9e8f5b02047@gmail.com>
In-Reply-To: <b11e47c3-8b94-7915-ae5a-d9e8f5b02047@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c492aa81-1a78-4d3a-309f-08d794543cc3
x-ms-traffictypediagnostic: BY5PR11MB3928:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BY5PR11MB3928C4FC6FC136855AA1FC53E73E0@BY5PR11MB3928.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 02760F0D1C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(189003)(199004)(6506007)(2906002)(81166006)(81156014)(53546011)(498600001)(186003)(8676002)(6486002)(36756003)(31686004)(8936002)(4326008)(2616005)(66574012)(86362001)(31696002)(71200400001)(6512007)(5660300002)(26005)(66476007)(76116006)(110136005)(54906003)(66946007)(64756008)(107886003)(66556008)(66446008)(299355004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BY5PR11MB3928;
 H:BY5PR11MB4497.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: PuuUwicGGmUdmlhxR45X7V+zBmANgxzvsK9/GG/oCRzc+0bi6fddKYk3c1lSegOnwSMRov0gQA9FOYUNyydR/3S096UeFy+Dj2tsxu8rYAYKVa06sW6oIJDkiahTaefNYIWe++w6zlkVKVlLvmnZ22taFuaYV4tWTXZcIP2e2pXdMGvaty4FEDvNrbRJImiyvbkhWm9m38tsU8NVbPvHjex07D3XfiLjl+nlmODUHU8n3q41yGYJ9ZpQkikjmFwQbTMIFCdEK/iEwAcelA5C+AYI1bJXlKrS9pjDlqNYjs701VqdDVJMjzZMOTMy+2FiVaad6p42VRNpdYVEdjUrJYJLRkCuagl5TpyI9Bh+ayJDLgpQO3Dwvf7JZGCU7Gn7VDhJOSsKG1HSb49wqPHsn3yTuaNKdGEhXqPpGjApRjIxSWloizG+ZqpBOCGDraojX6BuvBERGltjYraKDvL4GrxZlE5o+8tz6SM8SqTgjX+K7G/QkjBHOTTmEvT0CXFL
Content-ID: <B2D8BA6C507EC145B079CB6D67C03FD1@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: c492aa81-1a78-4d3a-309f-08d794543cc3
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jan 2020 16:03:01.2084 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZIkQlPK411fB+bve8FooTckAtQD+/mpU19Ku9qmX6BdVvTBnHqcwfbL0l7uU3/rG/djsos6qXocOFaEu+dgLrwpw6wiCdBqNLlVurNgYV9Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB3928
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_080314_232161_7FB83C48 
X-CRM114-Status: GOOD (  14.49  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.253 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: gregkh@linuxfoundation.org, alexandre.belloni@bootlin.com,
 Ludovic.Desroches@microchip.com, jslaby@suse.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMDguMDEuMjAyMCAxNTo0NSwgUmljaGFyZCBHZW5vdWQgd3JvdGU6DQo+IEVYVEVSTkFMIEVN
QUlMOiBEbyBub3QgY2xpY2sgbGlua3Mgb3Igb3BlbiBhdHRhY2htZW50cyB1bmxlc3MgeW91IGtu
b3cgdGhlIGNvbnRlbnQgaXMgc2FmZQ0KPiANCj4gTGUgMDcvMDEvMjAyMCDDoCAxMjoxNywgQ29k
cmluLkNpdWJvdGFyaXVAbWljcm9jaGlwLmNvbSBhIMOpY3JpdCA6DQo+PiBBdCB0aGlzIG1vbWVu
dCwgVFhFTVBUWSBpcyBjaGVja2VkIGJlZm9yZSBzZW5kaW5nIGRhdGEgb24gUlM0ODUgYW5kIElT
Tzc4MTYNCj4+IG1vZGVzLiBIb3dldmVyLCBUWEVNUFRZIGlzIHJpc2VuIHdoZW4gRklGTyAoaWYg
dXNlZCkgb3IgdGhlIFRyYW5zbWl0IFNoaWZ0DQo+PiBSZWdpc3RlciBhcmUgZW1wdHksIGV2ZW4g
dGhvdWdoIFRYUkRZIG1pZ2h0IGJlIHVwIGFuZCBjb250cm9sbGVyIGlzIGFibGUgdG8NCj4+IHJl
Y2VpdmUgZGF0YS4gU2luY2UgdGhlIGNvbnRyb2xsZXIgc2VuZHMgZGF0YSBvbmx5IHdoZW4gVFhF
TVBUWSBpcyByZWFkeSwNCj4+IG9uIFJTNDg1LCB3aGVuIERNQSBpcyBub3QgdXNlZCwgdGhlIFJU
UyBwaW4gaXMgZHJpdmVuIGxvdyBhZnRlciBlYWNoIGJ5dGUuDQo+PiBXaXRoIHRoaXMgcGF0Y2gs
IHRoZSBjaGFyYWN0ZXJzIHdpbGwgYmUgdHJhbnNtaXR0ZWQgd2hlbiBUWFJEWSBpcyB1cCBhbmQN
Cj4+IHNvLCBSVFMgcGluIHdpbGwgcmVtYWluIGhpZ2ggYmV0d2VlbiBieXRlcy4NCj4+IFRoZSBw
ZXJmb3JtYW5jZSBpbXByb3ZlbWVudCBvbiBSUzQ4NSBpcyBhYm91dCA4JSB3aXRoIGEgYmF1ZHJh
dGUgb2YgMzAwLg0KPj4NCj4+IFNpZ25lZC1vZmYtYnk6IENvZHJpbiBDaXVib3Rhcml1IDxjb2Ry
aW4uY2l1Ym90YXJpdUBtaWNyb2NoaXAuY29tPg0KPiBzZWVtcyBvayB0byBtZQ0KPiBBY2tlZC1i
eTogUmljaGFyZCBHZW5vdWQgPHJpY2hhcmQuZ2Vub3VkQGdtYWlsLmNvbT4NCj4gDQo+IE5COiBN
UyBleGNoYW5nZSBoYXMgYWRkZWQgc29tZSA9M0QgYW5kID0yMCBoZXJlIGFuZCB0aGVyZSwgYnV0
IGdpdCBhbQ0KPiBkb2Vzbid0IHNlZW1zIHRvIGJlIGJvdGhlcmVkIGJ5IHRoZW0uDQoNCldlIGFy
ZSBzdHJ1Z2dsaW5nIHdpdGggc29tZSBlLW1haWwgY2hhbmdlcywgc29ycnkgZm9yIHRoYXQuIFRo
YW5rcyBmb3IgDQpsZXR0aW5nIG1lIGtub3cgYWJvdXQgdGhpcy4NCg0KPj4gLS0tDQo+PiAgIGRy
aXZlcnMvdHR5L3NlcmlhbC9hdG1lbF9zZXJpYWwuYyB8IDI2ICsrKysrKysrKysrKysrKysrKyst
LS0tLS0tDQo+PiAgIDEgZmlsZSBjaGFuZ2VkLCAxOSBpbnNlcnRpb25zKCspLCA3IGRlbGV0aW9u
cygtKQ0KPj4NCj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3R0eS9zZXJpYWwvYXRtZWxfc2VyaWFs
LmMgYi9kcml2ZXJzL3R0eS9zZXJpYWwvYXRtZWxfc2VyaWFsLmMNCj4+IGluZGV4IGE4ZGM4YWY4
M2YzOS4uMTljOGZiOWZhYTM2IDEwMDY0NA0KPj4gLS0tIGEvZHJpdmVycy90dHkvc2VyaWFsL2F0
bWVsX3NlcmlhbC5jDQo+PiArKysgYi9kcml2ZXJzL3R0eS9zZXJpYWwvYXRtZWxfc2VyaWFsLmMN
Cj4+IEBAIC0zMTMsNyArMzEzLDExIEBAIHN0YXRpYyBpbnQgYXRtZWxfY29uZmlnX3JzNDg1KHN0
cnVjdCB1YXJ0X3BvcnQgKnBvcnQsDQo+Pg0KPj4gICAgICAgIGlmIChyczQ4NWNvbmYtPmZsYWdz
ICYgU0VSX1JTNDg1X0VOQUJMRUQpIHsNCj4+ICAgICAgICAgICAgICAgIGRldl9kYmcocG9ydC0+
ZGV2LCAiU2V0dGluZyBVQVJUIHRvIFJTNDg1XG4iKTsNCj4+IC0gICAgICAgICAgICAgYXRtZWxf
cG9ydC0+dHhfZG9uZV9tYXNrID0gQVRNRUxfVVNfVFhFTVBUWTsNCj4+ICsgICAgICAgICAgICAg
aWYgKHBvcnQtPnJzNDg1LmZsYWdzICYgU0VSX1JTNDg1X1JYX0RVUklOR19UWCkNCj4+ICsgICAg
ICAgICAgICAgICAgICAgICBhdG1lbF9wb3J0LT50eF9kb25lX21hc2sgPSBBVE1FTF9VU19UWFJE
WTsNCj4+ICsgICAgICAgICAgICAgZWxzZQ0KPj4gKyAgICAgICAgICAgICAgICAgICAgIGF0bWVs
X3BvcnQtPnR4X2RvbmVfbWFzayA9IEFUTUVMX1VTX1RYRU1QVFk7DQo+PiArDQo+PiAgICAgICAg
ICAgICAgICBhdG1lbF91YXJ0X3dyaXRlbChwb3J0LCBBVE1FTF9VU19UVEdSLA0KPj4gICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgcnM0ODVjb25mLT5kZWxheV9ydHNfYWZ0ZXJfc2Vu
ZCk7DQo+PiAgICAgICAgICAgICAgICBtb2RlIHw9IEFUTUVMX1VTX1VTTU9ERV9SUzQ4NTsNCj4+
IEBAIC04MzEsNyArODM1LDcgQEAgc3RhdGljIHZvaWQgYXRtZWxfdHhfY2hhcnMoc3RydWN0IHVh
cnRfcG9ydCAqcG9ydCkNCj4+ICAgICAgICBzdHJ1Y3QgYXRtZWxfdWFydF9wb3J0ICphdG1lbF9w
b3J0ID0gdG9fYXRtZWxfdWFydF9wb3J0KHBvcnQpOw0KPj4NCj4+ICAgICAgICBpZiAocG9ydC0+
eF9jaGFyICYmDQo+PiAtICAgICAgICAgKGF0bWVsX3VhcnRfcmVhZGwocG9ydCwgQVRNRUxfVVNf
Q1NSKSAmIGF0bWVsX3BvcnQtPnR4X2RvbmVfbWFzaykpIHsNCj4+ICsgICAgICAgICAoYXRtZWxf
dWFydF9yZWFkbChwb3J0LCBBVE1FTF9VU19DU1IpICYgQVRNRUxfVVNfVFhSRFkpKSB7DQo+PiAg
ICAgICAgICAgICAgICBhdG1lbF91YXJ0X3dyaXRlX2NoYXIocG9ydCwgcG9ydC0+eF9jaGFyKTsN
Cj4+ICAgICAgICAgICAgICAgIHBvcnQtPmljb3VudC50eCsrOw0KPj4gICAgICAgICAgICAgICAg
cG9ydC0+eF9jaGFyID0gMDsNCj4+IEBAIC04MzksOCArODQzLDcgQEAgc3RhdGljIHZvaWQgYXRt
ZWxfdHhfY2hhcnMoc3RydWN0IHVhcnRfcG9ydCAqcG9ydCkNCj4+ICAgICAgICBpZiAodWFydF9j
aXJjX2VtcHR5KHhtaXQpIHx8IHVhcnRfdHhfc3RvcHBlZChwb3J0KSkNCj4+ICAgICAgICAgICAg
ICAgIHJldHVybjsNCj4+DQo+PiAtICAgICB3aGlsZSAoYXRtZWxfdWFydF9yZWFkbChwb3J0LCBB
VE1FTF9VU19DU1IpICYNCj4+IC0gICAgICAgICAgICBhdG1lbF9wb3J0LT50eF9kb25lX21hc2sp
IHsNCj4+ICsgICAgIHdoaWxlIChhdG1lbF91YXJ0X3JlYWRsKHBvcnQsIEFUTUVMX1VTX0NTUikg
JiBBVE1FTF9VU19UWFJEWSkgew0KPj4gICAgICAgICAgICAgICAgYXRtZWxfdWFydF93cml0ZV9j
aGFyKHBvcnQsIHhtaXQtPmJ1Zlt4bWl0LT50YWlsXSk7DQo+PiAgICAgICAgICAgICAgICB4bWl0
LT50YWlsID0gKHhtaXQtPnRhaWwgKyAxKSAmIChVQVJUX1hNSVRfU0laRSAtIDEpOw0KPj4gICAg
ICAgICAgICAgICAgcG9ydC0+aWNvdW50LnR4Kys7DQo+PiBAQCAtODUxLDEwICs4NTQsMjAgQEAg
c3RhdGljIHZvaWQgYXRtZWxfdHhfY2hhcnMoc3RydWN0IHVhcnRfcG9ydCAqcG9ydCkNCj4+ICAg
ICAgICBpZiAodWFydF9jaXJjX2NoYXJzX3BlbmRpbmcoeG1pdCkgPCBXQUtFVVBfQ0hBUlMpDQo+
PiAgICAgICAgICAgICAgICB1YXJ0X3dyaXRlX3dha2V1cChwb3J0KTsNCj4+DQo+PiAtICAgICBp
ZiAoIXVhcnRfY2lyY19lbXB0eSh4bWl0KSkNCj4+ICsgICAgIGlmICghdWFydF9jaXJjX2VtcHR5
KHhtaXQpKSB7DQo+PiArICAgICAgICAgICAgIC8qIHdlIHN0aWxsIGhhdmUgY2hhcmFjdGVycyB0
byB0cmFuc21pdCwgc28gd2Ugc2hvdWxkIGNvbnRpbnVlDQo+PiArICAgICAgICAgICAgICAqIHRy
YW5zbWl0dGluZyB0aGVtIHdoZW4gVFggaXMgcmVhZHksIHJlZ2FyZGxlc3Mgb2YNCj4+ICsgICAg
ICAgICAgICAgICogbW9kZSBvciBkdXBsZXhpdHkNCj4+ICsgICAgICAgICAgICAgICovDQo+PiAr
ICAgICAgICAgICAgIGF0bWVsX3BvcnQtPnR4X2RvbmVfbWFzayB8PSBBVE1FTF9VU19UWFJEWTsN
Cj4+ICsNCj4+ICAgICAgICAgICAgICAgIC8qIEVuYWJsZSBpbnRlcnJ1cHRzICovDQo+PiAgICAg
ICAgICAgICAgICBhdG1lbF91YXJ0X3dyaXRlbChwb3J0LCBBVE1FTF9VU19JRVIsDQo+PiAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICBhdG1lbF9wb3J0LT50eF9kb25lX21hc2spOw0K
Pj4gKyAgICAgfSBlbHNlIHsNCj4+ICsgICAgICAgICAgICAgaWYgKGF0bWVsX3VhcnRfaXNfaGFs
Zl9kdXBsZXgocG9ydCkpDQo+PiArICAgICAgICAgICAgICAgICAgICAgYXRtZWxfcG9ydC0+dHhf
ZG9uZV9tYXNrICY9IH5BVE1FTF9VU19UWFJEWTsNCj4+ICsgICAgIH0NCj4+ICAgfQ0KPj4NCj4+
ICAgc3RhdGljIHZvaWQgYXRtZWxfY29tcGxldGVfdHhfZG1hKHZvaWQgKmFyZykNCj4+IEBAIC0y
NTI1LDggKzI1MzgsNyBAQCBzdGF0aWMgaW50IGF0bWVsX2luaXRfcG9ydChzdHJ1Y3QgYXRtZWxf
dWFydF9wb3J0ICphdG1lbF9wb3J0LA0KPj4gICAgICAgICAqIFVzZSBUWEVNUFRZIGZvciBpbnRl
cnJ1cHQgd2hlbiByczQ4NSBvciBJU083ODE2IGVsc2UgVFhSRFkgb3INCj4+ICAgICAgICAgKiBF
TkRUWHxUWEJVRkUNCj4+ICAgICAgICAgKi8NCj4+IC0gICAgIGlmIChwb3J0LT5yczQ4NS5mbGFn
cyAmIFNFUl9SUzQ4NV9FTkFCTEVEIHx8DQo+PiAtICAgICAgICAgcG9ydC0+aXNvNzgxNi5mbGFn
cyAmIFNFUl9JU083ODE2X0VOQUJMRUQpDQo+PiArICAgICBpZiAoYXRtZWxfdWFydF9pc19oYWxm
X2R1cGxleChwb3J0KSkNCj4+ICAgICAgICAgICAgICAgIGF0bWVsX3BvcnQtPnR4X2RvbmVfbWFz
ayA9IEFUTUVMX1VTX1RYRU1QVFk7DQo+PiAgICAgICAgZWxzZSBpZiAoYXRtZWxfdXNlX3BkY190
eChwb3J0KSkgew0KPj4gICAgICAgICAgICAgICAgcG9ydC0+Zmlmb3NpemUgPSBQRENfQlVGRkVS
X1NJWkU7DQo+Pg0KPiANCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LWFybS1rZXJuZWwK
