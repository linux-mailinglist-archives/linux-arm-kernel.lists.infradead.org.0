Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A5EABF49F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Sep 2019 16:04:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=HvDJFc+JR8TJsmiu/+xwZRqpkHZ05CeK3Wdvsp8XTKw=; b=bQ+7yR6rDez3tj
	wZ/qZoic8rTZcJkBJ9fcqCS9zYDp6x6IAXdFq1srbvVUoOVNYZ3TZPZ0jOS4+AIX0+GXMe9fpe1I8
	vwsypZ/e0VrJs34bF5fPMAkkh8Y/6qP/Pbm2ZOY/Zk39iGXJvtLrbOPK5Dp8216g1EVf6cR2fudNt
	ZvQ6NFkrAQDI4HuFQo8ta2k3D60EwA/Hzdy16rN0permcQLnxgVyzzLVB0IoDZ0d07ZXrnd5VeqYS
	4tdR8sUXqdSmFNaW5pxQqr3VesrRGEOfUjcgU3rc0Z70isgnpZPxhwrZab5exTjlat59YX8WPjma1
	WwfBwnUEvV7aN2+YbiPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDUNI-0000Wx-PJ; Thu, 26 Sep 2019 14:04:04 +0000
Received: from mail-eopbgr140073.outbound.protection.outlook.com
 ([40.107.14.73] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDUN2-0000SX-Ve
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Sep 2019 14:03:51 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZX7nrVdr35WHzN27xe5caPGI/UsPY3vr3cbgDebEJHQk+hZrYt8wpRR1jHd9NFEC5GDHXcwnSppZsb8GAU9MBb4FYYVOCDpd7PkW5jmVaiZvMB3kHECDHr9krAxnR0TYGdA7RGs95jz2o4/rWEpTgOjls38JG9YBTR+rw5w3tHTpSTc8i6kzcHlUboE0mlUpaOvcbcU8qczEznmSRdfiAQ5iPVAUWIL+qaHdjlazap6rlaC8gsKJY9ATyenSvkeg/LUINp8IBtaVf7R8mvMisgB5Q6TyYv+P2iRXeelerXmUyxfKHOj8WTsXVmATHa8MdQLpzcOM3UYR/oG4L/02NA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=J4ijFqs0fQliZ5FtrKxBXrnvhWRs6Z5dM84VZ4/H8So=;
 b=OCPBhDHqJ1qqSqMvLBMa/wWf2PoScHma+ZGFAx4vdTpCDEUk2iqmzYJRf4mmePL6yeIdG70Mg9CMc8reHUxSQSx478Q4irpNNpNCjVWuJ7GojIGwmRRb9ri8dgJEH/1i36tQIK5ZoHGeo2G4X9BoKLu1GGscyxHuxZBRMHtUWU7Ecxz2oEg+yxrd1vcifHLHH3YApyMwitS6sUrhdKnYPXudOCGeXjJvyWTq8+e70wPRCN97TwtDbqLnIsOBMNp0J7JBhOGJPKe1Q/CUQmKn/FCS8JrdGRi+vTR3mksDpduXOV5FXENUUr38CIJNdOIAO4XkFENKoLhRdRY9kKrGvA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=J4ijFqs0fQliZ5FtrKxBXrnvhWRs6Z5dM84VZ4/H8So=;
 b=jNyhkcHb+3tAx4TphoaA/tK3ABSXkZMQVMlgQwlq4IIc+41DRKRpV2iAlH9RpuZkDUZoZIuQgXWCjiH2nw62tezEsWf9q4FOFF6jQTzhVc/nOuQlGEW/HrxD5kN1518Y7wZFVeMipMG8Hv6n4L1JQizA9OUbu/DynEeSlqgH5F4=
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com (10.186.159.144) by
 VI1PR04MB3310.eurprd04.prod.outlook.com (10.170.231.148) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.26; Thu, 26 Sep 2019 14:03:45 +0000
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::15cd:b6e7:5016:ae8]) by VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::15cd:b6e7:5016:ae8%2]) with mapi id 15.20.2284.023; Thu, 26 Sep 2019
 14:03:45 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Chanwoo Choi <cw00.choi@samsung.com>, MyungJoo Ham
 <myungjoo.ham@samsung.com>, Kyungmin Park <kyungmin.park@samsung.com>,
 Matthias Kaehlcke <mka@chromium.org>, Viresh Kumar <viresh.kumar@linaro.org>
