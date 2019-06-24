Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D50EE50A81
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 14:14:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D29hwv05HPuDB5KdcKCjzH5eWcXrcGkKXcDjFAqqO8M=; b=DN4e0im9c5q3qr
	amFUmwDnjLITppDitf/VhC732naJ6igkoUGs+ADG4xjGbLcMKy7V0TUvVE7bu7jp5SU+PEnk4P7BL
	9dNGC7GmQ6PisOYj+1auu7LadlUj3ewIlA3uUZM7y+huKOayrNNlIL59y7H6wERxTTinzz+1clknc
	dosnJDyp5cPJ/Ac4a3X8CFnne/bsGObK0mWcWMzgOPuEzPx4Tk46bwOWFI9TgS6/0xk5/0QaK1ogU
	I9UGrm5UpAHgxCvkygy+3uuOaEACwrXmgm5e2261zHbAlGteEvGXrHMkxZD74R6UzdOxhAEG7seLH
	PCZ5ktGjx6f4by2er26A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfNrk-0006dH-5W; Mon, 24 Jun 2019 12:14:32 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfNrY-0006cq-VP
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 12:14:22 +0000
Received: from kresse.hi.pengutronix.de ([2001:67c:670:100:1d::2a])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>)
 id 1hfNrQ-0000Tu-6o; Mon, 24 Jun 2019 14:14:12 +0200
Message-ID: <1561378450.2587.3.camel@pengutronix.de>
Subject: Re: [BUG] imx-sdma: readl_relaxed_poll_timeout_atomic() conversion
From: Lucas Stach <l.stach@pengutronix.de>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>, Michael Olbrich
 <m.olbrich@pengutronix.de>
Date: Mon, 24 Jun 2019 14:14:10 +0200
In-Reply-To: <20190622184237.ld7xwc5kk7sbghae@shell.armlinux.org.uk>
References: <20190622165318.bgyun52hssqmdv4n@shell.armlinux.org.uk>
 <20190622181029.iy72xkz3xcomwjtl@pengutronix.de>
 <20190622184237.ld7xwc5kk7sbghae@shell.armlinux.org.uk>
