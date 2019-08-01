Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B49FF7D7E6
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 10:41:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qs8p59qTlLDOg/9H6JiZlV1uex7HRdR6/h4y8k8iBlc=; b=cfwLNCnfS44EtF
	wSlkTy3/4/faJLSLyqUn04wLQ7ba4qj+zhuWNErTuvQtmAtRIx1ji9JjFx2FTbzte++7VIs4mjdNk
	Tmc0bT63hl96ibO1ntzTRb1L+ta/GhwOgiQSSWrqovCZXa7xe/51f7X1sVqMTL/ewgbpV2Ox19RYQ
	ig/XZUeL8y6EN2omg2DH49gPdY9/Gf3ZtebXv3QQGFmu6RH5hvAVa+pNblqaw7e+Fo0Fua4wBtjit
	zav7RuqclTW3CdNAOF4PzjYXEs8Q1F9zNQyl8ZSHO5pmzrRH/f77/qQVL+NfXuGsZSlMRXdbCX3s5
	bT80WSeZG1sGo8RMW2vQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht6eL-0004oG-CW; Thu, 01 Aug 2019 08:41:25 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ht6eB-0004kp-Kr
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 08:41:17 +0000
Received: from kresse.hi.pengutronix.de ([2001:67c:670:100:1d::2a])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>)
 id 1ht6e6-0002Qy-3C; Thu, 01 Aug 2019 10:41:10 +0200
Message-ID: <1564648868.7267.28.camel@pengutronix.de>
Subject: Re: [PATCH v2 1/1] dt-bindings: reset: Fix typo in imx8mq resets
From: Lucas Stach <l.stach@pengutronix.de>
To: Guido =?ISO-8859-1?Q?G=FCnther?= <agx@sigxcpu.org>, Philipp Zabel
 <p.zabel@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>, Sascha Hauer
 <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>, Rob
 Herring <robh+dt@kernel.org>,  Mark Rutland <mark.rutland@arm.com>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org
Date: Thu, 01 Aug 2019 10:41:08 +0200
In-Reply-To: <660b4fb6ab9acec05aa5fde323d878e04e3d1f64.1564647612.git.agx@sigxcpu.org>
References: <cover.1564647612.git.agx@sigxcpu.org>
 <660b4fb6ab9acec05aa5fde323d878e04e3d1f64.1564647612.git.agx@sigxcpu.org>
