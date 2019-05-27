Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EEDA32B1D2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 12:05:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EHV2PxXjoboCPy3CDeMs4MOFKuwSUBvUn3bu3jtQlRs=; b=bWMVKWMk8UYcMg
	hG4H7zMGBlIRz874Y1MaFEZtSNS3p8m+vWDB4avIXplP88QRvBFQA0szY9hgOeCm87Nh3ALz/bFAg
	E/CFnB129X20IRmRMuVN3xsT85Z6U5+gm/1ugj4O5ajb/Y+ykWbTO/rOdC7eIxGDqkCnaC3yy9wZC
	Qa7N5cCUbXi0hBHeKuakCHixsfhD4q7i9uLO2y3RMwjxqbhelHxKYR8sbvocDnXI55MiYP3NtowOy
	mbz5B+wa0egDd7FwyUG3mke0bUXvqjP0ivMyGywK52cvlaYmQrKCs1XUyaZaZ6d0TeU+HE6xkwDwA
	KI0eSSlYgSdXas9aDUqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVCVN-0000Oa-MB; Mon, 27 May 2019 10:05:21 +0000
Received: from mail-eopbgr130059.outbound.protection.outlook.com
 ([40.107.13.59] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVCUy-0007OW-4Q
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 10:04:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JF/O7UKKkH8RkrEcANCsfDz00eyxt9uiF1k74Vg303U=;
 b=Cs9QvTTloeySjge2NQxo/h0zTBT2lSNlQZVSMjUYtEi2wehkA+H7Ca3L5uMVBohfixixtOI1OmO+0J2R+ADAPbr5H1w7Gs/HHIQlTd7TGtRzbVu5//dUQnACR/XwEh1+AguHds3QXn6JDozOzkUjiuKa0C9DY6tk0lHpPFgsMto=
Received: from VI1PR04MB4543.eurprd04.prod.outlook.com (20.177.55.90) by
 VI1PR04MB4960.eurprd04.prod.outlook.com (20.177.49.213) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1922.17; Mon, 27 May 2019 10:04:52 +0000
Received: from VI1PR04MB4543.eurprd04.prod.outlook.com
 ([fe80::5062:df97:a70b:93f8]) by VI1PR04MB4543.eurprd04.prod.outlook.com
 ([fe80::5062:df97:a70b:93f8%7]) with mapi id 15.20.1922.021; Mon, 27 May 2019
 10:04:52 +0000
From: Robin Gong <yibin.gong@nxp.com>
To: "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>
Subject: Re: [PATCH v2 6/7] dmaengine: fsl-edma: add i.mx7ulp edma2 version
 support
Thread-Topic: [PATCH v2 6/7] dmaengine: fsl-edma: add i.mx7ulp edma2 version
 support
Thread-Index: AQHVFGkz0t9zeFrYqUCYdK5UT0BVD6Z+rfOAgACXqQA=
Date: Mon, 27 May 2019 10:04:52 +0000
Message-ID: <1558980522.19282.19.camel@nxp.com>
References: <20190527085118.40423-1-yibin.gong@nxp.com>
 <20190527085118.40423-7-yibin.gong@nxp.com>
 <20190527090553.lek7tm3lyst3bhrd@pengutronix.de>
In-Reply-To: <20190527090553.lek7tm3lyst3bhrd@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.18.5.2-0ubuntu3.2 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=yibin.gong@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f2587d9a-605c-4e00-1955-08d6e28ac336
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR04MB4960; 
x-ms-traffictypediagnostic: VI1PR04MB4960:
x-microsoft-antispam-prvs: <VI1PR04MB49604F55D102F58D9CCD8918891D0@VI1PR04MB4960.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0050CEFE70
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(376002)(39860400002)(346002)(366004)(136003)(189003)(199004)(478600001)(6486002)(229853002)(6246003)(2351001)(73956011)(256004)(7416002)(71200400001)(71190400001)(91956017)(76116006)(66556008)(64756008)(66446008)(14454004)(4326008)(66476007)(66946007)(66066001)(25786009)(103116003)(8936002)(6116002)(3846002)(8676002)(36756003)(5640700003)(5660300002)(81156014)(186003)(6506007)(53546011)(11346002)(81166006)(26005)(102836004)(68736007)(476003)(2616005)(446003)(486006)(2906002)(54906003)(76176011)(316002)(99286004)(305945005)(86362001)(7736002)(2501003)(50226002)(6512007)(53936002)(6436002)(6916009)(99106002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB4960;
 H:VI1PR04MB4543.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: ccE1UjTR8vtON0cdMdxuizdJYXSahrGA5W7O8mJtdgHkUpBszNVF/lzgMJ8g8GBCI6MegDd/L4mvnBjdMjbfFukeKZiV4aYH7FLgVSKYoNsJ4n0kY8kXXNdWEAB7suafnx9za6Joh0Du96ipl82rFkNTLclu+F5GCJj4MS+kPNPwg2+NoJ1gFQGDEqd+VVKsWr9b+B8wAWvbmJsUFgW27kA5v2jq2s4f44IaeZpaTRw0gXhauerV1ThJIww6AvaTYB/MujA4AMhDy3yPjWBsfg06r/ZKzGFnUJgDZ3+Ce0d0yD12eCss9iZxp6jzQMgGhVPhd6+/mB3glS2Qq9IK6DEPw0gqFXao1I5wKH6zdBx4V5VFPckuDprxe+Sa7Yyeddm5JDfQzjrT2JIQd+M1SUnCR6ylaSK9DyabEsu8EbY=
Content-ID: <8E36FDC36F6C504D97207C792FF31B4D@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f2587d9a-605c-4e00-1955-08d6e28ac336
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 May 2019 10:04:52.7171 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yibin.gong@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB4960
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_030456_614504_CE547313 
X-CRM114-Status: GOOD (  17.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.59 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "robh@kernel.org" <robh@kernel.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "vkoul@kernel.org" <vkoul@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "dmaengine@vger.kernel.org" <dmaengine@vger.kernel.org>,
 "dan.j.williams@intel.com" <dan.j.williams@intel.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjAxOS0wNS0yNyBhdCAxMTowNSArMDIwMCwgU2FzY2hhIEhhdWVyIHdyb3RlOg0KPiBPbiBN
b24sIE1heSAyNywgMjAxOSBhdCAwNDo1MToxN1BNICswODAwLCB5aWJpbi5nb25nQG54cC5jb20g
d3JvdGU6DQo+ID4gDQo+ID4gRnJvbTogUm9iaW4gR29uZyA8eWliaW4uZ29uZ0BueHAuY29tPg0K
PiA+IA0KPiA+ICtzdGF0aWMgY29uc3Qgc3RydWN0IG9mX2RldmljZV9pZCBmc2xfZWRtYV9kdF9p
ZHNbXSA9IHsNCj4gPiArCXsgLmNvbXBhdGlibGUgPSAiZnNsLHZmNjEwLWVkbWEiLCAuZGF0YSA9
ICh2b2lkICopdjEgfSwNCj4gPiArCXsgLmNvbXBhdGlibGUgPSAiZnNsLGlteDd1bHAtZWRtYSIs
IC5kYXRhID0gKHZvaWQgKil2MyB9LA0KPiA+ICsJeyAvKiBzZW50aW5lbCAqLyB9DQo+IFBsZWFz
ZSBwdXQgYSBzdHJ1Y3QgdHlwZSBiZWhpbmQgdGhlIC5kYXRhIHBvaW50ZXIgc28gdGhhdCB5b3Ug
Y2FuDQo+IGNvbmZpZ3VyZS4uLg0KQnV0IGN1cnJlbnQgb25seSB2ZXJzaW9uIG5lZWRlZCwgc28g
SSBnaXZlIHVwIHN0cnVjdCBkZWZpbmUuLi4uDQo+IA0KPiA+IA0KPiA+ICt9Ow0KPiA+ICtNT0RV
TEVfREVWSUNFX1RBQkxFKG9mLCBmc2xfZWRtYV9kdF9pZHMpOw0KPiA+ICsNCj4gPiBAQCAtMjE4
LDYgKzI3MiwyMiBAQCBzdGF0aWMgaW50IGZzbF9lZG1hX3Byb2JlKHN0cnVjdA0KPiA+IHBsYXRm
b3JtX2RldmljZSAqcGRldikNCj4gPiDCoAlmc2xfZWRtYV9zZXR1cF9yZWdzKGZzbF9lZG1hKTsN
Cj4gPiDCoAlyZWdzID0gJmZzbF9lZG1hLT5yZWdzOw0KPiA+IMKgDQo+ID4gKwlpZiAoZnNsX2Vk
bWEtPnZlcnNpb24gPT0gdjMpIHsNCj4gPiArCQlmc2xfZWRtYS0+ZG1hbXV4X25yID0gMTsNCj4g
Li4udGhpbmdzIGxpa2UgdGhpcy4uLg0KWWVzLCBkbWFtdXhfbnIgY291bGQgYmUgbW92ZWQgdG8g
c3RydWN0IGF0IGxlYXN0Lg0KPiANCj4gPiANCj4gPiBAQCAtMjY0LDcgKzMzNCwxMSBAQCBzdGF0
aWMgaW50IGZzbF9lZG1hX3Byb2JlKHN0cnVjdA0KPiA+IHBsYXRmb3JtX2RldmljZSAqcGRldikN
Cj4gPiDCoAl9DQo+ID4gwqANCj4gPiDCoAllZG1hX3dyaXRlbChmc2xfZWRtYSwgfjAsIHJlZ3Mt
PmludGwpOw0KPiA+IC0JcmV0ID0gZnNsX2VkbWFfaXJxX2luaXQocGRldiwgZnNsX2VkbWEpOw0K
PiA+ICsNCj4gPiArCWlmIChmc2xfZWRtYS0+dmVyc2lvbiA9PSB2MykNCj4gPiArCQlyZXQgPSBm
c2xfZWRtYTJfaXJxX2luaXQocGRldiwgZnNsX2VkbWEpOw0KPiA+ICsJZWxzZQ0KPiA+ICsJCXJl
dCA9IGZzbF9lZG1hX2lycV9pbml0KHBkZXYsIGZzbF9lZG1hKTsNCj4gLi4uYW5kIHRoaXMgb25l
IGluIHRoYXQgc3RydWN0IHJhdGhlciB0aGFuIGxpdHRlcmluZyB0aGUgY29kZSBtb3JlDQo+IGFu
ZA0KPiBtb3JlIHdpdGggc3VjaCB2ZXJzaW9uIHRlc3RzLg0KWWVzLCBzdWNoIGlycSBzZXR1cCBm
dW5jdGlvbiBjb3VsZCBiZSBtb3ZlZCB0byBzdHJ1Y3QsIHRodXMsIG5vIHZlcnNpb24NCnRlc3Qg
aW4gdGhpcyBmaWxlLiBXaWxsIHJlZmluZSBpdCBpbiB2My4NCj4gDQo+IFNhc2NoYQ0KPiAKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtl
cm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5l
bAo=
