Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD67D15C56D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 16:59:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OsvIjLsaCrD7R/zQmE868u8IpKUZtbc/86b0JXTP3gA=; b=g3LWzDWnAm6fRm
	lF5JpeTa2Trf8XwJfzmloW6bEIUNfxGrvyv1ekiY86PTCkQedlNGnamo5v40rwFLxD5T08n15FNJ1
	wBJmsL0xt0mZzVXTvM5W+XKf0ruhTLogJpXwdO1TuaQkGUwEfxHOanOJsC8JudFqlNGsR9UXjj0+L
	3mGAnN4qYXn5E38MvjwTXuv/zTk1eI6P+L6yYkTzZhF+oqF/KAJRNJ5ZMJaDPNZhHH0rwx6aRjqfr
	Zl5DJSX5z3LJwm62T34ScWPIrzzKv0OcibCEHvmERiOe8QKPMzJsL2YIWsBcMmjcZWuBfqpKuWdAp
	4QQo9WTNrxCWU9wbdpdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2GtV-0003jF-Qn; Thu, 13 Feb 2020 15:59:13 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2GtM-0003iu-SL
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 15:59:06 +0000
Received: from kresse.hi.pengutronix.de ([2001:67c:670:100:1d::2a])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>)
 id 1j2Gt9-000455-43; Thu, 13 Feb 2020 16:58:51 +0100
Message-ID: <13d6492b91c38e6b1ff5ff2874197fff224fff5c.camel@pengutronix.de>
Subject: Re: [PATCH 0/3] Add power domain driver support for i.mx8m family
From: Lucas Stach <l.stach@pengutronix.de>
To: Leonard Crestez <leonard.crestez@nxp.com>, Jacky Bai <ping.bai@nxp.com>,
 Schrempf Frieder <frieder.schrempf@kontron.de>, Adam Ford
 <aford173@gmail.com>, Sudeep Holla <sudeep.holla@arm.com>
Date: Thu, 13 Feb 2020 16:58:50 +0100
In-Reply-To: <VI1PR04MB70239743AA9C1BDC93E527EFEE1A0@VI1PR04MB7023.eurprd04.prod.outlook.com>
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
 <e09e5fdc9fc71a7ca35e6f419f660b633d55224f.camel@pengutronix.de>
 <VI1PR04MB70239743AA9C1BDC93E527EFEE1A0@VI1PR04MB7023.eurprd04.prod.outlook.com>
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::2a
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_075905_081870_C1A53823 
X-CRM114-Status: GOOD (  34.89  )
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