X-Mailer: Evolution 3.22.6-1+deb9u2 
Mime-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::2a
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_014115_680487_4989D834 
X-CRM114-Status: GOOD (  15.31  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QW0gRG9ubmVyc3RhZywgZGVuIDAxLjA4LjIwMTksIDEwOjIwICswMjAwIHNjaHJpZWIgR3VpZG8g
R8O8bnRoZXI6Cj4gU29tZSBvZiB0aGUgbWlwaSBkc2kgcmVzZXRzIHdlcmUgY2FsbGVkCj4gCj4g
wqAgSU1YOE1RX1JFU0VUX01JUElfRElTX18KPiAKPiBpbnN0ZWFkIG9mCj4gCj4gwqAgSU1YOE1R
X1JFU0VUX01JUElfRFNJX18KPiAKPiBTaW5jZSB0aGV5J3JlIERTSSByZWxhdGVkIHRoaXMgbG9v
a3MgbGlrZSBhIHR5cG8uIFRoaXMgZml4ZXMgdGhlCj4gb25seSBpbiB0cmVlIHVzZXIgYXMgd2Vs
bCB0byBub3QgYnJlYWsgYmlzZWN0aW5nLgo+IAo+IFNpZ25lZC1vZmYtYnk6IEd1aWRvIEfDvG50
aGVyIDxhZ3hAc2lneGNwdS5vcmc+CgpSZXZpZXdlZC1ieTogTHVjYXMgU3RhY2ggPGwuc3RhY2hA
cGVuZ3V0cm9uaXguZGU+Cgo+IC0tLQo+IMKgZHJpdmVycy9yZXNldC9yZXNldC1pbXg3LmPCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqB8IDEyICsrKysrKy0tLS0tLQo+IMKgaW5jbHVkZS9k
dC1iaW5kaW5ncy9yZXNldC9pbXg4bXEtcmVzZXQuaCB8wqDCoDYgKysrLS0tCj4gwqAyIGZpbGVz
IGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKSwgOSBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9yZXNldC9yZXNldC1pbXg3LmMgYi9kcml2ZXJzL3Jlc2V0L3Jlc2V0LWlteDcu
Ywo+IGluZGV4IDNlY2Q3NzBmOTEwYi4uMTQ0M2E1NWEwYzI5IDEwMDY0NAo+IC0tLSBhL2RyaXZl
cnMvcmVzZXQvcmVzZXQtaW14Ny5jCj4gKysrIGIvZHJpdmVycy9yZXNldC9yZXNldC1pbXg3LmMK
PiBAQCAtMTY5LDkgKzE2OSw5IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaW14N19zcmNfc2lnbmFs
IGlteDhtcV9zcmNfc2lnbmFsc1tJTVg4TVFfUkVTRVRfTlVNXSA9IHsKPiA+ID4gwqAJW0lNWDhN
UV9SRVNFVF9PVEcyX1BIWV9SRVNFVF0JCT0geyBTUkNfVVNCT1BIWTJfUkNSLCBCSVQoMCkgfSwK
PiA+ID4gwqAJW0lNWDhNUV9SRVNFVF9NSVBJX0RTSV9SRVNFVF9CWVRFX05dCT0geyBTUkNfTUlQ
SVBIWV9SQ1IsIEJJVCgxKSB9LAo+ID4gPiDCoAlbSU1YOE1RX1JFU0VUX01JUElfRFNJX1JFU0VU
X05dCQk9IHsgU1JDX01JUElQSFlfUkNSLCBCSVQoMikgfSwKPiA+ID4gLQlbSU1YOE1RX1JFU0VU
X01JUElfRElTX0RQSV9SRVNFVF9OXQk9IHsgU1JDX01JUElQSFlfUkNSLCBCSVQoMykgfSwKPiA+
ID4gLQlbSU1YOE1RX1JFU0VUX01JUElfRElTX0VTQ19SRVNFVF9OXQk9IHsgU1JDX01JUElQSFlf
UkNSLCBCSVQoNCkgfSwKPiA+ID4gLQlbSU1YOE1RX1JFU0VUX01JUElfRElTX1BDTEtfUkVTRVRf
Tl0JPSB7IFNSQ19NSVBJUEhZX1JDUiwgQklUKDUpIH0sCj4gPiA+ICsJW0lNWDhNUV9SRVNFVF9N
SVBJX0RTSV9EUElfUkVTRVRfTl0JPSB7IFNSQ19NSVBJUEhZX1JDUiwgQklUKDMpIH0sCj4gPiA+
ICsJW0lNWDhNUV9SRVNFVF9NSVBJX0RTSV9FU0NfUkVTRVRfTl0JPSB7IFNSQ19NSVBJUEhZX1JD
UiwgQklUKDQpIH0sCj4gPiA+ICsJW0lNWDhNUV9SRVNFVF9NSVBJX0RTSV9QQ0xLX1JFU0VUX05d
CT0geyBTUkNfTUlQSVBIWV9SQ1IsIEJJVCg1KSB9LAo+ID4gPiDCoAlbSU1YOE1RX1JFU0VUX1BD
SUVQSFldCQkJPSB7IFNSQ19QQ0lFUEhZX1JDUiwKPiA+IMKgCQkJCQkJwqDCoMKgwqBCSVQoMikg
fCBCSVQoMSkgfSwKPiA+ID4gwqAJW0lNWDhNUV9SRVNFVF9QQ0lFUEhZX1BFUlNUXQkJPSB7IFNS
Q19QQ0lFUEhZX1JDUiwgQklUKDMpIH0sCj4gQEAgLTIyMCw5ICsyMjAsOSBAQCBzdGF0aWMgaW50
IGlteDhtcV9yZXNldF9zZXQoc3RydWN0IHJlc2V0X2NvbnRyb2xsZXJfZGV2ICpyY2RldiwKPiDC
oAo+ID4gwqAJY2FzZSBJTVg4TVFfUkVTRVRfUENJRV9DVFJMX0FQUFNfRU46Cj4gPiA+IMKgCWNh
c2UgSU1YOE1RX1JFU0VUX1BDSUUyX0NUUkxfQVBQU19FTjoJLyogZmFsbHRocm91Z2ggKi8KPiA+
ID4gLQljYXNlIElNWDhNUV9SRVNFVF9NSVBJX0RJU19QQ0xLX1JFU0VUX046CS8qIGZhbGx0aHJv
dWdoICovCj4gPiA+IC0JY2FzZSBJTVg4TVFfUkVTRVRfTUlQSV9ESVNfRVNDX1JFU0VUX046CS8q
IGZhbGx0aHJvdWdoICovCj4gPiA+IC0JY2FzZSBJTVg4TVFfUkVTRVRfTUlQSV9ESVNfRFBJX1JF
U0VUX046CS8qIGZhbGx0aHJvdWdoICovCj4gPiA+ICsJY2FzZSBJTVg4TVFfUkVTRVRfTUlQSV9E
U0lfUENMS19SRVNFVF9OOgkvKiBmYWxsdGhyb3VnaCAqLwo+ID4gPiArCWNhc2UgSU1YOE1RX1JF
U0VUX01JUElfRFNJX0VTQ19SRVNFVF9OOgkvKiBmYWxsdGhyb3VnaCAqLwo+ID4gPiArCWNhc2Ug
SU1YOE1RX1JFU0VUX01JUElfRFNJX0RQSV9SRVNFVF9OOgkvKiBmYWxsdGhyb3VnaCAqLwo+ID4g
PiDCoAljYXNlIElNWDhNUV9SRVNFVF9NSVBJX0RTSV9SRVNFVF9OOgkvKiBmYWxsdGhyb3VnaCAq
Lwo+ID4gPiDCoAljYXNlIElNWDhNUV9SRVNFVF9NSVBJX0RTSV9SRVNFVF9CWVRFX046CS8qIGZh
bGx0aHJvdWdoICovCj4gPiDCoAkJdmFsdWUgPSBhc3NlcnQgPyAwIDogYml0Owo+IGRpZmYgLS1n
aXQgYS9pbmNsdWRlL2R0LWJpbmRpbmdzL3Jlc2V0L2lteDhtcS1yZXNldC5oIGIvaW5jbHVkZS9k
dC1iaW5kaW5ncy9yZXNldC9pbXg4bXEtcmVzZXQuaAo+IGluZGV4IDU3YzU5MjQ5OGFhMC4uYmZh
NDFiMGUyNGY2IDEwMDY0NAo+IC0tLSBhL2luY2x1ZGUvZHQtYmluZGluZ3MvcmVzZXQvaW14OG1x
LXJlc2V0LmgKPiArKysgYi9pbmNsdWRlL2R0LWJpbmRpbmdzL3Jlc2V0L2lteDhtcS1yZXNldC5o
Cj4gQEAgLTMxLDkgKzMxLDkgQEAKPiA+IMKgI2RlZmluZSBJTVg4TVFfUkVTRVRfT1RHMl9QSFlf
UkVTRVQJCTIwCj4gPiDCoCNkZWZpbmUgSU1YOE1RX1JFU0VUX01JUElfRFNJX1JFU0VUX0JZVEVf
TgkyMQo+ID4gwqAjZGVmaW5lIElNWDhNUV9SRVNFVF9NSVBJX0RTSV9SRVNFVF9OCQkyMgo+ID4g
LSNkZWZpbmUgSU1YOE1RX1JFU0VUX01JUElfRElTX0RQSV9SRVNFVF9OCTIzCj4gPiAtI2RlZmlu
ZSBJTVg4TVFfUkVTRVRfTUlQSV9ESVNfRVNDX1JFU0VUX04JMjQKPiA+IC0jZGVmaW5lIElNWDhN
UV9SRVNFVF9NSVBJX0RJU19QQ0xLX1JFU0VUX04JMjUKPiA+ICsjZGVmaW5lIElNWDhNUV9SRVNF
VF9NSVBJX0RTSV9EUElfUkVTRVRfTgkyMwo+ID4gKyNkZWZpbmUgSU1YOE1RX1JFU0VUX01JUElf
RFNJX0VTQ19SRVNFVF9OCTI0Cj4gPiArI2RlZmluZSBJTVg4TVFfUkVTRVRfTUlQSV9EU0lfUENM
S19SRVNFVF9OCTI1Cj4gPiDCoCNkZWZpbmUgSU1YOE1RX1JFU0VUX1BDSUVQSFkJCQkyNgo+ID4g
wqAjZGVmaW5lIElNWDhNUV9SRVNFVF9QQ0lFUEhZX1BFUlNUCQkyNwo+ID4gwqAjZGVmaW5lIElN
WDhNUV9SRVNFVF9QQ0lFX0NUUkxfQVBQU19FTgkJMjgKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0Cmxp
bnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
