Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 266627ED4F
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  2 Aug 2019 09:20:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nCqcfhEQFrflXpSQ/7geq8c0fkrmqcyQHQO7tqrTIcw=; b=uGszxXy0VkBPCt
	t4CEvZowRL5Ztme1WvdY7wn2l29Gk12KSs0oHxNqad0IfN1j3j+87/wUh6Cu9WqYedZ0I/4FA17YO
	KkIQ7bvEA2Qn3Zg6HGARHYioPXl80fnQXTS/P2AMp+exFnxp692pQFujQLT/fIcuZFMSP3L6eqZ2S
	upQ8YQaTDkdwjJWy4U1UoelTmMKOxsCt7giLXM1y2T0UMJHtsKXtjVOPRUkWMGh9aMD9tmymDtjDt
	Wnds+jpfuS2iTCRCEYPgjHKoDhwPRe5SbTy5eDryqLI183RER+NHfWV9F1phX22fw/2hq3tWAXKia
	qVRpNIuzuj+c48OAIgcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htRrL-0000K3-Kx; Fri, 02 Aug 2019 07:20:15 +0000
Received: from mail-eopbgr130049.outbound.protection.outlook.com
 ([40.107.13.49] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htRrA-0007ZI-Tr
 for linux-arm-kernel@lists.infradead.org; Fri, 02 Aug 2019 07:20:06 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dlyOvWp6rhEptus/UrjQud8VlLC5LEo+BJ+YatSsigDQ7doHCnHzbsO55wPP9mCyZTb3EHzvpZWfChVKbntrP64EobHtqsg8woNS9jQJy63dZBBIAHDA5ZjJUG80mt5df2dFXXvveFI/iIeJ+d+7vsMEzveWWn4WsA0v3tzhVBRYeDsd5nhvAdEoAWN388HHm3GC5PVuxpWJkFGbiR4la5T4ym4wTRd39p2jhCYKtlMATZ9yA1ri25UFaxCHOnBZv8HlLaZ+R2Lef96bD/mlNUlw///sufWCMfZ7MB1beT1n5h1f+U5N3zpJ/nlfwIU/Sdirq/X7flny5NrUtngW6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=W8F+QDRkr2QBBOtXOuxMfMtlIVmo8oFT/fdnfxLY4J4=;
 b=Ic4C8Ha0PW4faBLIoJLjO8Q+fkrMXT3PY9SCllDAD8oHQy174DYD6QpZ1odXAdwG+JFar+lhp2SYNZxwuS9jXRzkKUGX7XsmruGIcwg2CU0DGq7iscIYN4IJChZGD30JMxc8H0ayByB71LguJvx7C48G41Axtf6pIhKaNfnOsueKEQmsbtz95nM5gC+qQOYvnk5riFekAOP9anA7BrthuTGFXFNBDYm2fEtaHKb8XuoGGnHc4qjz470fHZ3ewuUqq/QQyog8JjG1H6DwFFwZpPNRKnOXwvZXqDldt9+Zyry9CdUjSpGdLEd8EACekVsRoCCK6Ih9k9X4PmfVQfTAMw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=nxp.com;dmarc=pass action=none header.from=nxp.com;dkim=pass
 header.d=nxp.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=W8F+QDRkr2QBBOtXOuxMfMtlIVmo8oFT/fdnfxLY4J4=;
 b=mMblWzZ4p+ipwWItaTWXWs4cCm4Djf1vEym+IjTq620v6pqA5LloSljZm4FUTYUZW3l41sxPU7eNwuBWPFbvD9tQ/DN0GIHbGi4g6EiH6pY3K/CtD8kOZP/vITyRQPWQPzEt6mITnjh6fwovP8TXoRFuajwPF9R36EQczVHpm3k=
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com (52.135.139.151) by
 DB7PR04MB4012.eurprd04.prod.outlook.com (52.134.108.150) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2136.16; Fri, 2 Aug 2019 07:19:57 +0000
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::6553:8d04:295c:774b]) by DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::6553:8d04:295c:774b%5]) with mapi id 15.20.2115.005; Fri, 2 Aug 2019
 07:19:57 +0000
