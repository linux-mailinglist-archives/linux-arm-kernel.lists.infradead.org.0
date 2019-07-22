Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED67B702B0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 16:52:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f8YjtEETY227htdLAhym+vL8uyQyeEqhXb5eZNFO8Qc=; b=CFqcp1eQSx/dgI
	lhR/7idhgpe59HSP08FErWef4GymPwxobTPsCwizS7+gYuJFpphk7XjF8CDHk7WCVlOI673wPFAt1
	+bc86vd3m7CCe6Lg3Fu0v3bKztIl+Mfr1Vhu3We3sp2VeClNk9YXipynTfHi7yx7aIy15LY7lLLMA
	7cDmwNMfv3ol18xZx2z2hXQG6MGmvazwq2CzJn4XUnwzjXWF6ULjhpSLEWbgb/05hzXjLXaBaw8+P
	WW+Mye2W0kYN6BeFN8jJh4VYSFqMYeaPF3VHXzYeG4hbc9e56NRCfzF8juNVOKYCmWCx8IbyHCtJl
	nDHdEZKHhhV99RTMtgDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpZgB-00019U-GW; Mon, 22 Jul 2019 14:52:43 +0000
Received: from m9a0001g.houston.softwaregrp.com ([15.124.64.66])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpZfr-00017S-1C; Mon, 22 Jul 2019 14:52:24 +0000
Received: FROM m9a0001g.houston.softwaregrp.com (15.121.0.190) BY
 m9a0001g.houston.softwaregrp.com WITH ESMTP; 
 Mon, 22 Jul 2019 14:52:11 +0000
Received: from M4W0334.microfocus.com (2002:f78:1192::f78:1192) by
 M9W0067.microfocus.com (2002:f79:be::f79:be) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1591.10; Mon, 22 Jul 2019 14:47:53 +0000
Received: from NAM01-BN3-obe.outbound.protection.outlook.com (15.124.8.11) by
 M4W0334.microfocus.com (15.120.17.146) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1591.10 via Frontend Transport; Mon, 22 Jul 2019 14:47:53 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Dg3ixTgXt0AiMPByyCwA9XZF9r4Mh95ogZD3KBVRwgyevNfaCRSNskQu+7QXmZUeYgwEh9KVodnUXebkxdu4Z99A1Id4/WxNdonASPDjwcWlhjmkg7jefS9UO0Sy8ALp2qU6MTNINQddOKGsFcVIn46KTHby4uSqFWHdq0tkHJB0PNv6ed56bxwRfg0aeEw2S2fvtbaN2EZecpvcrIzTM5vpEZtgiLK6k1gynelaqbuMMZb8lJx9QwcBQZ+XiM11uQgyoaGbn46zkluGZoWHbW3BoNCEgaK4bkR9JlbfCrr+MEpegMs62EA3D3f58JvNip2wH9TEc4qSQhvWKQ2YPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mFw1stYXCX1j8YiyInUmv9rEIASmg9MdbhcjqMcqRYg=;
 b=cSA5uVWHGMUrhvM4/KI3H1XQZSFf2AAymJdqj42k4pdiD7MOGiCN2SX0s3EAEtoxRSgYThjFn+2QozhOJyEjbaBVUQr+Ds6r3MV55daFyBwpuhveZ5OZlOzwP4HWHU0Ke5d1afkzJCwX7mTsHBI0FkVmuun6PbujyuQJVX9SSTakevGLf04VBiUdwcY5PNZJfJW3wPleyHzhHR49XVLTn6xetRDmMoZfsMRQVR7kXFZt72CbsQM20kbXS7S7QPzpFl1cewNDS2Fqn9Ft7VVgWmVCrHX5Z24plgku3GWjMRG5Ig7Ssu8g+zbdNoa4BO+K5jmg5Xj53L5r8aRfmrKwjQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=suse.com;dmarc=pass action=none header.from=suse.com;dkim=pass
 header.d=suse.com;arc=none
Received: from CY4PR1801MB1909.namprd18.prod.outlook.com (10.171.255.24) by
 CY4PR1801MB1912.namprd18.prod.outlook.com (10.171.255.27) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2094.16; Mon, 22 Jul 2019 14:47:52 +0000
