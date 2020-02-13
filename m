Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 687EE15BDAA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 12:32:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=swc6lWAbmszD7uGCoPFnaW7JDO5bKNR4DlUElt8KnH8=; b=hv+x/nkMg1/CMY
	/+76M7gvuH+ycwQ84oAr5DrVxzFCQiEx7ft5yLPlZwiZ0mh1pWlSdsuv9xZw5btvnElARv2RlR3jo
	8yd18Br8fJCou27WS74rnzjrcjiUpKMRGgBqHUHwJ0KqpuwpWLVfF3ZGc0MBK/BGgfk/gWONgdZWA
	83fpQ5Z5MCUGinQYd9HuFHZjhX5CnOCvrNy36yaFQjuHhFGyv7M0THIefdTzFbojLgpEfYOoDT+yF
	R33WRtt4yqBrVlHDD39YX3smfxmBaOTpkm62MQsym28OUV9ecHJhUP0iQazNFTTfjc0t1+2dWeSgA
	KNCA0hrBEu55X+EfbrVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2Cjn-0001Pb-UF; Thu, 13 Feb 2020 11:32:55 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2Cjf-0001Ou-OK
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 11:32:49 +0000
Received: from kresse.hi.pengutronix.de ([2001:67c:670:100:1d::2a])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>)
 id 1j2CjN-0007QJ-D9; Thu, 13 Feb 2020 12:32:29 +0100
Message-ID: <0a8a4edcf110ec5bcf859c145ef27553039c6cd0.camel@pengutronix.de>
Subject: Re: [PATCH 0/3] Add power domain driver support for i.mx8m family
From: Lucas Stach <l.stach@pengutronix.de>
To: Jacky Bai <ping.bai@nxp.com>, Schrempf Frieder
 <frieder.schrempf@kontron.de>,  Adam Ford <aford173@gmail.com>, Sudeep
 Holla <sudeep.holla@arm.com>
Date: Thu, 13 Feb 2020 12:32:27 +0100
In-Reply-To: <VI1PR04MB6992DF27336AC51945D1C0C1871A0@VI1PR04MB6992.eurprd04.prod.outlook.com>
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
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::2a
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_033247_794914_1964EE08 
X-CRM114-Status: GOOD (  24.01  )
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
 Leonard Crestez <leonard.crestez@nxp.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRG8sIDIwMjAtMDItMTMgYXQgMDk6MjEgKzAwMDAsIEphY2t5IEJhaSB3cm90ZToKPiA+IC0t