From: Joakim Zhang <qiangqing.zhang@nxp.com>
To: Robin Murphy <robin.murphy@arm.com>, "will@kernel.org" <will@kernel.org>, 
 "mark.rutland@arm.com" <mark.rutland@arm.com>, Frank Li <frank.li@nxp.com>
Subject: RE: [PATCH V4 1/2] perf: imx8_ddr_perf: add AXI ID filter support
Thread-Topic: [PATCH V4 1/2] perf: imx8_ddr_perf: add AXI ID filter support
Thread-Index: AQHVR40oByyn0YjPrkGeE3hz4834O6bkqhiAgAEQJ/CAAFZdAIABXRHQ
Date: Fri, 2 Aug 2019 07:19:57 +0000
Message-ID: <DB7PR04MB4618301170B4E09F8B855B52E6D90@DB7PR04MB4618.eurprd04.prod.outlook.com>
References: <20190731104351.3117-1-qiangqing.zhang@nxp.com>
 <ad9491ed-24c5-8553-94be-cc96479adaf6@arm.com>
 <DB7PR04MB46183D09C6AB61E6AA90386FE6DE0@DB7PR04MB4618.eurprd04.prod.outlook.com>
 <5988bae3-e0db-a64d-8399-8ce65a92d970@arm.com>
