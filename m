Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 088FD127BA1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 14:26:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p5OCsgT01Spt+CRi7yNupPJFC3xq27Q/7H4SU+qEEeg=; b=md4qY2wzVQbmJl
	NWGfJdzHc3s55WORoRJVF11tyXylKokRRff/eLWgcbpzx2gzzs4eM2zBWucBmgSHPa3H2yg2vCKrN
	4r2WBSaYD2ZYqdzxg6cmpd6nkofb9TY/sySLqnS9P0nxMUHkrCC15Cz9uyc4s2LwO63ZzuyQKTo75
	9CLR0FPA6OD1cvLlJAmWrI/duhqQEz3LmdH+b/dT+2AYUpDfSFGScHuAt3BVtnDccHU5zuN0k3n2s
	RM9ZuzFtoPYhCPof8YEqaIM0/uldd80ScD9otwasH1C68piBYqnT5qkcP5lpa5QXJsGB94S1UymU9
	gwDLyQVcptTbXI44wzig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiIIe-0004WF-Qz; Fri, 20 Dec 2019 13:26:36 +0000
Received: from esa4.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiIIV-0004Vs-KY
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Dec 2019 13:26:30 +0000
Received-SPF: Pass (esa4.microchip.iphmx.com: domain of
 Nicolas.Ferre@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
 envelope-from="Nicolas.Ferre@microchip.com";
 x-sender="Nicolas.Ferre@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa4.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
 envelope-from="Nicolas.Ferre@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa4.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Nicolas.Ferre@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: 0a+qBPqdzu4C6fXU7Hp14zmpHyMuU37LCC0gjL3e0yl6c70ysV3UdBilpIO+mDjxZNA+jF0CPO
 s3aqQ30JYhz7rjcjPvBAzz+tnm+aMOmthE80el2YE50y0kTTDM0NlURI6sVRUC5m2RKPc5+yV8
 UrcENRMiq8ZOX3VP2122FQwRkaIbzuMwzPszqvBiNJTfCePVuHHlFzHobZ2KfgVvUXG6fSdKW9
 VB0+gxlNW0U+U3ryWFoM2vW5ing/YqvMjGp3bsmBdiEvfwZZBw01TpKBo80p3e/CD1VAwHSeR4
 UPs=
X-IronPort-AV: E=Sophos;i="5.69,336,1571727600"; d="scan'208";a="59163051"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 20 Dec 2019 06:26:25 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 20 Dec 2019 06:26:25 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 20 Dec 2019 06:26:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VSrBPPVJ2HoSR9hRU83MphOZFMTpxwe+Us9FNFgzd2EaWLIl+SVmBBKrTFOvSBjMi37xB7LkBBLHpwqt6DfIuHBokMMc+5ZUKoqS2y8uCxIpV4DkR5bQ+f3IAuJR7J8uUR6i5sx0EDzlGbcTAT6hWUP0Mz8jqeCtil4tPrjOmgtnifN9fQ5GH1h5sfm5Jf2lEOFo+8TG4h7oDgm9uzdNnsk3y64eoUpFBDk3UeKgVJzo6U258gCrpeHXPhGWyzJy4P20Hj3/rqBsBiuNnnnTxIhZc/pM9FWA2WMWydIz6MKNFE76UWtndLt+4M3Bqn7Mbdbnf1k6CUgT316YtaWvnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RyhHatB6wjeyIwFeDI0qnJX5J97fkuiZkXEV/H7GIZE=;
 b=EcAILh6vJuqWQU5my+h/5iEiRN8pzYNxyaVxwS51AeybQwkjIwxicFqrcBMS0FtjhdXDDhGRaaXdpo/6Xg33j5nzXgL7gQzq6TJcX/qGX6AhJ6SwAZNmlqycNansqKBdALqoXsx4zhpJqCIZw8fsFFJHcDP5UGDBEHIAy/GjM4wbsGKAf81MstDk0P4o9LFG7YTkYM3KZAQ6309cRI7D2Qh53QCewHoNPlv9dcekKYT5jOaClMXtN7GKUFT4uPKc5gdXZHVuhnZry7lZPi7al9MXiBbEDyxieNmil3DnUlRsGvIoe3i2ZXaqpbGCmIsAZK/jNeAePSRwivnKGq7eCg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RyhHatB6wjeyIwFeDI0qnJX5J97fkuiZkXEV/H7GIZE=;
 b=fMcLFsh2oa71gcun/WiRjfDkspv+nFwvYmszP83mctkvGrD5dLl2OesJgYO/aufOtAfyVenPcX+B7aGWK76R1wyukst1Ac7dnzsXJ/K4qLNDSTpYOsqbhJZWZ2/CpYwFpGlLLHKl6ulWVhR2CuBlceYaUOfXFaWvjDk1DlNGH5Y=
Received: from SN6PR11MB2830.namprd11.prod.outlook.com (52.135.91.21) by
 SN6PR11MB3007.namprd11.prod.outlook.com (52.135.126.139) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2559.16; Fri, 20 Dec 2019 13:26:23 +0000
Received: from SN6PR11MB2830.namprd11.prod.outlook.com
 ([fe80::9439:53a6:d896:d176]) by SN6PR11MB2830.namprd11.prod.outlook.com
 ([fe80::9439:53a6:d896:d176%7]) with mapi id 15.20.2559.012; Fri, 20 Dec 2019
 13:26:23 +0000
From: <Nicolas.Ferre@microchip.com>
To: <linux-arm-kernel@lists.infradead.org>, <kamel.bouhara@bootlin.com>,
 <sre@kernel.org>, <Ludovic.Desroches@microchip.com>,
 <alexandre.belloni@bootlin.com>
Subject: Re: [PATCH v5 2/2] power: reset: at91-reset: export reset reason
 through sysfs
Thread-Topic: [PATCH v5 2/2] power: reset: at91-reset: export reset reason
 through sysfs
Thread-Index: AQHVtyANa409NgnQRkK+4gl1SpeQ0qfDA+KA
Date: Fri, 20 Dec 2019 13:26:23 +0000
Message-ID: <86fc52bd1844de137cf56d48f276f05e61db9d9c.camel@microchip.com>
References: <20191220102638.154206-1-kamel.bouhara@bootlin.com>
 <20191220102638.154206-2-kamel.bouhara@bootlin.com>
In-Reply-To: <20191220102638.154206-2-kamel.bouhara@bootlin.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [213.41.198.74]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6f39e064-0f37-4796-3ad0-08d78550353a
x-ms-traffictypediagnostic: SN6PR11MB3007:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SN6PR11MB3007FA21F6ABA22EE05F5979E02D0@SN6PR11MB3007.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:369;
x-forefront-prvs: 025796F161
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(136003)(366004)(376002)(346002)(396003)(199004)(189003)(2616005)(5660300002)(36756003)(186003)(6512007)(86362001)(71200400001)(66574012)(110136005)(316002)(6506007)(26005)(478600001)(8676002)(81156014)(81166006)(4326008)(2906002)(91956017)(66946007)(76116006)(66476007)(6486002)(64756008)(66556008)(66446008)(8936002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:SN6PR11MB3007;
 H:SN6PR11MB2830.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 4zzEZb+i2jdqzvETKLa8SmbW9M1hqOJqccrEhbN9ZkF7Zk1/nNyqSi8y2g+xQ11P8WmrbXOe/p1d8ZTSmqwB+8O0e53jSykX7M//nkAInh1XLhA3AMNvT+kVV775q2bqVTiZ+dKKw0KU74F/tcP3p04fpW9IDeGsVbbks+0IfoxLS5rE6AA3NyQ/8l+pdBS3sT+nsQb9quVdC5AJzG45yYbNxP6Pw3cw1aoK0/aAiGfUaSksW7VxrBj+7Ui1t0RKGL5jBXnZzbwBipYP01qQvPJIq54XUe8FbBHN0bROaDKsU3Q9KpQ5Ww9F9Xrtm9nhSqqvUu492POaR1mRG3gFf0VDAWev3ImzBtWzkL6bVLHzAt9mLZjQ6RDJCuoWGOtvZBZoHwa/LtPXJWuX7qjlb37P7CY5LXTIDk5OjK/XC43h5R5Hd/SwjvahNe74aQmF
Content-ID: <551FD11385911042BA251D7FAF12F2BB@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 6f39e064-0f37-4796-3ad0-08d78550353a
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Dec 2019 13:26:23.1981 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KzztLalKjrGhzVyzNWxdOa05yT4xqpoZUunTyPRm7r9z3B+NR95RoLVXGDCiciEaS8Ow2tP1AVf8QJHryRyiZZdr4osJNlTRzAdSXdvHIBk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB3007
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_052627_707110_8C90B680 
X-CRM114-Status: GOOD (  15.35  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.154.123 listed in list.dnswl.org]
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

TGUgdmVuZHJlZGkgMjAgZMOpY2VtYnJlIDIwMTkgw6AgMTE6MjYgKzAxMDAsIEthbWVsIEJvdWhh
cmEgYSDDqWNyaXQgOg0KPiBFWFRFUk5BTCBFTUFJTDogRG8gbm90IGNsaWNrIGxpbmtzIG9yIG9w
ZW4gYXR0YWNobWVudHMgdW5sZXNzIHlvdSBrbm93IHRoZQ0KPiBjb250ZW50IGlzIHNhZmUNCj4g
DQo+IEV4cG9ydCB0aGUgcmVzZXQgcmVhc29uIHRocm91Z2ggYSBzeXNmcyBmaWxlIHNvIGl0IGNh
biBiZSBleHBsb2l0ZWQgYnkNCj4gdXNlciBzcGFjZSBhcHBsaWNhdGlvbi4NCj4gDQo+ICAkIGNh
dCAvc3lzL2RldmljZXMvcGxhdGZvcm0vYWhiL2FoYjphcGIvZjgwNDgwMDAucnN0Yy9wb3dlcl9v
bl9yZWFzb24NCj4gIFJUQyB3YWtldXANCj4gDQo+IFNpZ25lZC1vZmYtYnk6IEthbWVsIEJvdWhh
cmEgPGthbWVsLmJvdWhhcmFAYm9vdGxpbi5jb20+DQoNCkFja2VkLWJ5OiBOaWNvbGFzIEZlcnJl
IDxuaWNvbGFzLmZlcnJlQG1pY3JvY2hpcC5jb20+DQoNCj4gLS0tDQo+ICBkcml2ZXJzL3Bvd2Vy
L3Jlc2V0L2F0OTEtcmVzZXQuYyB8IDQ0ICsrKysrKysrKysrKysrKysrKysrKystLS0tLS0tLS0t
DQo+ICAxIGZpbGUgY2hhbmdlZCwgMzEgaW5zZXJ0aW9ucygrKSwgMTMgZGVsZXRpb25zKC0pDQo+
IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9wb3dlci9yZXNldC9hdDkxLXJlc2V0LmMgYi9kcml2
ZXJzL3Bvd2VyL3Jlc2V0L2F0OTEtDQo+IHJlc2V0LmMNCj4gaW5kZXggZDk0ZTMyNjdjM2I2Li5j
MTYyNTU3MmYwN2MgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvcG93ZXIvcmVzZXQvYXQ5MS1yZXNl
dC5jDQo+ICsrKyBiL2RyaXZlcnMvcG93ZXIvcmVzZXQvYXQ5MS1yZXNldC5jDQo+IEBAIC0xNyw3
ICsxNyw3IEBADQo+ICAjaW5jbHVkZSA8bGludXgvb2ZfYWRkcmVzcy5oPg0KPiAgI2luY2x1ZGUg
PGxpbnV4L3BsYXRmb3JtX2RldmljZS5oPg0KPiAgI2luY2x1ZGUgPGxpbnV4L3JlYm9vdC5oPg0K
PiAtDQo+ICsjaW5jbHVkZSA8bGludXgvcG93ZXIvcG93ZXJfb25fcmVhc29uLmg+DQo+ICAjaW5j
bHVkZSA8c29jL2F0OTEvYXQ5MXNhbTlfZGRyc2RyLmg+DQo+ICAjaW5jbHVkZSA8c29jL2F0OTEv
YXQ5MXNhbTlfc2RyYW1jLmg+DQo+IA0KPiBAQCAtMTQ0LDQyICsxNDQsNDIgQEAgc3RhdGljIGlu
dCBzYW14N19yZXN0YXJ0KHN0cnVjdCBub3RpZmllcl9ibG9jayAqdGhpcywNCj4gdW5zaWduZWQg
bG9uZyBtb2RlLA0KPiAgICAgICAgIHJldHVybiBOT1RJRllfRE9ORTsNCj4gIH0NCj4gDQo+IC1z
dGF0aWMgdm9pZCBfX2luaXQgYXQ5MV9yZXNldF9zdGF0dXMoc3RydWN0IHBsYXRmb3JtX2Rldmlj
ZSAqcGRldikNCj4gK3N0YXRpYyBjb25zdCBjaGFyICphdDkxX3Jlc2V0X3JlYXNvbihzdHJ1Y3Qg
cGxhdGZvcm1fZGV2aWNlICpwZGV2KQ0KPiAgew0KPiAgICAgICAgIGNvbnN0IGNoYXIgKnJlYXNv
bjsNCj4gICAgICAgICB1MzIgcmVnID0gcmVhZGwoYXQ5MV9yc3RjX2Jhc2UgKyBBVDkxX1JTVENf
U1IpOw0KPiANCj4gICAgICAgICBzd2l0Y2ggKChyZWcgJiBBVDkxX1JTVENfUlNUVFlQKSA+PiA4
KSB7DQo+ICAgICAgICAgY2FzZSBSRVNFVF9UWVBFX0dFTkVSQUw6DQo+IC0gICAgICAgICAgICAg
ICByZWFzb24gPSAiZ2VuZXJhbCByZXNldCI7DQo+ICsgICAgICAgICAgICAgICByZWFzb24gPSBQ
T1dFUl9PTl9SRUFTT05fR0VORVJBTDsNCj4gICAgICAgICAgICAgICAgIGJyZWFrOw0KPiAgICAg
ICAgIGNhc2UgUkVTRVRfVFlQRV9XQUtFVVA6DQo+IC0gICAgICAgICAgICAgICByZWFzb24gPSAi
d2FrZXVwIjsNCj4gKyAgICAgICAgICAgICAgIHJlYXNvbiA9IFBPV0VSX09OX1JFQVNPTl9SVEM7
DQo+ICAgICAgICAgICAgICAgICBicmVhazsNCj4gICAgICAgICBjYXNlIFJFU0VUX1RZUEVfV0FU
Q0hET0c6DQo+IC0gICAgICAgICAgICAgICByZWFzb24gPSAid2F0Y2hkb2cgcmVzZXQiOw0KPiAr
ICAgICAgICAgICAgICAgcmVhc29uID0gUE9XRVJfT05fUkVBU09OX1dBVENIRE9HOw0KPiAgICAg
ICAgICAgICAgICAgYnJlYWs7DQo+ICAgICAgICAgY2FzZSBSRVNFVF9UWVBFX1NPRlRXQVJFOg0K
PiAtICAgICAgICAgICAgICAgcmVhc29uID0gInNvZnR3YXJlIHJlc2V0IjsNCj4gKyAgICAgICAg
ICAgICAgIHJlYXNvbiA9IFBPV0VSX09OX1JFQVNPTl9TT0ZUV0FSRTsNCj4gICAgICAgICAgICAg
ICAgIGJyZWFrOw0KPiAgICAgICAgIGNhc2UgUkVTRVRfVFlQRV9VU0VSOg0KPiAtICAgICAgICAg
ICAgICAgcmVhc29uID0gInVzZXIgcmVzZXQiOw0KPiArICAgICAgICAgICAgICAgcmVhc29uID0g
UE9XRVJfT05fUkVBU09OX1VTRVI7DQo+ICAgICAgICAgICAgICAgICBicmVhazsNCj4gICAgICAg
ICBjYXNlIFJFU0VUX1RZUEVfQ1BVX0ZBSUw6DQo+IC0gICAgICAgICAgICAgICByZWFzb24gPSAi
Q1BVIGNsb2NrIGZhaWx1cmUgZGV0ZWN0aW9uIjsNCj4gKyAgICAgICAgICAgICAgIHJlYXNvbiA9
IFBPV0VSX09OX1JFQVNPTl9DUFVfRkFJTDsNCj4gICAgICAgICAgICAgICAgIGJyZWFrOw0KPiAg
ICAgICAgIGNhc2UgUkVTRVRfVFlQRV9YVEFMX0ZBSUw6DQo+IC0gICAgICAgICAgICAgICByZWFz
b24gPSAiMzIuNzY4IGtIeiBjcnlzdGFsIGZhaWx1cmUgZGV0ZWN0aW9uIjsNCj4gKyAgICAgICAg
ICAgICAgIHJlYXNvbiA9IFBPV0VSX09OX1JFQVNPTl9YVEFMX0ZBSUw7DQo+ICAgICAgICAgICAg
ICAgICBicmVhazsNCj4gICAgICAgICBjYXNlIFJFU0VUX1RZUEVfVUxQMjoNCj4gLSAgICAgICAg
ICAgICAgIHJlYXNvbiA9ICJVTFAyIHJlc2V0IjsNCj4gKyAgICAgICAgICAgICAgIHJlYXNvbiA9
IFBPV0VSX09OX1JFQVNPTl9MT1dfUE9XRVI7DQo+ICAgICAgICAgICAgICAgICBicmVhazsNCj4g
ICAgICAgICBkZWZhdWx0Og0KPiAtICAgICAgICAgICAgICAgcmVhc29uID0gInVua25vd24gcmVz
ZXQiOw0KPiArICAgICAgICAgICAgICAgcmVhc29uID0gUE9XRVJfT05fUkVBU09OX1VOS05PV047
DQo+ICAgICAgICAgICAgICAgICBicmVhazsNCj4gICAgICAgICB9DQo+IA0KPiAtICAgICAgIGRl
dl9pbmZvKCZwZGV2LT5kZXYsICJTdGFydGluZyBhZnRlciAlc1xuIiwgcmVhc29uKTsNCj4gKyAg
ICAgICByZXR1cm4gcmVhc29uOw0KPiAgfQ0KPiANCj4gIHN0YXRpYyBjb25zdCBzdHJ1Y3Qgb2Zf
ZGV2aWNlX2lkIGF0OTFfcmFtY19vZl9tYXRjaFtdID0gew0KPiBAQCAtMjAyLDYgKzIwMiwxNyBA
QCBzdGF0aWMgc3RydWN0IG5vdGlmaWVyX2Jsb2NrIGF0OTFfcmVzdGFydF9uYiA9IHsNCj4gICAg
ICAgICAucHJpb3JpdHkgPSAxOTIsDQo+ICB9Ow0KPiANCj4gK3N0YXRpYyBzc2l6ZV90IHBvd2Vy
X29uX3JlYXNvbl9zaG93KHN0cnVjdCBkZXZpY2UgKmRldiwNCj4gKyAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgc3RydWN0IGRldmljZV9hdHRyaWJ1dGUgKmF0dHIsDQo+ICsgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGNoYXIgKmJ1ZikNCj4gK3sNCj4gKyAgICAg
ICBzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2ID0gdG9fcGxhdGZvcm1fZGV2aWNlKGRldik7
DQo+ICsNCj4gKyAgICAgICByZXR1cm4gc3ByaW50ZihidWYsICIlc1xuIiwgYXQ5MV9yZXNldF9y
ZWFzb24ocGRldikpOw0KPiArfQ0KPiArDQo+ICtzdGF0aWMgREVWSUNFX0FUVFJfUk8ocG93ZXJf
b25fcmVhc29uKTsNCj4gKw0KPiAgc3RhdGljIGludCBfX2luaXQgYXQ5MV9yZXNldF9wcm9iZShz
dHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQ0KPiAgew0KPiAgICAgICAgIGNvbnN0IHN0cnVj
dCBvZl9kZXZpY2VfaWQgKm1hdGNoOw0KPiBAQCAtMjQ2LDcgKzI1NywxNCBAQCBzdGF0aWMgaW50
IF9faW5pdCBhdDkxX3Jlc2V0X3Byb2JlKHN0cnVjdA0KPiBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYp
DQo+ICAgICAgICAgICAgICAgICByZXR1cm4gcmV0Ow0KPiAgICAgICAgIH0NCj4gDQo+IC0gICAg
ICAgYXQ5MV9yZXNldF9zdGF0dXMocGRldik7DQo+ICsgICAgICAgcmV0ID0gZGV2aWNlX2NyZWF0
ZV9maWxlKCZwZGV2LT5kZXYsICZkZXZfYXR0cl9wb3dlcl9vbl9yZWFzb24pOw0KPiArICAgICAg
IGlmIChyZXQpIHsNCj4gKyAgICAgICAgICAgICAgIGRldl9lcnIoJnBkZXYtPmRldiwgIkNvdWxk
IG5vdCBjcmVhdGUgc3lzZnMgZW50cnlcbiIpOw0KPiArICAgICAgICAgICAgICAgcmV0dXJuIHJl
dDsNCj4gKyAgICAgICB9DQo+ICsNCj4gKyAgICAgICBkZXZfaW5mbygmcGRldi0+ZGV2LCAiU3Rh
cnRpbmcgYWZ0ZXIgJXMgcmVzZXRcbiIsDQo+ICsgICAgICAgICAgICAgICAgYXQ5MV9yZXNldF9y
ZWFzb24ocGRldikpOw0KPiANCj4gICAgICAgICByZXR1cm4gMDsNCj4gIH0NCj4gLS0NCj4gMi4y
NC4wDQo+IA0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
bGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtYXJtLWtlcm5lbAo=
