Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ACB715C0A6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 15:48:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XhGQYYrZfOgCPpXkIT65nC/dtsxObDKNYCF/6RFH0DU=; b=Xd0YybCD6WGpT4
	XqaqoGhRl2m/LnXWsXfeDMZjcPs5undRpMvkyajIGO8K+ooI+MqvkAUiR/lYvCTO8UcK4XX+9kReu
	8eohuSXXzAQHQwTXu0NkhzQy4UYaRsEGcptqxXWDelIJNl4TDmL1YaXf+TOUI4WMEDLR54N3Cky54
	PKKyTMHIFvPIVkm6sziJsfyc91dYADPSXRwMkPtJxxU9L/gBO2FRgR50gBruvSk6V+5jnSB+gS9Qk
	fEQkb/RB7emUSQQb5gbIK6YNZuGUv20N9SkGfjQPJ1F/gU1Yr+TrPuKRmuYLeolZMKO5gUc7/tGa1
	Sd4B3iFubsgCJvL6EReA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2FmQ-00063s-Is; Thu, 13 Feb 2020 14:47:50 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2FmF-000631-Mj
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 14:47:41 +0000
Received: from kresse.hi.pengutronix.de ([2001:67c:670:100:1d::2a])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>)
 id 1j2Fm1-0003H4-EX; Thu, 13 Feb 2020 15:47:25 +0100
Message-ID: <e09e5fdc9fc71a7ca35e6f419f660b633d55224f.camel@pengutronix.de>
Subject: Re: [PATCH 0/3] Add power domain driver support for i.mx8m family
From: Lucas Stach <l.stach@pengutronix.de>
To: Leonard Crestez <leonard.crestez@nxp.com>, Jacky Bai <ping.bai@nxp.com>,
 Schrempf Frieder <frieder.schrempf@kontron.de>, Adam Ford
 <aford173@gmail.com>, Sudeep Holla <sudeep.holla@arm.com>