In-Reply-To: <5988bae3-e0db-a64d-8399-8ce65a92d970@arm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=qiangqing.zhang@nxp.com; 
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 65be87ba-e27a-4d03-749e-08d71719d2e9
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB7PR04MB4012; 
x-ms-traffictypediagnostic: DB7PR04MB4012:
x-microsoft-antispam-prvs: <DB7PR04MB4012B4497420D13CC2C0A710E6D90@DB7PR04MB4012.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 011787B9DD
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(346002)(396003)(366004)(376002)(136003)(189003)(199004)(13464003)(2906002)(66946007)(66556008)(66476007)(6436002)(6246003)(53936002)(4326008)(66446008)(25786009)(316002)(55016002)(64756008)(8676002)(81166006)(2501003)(81156014)(229853002)(7736002)(305945005)(74316002)(71200400001)(71190400001)(14444005)(8936002)(66066001)(33656002)(5660300002)(6116002)(52536014)(3846002)(68736007)(256004)(99286004)(9686003)(14454004)(6506007)(102836004)(86362001)(26005)(76176011)(2201001)(11346002)(476003)(486006)(53546011)(446003)(7696005)(76116006)(186003)(110136005)(54906003)(478600001)(6636002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR04MB4012;
 H:DB7PR04MB4618.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: JdGetSZSmI85i6w4xQ06Rpf+MmaQZd2svLO0cgn1xstgE6FHywpvuJ58//ztpp1Ok01N68mmwnwII/n9798G9XfcQTKw2PZ7uyl6t01+qQ98xmMUOLAo+ZPs+HjFjZXSEPnw3pzFqGqOXsopX+wf3lMGZ0KVlDI+87/VrKYrSMiXGtFWOka+5jhn9sIQskgojNZbiX/Khjr10cClHaSDJaSNWzwk5I+xbDS+RTYJdfjlgsFmvKeutmTwmgWFXXbgKb2zkI8PCULzZYxsl4mG+R1CyhlZEr/CHY/OT9aGyBYZ5UgTYFbTgPXLZ28viUs973npeTQdIIVGWsZX7833P3ObxRRdc2cN5DGmSQsHRi3W5xRZDh7uW8k2bmyb+58JtjOu6o08vHEYHh0EmJDzpFfy6P1Xv76ze9N/jC0M1Qk=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 65be87ba-e27a-4d03-749e-08d71719d2e9
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Aug 2019 07:19:57.5311 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qiangqing.zhang@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB4012
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_002005_089673_DFB88BFE 
X-CRM114-Status: GOOD (  33.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.49 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

DQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IFJvYmluIE11cnBoeSA8cm9i
aW4ubXVycGh5QGFybS5jb20+DQo+IFNlbnQ6IDIwMTnlubQ45pyIMeaXpSAxODowMA0KPiBUbzog
Sm9ha2ltIFpoYW5nIDxxaWFuZ3FpbmcuemhhbmdAbnhwLmNvbT47IHdpbGxAa2VybmVsLm9yZzsN
Cj4gbWFyay5ydXRsYW5kQGFybS5jb207IEZyYW5rIExpIDxmcmFuay5saUBueHAuY29tPg0KPiBD
YzogbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnOyBrZXJuZWxAcGVuZ3V0cm9u
aXguZGU7IGRsLWxpbnV4LWlteA0KPiA8bGludXgtaW14QG54cC5jb20+DQo+IFN1YmplY3Q6IFJl
OiBbUEFUQ0ggVjQgMS8yXSBwZXJmOiBpbXg4X2Rkcl9wZXJmOiBhZGQgQVhJIElEIGZpbHRlciBz
dXBwb3J0DQo+IA0KPiBPbiAyMDE5LTA4LTAxIDY6MjUgYW0sIEpvYWtpbSBaaGFuZyB3cm90ZToN
Cj4gWy4uLl0NCj4gPj4+IEBAIC0xOTUsNiArMjE0LDE4IEBAIHN0YXRpYyBpbnQgZGRyX3BlcmZf
ZXZlbnRfaW5pdChzdHJ1Y3QNCj4gPj4+IHBlcmZfZXZlbnQNCj4gPj4gKmV2ZW50KQ0KPiA+Pj4g
ICAgCXN0cnVjdCBod19wZXJmX2V2ZW50ICpod2MgPSAmZXZlbnQtPmh3Ow0KPiA+Pj4gICAgCXN0
cnVjdCBwZXJmX2V2ZW50ICpzaWJsaW5nOw0KPiA+Pj4NCj4gPj4+ICsJaWYgKHBtdS0+ZGV2dHlw
ZV9kYXRhLT5xdWlya3MgJiBERFJfQ0FQX0FYSV9JRF9GSUxURVIpIHsNCj4gPj4+ICsJCWlmIChl
dmVudC0+YXR0ci5jb25maWcgPT0gMHg0MSkNCj4gPj4+ICsJCQlwbXUtPmF4aV9pZF9yZWFkID0g
ZXZlbnQtPmF0dHIuY29uZmlnMTsNCj4gPj4+ICsNCj4gPj4+ICsJCWlmIChldmVudC0+YXR0ci5j
b25maWcgPT0gMHg0MikNCj4gPj4+ICsJCQlwbXUtPmF4aV9pZF93cml0ZSA9IGV2ZW50LT5hdHRy
LmNvbmZpZzE7DQo+ID4+PiArDQo+ID4+PiArCQlpZiAocG11LT5heGlfaWRfcmVhZCAmJiBwbXUt
PmF4aV9pZF93cml0ZSAmJg0KPiA+Pj4gKwkJICAgIChwbXUtPmF4aV9pZF9yZWFkICE9IHBtdS0+
YXhpX2lkX3dyaXRlKSkNCj4gPj4+ICsJCQlyZXR1cm4gLUVJTlZBTDsNCj4gPj4+ICsJfQ0KPiA+
Pg0KPiA+PiBUaGlzIGlzbid0IHRoZSBjb3JyZWN0IGFwcHJvYWNoIHRoYXQgTWFyayBvdXRsaW5l
ZCA6KA0KPiA+Pg0KPiA+PiBJbiBldmVudF9pbml0LCB5b3Ugc2hvdWxkIHZhbGlkYXRlIHRoYXQg
YW55IGZpbHRlcmluZyBmb3IgdGhlIGdpdmVuDQo+ID4+IGV2ZW50IGlzIGNvbXBhdGlibGUgd2l0
aCBhbnkgb3RoZXIgc2libGluZyBldmVudHMgaW4gdGhlIHNhbWUgZ3JvdXAsDQo+ID4+IGJ1dCB5
b3Ugc2hvdWxkIG5vdCBjb25zaWRlciAoYW5kIHNob3VsZCBkZWZpbml0ZWx5IG5vdCBjaGFuZ2Up
IHRoZQ0KPiA+PiBjdXJyZW50IHN0YXRlIG9mIHRoZSBQTVUgYXQgdGhhdCBwb2ludC4gVGhpcyBz
dGVwIGlzIGFib3V0IHJlamVjdGluZw0KPiA+PiBldmVudCBjb25maWd1cmF0aW9ucyB3aGljaCBj
b3VsZA0KPiA+PiAqbmV2ZXIqIGJlIHN1Y2Nlc3NmdWxseSBzY2hlZHVsZWQgKHNpbmNlIGEgZ3Jv
dXAgcmVwcmVzZW50cyBhIHNldCBvZg0KPiA+PiBldmVudHMgd2hpY2ggbXVzdCBiZSBzY2hlZHVs
ZWQgYWxsIGF0IHRoZSBzYW1lIHRpbWUpLg0KPiA+Pg0KPiA+PiBJbiBldmVudF9hZGQsIHlvdSBr
bm93IHRoZSBnaXZlbiBldmVudC9ncm91cCBpcyBzdWZmaWNpZW50bHkgdmFsaWQgdG8NCj4gPj4g
KnBvdGVudGlhbGx5KiBiZSBzY2hlZHVsZWQsIGdpdmVuIHRoYXQgaXQgaGFzIHBhc3NlZCB0aGUg
ZXZlbnRfaW5pdA0KPiA+PiBjaGVja3MsIGJ1dCB5b3UgdGhlbiBuZWVkIHRvIGNoZWNrIHRoYXQg
dGhlIGZpbHRlcmluZyBpcyBjb21wYXRpYmxlDQo+ID4+IHdpdGggYWxsIG90aGVyIGV2ZW50cw0K
PiA+PiAqY3VycmVudGx5KiBjb3VudGluZyBvbiB0aGUgUE1VLiBJZiB0aGlzIGZhaWxzLCBwZXJm
IGNvcmUgd2lsbCB0cnkgdG8NCj4gPj4gcmVzY2hlZHVsZSB0aGUgY3VycmVudCBldmVudHMgdW50
aWwgdGhlIG5ldyBvbmUgaXMgYWJsZSB0byBydW4uDQo+ID4+IFRoYXQncyB3aHkgeW91IG5lZWQg
dGhlIGFkZGl0aW9uYWwgc3RlcCBvZiB2YWxpZGF0aW5nIGdyb3Vwcw0KPiA+PiBiZWZvcmVoYW5k
LCBiZWNhdXNlIG90aGVyd2lzZSB5b3UgY291bGQgZW5kIHVwIHdpdGggY29udHJhZGljdG9yeQ0K
PiA+PiBzY2hlZHVsaW5nIGNvbnN0cmFpbnRzIGF0IHRoaXMgcG9pbnQgYW5kIG5ldmVyIG1ha2Ug
cHJvZ3Jlc3MuDQo+ID4NCj4gPiBIaSBNYXJrIGFuZCBSb2JpbiwNCj4gPg0KPiA+IFRoYW5rcyBm
b3IgYWxsIHlvdXIga2luZGx5IGRldGFpbGVkIGV4cGxhbmF0aW9uIGZpcnN0bHkuDQo+ID4NCj4g
PiBNeSB1bmRlcnN0YW5kaW5nIGZyb20geW91ciBjb21tZW50cywgSSBuZWVkIHRvIHZhbGlkYXRl
IHRoZSBmaWx0ZXJpbmcgKGkuZS4NCj4gY29uZmlnMS9heGlfaWQpIGZvciAqYWxsKiBldmVudHMg
aW4gc2FtZSBncm91cCBkdXJpbmcgZXZlbnRfaW5pdCwgcmlnaHQ/DQo+ID4gQnV0IGl0J3Mgc28g
c3RyYW5nZSBmb3IgdGhhdCBheGlfaWQgaXMgb25seSBmb3IgYXhpLWlkLXJlYWQgYW5kIGF4aS1p
ZC13cml0ZSBldmVudC4NCj4gV2UgZG9uJ3QgbmVlZCB0byBzcGVjaWZ5IGF4aV9pZCBmb3IgYW55
IG90aGVyIGV2ZW50cyB3aGVuIG1peGVkIHdpdGggdGhlc2UNCj4gdHdvIGV2ZW50cy4NCj4gDQo+
IFNvcnJ5LCBJIGltcGxpY2l0bHkgbWVhbnQgYWxsICpyZWxldmFudCogZXZlbnRzIC0gb2J2aW91
c2x5IHRoZXJlJ3Mgbm90aGluZyB0bw0KPiBjaGVjayBmb3IgZXZlbnRzIHdoaWNoIGRvbid0IGhh
dmUgZmlsdGVyaW5nIGFueXdheS4gQWxsIHRoYXQgbWF0dGVycyBpcyB0aGUgY2FzZQ0KPiB3aGVy
ZSB3ZSdyZSBhc2tlZCB0byBjcmVhdGUgYSByZWFkL3dyaXRlIGV2ZW50IGluIGEgZ3JvdXAgd2hp
Y2ggYWxyZWFkeSBoYXMgYXQNCj4gbGVhc3Qgb25lIG90aGVyIHJlYWQvd3JpdGUgZXZlbnQgYXMg
YSBzaWJsaW5nLiBJJ3ZlIHNrZXRjaGVkIG91dCBhIHF1aWNrDQo+IChjb21wbGV0ZWx5IHVudGVz
dGVkKSBleGFtcGxlIG9mIG9uZSB3YXkgdG8gZG8gdGhhdCBwYXJ0IGJlbG93LiBUaGUgbG9naWMg
Zm9yDQo+IGV2ZW50X2FkZCB3b3VsZCBiZSB2ZXJ5IHNpbWlsYXIsIGV4Y2VwdCBpbnN0ZWFkIG9m
IGNvbXBhcmluZyB0aGUgc2libGluZw0KPiBhZ2FpbnN0IHRoZSBldmVudCwgdGhlcmUgeW91J2Qg
Y29tcGFyZSB0aGUgZXZlbnQgYWdhaW5zdCB0aGUgY3VycmVudCBQTVUNCj4gc3RhdGUuDQo+IA0K
PiA+IElmIEkgY2FuIGp1c3QgY2hlY2sgdGhlIGF4aS1pZC1yZWFkIGFuZCBheGktaWQtd3JpdGUg
ZXZlbnQgZHVyaW5nDQo+ID4gZXZlbnRfYWRkIGFuZCB0aGVuIHBhc3MgdGhlIGF4aV9pZCB2YWx1
ZSB0byB0aGUgZmlsdGVyIHJlZ2lzdGVyLiBEb24ndA0KPiA+IGNoZWNrIHRoZSBjYXNlIHRoYXQg
dXNlciBzcGVjaWZ5IGJvdGggb2YgdGhlbSBhdCB0aGUgc2FtZSB0aW1lIHdpdGggZGlmZmVyZW50
DQo+IGZpbHRlcmluZyB2YWx1ZS4gSW5zdGVhZCBvZiBjaGVja2luZyBpdCBpbiB0aGUgZHJpdmVy
LCBJIGFkZCB0aGUgZG9jIGluDQo+IERvY3VtZW50YXRpb24vYWRtaW4tZ3VpZGUvcGVyZi8gZGly
ZWN0b3J5IHRvIG5vdGUgdGhhdCBheGktaWQtcmVhZCBhbmQNCj4gYXhpLWlkLXdyaXRlIGV2ZW50
IHNob3VsZCBiZSBzcGVjaWZpZWQgc2VwYXJhdGVseSwgb3Igc3BlY2lmaWVkIGF0IHRoZSBzYW1l
IHRpbWUNCj4gd2l0aCBzYW1lIGF4aV9pZCB2YWx1ZS4NCj4gDQo+IFN1cmUsIHdlIGNvdWxkIGp1
c3QgcmVseSBvbiB0aGUgdXNlciB0byBnZXQgaXQgcmlnaHQsIGJ1dCB0aGF0IG1lYW5zIHRoZXJl
J3MgYSBmYWlyDQo+IGNoYW5jZSB0aGF0IHRoZSB1c2VyIGNhbiBpbmFkdmVydGVudGx5IGdldCBp
dCB3cm9uZywgZ2V0IG5vbnNlbnNpY2FsIHJlc3VsdHMsDQo+IGFuZCB3YXN0ZSBhIHdlZWsgdHJ5
aW5nIHRvIGRlYnVnIGEgcGVyY2VpdmVkIHByb2JsZW0gd2hpY2ggZG9lc24ndCBhY3R1YWxseQ0K
PiBleGlzdC4gSXQncyBub3QgZGlmZmljdWx0IGZvciB0aGUgZHJpdmVyIHRvIHBlcmZvcm0gdGhl
IGNvcnJlY3QgdmFsaWRhdGlvbiwgc28gaXQncw0KPiBiZXR0ZXIgZm9yIGV2ZXJ5b25lIGlmIGl0
IGRvZXMuDQo+IA0KPiBJdCBhbHNvIHNlZW1zIHJlYXNvbmFibGUgdGhhdCBhIHVzZXIgbWlnaHQg
d2FudCB0byBpbnRlbnRpb25hbGx5IG1lYXN1cmUNCj4gZXZlbnRzIG9uIGRpZmZlcmVudCBJRHMg
b3ZlciB0aGUgc2FtZSBydW4gKGJ1dCBub3QgaW4gdGhlIHNhbWUgZ3JvdXApLCBlLmcuIHRvDQo+
IGNvbXBhcmUgdGhlIHJlbGF0aXZlIGF2ZXJhZ2UgYmFuZHdpZHRoIG9mIHR3byBkZXZpY2VzLCBw
ZXJoYXBzIHRvIHR1bmUgUW9TDQo+IHBhcmFtZXRlcnMuIFRoYXQgcmVxdWlyZXMgcGVyZiBjb3Jl
IHRvIGtub3cgaXQgbmVlZHMgdG8gcm90YXRlIHRoZSBldmVudHMNCj4gZHVyaW5nIHRoZSBydW4s
IHdoaWNoIHdpbGwgb25seSBoYXBwZW4gaWYgZXZlbnRfYWRkIGRvZXMgdGhlIHJpZ2h0IHRoaW5n
Lg0KPiANCj4gUm9iaW4uDQoNCkhpIFJvYmluLA0KDQpJIGNvbXBsZXRlbHkgdW5kZXJzdG9vZCB3
aGF0IHlvdSBzYWlkIG5vdywgdGhhbmsgeW91IHZlcnkgbXVjaC4gQnV0IEkgY2FtZSBhY3Jvc3Mg
YW5vdGhlciBpc3N1ZSB3aGVuIEkNCnRlc3QgdGhpcyBjYXNlLiBZb3UgY2FuIHNlZSBiZWxvdy4N
Cg0KWy4uLl0NCj4gICAgICAgICAgZm9yX2VhY2hfc2libGluZ19ldmVudChzaWJsaW5nLCBldmVu
dC0+Z3JvdXBfbGVhZGVyKSB7DQo+ICAgICAgICAgICAgICAgICAgaWYgKHNpYmxpbmctPnBtdSAh
PSBldmVudC0+cG11ICYmDQo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICFpc19z
b2Z0d2FyZV9ldmVudChzaWJsaW5nKSkNCj4gICAgICAgICAgICAgICAgICAgICAgICAgIHJldHVy
biAtRUlOVkFMOw0KPiArDQo+ICsgICAgICAgICAgICAgICBpZiAoaXNfZmlsdGVyZWQgJiYgZGRy
X3BlcmZfaXNfZmlsdGVyZWQoc2libGluZykgJiYNCj4gKyAgICAgICAgICAgICAgICAgICBkZHJf
cGVyZl9maWx0ZXJfdmFsKHNpYmxpbmcpICE9IGZpbHRlcl92YWwpDQo+ICsgICAgICAgICAgICAg
ICAgICAgICAgIHJldHVybiAtRUlOVkFMOw0KPiAgICAgICAgICB9DQpbLi4uXQ0KDQpOZWVkIHRv
IGNoZWNrIHRoZSBheGkgaWQgdmFsdWUgb2Ygc2libGluZyBldmVudHMgaW4gb25lIHNhbWUgZ3Jv
dXAgd2l0aCBmb3JfZWFjaF9zaWJsaW5nX2V2ZW50ICgpOg0KI2RlZmluZSBmb3JfZWFjaF9zaWJs
aW5nX2V2ZW50KHNpYmxpbmcsIGV2ZW50KSAgICAgICAgICAgICAgICAgIFwNCiAgICAgICAgIGlm
ICgoZXZlbnQpLT5ncm91cF9sZWFkZXIgPT0gKGV2ZW50KSkgICAgICAgICAgICAgICAgICAgXA0K
ICAgICAgICAgICAgICAgICBsaXN0X2Zvcl9lYWNoX2VudHJ5KChzaWJsaW5nKSwgJihldmVudCkt
PnNpYmxpbmdfbGlzdCwgc2libGluZ19saXN0KQ0KDQpCdXQgSSBmb3VuZCB0aGF0IGFsbCBjaGVj
ayBpbiB0aGlzIEZvciBsb29wIHdpbGwgbmV2ZXIgYmUgY2hlY2tlZCwgdGhhdCBtZWFucyB0aGUg
Y29kZSBuZXZlciBydW5zIGludG8gdGhpcyBGb3IgbG9vcC4NCiAgICAgICAgICAgICAgIGlmIChz
aWJsaW5nLT5wbXUgIT0gZXZlbnQtPnBtdSAmJg0KICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIWlzX3NvZnR3YXJlX2V2ZW50KHNpYmxpbmcpKQ0KICAgICAgICAgICAgICAgICAgICAgICBy
ZXR1cm4gLUVJTlZBTDsNCg0KICAgICAgICAgICAgICAgaWYgKGlzX2ZpbHRlcmVkICYmIGRkcl9w
ZXJmX2lzX2ZpbHRlcmVkKHNpYmxpbmcpICYmDQogICAgICAgICAgICAgICAgICBkZHJfcGVyZl9m
aWx0ZXJfdmFsKHNpYmxpbmcpICE9IGZpbHRlcl92YWwpDQogICAgICAgICAgICAgICAgICAgICAg
IHJldHVybiAtRUlOVkFMOw0KDQpGaW5hbGx5IEkgZm91bmQgdGhhdCBpdCBjYW4ndCBpdGVyYXRl
IG92ZXIgdGhlIGxpc3Qgd2l0aCBsaXN0X2Zvcl9lYWNoX2VudHJ5KChzaWJsaW5nKSwgJihldmVu
dCktPnNpYmxpbmdfbGlzdCwgc2libGluZ19saXN0KS4gU28gZHJpdmVyDQpjYW4ndCByZWplY3Qg
ZXZlbnQgZ3JvdXAgd2l0aCBheGkgaWQgaWxsZWdhbCB2YWx1ZSBkdXJpbmcgZXZlbnRfaW5pdCgp
IG5vdy4gRG8geW91IGtub3cgd2h5IGl0IGNhbid0IGl0ZXJhdGUgdG8gc2libGluZyBldmVudHM/
DQoNCkJlc3QgUmVnYXJkcywNCkpvYWtpbSBaaGFuZw0KX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGlu
dXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
