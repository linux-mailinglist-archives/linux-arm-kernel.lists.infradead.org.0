Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7E8497A3B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 15:01:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=IAy3cdqtpXj4evwgAbvSD825LlZWoj5BFokfOtyy90I=; b=COliviI2NFOuK5
	RqPWlTNpEb75odws+aBecUdx2dZfG1lE13ZOZqMAeTFAcszEeezRZcwqiws0aKL77IC/pedei8/ZY
	S6FDCNR2Vj10UcInh6wyIpJfThc2lZtQhN7dQpsJf3lh+9HLBSEjDSxwzCjDoVUTn6fcWmz+O8SHr
	xQ2njUhJtMnpWf216t2ucgSw7Zl/RY2qA3j68GaryAQNpfovsHb14LkQUI12GFzKHJD4uhF69q1Pu
	4uLX+kG1MXo1UKr93KGAMx6saV+0891/cjqh1YsMAM7Q9Uv8cBM98LoIFq2btgJ6LVkRQt/9d21Ph
	dA6Jqtll8C4yidV5bdJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0QEh-0006qg-7v; Wed, 21 Aug 2019 13:01:11 +0000
Received: from mail-vi1eur04on061c.outbound.protection.outlook.com
 ([2a01:111:f400:fe0e::61c]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0QEU-0006q8-O8
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 13:01:00 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lVGmT59cAgn1AMcaYo7/GPFra3TnzxowqcuYEfqaEbI0wxsxnb2NMilpZhywYR1mn3PUxN57AoiNYKyD00H+/4xFBPCL38BAAcxMMQoX2H/BcZsXRR3P3lhdAoGNaC0xXqsbqEgtYRq9jK3RiFDxDVoSS9AjYfw8U8zL3CGRHzGeNWkho6N/lmX8Zo6aQMebdBqpOUJXCWZ+Ipes++aF4Nc9utdZ83oYtdQC9GX/B7TuyL2ribXfvzdJeGnoxOcT38KtLzguq6e6ikweabQ033AHmVGTEbeXjOybUdRJWSiIonCnw9A1oF6fyEMyCzKQ6zTxSizW5cx3ugLbJfJ1ng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wsCadgl3Wq/geuff78m8Cnb1wxCK9uWmCcuV80PpOFs=;
 b=EnIUPUefNyVm1FOeLt8s30dMd6TNpzgNEjZgILB3DAqYXbLWtpbIri6uDmJMci8xsBVUG0Gyb6KjWNf2pNJEfd2ll+yrs8mQ8SQltdIXRg6qohATkVWCOk7YG7ZXj41JHluTDhaC19tZakPlZKAtjuF4gLpjWH7OAhi57PXoJb3hO2eY+v3WsWKi8615VHzq4iAOQTw2VnWTfycYuCjtrKeVbaIY2jQfgp89VWZg9EO945KGTUQAEuDV1QRdV10wgZTKW20HjrGP9j/pg+nZEY8e4wB/FodhoemAl0EeEYpLhnvFHatS7CgunbR5fQRu9sIji2fMOo3OKmKgJiT1rg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wsCadgl3Wq/geuff78m8Cnb1wxCK9uWmCcuV80PpOFs=;
 b=kXyeFfhV6Cnll0ztZIOyWu2mCjq+FvjaL6/jPhlf8xLO+j9Nic1pqwmP/pvwSAoDyYeL7wqa6yxChRaTJRrLFHaI/xRdd36HaRmdVfaHvi214oyWLPae6kwe1fC3kh/7jTxEPaB+N5e2m+JcfmAvYTU1Qg9kcCmj6MFRKFmYCI8=
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com (10.186.159.144) by
 VI1PR04MB6206.eurprd04.prod.outlook.com (20.179.24.205) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.18; Wed, 21 Aug 2019 13:00:55 +0000
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::c5e8:90f8:da97:947e]) by VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::c5e8:90f8:da97:947e%3]) with mapi id 15.20.2178.020; Wed, 21 Aug 2019
 13:00:55 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Chanwoo Choi <cw00.choi@samsung.com>, MyungJoo Ham
 <myungjoo.ham@samsung.com>, Kyungmin Park <kyungmin.park@samsung.com>
