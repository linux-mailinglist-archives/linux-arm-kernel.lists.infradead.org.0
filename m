Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D841450B27
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 14:52:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+v+98vwFHPc/agjM66TcSclQzZSLPi6udUV7JYgOY+w=; b=eA+uRwBQEFNIah
	fPwM7RZ/+U3r8LJ7ZeHPzc1p0/l51aROQ3p+Wt8o4lo6bgLYZO15rRsB/GEqPgZ5MF5vKLJm/0li4
	K0ZaHv0YPRyrriOKc1kmDOhnVfzRtbZQty5cfXNvKKCjt/ScNVRQy9c1wpua2Su7RoeW4+/XgG0hy
	I3j9L4kIwcBoRgG+WXl+V/eUbaEEVsYELL3kJS7kkjNU3nNwDVxiOvEnUcY9SMgJLWYW365fjzQBC
	kLsCZZeji0vwFzCOAiH8nxVDACstSRJ2/eA0j0XKuS7T2qRh1fwsXG7GHjDtQreC+K3swDcyUKKRZ
	kYwCUWi2HXsFGK/XiAeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfOSj-0005uM-2I; Mon, 24 Jun 2019 12:52:45 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfOSZ-0005tt-CU
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 12:52:36 +0000
Received: from kresse.hi.pengutronix.de ([2001:67c:670:100:1d::2a])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>)
 id 1hfOSW-0005Os-2s; Mon, 24 Jun 2019 14:52:32 +0200
Message-ID: <1561380750.2587.5.camel@pengutronix.de>
Subject: Re: [BUG] imx-sdma: readl_relaxed_poll_timeout_atomic() conversion
From: Lucas Stach <l.stach@pengutronix.de>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Date: Mon, 24 Jun 2019 14:52:30 +0200
In-Reply-To: <20190624121533.3sd6mmxjfktllp2j@shell.armlinux.org.uk>
References: <20190622165318.bgyun52hssqmdv4n@shell.armlinux.org.uk>
 <20190622181029.iy72xkz3xcomwjtl@pengutronix.de>
 <20190622184237.ld7xwc5kk7sbghae@shell.armlinux.org.uk>
 <1561378450.2587.3.camel@pengutronix.de>
 <20190624121533.3sd6mmxjfktllp2j@shell.armlinux.org.uk>
