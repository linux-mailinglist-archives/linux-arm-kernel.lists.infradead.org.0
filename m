Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C22B578198
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 28 Jul 2019 22:52:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UBiDA0DOASBMpo1bEsP+tzr6Od7Tyohq4gGRP3DcNxc=; b=BWHOZI5AYXvgKc
	CnRC15uh30Pvclr4FlZEpRVAF9VRndjd03Jzs1OKXqqiS1/fyMVlbUU+uIymXzuth+jOKTYh15Sae
	n4/zLfX75jnMW0TZXz9cBNS6c6WnvrY0sX0Sek0ludhNmUaF+3FX9aQ18KJ4Cow7nHBZ+Z8xvJeal
	3Y92Doa/ib1PNRLx0oTIaIapzg/lPm/i81zRkkQkCBlX1EqRAjH9HZ2D3bZxD8ZjOYzFQ9XWQxUDE
	/Sode8E3dpGzXti8s7taAhZL1y2MB56NgO1aO95mETMVB0hHTRbIbkoBE2Rq8n6O7LvY/jz33tPhM
	tSxS9Yh/oY33z74nBLMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrq9h-0001ry-IT; Sun, 28 Jul 2019 20:52:33 +0000
Received: from gate2.alliedtelesis.co.nz ([202.36.163.20])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrq9P-0001qt-TK
 for linux-arm-kernel@lists.infradead.org; Sun, 28 Jul 2019 20:52:18 +0000