Date: Thu, 13 Feb 2020 15:47:25 +0100
In-Reply-To: <VI1PR04MB70232F5A51F3F2B02BDB344EEE1A0@VI1PR04MB7023.eurprd04.prod.outlook.com>
References: <20190417053211.2195-1-ping.bai@nxp.com>
 <AM0PR04MB42116FEB1EE2CAE68A1CAA8980250@AM0PR04MB4211.eurprd04.prod.outlook.com>
 <1555503195.2317.19.camel@pengutronix.de>
 <VI1PR04MB55330105F4839FCF98B7CFC0EE250@VI1PR04MB5533.eurprd04.prod.outlook.com>
 <68aaace3-f66e-b4b8-30a0-57b8b66a7524@arm.com>
 <VI1PR04MB5533A1F87436C0839A772D03EE250@VI1PR04MB5533.eurprd04.prod.outlook.com>
 <20190418144330.GD7770@e107155-lin>
 <CAHCN7xKK3zWE9i24prauPw0DSNTjASsMgDYY8w3OBJ+hb2y-sg@mail.gmail.com>
 <871ac22a-0508-8e92-b012-f414be5bd174@kontron.de>
 <VI1PR04MB6992DF27336AC51945D1C0C1871A0@VI1PR04MB6992.eurprd04.prod.outlook.com>
 <0a8a4edcf110ec5bcf859c145ef27553039c6cd0.camel@pengutronix.de>
 <VI1PR04MB70232F5A51F3F2B02BDB344EEE1A0@VI1PR04MB7023.eurprd04.prod.outlook.com>
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::2a
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_064739_746612_12D04E17 
X-CRM114-Status: GOOD (  31.45  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>,
 "mark.rutland@arm.com" <mark.rutland@arm.com>, Peng Fan <peng.fan@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 Souvik Chakravarty <Souvik.Chakravarty@arm.com>,
 =?ISO-8859-1?Q?Cl=E9ment?= Faure <clement.faure@nxp.com>,
 Andre Przywara <andre.przywara@arm.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Silvano Di Ninno <silvano.dininno@nxp.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRG8sIDIwMjAtMDItMTMgYXQgMTQ6MzAgKzAwMDAsIExlb25hcmQgQ3Jlc3RleiB3cm90ZToK
PiBPbiAxMy4wMi4yMDIwIDEzOjMyLCBMdWNhcyBTdGFjaCB3cm90ZToKPiA+IE9uIERvLCAyMDIw
LTAyLTEzIGF0IDA5OjIxICswMDAwLCBKYWNreSBCYWkgd3JvdGU6Cj4gPiA+ID4gLS0tLS1Pcmln
aW5hbCBNZXNzYWdlLS0tLS0KPiA+ID4gPiBGcm9tOiBTY2hyZW1wZiBGcmllZGVyIDxmcmllZGVy
LnNjaHJlbXBmQGtvbnRyb24uZGU+Cj4gPiA+ID4gU2VudDogVGh1cnNkYXksIEZlYnJ1YXJ5IDEz
LCAyMDIwIDU6MTYgUE0KPiA+ID4gPiBUbzogQWRhbSBGb3JkIDxhZm9yZDE3M0BnbWFpbC5jb20+
OyBTdWRlZXAgSG9sbGEKPiA+ID4gPiA8c3VkZWVwLmhvbGxhQGFybS5jb20+Cj4gPiA+ID4gQ2M6
IEFpc2hlbmcgRG9uZyA8YWlzaGVuZy5kb25nQG54cC5jb20+OyBtYXJrLnJ1dGxhbmRAYXJtLmNv
bTsgUGVuZwo+ID4gPiA+IEZhbiA8cGVuZy5mYW5AbnhwLmNvbT47IFNvdXZpayBDaGFrcmF2YXJ0
eQo+ID4gPiA+IDxTb3V2aWsuQ2hha3JhdmFydHlAYXJtLmNvbT47IEphY2t5IEJhaSA8cGluZy5i
YWlAbnhwLmNvbT47Cj4gPiA+ID4gZGV2aWNldHJlZUB2Z2VyLmtlcm5lbC5vcmc7IENsw6ltZW50
IEZhdXJlIDxjbGVtZW50LmZhdXJlQG54cC5jb20+Owo+ID4gPiA+IHMuaGF1ZXJAcGVuZ3V0cm9u
aXguZGU7IHNoYXduZ3VvQGtlcm5lbC5vcmc7IHJvYmgrZHRAa2VybmVsLm9yZzsKPiA+ID4gPiBk
bC1saW51eC1pbXggPGxpbnV4LWlteEBueHAuY29tPjsga2VybmVsQHBlbmd1dHJvbml4LmRlOyBB
bmRyZSBQcnp5d2FyYQo+ID4gPiA+IDxhbmRyZS5wcnp5d2FyYUBhcm0uY29tPjsgU2lsdmFubyBE
aSBOaW5ubyA8c2lsdmFuby5kaW5pbm5vQG54cC5jb20+Owo+ID4gPiA+IExlb25hcmQgQ3Jlc3Rl
eiA8bGVvbmFyZC5jcmVzdGV6QG54cC5jb20+OyBmZXN0ZXZhbUBnbWFpbC5jb207Cj4gPiA+ID4g
bGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnOyBMdWNhcyBTdGFjaCA8bC5zdGFj
aEBwZW5ndXRyb25peC5kZT4KPiA+ID4gPiBTdWJqZWN0OiBSZTogW1BBVENIIDAvM10gQWRkIHBv
d2VyIGRvbWFpbiBkcml2ZXIgc3VwcG9ydCBmb3IgaS5teDhtIGZhbWlseQo+ID4gPiA+IAo+ID4g
PiA+IEhpLAo+ID4gPiA+IAo+ID4gPiA+IE9uIDA3LjExLjE5IDIyOjI4LCBBZGFtIEZvcmQgd3Jv
dGU6Cj4gPiA+ID4gPiBPbiBUaHUsIEFwciAxOCwgMjAxOSBhdCA5OjQzIEFNIFN1ZGVlcCBIb2xs
YSA8c3VkZWVwLmhvbGxhQGFybS5jb20+Cj4gPiA+ID4gd3JvdGU6Cj4gPiA+ID4gPiA+IE9uIFdl
ZCwgQXByIDE3LCAyMDE5IGF0IDA0OjIxOjU1UE0gKzAwMDAsIExlb25hcmQgQ3Jlc3RleiB3cm90
ZToKPiA+ID4gPiA+ID4gPiBPbiA0LzE3LzIwMTkgNDozMyBQTSwgU3VkZWVwIEhvbGxhIHdyb3Rl
Ogo+ID4gPiA+ID4gPiA+ID4gPiA+IEkgZG9uJ3QgeWV0IGJ1eSB0aGUgc2VjdXJpdHkgYXJndW1l
bnQuIFRoZXJlIGFyZSBtYW55IG1vcmUgc2hhcmVkCj4gPiA+ID4gPiA+ID4gPiA+ID4gcGFydHMg
b24gdGhlIFNvQywgbGlrZSB0aGUgY2xvY2sgY29udHJvbGxlciwgdGhhdCB3b3VsZCBuZWVkIHRv
Cj4gPiA+ID4gPiA+ID4gPiA+ID4gYmUgdGFrZW4gYXdheSBmcm9tIHRoZSBub24tc2VjdXJlIHdv
cmxkIGlmIG9uZSB3b3VsZCB3YW50IHRvIHJ1bgo+ID4gPiA+ID4gPiA+ID4gPiA+IGFuIHVudHJ1
c3RlZCBPUyBrZXJuZWwgb24gYSBpLk1YOE0gc3lzdGVtLgo+ID4gPiA+ID4gPiA+ID4gPiA+IAo+
ID4gPiA+ID4gPiA+ID4gPiA+IFRvIHByb3Blcmx5IGltcGxlbWVudCBzZWN1cml0eSBvbiBhbnkg
aS5NWDhNIGJhc2VkIHN5c3RlbSB0aGUKPiA+ID4gPiA+ID4gPiA+ID4gPiBmaXJtd2FyZSB3b3Vs
ZCBuZWVkIHRvIGdyb3cgc29tZXRoaW5nIGxpa2UgYSBmdWxsIEFSTSBTQ1BJCj4gPiA+ID4gPiA+
ID4gPiA+ID4gaW1wbGVtZW50YXRpb24sIHNvIGFsbCBzaGFyZWQgY3JpdGljYWwgcGVyaXBoZXJh
bHMgYXJlIHNvbGVseSB1bmRlcgo+ID4gPiA+IGZpcm13YXJlIGNvbnRyb2wuCj4gPiA+ID4gPiA+
ID4gPiA+IEl0IG1pZ2h0IGJlIHBvc3NpYmxlIHRvIHJld29yayB0aGlzIHRvIHVzZSBzb21lIGZv
cm0gb2YKPiA+ID4gPiA+ID4gPiA+ID4gU0NNSS1vdmVyLVNNQyBpbnN0ZWFkIG9mIHZlbmRvci1z
cGVjaWZpYyBTTUNDQyBTSVAgY2FsbHMKPiA+ID4gPiA+IAo+ID4gPiA+ID4gSSB3YXMganVzdCBj
dXJpb3VzIHRvIGtub3cgaWYgdGhlcmUgaXMgYW55IHByb2dyZXNzIGJlaW5nIG1hZGUgb24KPiA+
ID4gPiA+IHRoaXMuICBUaGUgaS5teDhtbS1ldmsgaXMgbWlzc2luZyBmdW5jdGlvbmFsaXR5IHVw
c3RyZWFtIGFuZCBJIHRoaW5rCj4gPiA+ID4gPiB0aGUgcG93ZXIgZG9tYWluIHN1cHBvcnQgd291
bGQgaGVscCBlbmFibGUgc29tZSBvZiB0aGVzZSBmZWF0dXJlcy4KPiA+ID4gPiA+IAo+ID4gPiA+
IAo+ID4gPiA+IEhhcyB0aGVyZSBiZWVuIGFueSBkZWNpc2lvbiBvciBhY3Rpb24gdGFrZW4gaW4g
dGhpcyB0b3BpYz8KPiA+ID4gPiBXaWxsIHRoZSBwb3dlciBkb21haW4gZHJpdmVyIGFzIHByb3Bv
c2VkIGluIHRoaXMgcGF0Y2ggYmUgdXBzdHJlYW1lZCBhdAo+ID4gPiA+IHNvbWUgdGltZSwgb3Ig
cmF0aGVyIG5vdD8KPiA+ID4gPiAKPiA+ID4gPiBJIHRyeSB0byBidWlsZCBhIG1haW5saW5lIEJT
UCBmb3IgaS5NWDhNTSAoTUwgVS1Cb290LCBNTCBURi1BLCBNTCBMaW51eCkKPiA+ID4gPiBhbmQg
SSBpbnRlZ3JhdGVkIGRpc3BsYXkgYW5kIGdyYXBoaWNzIHN1cHBvcnQgZnJvbSB0aGUgZG93bnN0
cmVhbSBOWFAKPiA+ID4gPiBrZXJuZWwuCj4gPiA+ID4gCj4gPiA+ID4gV2hpbGUgbW9zdCB0aGlu
Z3MgYWxyZWFkeSB3b3JrIGZpbmUsIHRoZXJlJ3MgdGhlIGlzc3VlIG9mIGhvdyB0byBoYW5kbGUg
dGhlCj4gPiA+ID4gcG93ZXIgZG9tYWlucy4gQ3VycmVudGx5IEkgbmVlZCB0byB1bmdhdGUgc29t
ZSBjbG9ja3MgaW4gdGhlIFRGLUEKPiA+ID4gPiBCTDMxIHRvIGdldCBmb3IgZXhhbXBsZSB0aGUg
R1BVIHJ1bm5pbmcuIElmIEkgdW5kZXJzdGFuZCB0aGlzIGNvcnJlY3RseSB0aGUKPiA+ID4gPiBw
cm9wb3NlZCBwb3dlciBkb21haW4gZHJpdmVyIGNvdWxkIGhhbmRsZSB0aGlzIGluIExpbnV4IG90
aGVyd2lzZS4KPiA+ID4gPiAKPiA+ID4gCj4gPiA+IHRoZSBTQ01JIG92ZXIgU01DIGlzIHN0aWxs
IHVuZGVyIHJldmlldwo+ID4gCj4gPiBFdmVuIGlmIHRoZSBTQ01JIG92ZXIgU01DIGlzIHJlYWR5
IGF0IHNvbWUgcG9pbnQsIGl0J3Mgc3RpbGwgdW5jbGVhciB0bwo+ID4gbWUgaG93IHlvdSBpbnRl
bmQgdG8gYWJzdHJhY3QgdGhlIEdQQyBiZWhpbmQgdGhlIFNDTUkgaW50ZXJmYWNlIGluIHRoZQo+
ID4gVEYtQS4gVGhlIHBvd2VyIGRvbWFpbnMgaGF2ZSBkZXBlbmRlbmNpZXMgYm90aCBpbnRvIHRo
ZSByZWd1bGF0b3IgYW5kCj4gPiB0aGUgY2xvY2sgZnJhbWV3b3JrLiBCb3RoIGFyZSBjdXJyZW50
bHkgdW5kZXIgZXhjbHVzaXZlIGNvbnRyb2wgb2YgdGhlCj4gPiByaWNoIE9TLiBIb3cgZG8geW91
IGludGVuZCB0byBhbGxvdyB0aGUgVEYtQSB0byBjb250cm9sIHRoZSBwb3dlcgo+ID4gc3VwcGxp
ZXMgYW5kIG5lY2Vzc2FyeSByZXNldCBjbG9ja3Mgd2l0aG91dCBtZXNzaW5nIHVwIGFueSBzdGF0
ZSBpbiB0aGUKPiA+IHJpY2ggT1M/Cj4gCj4gVGhpcyBpcyBpbmRlZWQgZGlmZmljdWx0LCBTQ01J
IGFzc3VtZXMgdGhhdCB0aGUgcmVzcG9uZGVyIGhhcyBzdWZmaWNpZW50IAo+IGNvbnRyb2wgb3Zl
ciBjbG9ja3MgdG8gZnVsbHkgaW1wbGVtZW50IHBvd2VyIGRvbWFpbiBoYW5kbGluZywgaW5jbHVk
aW5nIAo+IG92ZXIgY2xvY2tzIGFuZCByZWd1bGF0b3JzLgo+IAo+IFBlcmhhcHMgaXQgbWlnaHQg
YmUgcG9zc2libGUgdG8gbW9kaWZ5IGN1cnJlbnQgZ3BjdjIgZHJpdmVyIHRvIHNlbmQgU0NNSSAK
PiBtZXNzYWdlcyBmb3IgcG93ZXIgb25seSBhbmQga2VlcCBoYW5kbGluZyByZWd1bGF0b3JzIGl0
c2VsZj8gSXQgY291bGQgCj4gc3dpdGNoIGJhc2VkIG9uIHdoZXRoZXIgaXQgaGFzIGEgcmVmZXJl
bmNlIHRvIGEgc2NtaSBjaGFubmVsIGFzIGEgRFQgCj4gcHJvcGVydHkuCgpXaXRoIHN1Y2ggYSBz
cGxpdCBpbXBsZW1lbnRhdGlvbiBJIGZlZWwgbGlrZSB3ZSBhcmUgZ2V0dGluZyB3b3JzdCBvZgpi
b3RoIHdvcmxkczogbW9yZSBjb21wbGV4aXR5IGFzIHRoZSBpbXBsZW1lbnRhdGlvbiBpcyBzcGxp
dCBhY3Jvc3MKbXVsdGlwbGUgY29tcG9uZW50cyAoVEYtQSBhbmQga2VybmVsKSBhbmQgc3RpbGwg
dGhlIHJpY2ggT1MgaXMgYWJsZSB0bwptZXNzIHVwIHRoZSBwb3dlciBzdXBwbHkgb2YgYSBkb21h
aW4gdGhhdCBpdCBtaWdodCBub3QgZXZlbiBvd24uIFRoaXMKZG9lc24ndCBzb3VuZCByZWFsbHkg
ZW50aWNpbmcuCgpJTUhPIGl0IG9ubHkgbWFrZXMgc2Vuc2UgdG8gcHVzaCB0aGlzIGZ1bmN0aW9u
YWxpdHkgZG93biBpbnRvIFRGLUEgaWYKaXQgYWxsb3dzIHRvIGFic3RyYWN0IGFsbCB0aGUgaW1w
bGVtZW50YXRpb24gZGV0YWlscyBiZWhpbmQgYSBzdGFuZGFyZAppbnRlcmZhY2UgbGlrZSBTQ01J
LiBCdXQgdGhlbiB0aGUgbmVlZGVkIGNoYW5nZXMgYXJlIG11Y2ggbW9yZSBpbnZhc2l2ZQp0aGFu
IGp1c3QgcHVzaGluZyBkb3duIHRoZSBHUEMgaW1wbGVtZW50YXRpb24uCgo+IEEgZnVsbCBzY21p
LWJhc2VkIGltcGxlbWVudGF0aW9uIG1pZ2h0IHVzZSBlbnRpcmVseSB2ZXJ5IGRpZmZlcmVudCAK
PiBiaW5kaW5ncyBhbmQgdGFrZSBhIGxvbmcgdGltZS4gSWYgcGVvcGxlIHdhbnQgdG8gc3VwcG9y
dCB0aGVpciBjaGlwcyBieSAKPiBpbXBsZW1lbnRpbmcgcG93ZXIgZG9tYWluIHN1cHBvcnQgaW4g
dGhlIHJpY2ggT1Mgd2Ugc2hvdWxkbid0IGJsb2NrIHRoZW0uCj4gCj4gU28gaXQgd291bGQgYmUg
Z29vZCB0byBhY2NlcHQgZ3BjdjIgZW5oYW5jZW1lbnQgZm9yIDhtbSBhbmQgc2ltaWxhci4KCkkg
ZnVsbHkgYWdyZWUuCgpGb3IgYSBmdWxsIFNDTUkgYmFzZWQgaW1wbGVtZW50YXRpb24gSSBleHBl
Y3QgdGhhdCBtdWNoIG1vcmUgdGhhbiBqdXN0CnRoZSBHUEMgZnVuY3Rpb25hbGl0eSBuZWVkcyB0
byBiZSBwdXNoZWQgZG93biBpbnRvIHRoZSBURi1BLiBSaWdodCBub3cKSSBzZWUgY2xvY2tzLCBp
MmMgYW5kIHJlZ3VsYXRvciBoYW5kbGluZywgbWF5YmUgdGhlcmUgaXMgbW9yZSB0aGF0CmVzY2Fw
ZXMgbXkgbWluZC4KCldlIHNob3VsZCBub3QgYmxvY2sgYSBMaW51eCBiYXNlZCBpbXBsZW1lbnRh
dGlvbiBvZiB0aGlzIGZ1bmN0aW9uYWxpdHkKb24gdGhlIGJhc2lzIHRoYXQgd2UgbWlnaHQgd2Fu
dCB0byByZXBsYWNlIHRoaXMgd2l0aCBhIFNDTUkgYmFzZWQgb25lCmF0IGEgbGF0ZXIgcG9pbnQg
aW4gdGltZS4KClJlZ2FyZHMsCkx1Y2FzCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJt
LWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