Received: from CY4PR1801MB1909.namprd18.prod.outlook.com
 ([fe80::1d84:4a66:a3f4:97f8]) by CY4PR1801MB1909.namprd18.prod.outlook.com
 ([fe80::1d84:4a66:a3f4:97f8%3]) with mapi id 15.20.2094.013; Mon, 22 Jul 2019
 14:47:52 +0000
From: Matthias Brugger <mbrugger@suse.com>
To: Vicente Bergas <vicencb@gmail.com>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Subject: Re: kexec on rk3399
Thread-Topic: kexec on rk3399
Thread-Index: AQHVQJxwdN7GpX+0ME6geK+6nhO37Q==
Date: Mon, 22 Jul 2019 14:47:51 +0000
Message-ID: <5167bdd7-6cdd-9214-582b-9c01342f2cb3@suse.com>
References: <ebcb52be-2063-4e2c-9a09-fdcacb94f855@gmail.com>
In-Reply-To: <ebcb52be-2063-4e2c-9a09-fdcacb94f855@gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: LO2P265CA0197.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:9e::17) To CY4PR1801MB1909.namprd18.prod.outlook.com
 (2603:10b6:910:7a::24)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=mbrugger@suse.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [37.223.144.190]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d55b302c-b6a4-406d-c340-08d70eb39293
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:CY4PR1801MB1912; 
x-ms-traffictypediagnostic: CY4PR1801MB1912:
x-ms-exchange-purlcount: 2
x-microsoft-antispam-prvs: <CY4PR1801MB1912F99BF3FCB0E1DB491696BAC40@CY4PR1801MB1912.namprd18.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4303;
x-forefront-prvs: 01068D0A20
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(39860400002)(366004)(396003)(346002)(136003)(376002)(189003)(199004)(66946007)(66556008)(81166006)(81156014)(5660300002)(66446008)(8676002)(8936002)(66476007)(14454004)(4326008)(64756008)(3846002)(68736007)(6246003)(6512007)(6306002)(71190400001)(71200400001)(53936002)(31696002)(6486002)(86362001)(229853002)(102836004)(305945005)(76176011)(966005)(2906002)(7736002)(110136005)(316002)(54906003)(66066001)(36756003)(2501003)(6436002)(256004)(446003)(31686004)(25786009)(11346002)(7116003)(6116002)(52116002)(26005)(486006)(53546011)(2616005)(186003)(99286004)(478600001)(476003)(6506007)(386003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:CY4PR1801MB1912;
 H:CY4PR1801MB1909.namprd18.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: suse.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: ZHrvKwGXMAB5HpZe5mylQuU4dzdpF0i+fyQjK3YwO+V2EdobhpekJEK8zECIrm1e4OZe//o+aqMzb0N7vl84Ufo1oqQum7I8lR1lyx3t9WkIMiDUakKe5lkGC2AaAwr6sSchtKfCOK42MtMBrTZfHyeCRII3u5etugVEH5yD5wbZ7xiXIIrpW7Y75eBmYsxBQdBuhPVMb9x0XdZWf8I+2SryZAqvRRp4Mxsy6onoBPXnAoxamCni6BAr+jHRQHJnWVCyGUOMUcQ2WwhFT3YD510z0BWcLGqh/YHydQfbyIwx0sZ0VPU7q6+KZFCv1gvr2/2dxUwP0sFqtO5mYRI2NV4i/bMp7i+gukTGkCnqRvsZu/q9kTocbOmFzt8i/Tl0T3p4m0UHiqBEwctp2vTYIlSkZYjutBhTivu24o4EwkE=
Content-ID: <373EFE8577B33D44BC5F1CB21251F836@namprd18.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: d55b302c-b6a4-406d-c340-08d70eb39293
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jul 2019 14:47:52.1024 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 856b813c-16e5-49a5-85ec-6f081e13b527
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mbrugger@suse.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR1801MB1912
X-OriginatorOrg: suse.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_075223_169213_2602304B 
X-CRM114-Status: GOOD (  14.12  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [15.124.64.66 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Marc Zyngier <marc.zyngier@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 Heiko Stuebner <heiko@sntech.de>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

DQoNCk9uIDIyLzA3LzIwMTkgMTY6MzEsIFZpY2VudGUgQmVyZ2FzIHdyb3RlOg0KPiBIaSwgaSBo
YXZlIGJlZW4gcnVubmluZyBsaW51eCBvbiByazMzOTkgYm9vdGVkIHdpdGgga2V4ZWMgZmluZSB1
bnRpbCA1LjINCj4gRnJvbSA1LjIgb253YXJkcywgdGhlcmUgYXJlIG1lbW9yeSBjb3JydXB0aW9u
IGlzc3VlcyBhcyByZXBvcnRlZCBoZXJlOg0KPiBodHRwOi8vbGttbC5pdS5lZHUvaHlwZXJtYWls
L2xpbnV4L2tlcm5lbC8xOTA2LjIvMDcyMTEuaHRtbA0KPiBrZXhlYyBoYXMgYmVlbiBpZGVudGlm
aWVkIGFzIHRoZSBwcmluY2lwYWwgcmVhc29uIGZvciB0aGUgaXNzdWVzLg0KPiANCj4gSXQgdHVy
bnMgb3V0IHRoYXQga2V4ZWMgaGFzIG5ldmVyIHdvcmtlZCByZWxpYWJseSBvbiB0aGlzIHBsYXRm
b3JtLA0KPiBpIHdhcyBqdXN0IGx1Y2t5IHVudGlsIHJlY2VudGx5Lg0KPiANCj4gUGxlYXNlLCBj
YW4geW91IHByb3ZpZGUgc29tZSBkaXJlY3Rpb25zIG9uIGhvdyB0byBkZWJ1ZyB0aGUgaXNzdWU/
DQo+IA0KPiBUaGUgbGF0ZXN0IHRlc3QgcGVyZm9ybWVkIGlzOg0KPiAxLi0gQm9vdCB2NS4zLXJj
MQ0KPiAyLi0gS2V4ZWMgaW50byB2NS4yLjINCj4gMy4tIFRoZSBrZXJuZWwgcmVwb3J0cyBub3Ro
aW5nIChlYXJseWNvbiBub3QgZW5hYmxlZCkgYW5kIGRvZXMgbm90IGJvb3QuDQo+IFRoZSBzYW1l
IGtlcm5lbCB2NS4yLjIgd29ya3MgZmluZSB3aGVuIGJvb3RlZCB3aXRob3V0IGtleGVjLg0KDQpJ
cyB0aGVyZSBhIGtub3duIGtlcm5lbCB3aGVyZSBrZXhlYyB3YXMgd29ya2luZyAodjUuMiBlLmcu
KT8NCklmIHlvdSBjYW4gZmluZCBvbmUsIHlvdSBjYW4gcnVuIGdpdCBiaXNlY3QgdG8gZmluZCB0
aGUgY29tbWl0IHRoYXQgYnJlYWtzIHRoaW5ncy4NCg0KQXBhcnQgZnJvbSB0aGF0IHlvdSBzaG91
bGQgdHJ5IHRvIGVuYWJsZSBlYXJseWNvbiBvbiB5b3VyIGtlcm5lbCB5b3Ugd2FudCB0bw0Ka2V4
ZWMgaW50bywgc28gYXQgbGVhc3QgeW91IGNhbiBzZWUgaWYgaXQgY3Jhc2hlcyBpbiB0aGUgbmV3
IGtlcm5lbC4gSWYgeW91DQpzdGlsbCBkb24ndCBzZWUgYW55dGhpbmcgeW91IGNhbiB0cnkgdG8g
dXNlIHBydWdhdG9yeSBwcmludGluZyAoaWYgeW91IHVzZQ0Ka2V4ZWNfbG9hZCBhbmQgbm90IGtl
eGVjX2ZpbGVfbG9hZCkuIEkgaGF2ZSBhIHdvcmstaW4tcHJvZ3Jlc3MgcGF0Y2hlcyB0aGF0IEkN
CmNhbiBzaGFyZSB3aXRoIHlvdSBpZiBuZWVkZWQuIEp1c3QgbGV0IG1lIGtub3cuDQoNClJlZ2Fy
ZHMsDQpNYXR0aGlhcw0KDQoNCj4gDQo+IFJlZ2FyZHMsDQo+IMKgVmljZW7Dpy4NCj4gDQo+IA0K
PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPiBsaW51
eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdA0KPiBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcNCj4gaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1hcm0ta2VybmVsDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1hcm0ta2VybmVsCg==