LS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tCj4gPiBGcm9tOiBTY2hyZW1wZiBGcmllZGVyIDxmcmll
ZGVyLnNjaHJlbXBmQGtvbnRyb24uZGU+Cj4gPiBTZW50OiBUaHVyc2RheSwgRmVicnVhcnkgMTMs
IDIwMjAgNToxNiBQTQo+ID4gVG86IEFkYW0gRm9yZCA8YWZvcmQxNzNAZ21haWwuY29tPjsgU3Vk
ZWVwIEhvbGxhCj4gPiA8c3VkZWVwLmhvbGxhQGFybS5jb20+Cj4gPiBDYzogQWlzaGVuZyBEb25n
IDxhaXNoZW5nLmRvbmdAbnhwLmNvbT47IG1hcmsucnV0bGFuZEBhcm0uY29tOyBQZW5nCj4gPiBG
YW4gPHBlbmcuZmFuQG54cC5jb20+OyBTb3V2aWsgQ2hha3JhdmFydHkKPiA+IDxTb3V2aWsuQ2hh
a3JhdmFydHlAYXJtLmNvbT47IEphY2t5IEJhaSA8cGluZy5iYWlAbnhwLmNvbT47Cj4gPiBkZXZp
Y2V0cmVlQHZnZXIua2VybmVsLm9yZzsgQ2zDqW1lbnQgRmF1cmUgPGNsZW1lbnQuZmF1cmVAbnhw
LmNvbT47Cj4gPiBzLmhhdWVyQHBlbmd1dHJvbml4LmRlOyBzaGF3bmd1b0BrZXJuZWwub3JnOyBy
b2JoK2R0QGtlcm5lbC5vcmc7Cj4gPiBkbC1saW51eC1pbXggPGxpbnV4LWlteEBueHAuY29tPjsg
a2VybmVsQHBlbmd1dHJvbml4LmRlOyBBbmRyZSBQcnp5d2FyYQo+ID4gPGFuZHJlLnByenl3YXJh
QGFybS5jb20+OyBTaWx2YW5vIERpIE5pbm5vIDxzaWx2YW5vLmRpbmlubm9AbnhwLmNvbT47Cj4g
PiBMZW9uYXJkIENyZXN0ZXogPGxlb25hcmQuY3Jlc3RlekBueHAuY29tPjsgZmVzdGV2YW1AZ21h
aWwuY29tOwo+ID4gbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnOyBMdWNhcyBT
dGFjaCA8bC5zdGFjaEBwZW5ndXRyb25peC5kZT4KPiA+IFN1YmplY3Q6IFJlOiBbUEFUQ0ggMC8z
XSBBZGQgcG93ZXIgZG9tYWluIGRyaXZlciBzdXBwb3J0IGZvciBpLm14OG0gZmFtaWx5Cj4gPiAK
PiA+IEhpLAo+ID4gCj4gPiBPbiAwNy4xMS4xOSAyMjoyOCwgQWRhbSBGb3JkIHdyb3RlOgo+ID4g
PiBPbiBUaHUsIEFwciAxOCwgMjAxOSBhdCA5OjQzIEFNIFN1ZGVlcCBIb2xsYSA8c3VkZWVwLmhv
bGxhQGFybS5jb20+Cj4gPiB3cm90ZToKPiA+ID4gPiBPbiBXZWQsIEFwciAxNywgMjAxOSBhdCAw
NDoyMTo1NVBNICswMDAwLCBMZW9uYXJkIENyZXN0ZXogd3JvdGU6Cj4gPiA+ID4gPiBPbiA0LzE3
LzIwMTkgNDozMyBQTSwgU3VkZWVwIEhvbGxhIHdyb3RlOgo+ID4gPiA+ID4gPiA+ID4gSSBkb24n
dCB5ZXQgYnV5IHRoZSBzZWN1cml0eSBhcmd1bWVudC4gVGhlcmUgYXJlIG1hbnkgbW9yZSBzaGFy
ZWQKPiA+ID4gPiA+ID4gPiA+IHBhcnRzIG9uIHRoZSBTb0MsIGxpa2UgdGhlIGNsb2NrIGNvbnRy
b2xsZXIsIHRoYXQgd291bGQgbmVlZCB0bwo+ID4gPiA+ID4gPiA+ID4gYmUgdGFrZW4gYXdheSBm
cm9tIHRoZSBub24tc2VjdXJlIHdvcmxkIGlmIG9uZSB3b3VsZCB3YW50IHRvIHJ1bgo+ID4gPiA+
ID4gPiA+ID4gYW4gdW50cnVzdGVkIE9TIGtlcm5lbCBvbiBhIGkuTVg4TSBzeXN0ZW0uCj4gPiA+
ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gPiA+IFRvIHByb3Blcmx5IGltcGxlbWVudCBzZWN1cml0
eSBvbiBhbnkgaS5NWDhNIGJhc2VkIHN5c3RlbSB0aGUKPiA+ID4gPiA+ID4gPiA+IGZpcm13YXJl
IHdvdWxkIG5lZWQgdG8gZ3JvdyBzb21ldGhpbmcgbGlrZSBhIGZ1bGwgQVJNIFNDUEkKPiA+ID4g
PiA+ID4gPiA+IGltcGxlbWVudGF0aW9uLCBzbyBhbGwgc2hhcmVkIGNyaXRpY2FsIHBlcmlwaGVy
YWxzIGFyZSBzb2xlbHkgdW5kZXIKPiA+IGZpcm13YXJlIGNvbnRyb2wuCj4gPiA+ID4gPiA+ID4g
SXQgbWlnaHQgYmUgcG9zc2libGUgdG8gcmV3b3JrIHRoaXMgdG8gdXNlIHNvbWUgZm9ybSBvZgo+
ID4gPiA+ID4gPiA+IFNDTUktb3Zlci1TTUMgaW5zdGVhZCBvZiB2ZW5kb3Itc3BlY2lmaWMgU01D
Q0MgU0lQIGNhbGxzCj4gPiA+IAo+ID4gPiBJIHdhcyBqdXN0IGN1cmlvdXMgdG8ga25vdyBpZiB0
aGVyZSBpcyBhbnkgcHJvZ3Jlc3MgYmVpbmcgbWFkZSBvbgo+ID4gPiB0aGlzLiAgVGhlIGkubXg4
bW0tZXZrIGlzIG1pc3NpbmcgZnVuY3Rpb25hbGl0eSB1cHN0cmVhbSBhbmQgSSB0aGluawo+ID4g
PiB0aGUgcG93ZXIgZG9tYWluIHN1cHBvcnQgd291bGQgaGVscCBlbmFibGUgc29tZSBvZiB0aGVz
ZSBmZWF0dXJlcy4KPiA+ID4gCj4gPiAKPiA+IEhhcyB0aGVyZSBiZWVuIGFueSBkZWNpc2lvbiBv
ciBhY3Rpb24gdGFrZW4gaW4gdGhpcyB0b3BpYz8KPiA+IFdpbGwgdGhlIHBvd2VyIGRvbWFpbiBk
cml2ZXIgYXMgcHJvcG9zZWQgaW4gdGhpcyBwYXRjaCBiZSB1cHN0cmVhbWVkIGF0Cj4gPiBzb21l
IHRpbWUsIG9yIHJhdGhlciBub3Q/Cj4gPiAKPiA+IEkgdHJ5IHRvIGJ1aWxkIGEgbWFpbmxpbmUg
QlNQIGZvciBpLk1YOE1NIChNTCBVLUJvb3QsIE1MIFRGLUEsIE1MIExpbnV4KQo+ID4gYW5kIEkg
aW50ZWdyYXRlZCBkaXNwbGF5IGFuZCBncmFwaGljcyBzdXBwb3J0IGZyb20gdGhlIGRvd25zdHJl
YW0gTlhQCj4gPiBrZXJuZWwuCj4gPiAKPiA+IFdoaWxlIG1vc3QgdGhpbmdzIGFscmVhZHkgd29y
ayBmaW5lLCB0aGVyZSdzIHRoZSBpc3N1ZSBvZiBob3cgdG8gaGFuZGxlIHRoZQo+ID4gcG93ZXIg
ZG9tYWlucy4gQ3VycmVudGx5IEkgbmVlZCB0byB1bmdhdGUgc29tZSBjbG9ja3MgaW4gdGhlIFRG
LUEKPiA+IEJMMzEgdG8gZ2V0IGZvciBleGFtcGxlIHRoZSBHUFUgcnVubmluZy4gSWYgSSB1bmRl
cnN0YW5kIHRoaXMgY29ycmVjdGx5IHRoZQo+ID4gcHJvcG9zZWQgcG93ZXIgZG9tYWluIGRyaXZl
ciBjb3VsZCBoYW5kbGUgdGhpcyBpbiBMaW51eCBvdGhlcndpc2UuCj4gPiAKPiAKPiB0aGUgU0NN
SSBvdmVyIFNNQyBpcyBzdGlsbCB1bmRlciByZXZpZXcKCkV2ZW4gaWYgdGhlIFNDTUkgb3ZlciBT
TUMgaXMgcmVhZHkgYXQgc29tZSBwb2ludCwgaXQncyBzdGlsbCB1bmNsZWFyIHRvCm1lIGhvdyB5
b3UgaW50ZW5kIHRvIGFic3RyYWN0IHRoZSBHUEMgYmVoaW5kIHRoZSBTQ01JIGludGVyZmFjZSBp
biB0aGUKVEYtQS4gVGhlIHBvd2VyIGRvbWFpbnMgaGF2ZSBkZXBlbmRlbmNpZXMgYm90aCBpbnRv
IHRoZSByZWd1bGF0b3IgYW5kCnRoZSBjbG9jayBmcmFtZXdvcmsuIEJvdGggYXJlIGN1cnJlbnRs
eSB1bmRlciBleGNsdXNpdmUgY29udHJvbCBvZiB0aGUKcmljaCBPUy4gSG93IGRvIHlvdSBpbnRl
bmQgdG8gYWxsb3cgdGhlIFRGLUEgdG8gY29udHJvbCB0aGUgcG93ZXIKc3VwcGxpZXMgYW5kIG5l
Y2Vzc2FyeSByZXNldCBjbG9ja3Mgd2l0aG91dCBtZXNzaW5nIHVwIGFueSBzdGF0ZSBpbiB0aGUK
cmljaCBPUz8KClJlZ2FyZHMsCkx1Y2FzCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJt
LWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
