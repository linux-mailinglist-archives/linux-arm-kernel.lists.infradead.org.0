Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6744510AEDA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 Nov 2019 12:44:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LFEhgeTTEYmEJszFCrUHLtBXeEsjWGx3E+AtDVlHgpo=; b=r+BlQd/OFIbHRq
	RgdPbCGVM7s2hO24QcgGfWH9VmjB2fTn6bJyVeMWJBThA4gdLzxL1pw4xibxVbNxiqa1JNyTaOueN
	lipDLSlZt5qsG2dwNjXkKC8M5HGLRwPdBK9P1AnguNPt0Eo+8Zlv1CpcnJkT85Z3FP+V2NF0KQOEo
	c7mARCdO6aFpZvaML8l5erL40yE/fjXQJWUIzx168zphD9JguhLKJTCWX6EaFKVcst8/+Z9Cq3J99
	ICXIPwLI0xacmGpOVY5K/qbPFPfZdFNnrxN1DHDjozrwt66xY56AmHkEebnvaOQJ1EqPLx6hShHI9
	nfdtRvQde+TATKeqc5Vw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZvkW-0006Np-Sw; Wed, 27 Nov 2019 11:44:48 +0000
Received: from mail-db5eur01on0724.outbound.protection.outlook.com
 ([2a01:111:f400:fe02::724]
 helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZvkN-0006NF-5y
 for linux-arm-kernel@lists.infradead.org; Wed, 27 Nov 2019 11:44:41 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=g7m7eXZFsB2n6if4AFEQvmVwI4bjSNNuEgIJzaEt8b52m23URVrMEcSsY2+MYfl2jsAQScer2gX+pNMayWJtTB8TwWb1uwIlijjlty/sy1wKUDcAdcYrLY8KwWPD1BtCWUKWtq2LuAZXJOli7Sip3NkktwgG8jESL3ICSL4+hvsZQxrW9/XPFmmJQaXrURMOy7dMtp7CrBK03WkZYHYADyPBlxmovLNfrXxUmfePEaEbLoCo3gkBlyUShe4ohL9dTsy/R8IqCyw+caHuDsMGUZOE+g4iuTYgSpmmll0QCebM7U3/As0ALNY1eum2zi44NYOhDzwNRc7gDTGSdxT3gw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HTJ5evbtnM+JZ3XY6A4L5nWWGBOY1d7s4yY6sIjFz0Q=;
 b=gTfKXSIgeQp9TAM+QQftBIq1YUtxEv3QB2VJwtG1Z4WgrcxJraA5NNZsqeqybuiHOmOjNmvuABv3pORciSfZ6p3PVECgLvVP1sT/8AyIwK3PlcCMq7YADNI7WsoopxBHaUaxpYdDu4+yOx8ObErbfAQL0xjhlIDbaOzKqEsytzYFgDfOl8Anf58N1JDVWXTpXDRablMcURSfHaA2NdCYHzZEZTNExNvs8ti0wbTASteuge6nIPkDonlSNTh+NfZW+IdkRZY6VYwZQINJsst9adOVE6hwpgGU0i9r4Ms9KvoA7cjeVQZLKPo3euNfCSYU9Un4nLtAa6ER1Ca2FZjTiQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=voleatech.de; dmarc=pass action=none header.from=voleatech.de;
 dkim=pass header.d=voleatech.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=voleatech.de;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HTJ5evbtnM+JZ3XY6A4L5nWWGBOY1d7s4yY6sIjFz0Q=;
 b=RBI3eVAY+4M9r6qlGMPGdhqFJTFe9ECAliiLjsNWyKPTLIH5Q1Sqx4FzrezdGOxLkFgPzGKod0UgQqoZQYIlDp0EuMdM05uKRsKGIYzwga6XGvVX6PLyQF4v0xnyUJglm795C0KEgjBzoOCJFurRkEHrNl9bYhadyEOWV4FaBT8=
Received: from AM0PR05MB5156.eurprd05.prod.outlook.com (20.178.20.19) by
 AM0PR05MB6580.eurprd05.prod.outlook.com (20.179.35.141) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2495.18; Wed, 27 Nov 2019 11:44:34 +0000
Received: from AM0PR05MB5156.eurprd05.prod.outlook.com
 ([fe80::d9d5:8f93:482:2a21]) by AM0PR05MB5156.eurprd05.prod.outlook.com
 ([fe80::d9d5:8f93:482:2a21%2]) with mapi id 15.20.2474.023; Wed, 27 Nov 2019
 11:44:34 +0000
From: Sven Auhagen <sven.auhagen@voleatech.de>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: CP110 Comphy Issue
Thread-Topic: CP110 Comphy Issue
Thread-Index: AQHVpOkOsup6Gumbska7MJykRWmBvaee25AAgAAbc4A=
Date: Wed, 27 Nov 2019 11:44:34 +0000
Message-ID: <012D747F-567A-4EAB-B625-E733B2FD0680@voleatech.de>
References: <4EC81A7A-C1D1-4DDD-BD09-88D46BC0D058@voleatech.de>
 <20191127120618.66c46b7a@xps13>
In-Reply-To: <20191127120618.66c46b7a@xps13>
Accept-Language: en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=sven.auhagen@voleatech.de; 
x-originating-ip: [37.24.174.42]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8db52d72-6739-493f-008c-08d7732f2c88
x-ms-traffictypediagnostic: AM0PR05MB6580:
x-microsoft-antispam-prvs: <AM0PR05MB6580A49E32A7D63AF393482AEF440@AM0PR05MB6580.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 023495660C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(346002)(366004)(189003)(199004)(66066001)(508600001)(54906003)(66446008)(76116006)(66556008)(66476007)(76176011)(66946007)(6512007)(2616005)(6486002)(44832011)(186003)(11346002)(14444005)(66574012)(256004)(26005)(64756008)(99286004)(71200400001)(5660300002)(446003)(15974865002)(71190400001)(6506007)(102836004)(229853002)(6306002)(7736002)(7116003)(6436002)(6246003)(305945005)(36756003)(4326008)(14454004)(81166006)(6116002)(81156014)(86362001)(3846002)(6916009)(33656002)(8676002)(2906002)(8936002)(25786009);
 DIR:OUT; SFP:1102; SCL:1; SRVR:AM0PR05MB6580;
 H:AM0PR05MB5156.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: voleatech.de does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: AJumUmj1wSc9CVnK2CSvxq4UJzmJhpF1gyBtrAQ9Dr1I/zhBhcnSMaAwziPrjh1K34VRhVuGiuo2waof/pmGiIzBsMMcEZJW5sL7ClKl+IcsdhbiVdOgj7ECHZ05gK37UvLEHXttWyQai+H5LmlhPTpd7Q4hSCSML3Ii0nRM1J/JHy48WxYzJXwf1KmTph1g4mEa1hcb1n2JaO59uoirz+AYwQxGq52O+Mp68674lK/fLyzzaedCd+4m1iUftSROEUHt2UFMvDiayVMCte/VDQ1/jYTBQoAPIzp+/KEHqxWv97oXq+DHgJHMP9ZDAMMp818N+KraWkwajpz4APy9LYUUpMNacxcrpz35W6FP9VB8JxoRPonlnPp7HuXkM4dJcflgJa3RWwGvnb/l7wTb8OVn1UsFFt7UgYHXPYGDikcWWisYr5qMfhXjt6xc6uig
x-ms-exchange-transport-forked: True
Content-ID: <81AD0247DC637B4CA9BCF8C3226C443B@eurprd05.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: voleatech.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 8db52d72-6739-493f-008c-08d7732f2c88
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Nov 2019 11:44:34.1192 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b82a99f6-7981-4a72-9534-4d35298f847b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: T/i7eGCldY16wZrGM+JC+tnbPMXyKvP49ZQ0pN8DLrVPV5WGOSoqN+T29/l71Dd1DpQLuLcEQ6/wgzh1Xjxm18q9NZL4s7v9gfQsl2DlJmk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR05MB6580
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_034439_420574_96263C5F 
X-CRM114-Status: GOOD (  10.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe02:0:0:0:724 listed in]
 [list.dnswl.org]
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
Cc: Baruch Siach <baruch@tkos.co.il>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWlxdcOobCwNCg0KSSBhcHByZWNpYXRlIHlvdXIgaGVscCwgdGhhbmsgeW91Lg0KDQpVLUJv
b3QgaXMgbm90IHVzaW5nIFNNQyBjYWxscywgY29ycmVjdC4NCg0KVGhlIG1hcnZlbGwgZ2l0aHVi
IHZlcnNpb24gZG9lcyBhbmQgSSBhbSBjaGVja2luZyB0aGUgY29kZSBhZ2FpbnN0IHRoZSB1cHN0
cmVhbSBjb2RlIGN1cnJlbnRseS4NClRoZSBjb21waHkgaW5pdGlhbGl6YXRpb24gZm9yIFBDSWUg
cHJvZHVjZXMgdGhlIHNhbWUgdmFsdWVzLCBJIHdpbGwgZGVidWcgaXQgZnVydGhlciB0aGUgbmV4
dCBkYXlzLg0KDQpCZXN0IGFuZCB0aGFua3MNClN2ZW4NCg0KRnJvbTogTWlxdWVsIFJheW5hbCA8
bWlxdWVsLnJheW5hbEBib290bGluLmNvbT4NCk9yZ2FuaXNhdGlvbjogQm9vdGxpbg0KRGF0ZTog
V2VkbmVzZGF5LCAyNy4gTm92ZW1iZXIgMjAxOSBhdCAxMjowNiBQTQ0KVG86IFN2ZW4gQXVoYWdl
biA8c3Zlbi5hdWhhZ2VuQHZvbGVhdGVjaC5kZT4NCkNjOiBCYXJ1Y2ggU2lhY2ggPGJhcnVjaEB0
a29zLmNvLmlsPiwgImxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZyIgPGxpbnV4
LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZz4NClN1YmplY3Q6IFJlOiBDUDExMCBDb21w
aHkgSXNzdWUNCg0KSGkgU3ZlbiwNCg0KU3ZlbiBBdWhhZ2VuIDxtYWlsdG86c3Zlbi5hdWhhZ2Vu
QHZvbGVhdGVjaC5kZT4gd3JvdGUgb24gV2VkLCAyNyBOb3YgMjAxOQ0KMDY6MDg6MTYgKzAwMDA6
DQoNCkhpIE1pcXXDqGwsDQpJIGxvb2tlZCB0aHJvdWdoIHRoZSBBVEYgY29kZSBhbmQgYXMgZmFy
IGFzIEkgY2FuIHRlbGwgdGhlIHBjaWUgY2xvY2sgZGlyZWN0aW9uIGlzIHNldCBiYXNlZCBvbiB0
aGUgc2FyIHJlZ2lzdGVyIGluIGNwMTEwX3BjaWVfY2xrX2NmZw0KSSBhbSBub3Qgc3VyZSBob3cg
dGhpcyBjYW4gbGVhZCB0byB0aGUgcHJvYmxlbSBvZiB0aGUgY29tcGh5IG5vdCBjb21pbmcgdXAu
DQoNCkNsb2NrcyBhcmUgb2Z0ZW4gcmVzcG9uc2libGUgb2Ygc3RhbGxzIHdoZW4gYWNjZXNzaW5n
IHJlZ2lzdGVycy4NCg0KSSBkb24ndCBrbm93IHdoYXQgeW91ciBwcm9ibGVtIGlzLCBJIGFtIGdp
dmluZyB5b3Ugc3VnZ2VzdGlvbnMuDQoNCkkgY2FuIGFsc28gc2VlIHRoYXQgdGhlIFBDSWUgd29y
a3MgaW4gdWJvb3QgYW5kIHRoZSBJbnRlbCBOSUMgaXMgcmVjb2duaXplZCBqdXN0IGZpbmUgdGhl
cmUgc28gdGhlIGludGlhbCBjb21waHkgc2V0dXAgbXVzdCBiZSB3b3JraW5nLg0KDQpJcyBVLUJv
b3QgZG9pbmcgU01DIGNhbGxzIHRvbz8gSSBzdXBwb3NlIGl0IGRvZXMgbm90Lg0KDQpJIGNvdWxk
IG5vdCBmaW5kIHRoZSByZXNldCBjb2RlLCBjYW4geW91IHNlbmQgbWUgdGhlIGZpbGUgd2hlcmUg
aXQgaXM/DQoNCkkgdGhvdWdodCB3ZSBoYWQgc29tZSBpbiB0aGUgY29tcGh5IGRyaXZlciwgYXBw
YXJlbnRseSBub3QuDQoNCkkgZG9uJ3QgaGF2ZSBtb3JlIGlucHV0cyBzbyBmYXIuIElzIHlvdXIg
ZGVidWdnaW5nIGdpdmluZyBpbnRlcmVzdGluZw0KaW5mb3M/IEhhdmUgeW91IGNoZWNrZWQgaW4g
LT5zZXRfbW9kZSgpIGV2ZXJ5dGhpbmcgbG9va3MgZmluZT8NCg0KDQpUaGFua3MsDQpNaXF1w6hs
DQoNCg0KDQpCZXN0ZSBHcsO8w59lL0Jlc3QgcmVnYXJkcw0KDQpTdmVuIEF1aGFnZW4NCkRpcGwu
IE1hdGguIG9lYy4sIE0uU2MuDQpWb2xlYXRlY2ggR21iSA0KSFJCOiBCIDc1NDY0Mw0KVVNUSUQ6
IERFMzAzNjQzMTgwDQpHcmF0aHdvaGxzdHIuIDUNCjcyNzYyIFJldXRsaW5nZW4NClRlbDogKzQ5
IDcxMjE1Mzk1NTANCkZheDogKzQ5IDcxMjE1Mzk1NTENCkUtTWFpbDogc3Zlbi5hdWhhZ2VuQHZv
bGVhdGVjaC5kZQ0Kd3d3LnZvbGVhdGVjaC5kZTxodHRwczovL3d3dy52b2xlYXRlY2guZGU+DQpE
aWVzZSBJbmZvcm1hdGlvbiBpc3QgYXVzc2NobGllw59saWNoIGbDvHIgZGVuIEFkcmVzc2F0ZW4g
YmVzdGltbXQgdW5kIGthbm4gdmVydHJhdWxpY2ggb2RlciBnZXNldHpsaWNoIGdlc2Now7x0enRl
IEluZm9ybWF0aW9uZW4gZW50aGFsdGVuLiBXZW5uIFNpZSBuaWNodCBkZXIgYmVzdGltbXVuZ3Nn
ZW3DpMOfZSBBZHJlc3NhdCBzaW5kLCB1bnRlcnJpY2h0ZW4gU2llIGJpdHRlIGRlbiBBYnNlbmRl
ciB1bmQgdmVybmljaHRlbiBTaWUgZGllc2UgTWFpbC4gQW5kZXJlbiBhbHMgZGVtIGJlc3RpbW11
bmdzZ2Vtw6TDn2VuIEFkcmVzc2F0ZW4gaXN0IGVzIHVudGVyc2FndCwgZGllc2UgRS1NYWlsIHp1
IGxlc2VuLCB6dSBzcGVpY2hlcm4sIHdlaXRlcnp1bGVpdGVuIG9kZXIgaWhyZW4gSW5oYWx0IGF1
ZiB3ZWxjaGUgV2Vpc2UgYXVjaCBpbW1lciB6dSB2ZXJ3ZW5kZW4uIEbDvHIgZGVuIEFkcmVzc2F0
ZW4gc2luZCBkaWUgSW5mb3JtYXRpb25lbiBpbiBkaWVzZXIgTWFpbCBudXIgenVtIHBlcnPDtm5s
aWNoZW4gR2VicmF1Y2guIEVpbmUgV2VpdGVybGVpdHVuZyBkYXJmIG51ciBuYWNoIFLDvGNrc3By
YWNoZSBtaXQgZGVtIEFic2VuZGVyIGVyZm9sZ2VuLiBXaXIgdmVyd2VuZGVuIGFrdHVlbGxlIFZp
cmVuc2NodXR6cHJvZ3JhbW1lLiBGw7xyIFNjaMOkZGVuLCBkaWUgZGVtIEVtcGbDpG5nZXIgZ2xl
aWNod29obCBkdXJjaCB2b24gdW5zIHp1Z2VzYW5kdGUgbWl0IFZpcmVuIGJlZmFsbGVuZSBFLU1h
aWxzIGVudHN0ZWhlbiwgc2NobGllw59lbiB3aXIgamVkZSBIYWZ0dW5nIGF1cy4NCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwg
bWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