Subject: Re: [PATCH v3 1/2] PM / devfreq: Add dev_pm_qos support
Thread-Topic: [PATCH v3 1/2] PM / devfreq: Add dev_pm_qos support
Thread-Index: AQHVV8F2unmwA2z0Ukqlgb1jMSU2xQ==
Date: Wed, 21 Aug 2019 13:00:55 +0000
Message-ID: <VI1PR04MB7023E05C5683C4392CEA5915EEAA0@VI1PR04MB7023.eurprd04.prod.outlook.com>
References: <cover.1566314535.git.leonard.crestez@nxp.com>
 <CGME20190820152410epcas4p214cadab5d2acfb2c659a777f2caa002b@epcas4p2.samsung.com>
 <3b93af7e61a573ea2a123c353255645b5ad2a805.1566314535.git.leonard.crestez@nxp.com>
 <6134bb9e-9a16-b432-c191-c91f93844319@samsung.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 816fb80f-ad85-406f-e989-08d726379a91
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR04MB6206; 
x-ms-traffictypediagnostic: VI1PR04MB6206:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB6206289804ABB29BB3D3F948EEAA0@VI1PR04MB6206.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0136C1DDA4
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(366004)(396003)(346002)(376002)(39860400002)(189003)(51444003)(199004)(64756008)(102836004)(66446008)(66556008)(6506007)(66476007)(53546011)(91956017)(110136005)(9686003)(66066001)(66946007)(25786009)(76116006)(2906002)(86362001)(6436002)(54906003)(55016002)(256004)(305945005)(6246003)(74316002)(52536014)(14444005)(7736002)(478600001)(44832011)(4326008)(5660300002)(71200400001)(71190400001)(8936002)(7416002)(81156014)(8676002)(99286004)(476003)(186003)(316002)(446003)(6116002)(76176011)(7696005)(486006)(33656002)(81166006)(14454004)(53936002)(229853002)(3846002)(26005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB6206;
 H:VI1PR04MB7023.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 2EgkEibmzaOrqNRieQAnFdN7tpyhuapIStYNv0+/6tr1FCk2fml1uS8SCmmLqkxyRqmxPybUpH9Y9qTYsL7Rnud3gzZDpMX5u8FwWJR3AZjlim26i1Xy8zGy71/iq8PPypB+yW+dgSM+Wlui6XjCXnZ2JuTkvDwBD2u8KH1crfiWYiXC7AjKHje5gtO16OIr0Pra7O8hknJpdQGgt2llzOEJK+f3yKyM7EqwRWoj0kdArJtJpu0s8phjxg/KZ0RIi6HUC6swnBZninl0HKE5LZ8PG5PqBSgYHst7EhnENGu+g5fpPMNb001mmavJTPuk6c1J0QvrfaJaM7+qqpPGFK+63YAikw/yLi6aZ/wm7bZZL0NpnK7hQqO0ptqXXZqNhE2iEEENRiHFROZDPw50KTGMQQA9ywmwKbNSJ6IczQY=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 816fb80f-ad85-406f-e989-08d726379a91
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Aug 2019 13:00:55.4194 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LYJ3SvgDxTiS/dUR7e83cnRvQzrJH94uqPO3RgmHBpoAfYUNCXSjEE3lpcmqJ682TU7kA4b3kggFveEtOLTdeg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB6206
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_060058_904040_ED8E3779 
X-CRM114-Status: GOOD (  17.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe0e:0:0:0:61c listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: =?utf-8?B?QXJ0dXIgxZp3aWdvxYQ=?= <a.swigon@partner.samsung.com>,
 Jacky Bai <ping.bai@nxp.com>, Saravana Kannan <saravanak@google.com>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Alexandre Bailon <abailon@baylibre.com>,
 "cpgs \(cpgs@samsung.com\)" <cpgs@samsung.com>,
 Georgi Djakov <georgi.djakov@linaro.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjEuMDguMjAxOSAwNDo0MCwgQ2hhbndvbyBDaG9pIHdyb3RlOgoKPiBPbiAxOS4gOC4gMjEu
IOyYpOyghCAxMjoyNCwgTGVvbmFyZCBDcmVzdGV6IHdyb3RlOgo+PiBBZGQgZGV2X3BtX3FvcyBu
b3RpZmllcyB0byBkZXZmcmVxIGNvcmUgaW4gb3JkZXIgdG8gc3VwcG9ydCBmcmVxdWVuY3kKPj4g
bGltaXRzIHZpYSB0aGUgZGV2X3BtX3Fvc19hZGRfcmVxdWVzdC4KPj4KPj4gK3N0YXRpYyB1bnNp
Z25lZCBsb25nIGdldF9lZmZlY3RpdmVfbWluX2ZyZXEoc3RydWN0IGRldmZyZXEgKmRldmZyZXEp
Cj4gCj4gSSdtIG5vdCBzdXJlIHRoYXQgJ2VmZmVjdGl2ZScgZXhwcmVzc2lvbiBpcyBjb3JyZWN0
Lgo+ICBGcm9tIHRoaXMgZnVuY3Rpb24sIHRoZSBkZXZmcmVxIGNhbiBnZXQgdGhlIGZpbmFsIHRh
cmdldCBmcmVxdWVuY3kuCj4gCj4gSSB0aGluayB0aGF0IHdlIG5lZWQgdG8gdXNlIHRoZSBtb3Jl
IGNvcnJlY3QgZXhwcmVzc2lvbgo+IHRvIGdpdmUgdGhlIG1lYW5pbmcgb2YgZnVuY3Rpb24gYXMg
Zm9sbG93aW5nOgo+IAo+IGdldF9taW5fZnJlcQo+IGdldF9tYXhfZnJlcQoKT0ssIHdpbGwgcmVu
YW1lIHRvIGdldF9taW5fZnJlcSBhbmQgZ2V0X21heF9mcmVxCgo+PiBAQCAtNjM2LDIxICs2ODgs
NDAgQEAgc3RydWN0IGRldmZyZXEgKmRldmZyZXFfYWRkX2RldmljZShzdHJ1Y3QgZGV2aWNlICpk
ZXYsCj4+ICAgCQllcnIgPSAtRU5PTUVNOwo+PiAgIAkJZ290byBlcnJfb3V0Owo+PiAgIAl9Cj4+
ICAgCj4+ICAgCW11dGV4X2luaXQoJmRldmZyZXEtPmxvY2spOwo+PiAtCW11dGV4X2xvY2soJmRl
dmZyZXEtPmxvY2spOwo+IAo+IEJhc2ljYWxseSwgSSB0aGluayB0aGF0IGl0IGlzIHNhZmUgdG8g
bG9jayB3aGVuIHRvdWNoCj4gdGhlIHZhcmlhYmxlIG9mIHRoZSBkZXZmcmVxLgo+IAo+IGl0IGlz
IG5vdCBwcm9wZXIgd2F5IGZvciB0aGUgZGV2X3BtX3FvcyBiZWNhdXNlCj4gaXQgYnJlYWtzIHRo
ZSBleGlzdGluZyBsb2NraW5nIHJlYXNvbiBvZiBkZXZmcmVxJ3MgdmFyaWFibGVzLgoKSSBkb24n
dCB1bmRlcnN0YW5kIHdoYXQgeW91IG1lYW4uIEknbSBpbml0aWFsaXppbmcgc29tZSBzdHVmZiBv
dXRzaWRlIAp0aGUgbG9jayB0byBhdm9pZCBjaXJjdWxhciBsb2NrIHdhcm5pbmcgYmV0d2VlbjoK
CigmZGV2ZnJlcS0+bG9jayl7Ky4rLn0sIGF0OiBkZXZmcmVxX3Fvc19taW5fbm90aWZpZXJfY2Fs
bCsweDI0LzB4NDgKKCYobiktPnJ3c2VtKXsrKysrfSwgYXQ6IGJsb2NraW5nX25vdGlmaWVyX2Nh
bGxfY2hhaW4rMHgzYy8weDc4CgpJbiBnZW5lcmFsIHlvdSBkb24ndCBuZWVkIHRvIGxvY2sgYW4g
b2JqZWN0IHdoaWxlIGluaXRpYWxpemluZyBleGNlcHQgCmFmdGVyIGl0IGJlY29tZXMgYWNjZXNz
aWJsZSBmcm9tIHRoZSBvdXRzaWRlIHNvIGRldmZyZXFfYWRkX2RldmljZSAKZG9lc24ndCBuZWVk
IHRvIHRha2UgdGhlIGxvY2sgc28gZWFybHkuCgpUaGUgUU9TIG5vdGlmaWVycyBhcmUgcmVnaXN0
ZXJlZCBvbiB0aGUgcGFyZW50IGRldmljZSBzbyBpbiB0aGVvcnkgaXQncyAKcG9zc2libGUgZm9y
IHNvbWVib2R5IHRvIGFkZCBRT1MgcmVxdWVzdHMgd2hpbGUgZGV2ZnJlcV9hZGRfZGV2aWNlIGlz
IApleGVjdXRpbmcuIE1heWJlIG5vdGlmaWVyIHJlZ2lzdHJhdGlvbiBzaG91bGQgYmUgbW92ZWQg
YXQgdGhlIGVuZCBhZnRlciAKdW5sb2NrPwoKLS0KUmVnYXJkcywKTGVvbmFyZApfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1h
aWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