X-Mailer: Evolution 3.22.6-1+deb9u1 
Mime-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::2a
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_051421_016489_8CFB046E 
X-CRM114-Status: GOOD (  23.71  )
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
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgUnVzc2VsbCwKCkFtIFNhbXN0YWcsIGRlbiAyMi4wNi4yMDE5LCAxOTo0MiArMDEwMCBzY2hy
aWViIFJ1c3NlbGwgS2luZyAtIEFSTSBMaW51eCBhZG1pbjoKPiBPbiBTYXQsIEp1biAyMiwgMjAx
OSBhdCAwODoxMDoyOVBNICswMjAwLCBNaWNoYWVsIE9sYnJpY2ggd3JvdGU6Cj4gPiBPbiBTYXQs
IEp1biAyMiwgMjAxOSBhdCAwNTo1MzoxOFBNICswMTAwLCBSdXNzZWxsIEtpbmcgLSBBUk0gTGlu
dXggYWRtaW4gd3JvdGU6Cj4gPiA+IE9sZCBjb2RlOgo+ID4gPiAKPiA+ID4gLcKgwqDCoMKgwqDC
oMKgd2hpbGUgKCEocmV0ID0gcmVhZGxfcmVsYXhlZChzZG1hLT5yZWdzICsgU0RNQV9IX0lOVFIp
ICYgMSkpIHsKPiA+ID4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGlmICh0aW1lb3V0
LS0gPD0gMCkKPiA+ID4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqBicmVhazsKPiA+ID4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHVkZWxheSgx
KTsKPiA+ID4gLcKgwqDCoMKgwqDCoMKgfQo+ID4gPiAKPiA+ID4gU28sIHdoaWxlIGJpdCAwIGlz
IF9jbGVhcl8gdGhlIGxvb3AgY29udGludWVzIHRvIHBvbGwuCj4gPiA+IAo+ID4gPiAKPiA+ID4g
TmV3IGNvZGU6Cj4gPiA+IAo+ID4gPiArwqDCoMKgwqDCoMKgwqByZXQgPSByZWFkbF9yZWxheGVk
X3BvbGxfdGltZW91dF9hdG9taWMoc2RtYS0+cmVncyArIFNETUFfSF9TVEFUU1RPUCwKPiA+ID4g
K8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByZWcsICEocmVnICYgMSksIDEs
IDUwMCk7Cj4gPiA+IAo+ID4gPiBEb2Vzbid0IHJlYWxseSB0ZWxsIHVzIHdoYXQgdGhlIHRlcm1p
bmF0aW9uIGNvbmRpdGlvbiBpcyAoYmVjYXVzZSBvZgo+ID4gPiB0aGUgb2JmdXNjYXRpb24gdGFr
aW5nIGF3YXkgdGhlIGRldGFpbHMpLCBidXQgaWYgd2UgZGlnIGludG8gdGhlCj4gPiA+IG1hY3Jv
IG1hemU6Cj4gPiA+IAo+ID4gPiAjZGVmaW5lIHJlYWRsX3JlbGF4ZWRfcG9sbF90aW1lb3V0X2F0
b21pYyhhZGRyLCB2YWwsIGNvbmQsIGRlbGF5X3VzLCB0aW1lb3V0X3VzKSBcCj4gPiA+IMKgwqDC
oMKgwqDCoMKgwqByZWFkeF9wb2xsX3RpbWVvdXRfYXRvbWljKHJlYWRsX3JlbGF4ZWQsIGFkZHIs
IHZhbCwgY29uZCwgZGVsYXlfdXMsIHRpbWVvdXRfdXMpCj4gPiA+IAo+ID4gPiAjZGVmaW5lIHJl
YWR4X3BvbGxfdGltZW91dF9hdG9taWMob3AsIGFkZHIsIHZhbCwgY29uZCwgZGVsYXlfdXMsIHRp
bWVvdXRfdXMpIFwKPiA+ID4gKHsgXAo+ID4gPiDCoMKgwqDCoMKgwqDCoMKgdTY0IF9fdGltZW91
dF91cyA9ICh0aW1lb3V0X3VzKTsgXAo+ID4gPiDCoMKgwqDCoMKgwqDCoMKgdW5zaWduZWQgbG9u
ZyBfX2RlbGF5X3VzID0gKGRlbGF5X3VzKTsgXAo+ID4gPiDCoMKgwqDCoMKgwqDCoMKga3RpbWVf
dCBfX3RpbWVvdXQgPSBrdGltZV9hZGRfdXMoa3RpbWVfZ2V0KCksIF9fdGltZW91dF91cyk7IFwK
PiA+ID4gwqDCoMKgwqDCoMKgwqDCoGZvciAoOzspIHsgXAo+ID4gPiDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCh2YWwpID0gb3AoYWRkcik7IFwKPiA+ID4gwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqBpZiAoY29uZCkgXAo+ID4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBicmVhazsgXAo+ID4gPiAKPiA+ID4gImNvbmQiIGlz
IHBhc3NlZCBpbiB0byBoZXJlIHVubW9kaWZpZWQsIHNvIHRoaXMgYmVjb21lczoKPiA+ID4gCj4g
PiA+IAlmb3IgKDs7KSB7Cj4gPiA+ID4gPiA+IAkJcmVnID0gcmVhZGxfcmVsYXhlZChzZG1hLT5y
ZWdzICsgU0RNQV9IX1NUQVRTVE9QKTsKPiA+ID4gPiA+ID4gCQlpZiAoIShyZWcgJiAxKSkKPiA+
ID4gPiA+ID4gCQkJYnJlYWs7Cj4gPiA+IAo+ID4gPiBTbywgaWYgYml0IDAgb2YgdGhpcyByZWdp
c3RlciBpcyBjbGVhciwgd2UgdGVybWluYXRlIHRoZSBsb29wLgo+ID4gPiAKPiA+ID4gU2VlbXMg
dG8gbWUgbGlrZSB0aGlzIGlzIGEgZ3JlYXQgaWxsdXN0cmF0aW9uIHdoeSB1c2luZyBhIGhlbHBl
cgo+ID4gPiBfaW50cm9kdWNlc18gYnVncywgYmVjYXVzZSBpdCBoaWRlcyB0aGUgZGV0YWlsIGFi
b3V0IHdoYXQgdGhlIGV4aXQKPiA+ID4gY29uZGl0aW9uIGZvciB0aGUgZW1iZWRkZWQgbG9vcCBh
Y3R1YWxseSBpcywgYW5kIGxlYWRzIHRvIHRoaXMga2luZAo+ID4gPiBvZiBlcnJvci4KPiA+ID4g
Cj4gPiA+IEluIGFueSBjYXNlLCB0aGUgY29udmVyc2lvbiBpcyBvYnZpb3VzbHkgaW5jb3JyZWN0
Lgo+ID4gPiAKPiA+ID4gSSBvY2Nhc2lvbmFsbHkgc2VlIHRoZSAiVGltZW91dCB3YWl0aW5nIGZv
ciBDSDAgcmVhZHkiIGVycm9yIGR1cmluZwo+ID4gPiBib290IG9uIGEgY2JpNCwgd2hpY2gsIGdp
dmVuIHRoZSBhYm92ZSwgbWVhbnMgdGhhdCB3ZSBkaWQgZW5kIHVwCj4gPiA+IHNlZWluZyBiaXQg
MSBzZXQgKHNvIGFjY29yZGluZyB0byB0aGUgb2xkIGNvZGUsIHdlIHdhaXRlZAo+ID4gPiBzdWNj
ZXNzZnVsbHkuKQo+ID4gCj4gPiBUaGUgb2xkIGNvZGUgd2FzIHBvbGxpbmcgU0RNQV9IX0lOVFIg
c28gaXQgd2FpdGVkIGZvciB0aGUgYml0IHRvIGJlIHNldC4KPiA+IFRoZSBuZXcgY29kZSAoYXMg
ZG9jdW1lbnRlZCBpbiB0aGUgY29tbWl0IG1lc3NhZ2UpIHBvbGxzIFNETUFfSF9TVEFUU1RPUAo+
ID4gaW5zdGVhZC4KPiA+IEkgYmVsaWV2ZSB0aGlzIHJlZ2lzdGVyIGlzIGNhbGxlZCBTRE1BQVJN
X1NUT1BfU1RBVCBpbiB0aGUgcmVmZXJlbmNlCj4gPiBtYW51YWwuIEFuZCB0aGUgZG9jdW1lbnRh
dGlvbiBzdGF0ZXM6ICJSZWFkaW5nIHRoaXMgcmVnaXN0ZXIgeWllbGRzIHRoZQo+ID4gY3VycmVu
dCBzdGF0ZSBvZiB0aGUgSEVbaV0gYml0cyIuCj4gPiBBbmQgZnJvbSB0aGUgZG9jdW1lbnRhdGlv
biBvZiB0aGUgU0RNQSAiRE9ORSIgaW5zdHJ1Y3Rpb246Cj4gPiAiQ2xlYXIgSEUgYml0IGZvciB0
aGUgY3VycmVudCBjaGFubmVsLCBzZW5kIGFuIGludGVycnVwdCB0byB0aGUgQXJtCj4gPiBwbGF0
Zm9ybSBmb3IgdGhlIGN1cnJlbnQgY2hhbm5lbCBhbmQgcmVzY2hlZHVsZS4iCj4gPiAKPiA+IE15
IGludGVycHJldGF0aW9uIG9mIHRoaXMgaXMsIHRoYXQgd2FpdGluZyBmb3IgdGhlIGJpdCBpbiBT
RE1BX0hfU1RBVFNUT1AKPiA+IHRvIGJlY29tZSB6ZXJvIGhhcyB0aGUgc2FtZSBlZmZlY3QgYXMg
d2FpdGluZyBmb3IgdGhlIGJpdCBpbiBTRE1BX0hfSU5UUiB0bwo+ID4gYmUgc2V0LiBPciBhbSBJ
IG1pc3Npbmcgc29tZXRoaW5nPwo+IAo+IFNvLCB3aHkgZG8gYWxsIG15IGlNWDYgcGxhdGZvcm1z
IG5vdyByYW5kb21seSBzcGl0IG91dDoKPiAKPiAiaW14LXNkbWEgMjBlYzAwMC5zZG1hOiBUaW1l
b3V0IHdhaXRpbmcgZm9yIENIMCByZWFkeSIKClRoaXMgaXMgZHVlIHRvIGEgRFQgbWlzY29uZmln
dXJhdGlvbiB3aGljaCB3YXMgdW5jb3ZlcmVkIHdpdGggYSByZWNlbnQKZHJpdmVyIGNoYW5nZSAo
MjVhYWE3NWRmMWU2IGRtYWVuZ2luZTogaW14LXNkbWE6IGFkZCBjbG9jayByYXRpbyAxOjEKY2hl
Y2spIGFuZCBmaXhlZCB3aXRoICg5NDFhY2Q1NjZiMTggZG1hZW5naW5lOiBpbXgtc2RtYTogT25s
eSBjaGVjawpyYXRpbyBvbiBwYXJ0cyB0aGF0IHN1cHBvcnQgMToxKS4gUGxlYXNlIHN3aXRjaCB0
byBhIHJlY2VudCBzdGFibGUKa2VybmVsLCA1LjEuNSBoYXMgdGhlIGZpeCBpbmNsdWRlZC4KClJl
Z2FyZHMsCkx1Y2FzCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtYXJtLWtlcm5lbAo=
