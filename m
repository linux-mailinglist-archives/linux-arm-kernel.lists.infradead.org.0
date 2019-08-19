Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58E1A920A0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 11:46:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u7ANPH4HHATtuIx4FaZE4BRyw9QAjoRZB0TWjTV3ZkU=; b=M5fQ76eD413rkt
	QrQDP/88l2V2yy30iCG4hUGZYbWUo54F3w2Q2s0wDArz+U1HNuqja3MWEDUsljRlmvvKrBoX9jbLa
	7TmVEiu9cxqfudyZBtCo6Hqtcd267xFQab3bJQn6fTTjcMfp+AxScPNvQN8NHZZgns44C7AvhU2Sq
	6M2MgIIqhYflS4kGX9ghagrPPu8Rz567j7GqbHjb4f1Kn27gwE64HU5/GHVeLNvWa73sbhO23X4+1
	fjB/aa0RDyEmTGR+XYTHNqx5o7aX+F6BLLlArQDBqJ73bJFe+tYs5o7mRS7E6QaQ4glJur4GGcOiA
	TjbKhsj9KoLc1/74B1Fw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzeFK-0001Cf-LN; Mon, 19 Aug 2019 09:46:38 +0000
Received: from esa3.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzeF1-0001C1-5d
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 09:46:20 +0000
Received-SPF: Pass (esa3.microchip.iphmx.com: domain of
 Nicolas.Ferre@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Nicolas.Ferre@microchip.com";
 x-sender="Nicolas.Ferre@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa3.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Nicolas.Ferre@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa3.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Nicolas.Ferre@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: DDCquKh3MuszV6EqB5T0ZSQ/dpEpvogk+GkFBnrRA3lmbild8K5ykL3tAXoure2MVVTiCkhrgy
 AvW2XDJZQjFhqkLqtbdJ4ABfcCqsawP3/ZDRtUna6yNIrKLlkVuLdvsfFEv9a/dMzLAoFy1iF2
 EvdoJb4hMB2RB+Hafpzggps3StBjdv7uOgUExdM1aCir8p42qEun1HB2L+PfhZ3SLmjY9waZW6
 tvM1t9tvxehIf3Vz5SL/8+ZqbWO2LC/RzNlwM8LySSabFHP3UlqVj+2/R5Es/bs8pOabCdYZUx
 4nc=
X-IronPort-AV: E=Sophos;i="5.64,403,1559545200"; d="scan'208";a="45738523"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 19 Aug 2019 02:46:17 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 19 Aug 2019 02:46:17 -0700
Received: from NAM01-BY2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 19 Aug 2019 02:46:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=S4cKb/7PIDbu9dsGyhAT1kS32deq56R4DmNR1MAsNrXCu79QGHg1vCTAts9ghFIG1gNh82Dg5JMwx0mvpnP432+FkmBEwWloa0/m6d7sZUuOHP1ziNd2xtaGbcLRJ9B9jArAFFmEoilk5BYswAqa2rjma6QScWpE/pGWb0QrpI/E0fbQT9ToA0uOlnBh6TtJ59inWq0AOWVBrdvNSOjbvDbp1oR/VcY5Ma+Ct6eyik9DeH3LzXzAAOf7OcKwsLmDw0i7nUQ8W8xVCmPSSxk/bIhjyHMqQy5CfnOtHgQv3RF96YuB8s9U/bt4Ajq2YXrwXhkM4qvYkd6IcSlfotcnEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CjthBnwzpPIetsCqEuHFw7sh4cAPWNbK9I1vEKZmq/o=;
 b=c0I/9xHefrmMMPVNqQOaTmKHKUSJPiZnnlpRkkU1ijYV3/oRQcUVRSEtBfoqQTVqIL2HzVFDZjYSpXSC5TUMNbJPXViQ9vkr6LHEmn4/4h7tSbqMgZFPD3bNeEZZIjFT8h1AuCfvtAAPwEwSymCoglhTx7dXEE/lx5A9YEyiZZZ0rTulIQuY93Wd6Zwa1xXbTT+P/yRS9MYFZbbioIvZRKI5nBhI0sqCU5ge3HY8VCZ9n193qBP3LQO2OVP1PyqbYPTvB+2D0ykY2cInwC5Wbg4KvGdofFdn3HOM8xo4nure5+7vnHMRTeJDbEdS7gyIERFhHcS4mBHMzTX0aCcPVA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CjthBnwzpPIetsCqEuHFw7sh4cAPWNbK9I1vEKZmq/o=;
 b=P441dcPSwHEs/N79/MGo3g9K6CTjI3TU9ZkBxSnUUBcIQGGvyumFThUpOo0wkLpdgVtdKIIFeU/CUqV8ZvoWiSw/jwJqOkK/ybwnyu8UFfnl/9nZ77iaocpPMOmHW3egv0jItoPaV6mOEKai+GetP2NxjaiDTgFji6cDrM+j0uI=
Received: from MWHPR11MB1662.namprd11.prod.outlook.com (10.172.55.15) by
 MWHPR11MB1325.namprd11.prod.outlook.com (10.169.230.149) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.16; Mon, 19 Aug 2019 09:46:16 +0000
Received: from MWHPR11MB1662.namprd11.prod.outlook.com
 ([fe80::410a:9d4b:b1df:2134]) by MWHPR11MB1662.namprd11.prod.outlook.com
 ([fe80::410a:9d4b:b1df:2134%12]) with mapi id 15.20.2178.018; Mon, 19 Aug
 2019 09:46:16 +0000
From: <Nicolas.Ferre@microchip.com>
To: <Claudiu.Beznea@microchip.com>, <uwe@kleine-koenig.org>,
 <thierry.reding@gmail.com>
Subject: Re: [PATCH 1/3] pwm: atmel: Add link to reference manual
Thread-Topic: [PATCH 1/3] pwm: atmel: Add link to reference manual
Thread-Index: AQHVU7JDiUnwTszSTkGrZWj0MVpKnacCOOSAgAAFkoA=
Date: Mon, 19 Aug 2019 09:46:15 +0000
Message-ID: <fa7be631-49fc-392b-c760-63010e9b2e66@microchip.com>
References: <20190815214133.11134-1-uwe@kleine-koenig.org>
 <488f7c7e-6de5-f860-4a48-8f8a67cdcbc6@microchip.com>
In-Reply-To: <488f7c7e-6de5-f860-4a48-8f8a67cdcbc6@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: LO2P265CA0108.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:c::24) To MWHPR11MB1662.namprd11.prod.outlook.com
 (2603:10b6:301:e::15)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [213.41.198.74]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 50e88918-e962-4be9-a138-08d7248a1413
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:MWHPR11MB1325; 
x-ms-traffictypediagnostic: MWHPR11MB1325:
x-ms-exchange-purlcount: 2
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR11MB13258801800EAE7370ABDEA4E0A80@MWHPR11MB1325.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0134AD334F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(366004)(39860400002)(136003)(346002)(376002)(199004)(189003)(31696002)(966005)(4326008)(478600001)(25786009)(31686004)(6246003)(76176011)(14454004)(229853002)(81156014)(81166006)(8936002)(52116002)(99286004)(7736002)(6116002)(305945005)(316002)(2906002)(54906003)(110136005)(3846002)(71200400001)(71190400001)(26005)(66476007)(66556008)(64756008)(66446008)(66946007)(86362001)(486006)(66066001)(6436002)(5660300002)(11346002)(2616005)(446003)(476003)(53936002)(6306002)(6512007)(6486002)(8676002)(36756003)(186003)(102836004)(256004)(53546011)(6506007)(386003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MWHPR11MB1325;
 H:MWHPR11MB1662.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: DGEOL4ZiYtFYQvB5Kp5EXfNW+usFbjtAtXxe9iMArPVVFjpwSuFhwIDT5PAokCDxEV+U5eb7XnTm4aSHnbdxwZAgetpGQGYfVUspyTjuufR5EWdas5Nn3LKrR78p2454+IDl0ec/MjXFP2/i2fS2qr9Sjd52zHvIQI1Su4A+N/c/yY7a2H/s3XqpcdJyuuP07y6rMcr5LGQUDhDHIuTyODYvUNEPZiHFubVWcgULjwy3YNA/UJE9nRY9IRyovriAXaaKagfPkace1DPRZ0kVoO4Gt9ZA+XGV8LzVa3FOkBY734ZlX4CCOmBB7p2k12odxl3JR/6pJrBKI6iR+A28ZAagFbm19Tk558Caj01vt19Fugjc9L4qFXvJhdGT2DDM3S/xmpev2Qw6N0jEXKr8X78sRGd9ILQfDMtpStG32aU=
Content-ID: <15A71F9B5CDD5541854C287DF9D4952C@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 50e88918-e962-4be9-a138-08d7248a1413
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Aug 2019 09:46:15.9501 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xYCZ8Xzz4x8pOvF6Twb+H38ZwdPFSOk2oPAK5BytgVJgJMgxs3FwuA81b6fogSTBe/nZCOWTrxqL2vBEMUVfcpFACeyVyEIm2icCJqEuCiY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1325
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_024619_327885_FB23AD5C 
X-CRM114-Status: GOOD (  17.20  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.153.233 listed in list.dnswl.org]
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
Cc: linux-pwm@vger.kernel.org, alexandre.belloni@bootlin.com,
 Ludovic.Desroches@microchip.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTkvMDgvMjAxOSBhdCAxMToyNiwgQ2xhdWRpdSBCZXpuZWEgLSBNMTgwNjMgd3JvdGU6DQo+
IA0KPiANCj4gT24gMTYuMDguMjAxOSAwMDo0MSwgVXdlIEtsZWluZS1Lw7ZuaWcgd3JvdGU6DQo+
PiBUaGUgcmVmZXJlbmNlIG1hbnVhbCBmb3IgYXQgbGVhc3Qgb25lIG9mIHRoZSBzdXBwb3J0ZWQg
dmFyaWFudHMgaXMNCj4+IHB1YmxpY2x5IGF2YWlsYWJsZS4gQWRkIGEgbGluayB0byBpdCBhdCB0
aGUgdG9wIG9mIHRoZSBkcml2ZXIuDQo+Pg0KPj4gU2lnbmVkLW9mZi1ieTogVXdlIEtsZWluZS1L
w7ZuaWcgPHV3ZUBrbGVpbmUta29lbmlnLm9yZz4NCj4+IC0tLQ0KPj4gICBkcml2ZXJzL3B3bS9w
d20tYXRtZWwuYyB8IDMgKysrDQo+PiAgIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKykN
Cj4+DQo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9wd20vcHdtLWF0bWVsLmMgYi9kcml2ZXJzL3B3
bS9wd20tYXRtZWwuYw0KPj4gaW5kZXggZTVlMWVhZjM3MmZhLi5hYzNkN2EyMDBiOWUgMTAwNjQ0
DQo+PiAtLS0gYS9kcml2ZXJzL3B3bS9wd20tYXRtZWwuYw0KPj4gKysrIGIvZHJpdmVycy9wd20v
cHdtLWF0bWVsLmMNCj4+IEBAIC00LDYgKzQsOSBAQA0KPj4gICAgKg0KPj4gICAgKiBDb3B5cmln
aHQgKEMpIDIwMTMgQXRtZWwgQ29ycG9yYXRpb24NCj4+ICAgICoJCSBCbyBTaGVuIDx2b2ljZS5z
aGVuQGF0bWVsLmNvbT4NCj4+ICsgKg0KPj4gKyAqIFJlZmVyZW5jZSBtYW51YWwgZm9yICJhdG1l
bCxhdDkxc2FtOXJsLXB3bSI6DQo+PiArICogICBodHRwOi8vd3cxLm1pY3JvY2hpcC5jb20vZG93
bmxvYWRzL2VuL0RldmljZURvYy9BdG1lbC0xMTAzMi0zMi1iaXQtQVJNOTI2RUotUy1NaWNyb2Nv
bnRyb2xsZXItU0FNOUcyNV9EYXRhc2hlZXQucGRmDQo+IA0KPiBFdmVuIFNBTTlHMjUgUFdNIGhh
dmUgYWxtb3N0IHRoZSBzYW1lIHJlZ2lzdGVycyB3aXRoIEFUOTFTQU05UkwsIHRoZQ0KPiBkYXRh
c2hlZXQgZm9yIEFUOTFTQU05UkwgaXMgbG9jYXRlZCBhdDoNCj4gaHR0cDovL3d3MS5taWNyb2No
aXAuY29tL2Rvd25sb2Fkcy9lbi9EZXZpY2VEb2MvZG9jNjI4OS5wZGYNCj4gTWF5YmUgd2Ugc2hv
dWxkIHVzZSB0aGlzIG9uZS4NCj4gDQo+IEknbSBub3QgZmFtaWxpYXIgd2l0aCBoYXZpbmcgcmVm
ZXJlbmNlIG1hbnVhbHMgaW4gdGhpcyBwYXJ0IG9mIHRoZSBkcml2ZXINCj4gYnV0IGlmIHdlIGFy
ZSBkb2luZyBzbyB3b3VsZCBpdCBiZSBmZWFzaWJsZSB0byBhbHNvIGhhdmUgbGlua3MgZm9yIHRo
ZSByZXN0DQo+IFNvQ3MgdGhhdCBpbnRyb2R1Y2VzIG5ldyBQV00gdmVyc2lvbnM/IEknbSB0aGlu
a2luZyBoZXJlIGF0IGFsbCB0aGUNCj4gY29tcGF0aWJsZXMgZnJvbSBhdG1lbF9wd21fZHRfaWRz
W106DQo+IC0gYXRtZWwsc2FtYTVkMy1wd20NCj4gLSBhdG1lbCxzYW1hNWQyLXB3bQ0KDQpUaGVz
ZSBkb2N1bWVudHMgYXJlIGxpc3RlZCBoZXJlOg0KRG9jdW1lbnRhdGlvbi9hcm0vbWljcm9jaGlw
LnJzdA0KYW5kIG11c3QgYmUgbWFpbnRhaW5lZCBpZiBVUkwgYXJlIG91dCBvZiBkYXRlLiBJIGRv
bid0IGJlbGlldmUgdGhhdCB3ZSANCnNob3VsZCBhZGQgYW5vdGhlciByZWZlcmVuY2UgdG8gdGhl
bSBpbiB0aGlzIGRyaXZlciAoYW5kIG90aGVyIHNvdXJjZSBjb2RlKS4NClJlZmVycmluZyB0byB0
aGUgZGF0YXNoZWV0IHBvaW50ZWQgb3V0IGJ5IHRoZSBtaWNyb2NoaXAucnN0IGZpbGUgaXMgDQpj
ZXJ0YWlubHkgdGhlIHdheSB0byBnby4uLg0KDQpSZWdhcmRzLA0KICAgTmljb2xhcw0KDQoNCj4g
LSBtaWNyb2NoaXAsc2FtOXg2MC1wd20NCj4gDQo+IEFsdGhvdWdoIHRoZSBsYXN0IG9uZSBpcyBu
b3QgYWxyZWFkeSBwdWJsaWMuDQo+IA0KPj4gICAgKi8NCj4+ICAgDQo+PiAgICNpbmNsdWRlIDxs
aW51eC9jbGsuaD4NCj4+DQoNCg0KLS0gDQpOaWNvbGFzIEZlcnJlDQpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcg
bGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