T24gRG8sIDIwMjAtMDItMTMgYXQgMTU6MTkgKzAwMDAsIExlb25hcmQgQ3Jlc3RleiB3cm90ZToK
PiBPbiAxMy4wMi4yMDIwIDE2OjQ3LCBMdWNhcyBTdGFjaCB3cm90ZToKPiA+IE9uIERvLCAyMDIw
LTAyLTEzIGF0IDE0OjMwICswMDAwLCBMZW9uYXJkIENyZXN0ZXogd3JvdGU6Cj4gPiA+IE9uIDEz
LjAyLjIwMjAgMTM6MzIsIEx1Y2FzIFN0YWNoIHdyb3RlOgo+ID4gPiA+IE9uIERvLCAyMDIwLTAy
LTEzIGF0IDA5OjIxICswMDAwLCBKYWNreSBCYWkgd3JvdGU6Cj4gPiA+ID4gPiA+IC0tLS0tT3Jp
Z2luYWwgTWVzc2FnZS0tLS0tCj4gPiA+ID4gPiA+IEZyb206IFNjaHJlbXBmIEZyaWVkZXIgPGZy
aWVkZXIuc2NocmVtcGZAa29udHJvbi5kZT4KPiA+ID4gPiA+ID4gU2VudDogVGh1cnNkYXksIEZl
YnJ1YXJ5IDEzLCAyMDIwIDU6MTYgUE0KPiA+ID4gPiA+ID4gVG86IEFkYW0gRm9yZCA8YWZvcmQx
NzNAZ21haWwuY29tPjsgU3VkZWVwIEhvbGxhCj4gPiA+ID4gPiA+IDxzdWRlZXAuaG9sbGFAYXJt
LmNvbT4KPiA+ID4gPiA+ID4gQ2M6IEFpc2hlbmcgRG9uZyA8YWlzaGVuZy5kb25nQG54cC5jb20+
OyBtYXJrLnJ1dGxhbmRAYXJtLmNvbTsgUGVuZwo+ID4gPiA+ID4gPiBGYW4gPHBlbmcuZmFuQG54
cC5jb20+OyBTb3V2aWsgQ2hha3JhdmFydHkKPiA+ID4gPiA+ID4gPFNvdXZpay5DaGFrcmF2YXJ0
eUBhcm0uY29tPjsgSmFja3kgQmFpIDxwaW5nLmJhaUBueHAuY29tPjsKPiA+ID4gPiA+ID4gZGV2
aWNldHJlZUB2Z2VyLmtlcm5lbC5vcmc7IENsw6ltZW50IEZhdXJlIDxjbGVtZW50LmZhdXJlQG54
cC5jb20+Owo+ID4gPiA+ID4gPiBzLmhhdWVyQHBlbmd1dHJvbml4LmRlOyBzaGF3bmd1b0BrZXJu
ZWwub3JnOyByb2JoK2R0QGtlcm5lbC5vcmc7Cj4gPiA+ID4gPiA+IGRsLWxpbnV4LWlteCA8bGlu
dXgtaW14QG54cC5jb20+OyBrZXJuZWxAcGVuZ3V0cm9uaXguZGU7IEFuZHJlIFByenl3YXJhCj4g
PiA+ID4gPiA+IDxhbmRyZS5wcnp5d2FyYUBhcm0uY29tPjsgU2lsdmFubyBEaSBOaW5ubyA8c2ls
dmFuby5kaW5pbm5vQG54cC5jb20+Owo+ID4gPiA+ID4gPiBMZW9uYXJkIENyZXN0ZXogPGxlb25h
cmQuY3Jlc3RlekBueHAuY29tPjsgZmVzdGV2YW1AZ21haWwuY29tOwo+ID4gPiA+ID4gPiBsaW51
eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmc7IEx1Y2FzIFN0YWNoIDxsLnN0YWNoQHBl
bmd1dHJvbml4LmRlPgo+ID4gPiA+ID4gPiBTdWJqZWN0OiBSZTogW1BBVENIIDAvM10gQWRkIHBv
d2VyIGRvbWFpbiBkcml2ZXIgc3VwcG9ydCBmb3IgaS5teDhtIGZhbWlseQo+ID4gPiA+ID4gPiAK
PiA+ID4gPiA+ID4gSGksCj4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiBPbiAwNy4xMS4xOSAyMjoy
OCwgQWRhbSBGb3JkIHdyb3RlOgo+ID4gPiA+ID4gPiA+IE9uIFRodSwgQXByIDE4LCAyMDE5IGF0
IDk6NDMgQU0gU3VkZWVwIEhvbGxhIDxzdWRlZXAuaG9sbGFAYXJtLmNvbT4KPiA+ID4gPiA+ID4g
d3JvdGU6Cj4gPiA+ID4gPiA+ID4gPiBPbiBXZWQsIEFwciAxNywgMjAxOSBhdCAwNDoyMTo1NVBN
ICswMDAwLCBMZW9uYXJkIENyZXN0ZXogd3JvdGU6Cj4gPiA+ID4gPiA+ID4gPiA+IE9uIDQvMTcv
MjAxOSA0OjMzIFBNLCBTdWRlZXAgSG9sbGEgd3JvdGU6Cj4gPiA+ID4gPiA+ID4gPiA+ID4gPiA+
IEkgZG9uJ3QgeWV0IGJ1eSB0aGUgc2VjdXJpdHkgYXJndW1lbnQuIFRoZXJlIGFyZSBtYW55IG1v
cmUgc2hhcmVkCj4gPiA+ID4gPiA+ID4gPiA+ID4gPiA+IHBhcnRzIG9uIHRoZSBTb0MsIGxpa2Ug
dGhlIGNsb2NrIGNvbnRyb2xsZXIsIHRoYXQgd291bGQgbmVlZCB0bwo+ID4gPiA+ID4gPiA+ID4g
PiA+ID4gPiBiZSB0YWtlbiBhd2F5IGZyb20gdGhlIG5vbi1zZWN1cmUgd29ybGQgaWYgb25lIHdv
dWxkIHdhbnQgdG8gcnVuCj4gPiA+ID4gPiA+ID4gPiA+ID4gPiA+IGFuIHVudHJ1c3RlZCBPUyBr
ZXJuZWwgb24gYSBpLk1YOE0gc3lzdGVtLgo+ID4gPiA+ID4gPiA+ID4gPiA+ID4gPiAKPiA+ID4g
PiA+ID4gPiA+ID4gPiA+ID4gVG8gcHJvcGVybHkgaW1wbGVtZW50IHNlY3VyaXR5IG9uIGFueSBp
Lk1YOE0gYmFzZWQgc3lzdGVtIHRoZQo+ID4gPiA+ID4gPiA+ID4gPiA+ID4gPiBmaXJtd2FyZSB3
b3VsZCBuZWVkIHRvIGdyb3cgc29tZXRoaW5nIGxpa2UgYSBmdWxsIEFSTSBTQ1BJCj4gPiA+ID4g
PiA+ID4gPiA+ID4gPiA+IGltcGxlbWVudGF0aW9uLCBzbyBhbGwgc2hhcmVkIGNyaXRpY2FsIHBl
cmlwaGVyYWxzIGFyZSBzb2xlbHkgdW5kZXIKPiA+ID4gPiA+ID4gZmlybXdhcmUgY29udHJvbC4K
PiA+ID4gPiA+ID4gPiA+ID4gPiA+IEl0IG1pZ2h0IGJlIHBvc3NpYmxlIHRvIHJld29yayB0aGlz
IHRvIHVzZSBzb21lIGZvcm0gb2YKPiA+ID4gPiA+ID4gPiA+ID4gPiA+IFNDTUktb3Zlci1TTUMg
aW5zdGVhZCBvZiB2ZW5kb3Itc3BlY2lmaWMgU01DQ0MgU0lQIGNhbGxzCj4gPiA+ID4gPiA+ID4g
Cj4gPiA+ID4gPiA+ID4gSSB3YXMganVzdCBjdXJpb3VzIHRvIGtub3cgaWYgdGhlcmUgaXMgYW55
IHByb2dyZXNzIGJlaW5nIG1hZGUgb24KPiA+ID4gPiA+ID4gPiB0aGlzLiAgVGhlIGkubXg4bW0t
ZXZrIGlzIG1pc3NpbmcgZnVuY3Rpb25hbGl0eSB1cHN0cmVhbSBhbmQgSSB0aGluawo+ID4gPiA+
ID4gPiA+IHRoZSBwb3dlciBkb21haW4gc3VwcG9ydCB3b3VsZCBoZWxwIGVuYWJsZSBzb21lIG9m
IHRoZXNlIGZlYXR1cmVzLgo+ID4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4g
SGFzIHRoZXJlIGJlZW4gYW55IGRlY2lzaW9uIG9yIGFjdGlvbiB0YWtlbiBpbiB0aGlzIHRvcGlj
Pwo+ID4gPiA+ID4gPiBXaWxsIHRoZSBwb3dlciBkb21haW4gZHJpdmVyIGFzIHByb3Bvc2VkIGlu
IHRoaXMgcGF0Y2ggYmUgdXBzdHJlYW1lZCBhdAo+ID4gPiA+ID4gPiBzb21lIHRpbWUsIG9yIHJh
dGhlciBub3Q/Cj4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiBJIHRyeSB0byBidWlsZCBhIG1haW5s
aW5lIEJTUCBmb3IgaS5NWDhNTSAoTUwgVS1Cb290LCBNTCBURi1BLCBNTCBMaW51eCkKPiA+ID4g
PiA+ID4gYW5kIEkgaW50ZWdyYXRlZCBkaXNwbGF5IGFuZCBncmFwaGljcyBzdXBwb3J0IGZyb20g
dGhlIGRvd25zdHJlYW0gTlhQCj4gPiA+ID4gPiA+IGtlcm5lbC4KPiA+ID4gPiA+ID4gCj4gPiA+
ID4gPiA+IFdoaWxlIG1vc3QgdGhpbmdzIGFscmVhZHkgd29yayBmaW5lLCB0aGVyZSdzIHRoZSBp
c3N1ZSBvZiBob3cgdG8gaGFuZGxlIHRoZQo+ID4gPiA+ID4gPiBwb3dlciBkb21haW5zLiBDdXJy
ZW50bHkgSSBuZWVkIHRvIHVuZ2F0ZSBzb21lIGNsb2NrcyBpbiB0aGUgVEYtQQo+ID4gPiA+ID4g
PiBCTDMxIHRvIGdldCBmb3IgZXhhbXBsZSB0aGUgR1BVIHJ1bm5pbmcuIElmIEkgdW5kZXJzdGFu
ZCB0aGlzIGNvcnJlY3RseSB0aGUKPiA+ID4gPiA+ID4gcHJvcG9zZWQgcG93ZXIgZG9tYWluIGRy
aXZlciBjb3VsZCBoYW5kbGUgdGhpcyBpbiBMaW51eCBvdGhlcndpc2UuCj4gPiA+ID4gPiA+IAo+
ID4gPiA+ID4gCj4gPiA+ID4gPiB0aGUgU0NNSSBvdmVyIFNNQyBpcyBzdGlsbCB1bmRlciByZXZp
ZXcKPiA+ID4gPiAKPiA+ID4gPiBFdmVuIGlmIHRoZSBTQ01JIG92ZXIgU01DIGlzIHJlYWR5IGF0
IHNvbWUgcG9pbnQsIGl0J3Mgc3RpbGwgdW5jbGVhciB0bwo+ID4gPiA+IG1lIGhvdyB5b3UgaW50
ZW5kIHRvIGFic3RyYWN0IHRoZSBHUEMgYmVoaW5kIHRoZSBTQ01JIGludGVyZmFjZSBpbiB0aGUK
PiA+ID4gPiBURi1BLiBUaGUgcG93ZXIgZG9tYWlucyBoYXZlIGRlcGVuZGVuY2llcyBib3RoIGlu
dG8gdGhlIHJlZ3VsYXRvciBhbmQKPiA+ID4gPiB0aGUgY2xvY2sgZnJhbWV3b3JrLiBCb3RoIGFy
ZSBjdXJyZW50bHkgdW5kZXIgZXhjbHVzaXZlIGNvbnRyb2wgb2YgdGhlCj4gPiA+ID4gcmljaCBP
Uy4gSG93IGRvIHlvdSBpbnRlbmQgdG8gYWxsb3cgdGhlIFRGLUEgdG8gY29udHJvbCB0aGUgcG93
ZXIKPiA+ID4gPiBzdXBwbGllcyBhbmQgbmVjZXNzYXJ5IHJlc2V0IGNsb2NrcyB3aXRob3V0IG1l
c3NpbmcgdXAgYW55IHN0YXRlIGluIHRoZQo+ID4gPiA+IHJpY2ggT1M/Cj4gPiA+IAo+ID4gPiBU
aGlzIGlzIGluZGVlZCBkaWZmaWN1bHQsIFNDTUkgYXNzdW1lcyB0aGF0IHRoZSByZXNwb25kZXIg
aGFzIHN1ZmZpY2llbnQKPiA+ID4gY29udHJvbCBvdmVyIGNsb2NrcyB0byBmdWxseSBpbXBsZW1l
bnQgcG93ZXIgZG9tYWluIGhhbmRsaW5nLCBpbmNsdWRpbmcKPiA+ID4gb3ZlciBjbG9ja3MgYW5k
IHJlZ3VsYXRvcnMuCj4gPiA+IAo+ID4gPiBQZXJoYXBzIGl0IG1pZ2h0IGJlIHBvc3NpYmxlIHRv
IG1vZGlmeSBjdXJyZW50IGdwY3YyIGRyaXZlciB0byBzZW5kIFNDTUkKPiA+ID4gbWVzc2FnZXMg
Zm9yIHBvd2VyIG9ubHkgYW5kIGtlZXAgaGFuZGxpbmcgcmVndWxhdG9ycyBpdHNlbGY/IEl0IGNv
dWxkCj4gPiA+IHN3aXRjaCBiYXNlZCBvbiB3aGV0aGVyIGl0IGhhcyBhIHJlZmVyZW5jZSB0byBh
IHNjbWkgY2hhbm5lbCBhcyBhIERUCj4gPiA+IHByb3BlcnR5Lgo+ID4gCj4gPiBXaXRoIHN1Y2gg
YSBzcGxpdCBpbXBsZW1lbnRhdGlvbiBJIGZlZWwgbGlrZSB3ZSBhcmUgZ2V0dGluZyB3b3JzdCBv
Zgo+ID4gYm90aCB3b3JsZHM6IG1vcmUgY29tcGxleGl0eSBhcyB0aGUgaW1wbGVtZW50YXRpb24g
aXMgc3BsaXQgYWNyb3NzCj4gPiBtdWx0aXBsZSBjb21wb25lbnRzIChURi1BIGFuZCBrZXJuZWwp
IGFuZCBzdGlsbCB0aGUgcmljaCBPUyBpcyBhYmxlIHRvCj4gPiBtZXNzIHVwIHRoZSBwb3dlciBz
dXBwbHkgb2YgYSBkb21haW4gdGhhdCBpdCBtaWdodCBub3QgZXZlbiBvd24uIFRoaXMKPiA+IGRv
ZXNuJ3Qgc291bmQgcmVhbGx5IGVudGljaW5nLgo+ID4gCj4gPiBJTUhPIGl0IG9ubHkgbWFrZXMg
c2Vuc2UgdG8gcHVzaCB0aGlzIGZ1bmN0aW9uYWxpdHkgZG93biBpbnRvIFRGLUEgaWYKPiA+IGl0
IGFsbG93cyB0byBhYnN0cmFjdCBhbGwgdGhlIGltcGxlbWVudGF0aW9uIGRldGFpbHMgYmVoaW5k
IGEgc3RhbmRhcmQKPiA+IGludGVyZmFjZSBsaWtlIFNDTUkuIEJ1dCB0aGVuIHRoZSBuZWVkZWQg
Y2hhbmdlcyBhcmUgbXVjaCBtb3JlIGludmFzaXZlCj4gPiB0aGFuIGp1c3QgcHVzaGluZyBkb3du
IHRoZSBHUEMgaW1wbGVtZW50YXRpb24uCj4gPiAKPiA+ID4gQSBmdWxsIHNjbWktYmFzZWQgaW1w
bGVtZW50YXRpb24gbWlnaHQgdXNlIGVudGlyZWx5IHZlcnkgZGlmZmVyZW50Cj4gPiA+IGJpbmRp
bmdzIGFuZCB0YWtlIGEgbG9uZyB0aW1lLiBJZiBwZW9wbGUgd2FudCB0byBzdXBwb3J0IHRoZWly
IGNoaXBzIGJ5Cj4gPiA+IGltcGxlbWVudGluZyBwb3dlciBkb21haW4gc3VwcG9ydCBpbiB0aGUg
cmljaCBPUyB3ZSBzaG91bGRuJ3QgYmxvY2sgdGhlbS4KPiA+ID4gCj4gPiA+IFNvIGl0IHdvdWxk
IGJlIGdvb2QgdG8gYWNjZXB0IGdwY3YyIGVuaGFuY2VtZW50IGZvciA4bW0gYW5kIHNpbWlsYXIu
Cj4gPiAKPiA+IEkgZnVsbHkgYWdyZWUuCj4gPiAKPiA+IEZvciBhIGZ1bGwgU0NNSSBiYXNlZCBp
bXBsZW1lbnRhdGlvbiBJIGV4cGVjdCB0aGF0IG11Y2ggbW9yZSB0aGFuIGp1c3QKPiA+IHRoZSBH
UEMgZnVuY3Rpb25hbGl0eSBuZWVkcyB0byBiZSBwdXNoZWQgZG93biBpbnRvIHRoZSBURi1BLiBS
aWdodCBub3cKPiA+IEkgc2VlIGNsb2NrcywgaTJjIGFuZCByZWd1bGF0b3IgaGFuZGxpbmcsIG1h
eWJlIHRoZXJlIGlzIG1vcmUgdGhhdAo+ID4gZXNjYXBlcyBteSBtaW5kLgo+IAo+IEkyQyByZWd1
bGF0b3IgaGFuZGxpbmcgaW5zaWRlIFRGLUEgc291bmRzIHZlcnkgZGlmZmljdWx0LiBOb3Qgb25s
eSB3b3VsZCAKPiB1cHN0cmVhbSBURi1BIGxpa2VseSBvYmplY3QgYnV0IG9uIGlteDhtIEVWSyBi
b2FyZHMgdGhlIGkyYyBidXMgZm9yIAo+IHJlZ3VsYXRvcnMgaXMgc2hhcmVkIHdpdGggb3RoZXIg
ZGV2aWNlcyAobGlrZSBjYW1lcmEpLgoKQW5kIHRoYXQncyBleGFjdGx5IHRoZSBwb2ludCB3aGVy
ZSB0cnlpbmcgdG8gcHVzaCB0aGluZ3MgaW50byBsb3dlcgpsYXllcnMgc3RhcnRzIHRvIGNydW1i
bGUuIEl0IG9ubHkgcmVhbGx5IG1ha2VzIHNlbnNlIGlmIHlvdSBtYW5hZ2UgdG8KZXN0YWJsaXNo
IGEgbmljZSBhYnN0cmFjdGlvbiBvZiB3aGF0IGlzIGhhcHBlbmluZyBpbiB0aG9zZSBsb3dlcgps
YXllcnMuIElmIHlvdSBuZWVkIHRvIHB1bmNoIHRocm91Z2ggdGhvc2UgYWJzdHJhY3Rpb25zIGR1
ZSB0byBzeXN0ZW0KZGVzaWduIGxpbWl0YXRpb25zLCB0aGUgYmVuZWZpdCBvZiB0aG9zZSBhYnN0
cmFjdGlvbnMgaXMgd2lwZWQgYXdheS4KVGhlIG9ubHkgdGhpbmcgeW91IGdhaW4gaXMgbW9yZSBj
b21wbGV4aXR5IGR1ZSB0byBtb3JlIGNvbXBvbmVudHMgYmVpbmcKaW52b2x2ZWQgaW4gYSBzcGVj
aWZpYyB0YXNrLgoKSWYgeW91IHdhbnQgdG8gYmUgYWJsZSB0byBwYXJ0aXRpb24gdGhlIHN5c3Rl
bSAoYW5kIGFzIGZhciBhcyBJCnVuZGVyc3RhbmQgaXQgdGhhdCdzIHRoZSBtYWluIG1vdGl2YXRp
b24gZm9yIHB1c2hpbmcgR1BDIGZ1bmN0aW9uYWxpdHkKaW50byBURi1BKSB5b3UgbmVlZCB0byBk
ZXNpZ24gdGhlIHN5c3RlbSAoc3RhcnRpbmcgb24gdGhlIEhXIGxldmVsKSB0bwptYWtlIHRoaXMg
cG9zc2libGUuIFRyeWluZyB0byBmb3JjZSBzdWNoIGEgbW9kZWwgb24gYSBzeXN0ZW0gdGhhdApo
YXNuJ3QgcmVhbGx5IGJlZW4gZGVzaWduZWQgZm9yIHRoaXMgaXMgSU1ITyBkb29tZWQgdG8gZmFp
bC4KCj4gU28gaWYgd2UgZG8gdGhpcyBtYXliZSBTQ01JIGR0IGJpbmRpbmdzIGNvdWxkIGJlIGV4
cGFuZGVkIHRvIGF0IGxlYXN0IAo+IGFsbG93IHJlZ3VsYXRvcnMgb24gYSBwZXItZG9tYWluIGJh
c2lzPwoKTWF5YmUgdGhhdCBpcyB3aGF0IG5lZWRzIHRvIGJlIGRvbmUgdG8gYWxsb3cgYXQgbGVh
c3QgYSBwYXJ0aWFsCmltcGxlbWVudGF0aW9uIG9mIFNDTUkgb24gdGhlIGV4aXN0aW5nIGkuTVg4
TSBkZXNpZ25zLiBIb3dldmVyIGl0CmRvZXNuJ3QgcmVhbGx5IHByb3ZpZGUgbXVjaCBvZiB0aGUg
YmVuZWZpdHMgb2YgU0NNSS4KClNvIEknbSBhbGwgZm9yIGhhdmluZyBhIHB1cmUgTGludXggYmFz
ZWQgaW1wbGVtZW50YXRpb24gb2YgdGhlCmZ1bmN0aW9uYWxpdHksIGluc3RlYWQgb2Ygd2FpdGlu
ZyBmb3IgdGhlIFNDTUkgYmFzZWQgaW1wbGVtZW50YXRpb24KdGhhdCBtYXkgcHJvdmlkZSBvbmx5
IHF1ZXN0aW9uYWJsZSBiZW5lZml0LgoKUmVnYXJkcywKTHVjYXMKCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcg
bGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