Received: from mmarshal3.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id EDE23806CB;
 Mon, 29 Jul 2019 08:52:11 +1200 (NZST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
 s=mail181024; t=1564347131;
 bh=zwcgDTpzh+QcJgMzqiOYrkpXMbDm/2Rj+UICFKBXGYI=;
 h=From:To:CC:Subject:Date:References:In-Reply-To;
 b=vdssij1lGMNVqERnpgnOgrBybm8AtMbCqEulQ1a59R8cy+Yrfz672WyCs4RXlfN8e
 wpodem2Vwf+Dzk+Vot96G4UgV3KGJVqTFvDdggDXKX/rTmVsk0xuo+RRIErrbzwfHX
 Xvqst9+gE+rZvAr2Xvs2c5FS3p/EaYd2ykhDXEMQC0wsPRCCJSoGnmRqTHvkmT407z
 LAJxGoL2cmpKPFyIdzekVaXfyac5lkVeDKfwQlKRibp4gSFbkoOUa9U2C8tO2HvfRj
 SrRkqJ2G3iVdA/nPUrfTxqYzVgRTKwvo901b9wdg8lrW+1dqiOJ8pXkWernAPf1ZTH
 Z8fgrSDU9Q6vg==
Received: from svr-chch-ex1.atlnz.lc (Not Verified[10.32.16.77]) by
 mmarshal3.atlnz.lc with Trustwave SEG (v7, 5, 8, 10121)
 id <B5d3e0afa0000>; Mon, 29 Jul 2019 08:52:11 +1200
Received: from svr-chch-ex1.atlnz.lc (2001:df5:b000:bc8:409d:36f5:8899:92e8)
 by svr-chch-ex1.atlnz.lc (2001:df5:b000:bc8:409d:36f5:8899:92e8) with
 Microsoft SMTP Server (TLS) id 15.0.1156.6; Mon, 29 Jul 2019 08:52:10 +1200
Received: from svr-chch-ex1.atlnz.lc ([fe80::409d:36f5:8899:92e8]) by
 svr-chch-ex1.atlnz.lc ([fe80::409d:36f5:8899:92e8%12]) with mapi id
 15.00.1156.000; Mon, 29 Jul 2019 08:52:10 +1200
From: Chris Packham <Chris.Packham@alliedtelesis.co.nz>
To: "james.morse@arm.com" <james.morse@arm.com>
Subject: Re: [PATCH v9 8/8] EDAC: armada_xp: Add support for more SoCs
Thread-Topic: [PATCH v9 8/8] EDAC: armada_xp: Add support for more SoCs
Thread-Index: AQHVOGTG3p6deoTr9Ump3in5VXqHLabcSTGAgAOJgIA=
Date: Sun, 28 Jul 2019 20:52:09 +0000
Message-ID: <1564347129.9737.19.camel@alliedtelesis.co.nz>
References: <20190712034904.5747-1-chris.packham@alliedtelesis.co.nz>
 <20190712034904.5747-9-chris.packham@alliedtelesis.co.nz>
 <128016c1-380f-70c4-3a89-2d3b0edf9f88@arm.com>
In-Reply-To: <128016c1-380f-70c4-3a89-2d3b0edf9f88@arm.com>
Accept-Language: en-NZ, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.18.5.2-0ubuntu3.2 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [2001:df5:b000:22:3a2c:4aff:fe70:2b02]
Content-ID: <5B786D49858CCE48BDD511B9984E1BFD@atlnz.lc>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190728_135216_512454_0607E190 
X-CRM114-Status: GOOD (  19.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [202.36.163.20 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "jlu@pengutronix.de" <jlu@pengutronix.de>,
 "linux-edac@vger.kernel.org" <linux-edac@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux@armlinux.org.uk" <linux@armlinux.org.uk>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, "bp@alien8.de" <bp@alien8.de>,
 "mchehab@kernel.org" <mchehab@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "patches@armlinux.org.uk" <patches@armlinux.org.uk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCAyMDE5LTA3LTI2IGF0IDE1OjUxICswMTAwLCBKYW1lcyBNb3JzZSB3cm90ZToNCj4g
SGkgQ2hyaXMsDQo+IA0KPiBPbiAxMi8wNy8yMDE5IDA0OjQ5LCBDaHJpcyBQYWNraGFtIHdyb3Rl
Og0KPiA+IA0KPiA+IFRoZSBBcm1hZGEgMzh4IGFuZCBvdGhlciBpbnRlZ3JhdGVkIFNvQ3MgdXNl
IGEgcmVkdWNlZCBwaW4gY291bnQgc28NCj4gPiB0aGUNCj4gPiB3aWR0aCBvZiB0aGUgU0RSQU0g
aW50ZXJmYWNlIGlzIHNtYWxsZXIgdGhhbiB0aGUgQXJtYWRhIFhQIFNvQ3MuDQo+ID4gVGhpcw0K
PiA+IG1lYW5zIHRoYXQgdGhlIGRlZmluaXRpb24gb2YgImZ1bGwiIGFuZCAiaGFsZiIgd2lkdGgg
aXMgcmVkdWNlZA0KPiA+IGZyb20NCj4gPiA2NC8zMiB0byAzMi8xNi4NCj4gPiANCj4gPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9lZGFjL2FybWFkYV94cF9lZGFjLmMNCj4gPiBiL2RyaXZlcnMvZWRh
Yy9hcm1hZGFfeHBfZWRhYy5jDQo+ID4gaW5kZXggMzc1OWE0ZmJiZGVlLi43ZjIyN2JkY2JjODQg
MTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9lZGFjL2FybWFkYV94cF9lZGFjLmMNCj4gPiArKysg
Yi9kcml2ZXJzL2VkYWMvYXJtYWRhX3hwX2VkYWMuYw0KPiA+IEBAIC0zMzIsNiArMzMyLDExIEBA
IHN0YXRpYyBpbnQgYXhwX21jX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UNCj4gPiAqcGRl
dikNCj4gPiDCoA0KPiA+IMKgCWF4cF9tY19yZWFkX2NvbmZpZyhtY2kpOw0KPiA+IMKgDQo+ID4g
KwkvKiBUaGVzZSBTb0NzIGhhdmUgYSByZWR1Y2VkIHdpZHRoIGJ1cyAqLw0KPiA+ICsJaWYgKG9m
X21hY2hpbmVfaXNfY29tcGF0aWJsZSgibWFydmVsbCxhcm1hZGEzODAiKSB8fA0KPiA+ICsJwqDC
oMKgwqBvZl9tYWNoaW5lX2lzX2NvbXBhdGlibGUoIm1hcnZlbGwsYXJtYWRheHAtOThkeDMyMzYi
KSkNCj4gPiArCQlkcnZkYXRhLT53aWR0aCAvPSAyOw0KPiBTbyB0aGUgaGFyZHdhcmUncyBTRFJB
TV9DT05GSUdfQlVTX1dJRFRIIHZhbHVlIGlzIHdyb25nPyBZdWNrLg0KPiANCg0KVGhlIG1heGlt
dW0gd2lkdGggZGlmZmVycyBiZXR3ZWVuIEFybWFkYS1YUCAoNjQtYml0KSBhbmQgQXJtYWRhLTM4
eA0KKDMyLWJpdCkuIFRoZXJlIGlzIHN0aWxsIHN0cmFwcGluZyB0byBjb250cm9sIGhhbGYtd2lk
dGggdnMgZnVsbC13aWR0aC4NCg0KPiBJcyBpdCB0b28gbGF0ZSBmb3IgdGhlIERUcyBvbiB0aGVz
ZSB0d28gc3lzdGVtcyB0byBwcm92aWRlIGEgRFQNCj4gdmVyc2lvbiBvZiB0aGUgJ2J1c193aWR0
aCcNCj4gdG8gb3ZlcnJpZGUgdGhlIGhhcmR3YXJlJ3MgbWlzLWFkdmVydGlzZWQgdmFsdWU/DQoN
CkluIGFuIGVhcmxpZXIgaXRlcmF0aW9uIEkgZGlkIGhhdmUgYSBEVCBwcm9wZXJ0eSBhcyB5b3Ug
c3VnZ2VzdC4gVGhlDQpwcm9ibGVtIGlzIHRoYXQgc29tZXRoaW5nIGxpa2UgImJ1cy13aWR0aCA9
IDwzMj4iIGlzIGFtYmlndW91cy4gT24NCkFybWFkYS1YUCB0aGlzIG1lYW5zIHRoZSBzdHJhcHBp
bmcgaXMgZm9yIGhhbGYtd2lkdGggYnV0IG9uIEFybWFkYS0zOHgNCnlvdSdkIG5lZWQgdG8gc3Ry
YXAgdG8gZnVsbC13aWR0aC4gVGhhdCdzIHdoeSB3ZSBzZXR0bGVkIG9uIHRoZSBtb2RlDQppbnRl
cnByZXRpbmcgdGhlIHN0cmFwcGluZyBhZ2FpbnN0IFNvQ1sxXS4NCg0KWzFdwqBodHRwczovL2xv
cmUua2VybmVsLm9yZy9saW51eC1hcm0ta2VybmVsLzE1MDI0NDQwNjcuMTMzMy43LmNhbWVsQHBl
DQpuZ3V0cm9uaXguZGUvDQoNCj4gDQo+IFRoaXMgd2F5IHlvdSBkb24ndCBuZWVkIHRvIGdyb3cg
dGhpcyBsaXN0Lg0KPiANCj4gQWNrZWQtYnk6IEphbWVzIE1vcnNlIDxqYW1lcy5tb3JzZUBhcm0u
Y29tPg0KPiANCj4gDQo+IFRoYW5rcywNCj4gDQo+IEphbWVzCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0
CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