X-Mailer: Evolution 3.22.6-1+deb9u1 
Mime-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::2a
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_055235_426595_2AC3DCA9 
X-CRM114-Status: GOOD (  25.71  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Vinod Koul <vinod.koul@intel.com>, dmaengine@vger.kernel.org,
 Michael Olbrich <m.olbrich@pengutronix.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QW0gTW9udGFnLCBkZW4gMjQuMDYuMjAxOSwgMTM6MTUgKzAxMDAgc2NocmllYiBSdXNzZWxsIEtp
bmcgLSBBUk0gTGludXggYWRtaW46Cj4gT24gTW9uLCBKdW4gMjQsIDIwMTkgYXQgMDI6MTQ6MTBQ
TSArMDIwMCwgTHVjYXMgU3RhY2ggd3JvdGU6Cj4gPiBIaSBSdXNzZWxsLAo+ID4gCj4gPiBBbSBT
YW1zdGFnLCBkZW4gMjIuMDYuMjAxOSwgMTk6NDIgKzAxMDAgc2NocmllYiBSdXNzZWxsIEtpbmcg
LSBBUk0gTGludXggYWRtaW46Cj4gPiA+IE9uIFNhdCwgSnVuIDIyLCAyMDE5IGF0IDA4OjEwOjI5
UE0gKzAyMDAsIE1pY2hhZWwgT2xicmljaCB3cm90ZToKPiA+ID4gPiBPbiBTYXQsIEp1biAyMiwg
MjAxOSBhdCAwNTo1MzoxOFBNICswMTAwLCBSdXNzZWxsIEtpbmcgLSBBUk0gTGludXggYWRtaW4g
d3JvdGU6Cj4gPiA+ID4gPiBPbGQgY29kZToKPiA+ID4gPiA+IAo+ID4gPiA+ID4gLcKgwqDCoMKg
wqDCoMKgd2hpbGUgKCEocmV0ID0gcmVhZGxfcmVsYXhlZChzZG1hLT5yZWdzICsgU0RNQV9IX0lO
VFIpICYgMSkpIHsKPiA+ID4gPiA+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpZiAo
dGltZW91dC0tIDw9IDApCj4gPiA+ID4gPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoGJyZWFrOwo+ID4gPiA+ID4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoHVkZWxheSgxKTsKPiA+ID4gPiA+IC3CoMKgwqDCoMKgwqDCoH0KPiA+ID4gPiA+IAo+
ID4gPiA+ID4gU28sIHdoaWxlIGJpdCAwIGlzIF9jbGVhcl8gdGhlIGxvb3AgY29udGludWVzIHRv
IHBvbGwuCj4gPiA+ID4gPiAKPiA+ID4gPiA+IAo+ID4gPiA+ID4gTmV3IGNvZGU6Cj4gPiA+ID4g
PiAKPiA+ID4gPiA+ICvCoMKgwqDCoMKgwqDCoHJldCA9IHJlYWRsX3JlbGF4ZWRfcG9sbF90aW1l
b3V0X2F0b21pYyhzZG1hLT5yZWdzICsgU0RNQV9IX1NUQVRTVE9QLAo+ID4gPiA+ID4gK8KgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByZWcsICEocmVnICYgMSksIDEsIDUwMCk7
Cj4gPiA+ID4gPiAKPiA+ID4gPiA+IERvZXNuJ3QgcmVhbGx5IHRlbGwgdXMgd2hhdCB0aGUgdGVy
bWluYXRpb24gY29uZGl0aW9uIGlzIChiZWNhdXNlIG9mCj4gPiA+ID4gPiB0aGUgb2JmdXNjYXRp
b24gdGFraW5nIGF3YXkgdGhlIGRldGFpbHMpLCBidXQgaWYgd2UgZGlnIGludG8gdGhlCj4gPiA+
ID4gPiBtYWNybyBtYXplOgo+ID4gPiA+ID4gCj4gPiA+ID4gPiAjZGVmaW5lIHJlYWRsX3JlbGF4
ZWRfcG9sbF90aW1lb3V0X2F0b21pYyhhZGRyLCB2YWwsIGNvbmQsIGRlbGF5X3VzLCB0aW1lb3V0
X3VzKSBcCj4gPiA+ID4gPiDCoMKgwqDCoMKgwqDCoMKgcmVhZHhfcG9sbF90aW1lb3V0X2F0b21p
YyhyZWFkbF9yZWxheGVkLCBhZGRyLCB2YWwsIGNvbmQsIGRlbGF5X3VzLCB0aW1lb3V0X3VzKQo+
ID4gPiA+ID4gCj4gPiA+ID4gPiAjZGVmaW5lIHJlYWR4X3BvbGxfdGltZW91dF9hdG9taWMob3As
IGFkZHIsIHZhbCwgY29uZCwgZGVsYXlfdXMsIHRpbWVvdXRfdXMpIFwKPiA+ID4gPiA+ICh7IFwK
PiA+ID4gPiA+IMKgwqDCoMKgwqDCoMKgwqB1NjQgX190aW1lb3V0X3VzID0gKHRpbWVvdXRfdXMp
OyBcCj4gPiA+ID4gPiDCoMKgwqDCoMKgwqDCoMKgdW5zaWduZWQgbG9uZyBfX2RlbGF5X3VzID0g
KGRlbGF5X3VzKTsgXAo+ID4gPiA+ID4gwqDCoMKgwqDCoMKgwqDCoGt0aW1lX3QgX190aW1lb3V0
ID0ga3RpbWVfYWRkX3VzKGt0aW1lX2dldCgpLCBfX3RpbWVvdXRfdXMpOyBcCj4gPiA+ID4gPiDC
oMKgwqDCoMKgwqDCoMKgZm9yICg7OykgeyBcCj4gPiA+ID4gPiDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCh2YWwpID0gb3AoYWRkcik7IFwKPiA+ID4gPiA+IMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgaWYgKGNvbmQpIFwKPiA+ID4gPiA+IMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGJyZWFrOyBcCj4gPiA+ID4gPiAKPiA+ID4g
PiA+ICJjb25kIiBpcyBwYXNzZWQgaW4gdG8gaGVyZSB1bm1vZGlmaWVkLCBzbyB0aGlzIGJlY29t
ZXM6Cj4gPiA+ID4gPiAKPiA+ID4gPiA+IAlmb3IgKDs7KSB7Cj4gPiA+ID4gPiA+ID4gPiA+ID4g
PiA+ID4gPiA+ID4gCQlyZWcgPSByZWFkbF9yZWxheGVkKHNkbWEtPnJlZ3MgKyBTRE1BX0hfU1RB
VFNUT1ApOwo+ID4gPiA+ID4gPiA+ID4gPiA+ID4gPiA+ID4gPiA+IAkJaWYgKCEocmVnICYgMSkp
Cj4gPiA+ID4gPiA+ID4gPiAJCQlicmVhazsKPiA+ID4gPiA+IAo+ID4gPiA+ID4gU28sIGlmIGJp
dCAwIG9mIHRoaXMgcmVnaXN0ZXIgaXMgY2xlYXIsIHdlIHRlcm1pbmF0ZSB0aGUgbG9vcC4KPiA+
ID4gPiA+IAo+ID4gPiA+ID4gU2VlbXMgdG8gbWUgbGlrZSB0aGlzIGlzIGEgZ3JlYXQgaWxsdXN0
cmF0aW9uIHdoeSB1c2luZyBhIGhlbHBlcgo+ID4gPiA+ID4gX2ludHJvZHVjZXNfIGJ1Z3MsIGJl
Y2F1c2UgaXQgaGlkZXMgdGhlIGRldGFpbCBhYm91dCB3aGF0IHRoZSBleGl0Cj4gPiA+ID4gPiBj
b25kaXRpb24gZm9yIHRoZSBlbWJlZGRlZCBsb29wIGFjdHVhbGx5IGlzLCBhbmQgbGVhZHMgdG8g
dGhpcyBraW5kCj4gPiA+ID4gPiBvZiBlcnJvci4KPiA+ID4gPiA+IAo+ID4gPiA+ID4gSW4gYW55
IGNhc2UsIHRoZSBjb252ZXJzaW9uIGlzIG9idmlvdXNseSBpbmNvcnJlY3QuCj4gPiA+ID4gPiAK
PiA+ID4gPiA+IEkgb2NjYXNpb25hbGx5IHNlZSB0aGUgIlRpbWVvdXQgd2FpdGluZyBmb3IgQ0gw
IHJlYWR5IiBlcnJvciBkdXJpbmcKPiA+ID4gPiA+IGJvb3Qgb24gYSBjYmk0LCB3aGljaCwgZ2l2
ZW4gdGhlIGFib3ZlLCBtZWFucyB0aGF0IHdlIGRpZCBlbmQgdXAKPiA+ID4gPiA+IHNlZWluZyBi
aXQgMSBzZXQgKHNvIGFjY29yZGluZyB0byB0aGUgb2xkIGNvZGUsIHdlIHdhaXRlZAo+ID4gPiA+
ID4gc3VjY2Vzc2Z1bGx5LikKPiA+ID4gPiAKPiA+ID4gPiBUaGUgb2xkIGNvZGUgd2FzIHBvbGxp
bmcgU0RNQV9IX0lOVFIgc28gaXQgd2FpdGVkIGZvciB0aGUgYml0IHRvIGJlIHNldC4KPiA+ID4g
PiBUaGUgbmV3IGNvZGUgKGFzIGRvY3VtZW50ZWQgaW4gdGhlIGNvbW1pdCBtZXNzYWdlKSBwb2xs
cyBTRE1BX0hfU1RBVFNUT1AKPiA+ID4gPiBpbnN0ZWFkLgo+ID4gPiA+IEkgYmVsaWV2ZSB0aGlz
IHJlZ2lzdGVyIGlzIGNhbGxlZCBTRE1BQVJNX1NUT1BfU1RBVCBpbiB0aGUgcmVmZXJlbmNlCj4g
PiA+ID4gbWFudWFsLiBBbmQgdGhlIGRvY3VtZW50YXRpb24gc3RhdGVzOiAiUmVhZGluZyB0aGlz
IHJlZ2lzdGVyIHlpZWxkcyB0aGUKPiA+ID4gPiBjdXJyZW50IHN0YXRlIG9mIHRoZSBIRVtpXSBi
aXRzIi4KPiA+ID4gPiBBbmQgZnJvbSB0aGUgZG9jdW1lbnRhdGlvbiBvZiB0aGUgU0RNQSAiRE9O
RSIgaW5zdHJ1Y3Rpb246Cj4gPiA+ID4gIkNsZWFyIEhFIGJpdCBmb3IgdGhlIGN1cnJlbnQgY2hh
bm5lbCwgc2VuZCBhbiBpbnRlcnJ1cHQgdG8gdGhlIEFybQo+ID4gPiA+IHBsYXRmb3JtIGZvciB0
aGUgY3VycmVudCBjaGFubmVsIGFuZCByZXNjaGVkdWxlLiIKPiA+ID4gPiAKPiA+ID4gPiBNeSBp
bnRlcnByZXRhdGlvbiBvZiB0aGlzIGlzLCB0aGF0IHdhaXRpbmcgZm9yIHRoZSBiaXQgaW4gU0RN
QV9IX1NUQVRTVE9QCj4gPiA+ID4gdG8gYmVjb21lIHplcm8gaGFzIHRoZSBzYW1lIGVmZmVjdCBh
cyB3YWl0aW5nIGZvciB0aGUgYml0IGluIFNETUFfSF9JTlRSIHRvCj4gPiA+ID4gYmUgc2V0LiBP
ciBhbSBJIG1pc3Npbmcgc29tZXRoaW5nPwo+ID4gPiAKPiA+ID4gU28sIHdoeSBkbyBhbGwgbXkg
aU1YNiBwbGF0Zm9ybXMgbm93IHJhbmRvbWx5IHNwaXQgb3V0Ogo+ID4gPiAKPiA+ID4gImlteC1z
ZG1hIDIwZWMwMDAuc2RtYTogVGltZW91dCB3YWl0aW5nIGZvciBDSDAgcmVhZHkiCj4gPiAKPiA+
IFRoaXMgaXMgZHVlIHRvIGEgRFQgbWlzY29uZmlndXJhdGlvbiB3aGljaCB3YXMgdW5jb3ZlcmVk
IHdpdGggYSByZWNlbnQKPiA+IGRyaXZlciBjaGFuZ2UgKDI1YWFhNzVkZjFlNiBkbWFlbmdpbmU6
IGlteC1zZG1hOiBhZGQgY2xvY2sgcmF0aW8gMToxCj4gPiBjaGVjaykgYW5kIGZpeGVkIHdpdGgg
KDk0MWFjZDU2NmIxOCBkbWFlbmdpbmU6IGlteC1zZG1hOiBPbmx5IGNoZWNrCj4gPiByYXRpbyBv
biBwYXJ0cyB0aGF0IHN1cHBvcnQgMToxKS4gUGxlYXNlIHN3aXRjaCB0byBhIHJlY2VudCBzdGFi
bGUKPiA+IGtlcm5lbCwgNS4xLjUgaGFzIHRoZSBmaXggaW5jbHVkZWQuCj4gCj4gUGxlYXNlIHBv
aW50IHRvIHRoZSBmaXgsIHRoYW5rcy4KCkFzIEkgc3RhdGVkIGFib3ZlIHRoZSBmaXggaXMgOTQx
YWNkNTY2YjE4IChkbWFlbmdpbmU6IGlteC1zZG1hOiBPbmx5CmNoZWNrIHJhdGlvIG9uIHBhcnRz
IHRoYXQgc3VwcG9ydCAxOjEpLCB3aGljaCBpcyA0MGFhYjE5OTBmNzEgaW4gdGhlCjUuMS55IHN0
YWJsZSBicmFuY2guCgpSZWdhcmRzLApMdWNhcwoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgt
YXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