Subject: Re: [PATCH v8 4/6] PM / devfreq: Introduce get_freq_range helper
Thread-Topic: [PATCH v8 4/6] PM / devfreq: Introduce get_freq_range helper
Thread-Index: AQHVcsBzJohl2Bg18U6dcKhg4vJ8hg==
Date: Thu, 26 Sep 2019 14:03:45 +0000
Message-ID: <VI1PR04MB7023CAD2919FB5F2782ABFC4EE860@VI1PR04MB7023.eurprd04.prod.outlook.com>
References: <cover.1569319738.git.leonard.crestez@nxp.com>
 <CGME20190924101141epcas4p357c10af190e97f1c77098cd66cb313ab@epcas4p3.samsung.com>
 <674fe91065034083fd7c8c1810305cd01551bb80.1569319738.git.leonard.crestez@nxp.com>
 <fe6845b9-4e20-3dad-0178-97b216e858e7@samsung.com>
 <VI1PR04MB70235A2C13E47029B3093D33EE870@VI1PR04MB7023.eurprd04.prod.outlook.com>
 <e8ec6c2e-8536-b926-c1fc-468f9e9adca7@samsung.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [92.121.36.197]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 47a34eec-b33c-496d-f829-08d7428a58b0
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600167)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:VI1PR04MB3310; 
x-ms-traffictypediagnostic: VI1PR04MB3310:|VI1PR04MB3310:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB33107F35FDF553A8C164B9B2EE860@VI1PR04MB3310.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4714;
x-forefront-prvs: 0172F0EF77
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(396003)(136003)(346002)(366004)(376002)(51444003)(199004)(189003)(66556008)(66446008)(66476007)(91956017)(66946007)(64756008)(44832011)(3846002)(6116002)(76116006)(14454004)(486006)(76176011)(478600001)(25786009)(53546011)(476003)(26005)(6506007)(102836004)(6436002)(55016002)(229853002)(446003)(9686003)(6246003)(71200400001)(71190400001)(256004)(14444005)(4326008)(81166006)(8676002)(8936002)(81156014)(33656002)(7696005)(54906003)(99286004)(316002)(110136005)(66066001)(7736002)(74316002)(305945005)(52536014)(7416002)(2906002)(186003)(86362001)(5660300002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB3310;
 H:VI1PR04MB7023.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: bBCdAlmv3BfoVt4i6+1oa7rlPw3cqDMt2pRG18hnx865fnkkN3gWb6TBJqi0SxDnhx4wfL1ZOmlPHD95WfwzI5y3cYAeoHukRwUa5XSFPKtpvYVmCqVypzn6+xg1VWDAl464pGEHeeEHnI7OIsGcnyWhgfADXFIgouq9K2d5pkCFvFkgv9Cp6sA9uGGcF+id1GiyRHyg82Rcw5lOyG4Q3GtBj3LC26LO/TIpxY2gRICQDKjRXEnWYAF4zGJO2qkYnVtBSDW3ZXrd5cR2KvEEGyVydVmTJILUKVFhYU4SvckmRyYnC6hv1soT8tj3TUjQ3CCOiovvn9gnNrLqWq9QEN0m0PLFOotNxkBJerptHxozKeQek/2RCoh/tIsnGKl5Qvvh/gBEHCwiUCaU25B4Zdi3MwH39nBfdZeSONf9hug=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 47a34eec-b33c-496d-f829-08d7428a58b0
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Sep 2019 14:03:45.5215 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VVqEJvG4jVQwY1CeVGoKFoTHSFl1eAr3N3+iXTCSwBehQ0yhGGvUkHo+35ba+9QipP5+agHEq7nwqt5rOCINwQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB3310
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_070349_214485_289E1A49 
X-CRM114-Status: GOOD (  23.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.14.73 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: =?utf-8?B?QXJ0dXIgxZp3aWdvxYQ=?= <a.swigon@partner.samsung.com>,
 Abel Vesa <abel.vesa@nxp.com>, Saravana Kannan <saravanak@google.com>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 Lukasz Luba <l.luba@partner.samsung.com>,
 Alexandre Bailon <abailon@baylibre.com>,
 Georgi Djakov <georgi.djakov@linaro.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Jacky Bai <ping.bai@nxp.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjAxOS0wOS0yNiA0OjAyIEFNLCBDaGFud29vIENob2kgd3JvdGU6Cj4gSGksCj4gCj4gT24g
MTkuIDkuIDI2LiDsmKTsoIQgNTo1NSwgTGVvbmFyZCBDcmVzdGV6IHdyb3RlOgo+PiBPbiAyNS4w
OS4yMDE5IDA0OjMyLCBDaGFud29vIENob2kgd3JvdGU6Cj4+PiBPbiAxOS4gOS4gMjQuIOyYpO2b
hCA3OjExLCBMZW9uYXJkIENyZXN0ZXogd3JvdGU6Cj4+Pj4gTW92aW5nIGhhbmRsaW5nIG9mIG1p
bi9tYXggZnJlcSB0byBhIHNpbmdsZSBmdW5jdGlvbiBhbmQgY2FsbCBpdCBmcm9tCj4+Pj4gdXBk
YXRlX2RldmZyZXEgYW5kIGZvciBwcmludGluZyBtaW4vbWF4IGZyZXEgdmFsdWVzIGluIHN5c2Zz
Lgo+Pj4+Cj4+Pj4gVGhpcyBjaGFuZ2VzIHRoZSBiZWhhdmlvciBvZiBvdXQtb2YtcmFuZ2UgbWlu
X2ZyZXEvbWF4X2ZyZXE6IGNsYW1waW5nCj4+Pj4gaXMgbm93IGRvbmUgYXQgZXZhbHVhdGlvbiB0
aW1lLiBUaGlzIG1lYW5zIHRoYXQgaWYgYW4gb3V0LW9mLXJhbmdlCj4+Pj4gY29uc3RyYWludCBp
cyBpbXBvc2VkIGJ5IHN5c2ZzIGFuZCBpdCBsYXRlciBiZWNvbWVzIHZhbGlkIHRoZW4gaXQgd2ls
bAo+Pj4+IGJlIGVuZm9yY2VkLgo+Pj4+Cj4+Pj4gU2lnbmVkLW9mZi1ieTogTGVvbmFyZCBDcmVz
dGV6IDxsZW9uYXJkLmNyZXN0ZXpAbnhwLmNvbT4KPj4+PiBSZXZpZXdlZC1ieTogTWF0dGhpYXMg
S2FlaGxja2UgPG1rYUBjaHJvbWl1bS5vcmc+Cj4+Pj4gLS0tCj4+Pj4gICAgZHJpdmVycy9kZXZm
cmVxL2RldmZyZXEuYyB8IDExMiArKysrKysrKysrKysrKysrKysrKysrLS0tLS0tLS0tLS0tLS0t
LQo+Pj4+ICAgIDEgZmlsZSBjaGFuZ2VkLCA2NCBpbnNlcnRpb25zKCspLCA0OCBkZWxldGlvbnMo
LSkKPj4+Pgo+Pj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2RldmZyZXEvZGV2ZnJlcS5jIGIvZHJp
dmVycy9kZXZmcmVxL2RldmZyZXEuYwo+Pj4+IGluZGV4IDRhODc4YmFhODA5ZS4uZWVlNDAzZTcw
Yzg0IDEwMDY0NAo+Pj4+IC0tLSBhL2RyaXZlcnMvZGV2ZnJlcS9kZXZmcmVxLmMKPj4+PiArKysg
Yi9kcml2ZXJzL2RldmZyZXEvZGV2ZnJlcS5jCj4+Pj4gQEAgLTk2LDEwICs5Niw1NCBAQCBzdGF0
aWMgdW5zaWduZWQgbG9uZyBmaW5kX2F2YWlsYWJsZV9tYXhfZnJlcShzdHJ1Y3QgZGV2ZnJlcSAq
ZGV2ZnJlcSkKPj4+PiAgICAJCWRldl9wbV9vcHBfcHV0KG9wcCk7Cj4+Pj4gICAgCj4+Pj4gICAg
CXJldHVybiBtYXhfZnJlcTsKPj4+PiAgICB9Cj4+Pj4gICAgCj4+Pj4gKy8qKgo+Pj4+ICsgKiBn
ZXRfZnJlcV9yYW5nZSgpIC0gR2V0IHRoZSBjdXJyZW50IGZyZXEgcmFuZ2UKPj4+PiArICogQGRl
dmZyZXE6CXRoZSBkZXZmcmVxIGluc3RhbmNlCj4+Pj4gKyAqIEBtaW5fZnJlcToJdGhlIG1pbiBm
cmVxdWVuY3kKPj4+PiArICogQG1heF9mcmVxOgl0aGUgbWF4IGZyZXF1ZW5jeQo+Pj4+ICsgKgo+
Pj4+ICsgKiBUaGlzIHRha2VzIGludG8gY29uc2lkZXJhdGlvbiBhbGwgY29uc3RyYWludHMuCj4+
Pj4gKyAqLwo+Pj4+ICtzdGF0aWMgdm9pZCBnZXRfZnJlcV9yYW5nZShzdHJ1Y3QgZGV2ZnJlcSAq
ZGV2ZnJlcSwKPj4+PiArCQkJICAgdW5zaWduZWQgbG9uZyAqbWluX2ZyZXEsCj4+Pj4gKwkJCSAg
IHVuc2lnbmVkIGxvbmcgKm1heF9mcmVxKQo+Pj4+ICt7Cj4+Pj4gKwl1bnNpZ25lZCBsb25nICpm
cmVxX3RhYmxlID0gZGV2ZnJlcS0+cHJvZmlsZS0+ZnJlcV90YWJsZTsKPj4+PiArCj4+Pj4gKwls
b2NrZGVwX2Fzc2VydF9oZWxkKCZkZXZmcmVxLT5sb2NrKTsKPj4+PiArCj4+Pj4gKwkvKgo+Pj4+
ICsJICogSW5pdCBtaW4vbWF4IGZyZXF1ZW5jeSBmcm9tIGZyZXEgdGFibGUuCj4+Pgo+Pj4gSW5p
dCAtPiBJbml0aWFsaXplCj4+PiBtaW4vbWF4IC0+IG1pbmltdW0vbWF4aW11bQo+Pj4KPj4+PiAr
CSAqIERyaXZlcnMgY2FuIGluaXRpYWxpemUgdGhpcyBpbiBlaXRoZXIgYXNjZW5kaW5nIG9yIGRl
c2NlbmRpbmcgb3JkZXIKPj4+Cj4+PiBEcml2ZXJzIC0+IGRldmZyZXEgZHJpdmVycwo+Pj4KPj4+
PiArCSAqIGFuZCBkZXZmcmVxIGNvcmUgc3VwcG9ydHMgYm90aC4KPj4+PiArCSAqLwo+Pj4KPj4+
Cj4+PiBJbiByZXN1bHQsIEkgcHJlZmVyIHRvIGNoYW5nZSB0aGUgY29tbWVudHMgYXMgZm9sbG93
aW5nOgo+Pj4gCS8qCj4+PiAJICogSW5pdGlhbGl6ZSB0aGUgbWluaW11bS9tYXhpbXVtIGZyZXF1
ZW5jeSBmcm9tIGZyZXFfdGFibGUuCj4+PiAgICAJICogVGhlIGRldmZyZXEgZHJpdmVycyBjYW4g
aW5pdGlhbGl6ZSBmcmVxX3RhYmxlIGluIGVpdGhlcgo+Pj4gCSAqIGFzY2VuZGluZyBvciBkZXNj
ZW5kaW5nIG9yZGVyIGFuZCBkZXZmcmVxIGNvcmUgc3VwcG9ydHMgYm90aC4KPj4+IAkgKi8KPj4K
Pj4gT0sKPj4KPj4+PiArCWlmIChmcmVxX3RhYmxlWzBdIDwgZnJlcV90YWJsZVtkZXZmcmVxLT5w
cm9maWxlLT5tYXhfc3RhdGUgLSAxXSkgewo+Pj4+ICsJCSptaW5fZnJlcSA9IGZyZXFfdGFibGVb
MF07Cj4+Pj4gKwkJKm1heF9mcmVxID0gZnJlcV90YWJsZVtkZXZmcmVxLT5wcm9maWxlLT5tYXhf
c3RhdGUgLSAxXTsKPj4+PiArCX0gZWxzZSB7Cj4+Pj4gKwkJKm1pbl9mcmVxID0gZnJlcV90YWJs
ZVtkZXZmcmVxLT5wcm9maWxlLT5tYXhfc3RhdGUgLSAxXTsKPj4+PiArCQkqbWF4X2ZyZXEgPSBm
cmVxX3RhYmxlWzBdOwo+Pj4+ICsJfQo+Pj4+ICsKPj4+PiArCS8qIGNvbnN0cmFpbnRzIGZyb20g
c3lzZnMgKi8KPj4+Cj4+PiAnY29uc3RyYWludHMnIC0+IENvbnN0cmFpbnQgYmVjYXVzZSBmaXJz
dCB2ZXJiIGhhdmUgdG8gYmUgdXNlZAo+Pj4gYXMgdGhlIHNpZ3VsYXIgdmVyYnMuIEFsc28sIEkg
dGhpbmsgdGhhdCBoYXZlIHRvIGVuaGFuY2UgdGhlIGNvbW1lbnRzCj4+PiBJIHByZWZlciB0byB1
c2UgZm9sbG93aW5nIGNvbW1lbnRzOgo+Pj4KPj4+IAkgLyogQ29uc3RyYWludCBtaW5pbXVtL21h
eGltdW0gZnJlcXVlbmN5IGZyb20gdXNlciBpbnB1dCB2aWEgc3lzZnMgKi8KPj4+Cj4+Pgo+Pj4K
Pj4+PiArCSptaW5fZnJlcSA9IG1heCgqbWluX2ZyZXEsIGRldmZyZXEtPm1pbl9mcmVxKTsKPj4+
PiArCSptYXhfZnJlcSA9IG1pbigqbWF4X2ZyZXEsIGRldmZyZXEtPm1heF9mcmVxKTsKPj4+PiAr
Cj4+Pj4gKwkvKiBjb25zdHJhaW50cyBmcm9tIE9QUCBpbnRlcmZhY2UgKi8KPj4+Cj4+PiBkaXR0
by4gSSBwcmVmZXIgdG8gdXNlIGZvbGxvd2luZyBjb21tZW50czoKPj4+Cj4+PiAJLyogQ29uc3Ry
YWludCBtaW5pbXVtL21heGltdW0gZnJlcXVlbmN5IGZyb20gT1BQIGludGVyZmFjZSAqLwo+Pj4K
Pj4+Cj4+Pj4gKwkqbWluX2ZyZXEgPSBtYXgoKm1pbl9mcmVxLCBkZXZmcmVxLT5zY2FsaW5nX21p
bl9mcmVxKTsKPj4+PiArCS8qIHNjYWxpbmdfbWF4X2ZyZXEgY2FuIGJlIHplcm8gb24gZXJyb3Ig
Ki8KPj4+Cj4+PiBQbGVhc2UgcmVtb3ZlIGl0Lgo+Pj4KPj4+PiArCWlmIChkZXZmcmVxLT5zY2Fs
aW5nX21heF9mcmVxKQo+Pj4KPj4+IEFzIEkga25ldywgZGV2ZnJlcS0+c2NhbGluZ19tYXhfZnJl
cSBpcyBuZXZlciB6ZXJvLgo+Pj4gU28sIGl0IGlzIGFsd2F5cyB0cnVlLiBUaGlzIGlmIHN0YXRl
bWVudCBpcyBuZWVkZWQuCj4+Cj4+IEl0IGNhbiBoYXBwZW4gaWYgZmluZF9hdmFpbGFibGVfbWF4
X2ZyZXEgZW5jb3VudGVycyBhbiBlcnJvciB3aGVuIGNhbGxlZAo+PiBmcm9tIGRldmZyZXFfbm90
aWZpZXJfY2FsbC4KPiAKPiBJZiB5b3UgYXJlIHdvbmRlcmluZyB0aGlzIGNhc2UsIEkgdGhpbmsg
dGhhdCBoYXZlIHRvIGZpeAo+IHRoZSBwb3NzaWJsZSBpc3N1ZSBvbiB0aGVyZSBpbnN0ZWFkIG9m
IHRoaXMgcG9pbnQuCj4gCj4+Cj4+IE1heWJlIHRoYXQgc2hvdWxkIGJlIHNlcGFyYXRlbHkgZml4
ZWQgdG8gc2V0IHNjYWxpbmdfbWF4X2ZyZXEgdG8gYQo+PiBuZXV0cmFsIHZhbHVlIHN1Y2ggYXMg
IlVMT05HX01BWCIgaW5zdGVhZD8KPiAKPiBPSy4KPiAKPj4KPj4gQlRXOiB0aGUgZGV2ZnJlcV9u
b3RpZmllcl9jYWxsIGZ1bmN0aW9uIHJldHVybnMgLUVJTlZBTCBvbiBlcnJvciBidXQgaXQKPj4g
c2hvdWxkIHJldHVybiBvbmUgb2YgdGhlIE5PVElGWV9PSy9ET05FL1NUT1AgdmFsdWVzIGluc3Rl
YWQuIFRoZSBPUFAKPj4gZnJhbWV3b3JrIGlnbm9yZXMgbm90aWZpZXIgcmVzdWx0cyBidXQgKC1F
SU5WQUwgJiBOT1RJRllfU1RPUCkgZXZhbHVhdGVzCj4+IGFzIHRydWUgc28gb3RoZXIgbm90aWZp
ZXJzIHdpbGwgYmUgc2tpcHBlZCB1bmludGVudGlvbmFsbHkuCj4gCj4gSSBhZ3JlZS4gSXQgaXMg
bmVlZGVkIHRvIGZpeCB0aGUgcmV0dXJuIHZhbHVlIHR5cGUuCgpXaWxsIGluY2x1ZGUgYXMgc2Vw
YXJhdGUgcGF0Y2hlcyBpbiB2OS4KCj4+Pj4gKwkJKm1heF9mcmVxID0gbWluKCptYXhfZnJlcSwg
ZGV2ZnJlcS0+c2NhbGluZ19tYXhfZnJlcSk7Cj4+Pj4gKwo+Pj4+ICsJLyogbWF4X2ZyZXEgdGFr
ZXMgcHJlY2VkZW5jZSBvdmVyIG1pbl9mcmVxICovCj4+Pgo+Pj4gQXMgSSBzYWlkLCBhbG1vc3Qg
cGVvcGxlIGtub3cgdGhhdCBtaW5fZnJlcSBoYXZlIGJlIHVuZGVyIHRoYW4gbWF4X2ZyZXEuCj4+
PiBQbGVhc2UgcmVtb3ZlIGl0LiBBbmQgdW50aWwgZmluaXNoaW5nIHRoZSBkaXNjdXNzaW9uIG9u
IG1haWxpbmcgbGlzdCwKPj4+IHBsZWFzZSBkb24ndCBzZW5kIHRoZSBuZXh0IHZlcnNpb24uIElm
IHlvdSBqdXN0IHJlcGxpZWQgZnJvbSBteSBjb21tZW50Cj4+PiBhbmQgdGhlbiB3YWl0IG15IG5l
eHQgY29tbWVudCwgd2UgY2FuIHNhdmUgdGhlIHRpbWUgd2l0aG91dCByZXBseWluZwo+Pj4gdGhl
IHJlcGV0aXRpdmUgYW5kIHNhbWUgY29tbWVudCBmb3Igc2FtZSBwb2ludC4KPj4KPj4gVGhpcyBz
ZXJpZXMgbWFrZXMgaXQgcG9zc2libGUgdG8gc2V0IGEgbWluX2ZyZXEgaGlnaGVyIHRoYW4gbWF4
X2ZyZXEKPj4gKGZvciBleGFtcGxlIHZpYSBQTSBRb1MgZnJvbSB2YXJpb3VzIGRldmljZXMpLgo+
Pgo+PiBJdCBpcyBub3Qgb2J2aW91cyB0aGF0IG1pbl9mcmVxIHRha2VzIHByZWNlZGVuY2Ugb3Zl
ciBtYXhfZnJlcSBidXQgdGhlCj4+IGNvZGUgaXMgc2VsZi1ldmlkZW50IHNvIEkgd2lsbCByZW1v
dmUgdGhlIGNvbW1lbnQuCj4+Cj4+Pj4gKwlpZiAoKm1pbl9mcmVxID4gKm1heF9mcmVxKQo+Pj4+
ICsJCSptaW5fZnJlcSA9ICptYXhfZnJlcTsKPj4+PiArfQo+Pj4+ICsKPj4+PiAgICAvKioKPj4+
PiAgICAgKiBkZXZmcmVxX2dldF9mcmVxX2xldmVsKCkgLSBMb29rdXAgZnJlcV90YWJsZSBmb3Ig
dGhlIGZyZXF1ZW5jeQo+Pj4+ICAgICAqIEBkZXZmcmVxOgl0aGUgZGV2ZnJlcSBpbnN0YW5jZQo+
Pj4+ICAgICAqIEBmcmVxOgl0aGUgdGFyZ2V0IGZyZXF1ZW5jeQo+Pj4+ICAgICAqLwo+Pj4+IEBA
IC0zNDksMjAgKzM5MywxMSBAQCBpbnQgdXBkYXRlX2RldmZyZXEoc3RydWN0IGRldmZyZXEgKmRl
dmZyZXEpCj4+Pj4gICAgCj4+Pj4gICAgCS8qIFJlZXZhbHVhdGUgdGhlIHByb3BlciBmcmVxdWVu
Y3kgKi8KPj4+PiAgICAJZXJyID0gZGV2ZnJlcS0+Z292ZXJub3ItPmdldF90YXJnZXRfZnJlcShk
ZXZmcmVxLCAmZnJlcSk7Cj4+Pj4gICAgCWlmIChlcnIpCj4+Pj4gICAgCQlyZXR1cm4gZXJyOwo+
Pj4+IC0KPj4+PiAtCS8qCj4+Pj4gLQkgKiBBZGp1c3QgdGhlIGZyZXF1ZW5jeSB3aXRoIHVzZXIg
ZnJlcSwgUW9TIGFuZCBhdmFpbGFibGUgZnJlcS4KPj4+PiAtCSAqCj4+Pj4gLQkgKiBMaXN0IGZy
b20gdGhlIGhpZ2hlc3QgcHJpb3JpdHkKPj4+PiAtCSAqIG1heF9mcmVxCj4+Pj4gLQkgKiBtaW5f
ZnJlcQo+Pj4+IC0JICovCj4+Pj4gLQltYXhfZnJlcSA9IG1pbihkZXZmcmVxLT5zY2FsaW5nX21h
eF9mcmVxLCBkZXZmcmVxLT5tYXhfZnJlcSk7Cj4+Pj4gLQltaW5fZnJlcSA9IG1heChkZXZmcmVx
LT5zY2FsaW5nX21pbl9mcmVxLCBkZXZmcmVxLT5taW5fZnJlcSk7Cj4+Pj4gKwlnZXRfZnJlcV9y
YW5nZShkZXZmcmVxLCAmbWluX2ZyZXEsICZtYXhfZnJlcSk7Cj4+Pj4gICAgCj4+Pj4gICAgCWlm
IChmcmVxIDwgbWluX2ZyZXEpIHsKPj4+PiAgICAJCWZyZXEgPSBtaW5fZnJlcTsKPj4+PiAgICAJ
CWZsYWdzICY9IH5ERVZGUkVRX0ZMQUdfTEVBU1RfVVBQRVJfQk9VTkQ7IC8qIFVzZSBHTEIgKi8K
Pj4+PiAgICAJfQo+Pj4+IEBAIC0xMjk4LDQwICsxMzMzLDI4IEBAIHN0YXRpYyBzc2l6ZV90IG1p
bl9mcmVxX3N0b3JlKHN0cnVjdCBkZXZpY2UgKmRldiwgc3RydWN0IGRldmljZV9hdHRyaWJ1dGUg
KmF0dHIsCj4+Pj4gICAgCXJldCA9IHNzY2FuZihidWYsICIlbHUiLCAmdmFsdWUpOwo+Pj4+ICAg
IAlpZiAocmV0ICE9IDEpCj4+Pj4gICAgCQlyZXR1cm4gLUVJTlZBTDsKPj4+PiAgICAKPj4+PiAg
ICAJbXV0ZXhfbG9jaygmZGYtPmxvY2spOwo+Pj4+IC0KPj4+PiAtCWlmICh2YWx1ZSkgewo+Pj4+
IC0JCWlmICh2YWx1ZSA+IGRmLT5tYXhfZnJlcSkgewo+Pj4+IC0JCQlyZXQgPSAtRUlOVkFMOwo+
Pj4+IC0JCQlnb3RvIHVubG9jazsKPj4+PiAtCQl9Cj4+Pj4gLQl9IGVsc2Ugewo+Pj4+IC0JCXVu
c2lnbmVkIGxvbmcgKmZyZXFfdGFibGUgPSBkZi0+cHJvZmlsZS0+ZnJlcV90YWJsZTsKPj4+PiAt
Cj4+Pj4gLQkJLyogR2V0IG1pbmltdW0gZnJlcXVlbmN5IGFjY29yZGluZyB0byBzb3J0aW5nIG9y
ZGVyICovCj4+Pj4gLQkJaWYgKGZyZXFfdGFibGVbMF0gPCBmcmVxX3RhYmxlW2RmLT5wcm9maWxl
LT5tYXhfc3RhdGUgLSAxXSkKPj4+PiAtCQkJdmFsdWUgPSBmcmVxX3RhYmxlWzBdOwo+Pj4+IC0J
CWVsc2UKPj4+PiAtCQkJdmFsdWUgPSBmcmVxX3RhYmxlW2RmLT5wcm9maWxlLT5tYXhfc3RhdGUg
LSAxXTsKPj4+PiAtCX0KPj4+PiAtCj4+Pj4gICAgCWRmLT5taW5fZnJlcSA9IHZhbHVlOwo+Pj4+
ICAgIAl1cGRhdGVfZGV2ZnJlcShkZik7Cj4+Pj4gLQlyZXQgPSBjb3VudDsKPj4+PiAtdW5sb2Nr
Ogo+Pj4+ICAgIAltdXRleF91bmxvY2soJmRmLT5sb2NrKTsKPj4+PiAtCXJldHVybiByZXQ7Cj4+
Pj4gKwo+Pj4+ICsJcmV0dXJuIGNvdW50Owo+Pj4+ICAgIH0KPj4+PiAgICAKPj4+PiAgICBzdGF0
aWMgc3NpemVfdCBtaW5fZnJlcV9zaG93KHN0cnVjdCBkZXZpY2UgKmRldiwgc3RydWN0IGRldmlj
ZV9hdHRyaWJ1dGUgKmF0dHIsCj4+Pj4gICAgCQkJICAgICBjaGFyICpidWYpCj4+Pj4gICAgewo+
Pj4+ICAgIAlzdHJ1Y3QgZGV2ZnJlcSAqZGYgPSB0b19kZXZmcmVxKGRldik7Cj4+Pj4gKwl1bnNp
Z25lZCBsb25nIG1pbl9mcmVxLCBtYXhfZnJlcTsKPj4+PiArCj4+Pj4gKwltdXRleF9sb2NrKCZk
Zi0+bG9jayk7Cj4+Pj4gKwlnZXRfZnJlcV9yYW5nZShkZiwgJm1pbl9mcmVxLCAmbWF4X2ZyZXEp
Owo+Pj4+ICsJbXV0ZXhfdW5sb2NrKCZkZi0+bG9jayk7Cj4+Pj4gICAgCj4+Pj4gLQlyZXR1cm4g
c3ByaW50ZihidWYsICIlbHVcbiIsIG1heChkZi0+c2NhbGluZ19taW5fZnJlcSwgZGYtPm1pbl9m
cmVxKSk7Cj4+Pj4gKwlyZXR1cm4gc3ByaW50ZihidWYsICIlbHVcbiIsIG1pbl9mcmVxKTsKPj4+
PiAgICB9Cj4+Pj4gICAgCj4+Pj4gICAgc3RhdGljIHNzaXplX3QgbWF4X2ZyZXFfc3RvcmUoc3Ry
dWN0IGRldmljZSAqZGV2LCBzdHJ1Y3QgZGV2aWNlX2F0dHJpYnV0ZSAqYXR0ciwKPj4+PiAgICAJ
CQkgICAgICBjb25zdCBjaGFyICpidWYsIHNpemVfdCBjb3VudCkKPj4+PiAgICB7Cj4+Pj4gQEAg
LTEzNDMsNDAgKzEzNjYsMzMgQEAgc3RhdGljIHNzaXplX3QgbWF4X2ZyZXFfc3RvcmUoc3RydWN0
IGRldmljZSAqZGV2LCBzdHJ1Y3QgZGV2aWNlX2F0dHJpYnV0ZSAqYXR0ciwKPj4+PiAgICAJaWYg
KHJldCAhPSAxKQo+Pj4+ICAgIAkJcmV0dXJuIC1FSU5WQUw7Cj4+Pj4gICAgCj4+Pj4gICAgCW11
dGV4X2xvY2soJmRmLT5sb2NrKTsKPj4+PiAgICAKPj4+PiAtCWlmICh2YWx1ZSkgewo+Pj4+IC0J
CWlmICh2YWx1ZSA8IGRmLT5taW5fZnJlcSkgewo+Pj4+IC0JCQlyZXQgPSAtRUlOVkFMOwo+Pj4+
IC0JCQlnb3RvIHVubG9jazsKPj4+PiAtCQl9Cj4+Pj4gLQl9IGVsc2Ugewo+Pj4+IC0JCXVuc2ln
bmVkIGxvbmcgKmZyZXFfdGFibGUgPSBkZi0+cHJvZmlsZS0+ZnJlcV90YWJsZTsKPj4+PiAtCj4+
Pj4gLQkJLyogR2V0IG1heGltdW0gZnJlcXVlbmN5IGFjY29yZGluZyB0byBzb3J0aW5nIG9yZGVy
ICovCj4+Pj4gLQkJaWYgKGZyZXFfdGFibGVbMF0gPCBmcmVxX3RhYmxlW2RmLT5wcm9maWxlLT5t
YXhfc3RhdGUgLSAxXSkKPj4+PiAtCQkJdmFsdWUgPSBmcmVxX3RhYmxlW2RmLT5wcm9maWxlLT5t
YXhfc3RhdGUgLSAxXTsKPj4+PiAtCQllbHNlCj4+Pj4gLQkJCXZhbHVlID0gZnJlcV90YWJsZVsw
XTsKPj4+PiAtCX0KPj4+PiArCS8qIEludGVycHJldCB6ZXJvIGFzICJkb24ndCBjYXJlIiAqLwo+
Pj4KPj4+IFBsZWFzZSByZW1vdmUgaXQuIEFsc28sIHRoZSBkZXRhaWxlZCBjb21tZW50IGZvciB1
c2VyIGhhdmUgdG8gYWRkCj4+PiB0aGUgZG9jdW1lbnRhdGlvbiBmaWxlLgo+Pgo+PiBPSwo+Pgo+
Pj4KPj4+PiArCWlmICghdmFsdWUpCj4+Pj4gKwkJdmFsdWUgPSBVTE9OR19NQVg7Cj4+Pj4gICAg
Cj4+Pj4gICAgCWRmLT5tYXhfZnJlcSA9IHZhbHVlOwo+Pj4+ICAgIAl1cGRhdGVfZGV2ZnJlcShk
Zik7Cj4+Pj4gLQlyZXQgPSBjb3VudDsKPj4+PiAtdW5sb2NrOgo+Pj4+ICAgIAltdXRleF91bmxv
Y2soJmRmLT5sb2NrKTsKPj4+PiAtCXJldHVybiByZXQ7Cj4+Pj4gKwo+Pj4+ICsJcmV0dXJuIGNv
dW50Owo+Pj4+ICAgIH0KPj4+PiAgICBzdGF0aWMgREVWSUNFX0FUVFJfUlcobWluX2ZyZXEpOwo+
Pj4+ICAgIAo+Pj4+ICAgIHN0YXRpYyBzc2l6ZV90IG1heF9mcmVxX3Nob3coc3RydWN0IGRldmlj
ZSAqZGV2LCBzdHJ1Y3QgZGV2aWNlX2F0dHJpYnV0ZSAqYXR0ciwKPj4+PiAgICAJCQkgICAgIGNo
YXIgKmJ1ZikKPj4+PiAgICB7Cj4+Pj4gICAgCXN0cnVjdCBkZXZmcmVxICpkZiA9IHRvX2RldmZy
ZXEoZGV2KTsKPj4+PiArCXVuc2lnbmVkIGxvbmcgbWluX2ZyZXEsIG1heF9mcmVxOwo+Pj4+ICsK
Pj4+PiArCW11dGV4X2xvY2soJmRmLT5sb2NrKTsKPj4+PiArCWdldF9mcmVxX3JhbmdlKGRmLCAm
bWluX2ZyZXEsICZtYXhfZnJlcSk7Cj4+Pj4gKwltdXRleF91bmxvY2soJmRmLT5sb2NrKTsKPj4+
PiAgICAKPj4+PiAtCXJldHVybiBzcHJpbnRmKGJ1ZiwgIiVsdVxuIiwgbWluKGRmLT5zY2FsaW5n
X21heF9mcmVxLCBkZi0+bWF4X2ZyZXEpKTsKPj4+PiArCXJldHVybiBzcHJpbnRmKGJ1ZiwgIiVs
dVxuIiwgbWF4X2ZyZXEpOwo+Pj4+ICAgIH0KPj4+PiAgICBzdGF0aWMgREVWSUNFX0FUVFJfUlco
bWF4X2ZyZXEpOwo+Pj4+ICAgIAo+Pj4+ICAgIHN0YXRpYyBzc2l6ZV90IGF2YWlsYWJsZV9mcmVx
dWVuY2llc19zaG93KHN0cnVjdCBkZXZpY2UgKmQsCj4+Pj4gICAgCQkJCQkgIHN0cnVjdCBkZXZp
Y2VfYXR0cmlidXRlICphdHRyLAo+IAo+IAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJt
LWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
