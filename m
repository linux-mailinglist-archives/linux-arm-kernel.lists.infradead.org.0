Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F2691E92B1
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 30 May 2020 18:49:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UQo+cspOrnn8DLSEwMqtUJwXijHGFFmXMkmUOg1DBQE=; b=Yo52ChbyNLckAP
	IUDqSi+ffEheClOCnhWWvU+QfWvqebIURIzrY0X5dmt6jBdM/zibMfDXqpkO+6AGc1Z1EkKIJL7ED
	WG5LOuc9ulZg6fulwAQDzfodwYrUzemiQF2uUZHlFIVSoTSRqOHIRyvTcxmge8iUdmaCyrwBwq+WF
	wffy7XjWwBMWKAHTMqjwLLpU3FvCamcCkCtUFBwgJR9FqTHbgzQ1nRh6zc6gI1TaEylQhtVryFyyJ
	QmD4CJowOP/cf+en7F9iGu3BsKCBaadtc6witrO2gMtMpFrvlP50tp+HOw/Ewcvbj24u8sbHZX+E5
	1XPFXBZMqFRSAIdGnLaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jf4g2-0000Sv-6S; Sat, 30 May 2020 16:49:42 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jf4ft-0000SV-B7
 for linux-arm-kernel@lists.infradead.org; Sat, 30 May 2020 16:49:34 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C111D20723;
 Sat, 30 May 2020 16:49:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590857372;
 bh=YWheN8pRzzh5on2sRrgHuSvShRln/nsEjRo8kYtNcBs=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=OhwXPkc5TFFi2g6RwCC8UmPtBMmQjX4EGvFhkHd9zu6B/NO9LADHV8avNBKM6xjnh
 VBUKpxEF1ZPnsC/dkOs1H+dx0XPy4QECu/9rBML77iuq/5m09uE4UH2SADgQKbFNQI
 AtQYHsjZh6fczpsFVcXRw67kT1Bxu//MFCWcuGT8=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jf4fr-00GZ2c-4m; Sat, 30 May 2020 17:49:31 +0100
Date: Sat, 30 May 2020 17:49:29 +0100
From: Marc Zyngier <maz@kernel.org>
To: "Saidi, Ali" <alisaidi@amazon.com>
Subject: Re: [PATCH] irqchip/gic-v3-its: Don't try to move a disabled irq
Message-ID: <20200530174929.7bf6d5d7@why>
In-Reply-To: <2C4F431F-8140-4C82-B4BD-E51DE618FC08@amazon.com>
References: <20200529015501.15771-1-alisaidi@amazon.com>
 <8c3be990888ecfb7cca9503853dc4aac@kernel.org>
 <2C4F431F-8140-4C82-B4BD-E51DE618FC08@amazon.com>
Organization: Approximate
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: alisaidi@amazon.com, tglx@linutronix.de,
 jason@lakedaemon.net, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, benh@amazon.com, dwmw@amazon.co.uk,
 zeev@amazon.com, zorik@amazon.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200530_094933_421051_C3E9D8E0 
X-CRM114-Status: GOOD (  35.35  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: "Herrenschmidt, Benjamin" <benh@amazon.com>,
 Jason Cooper <jason@lakedaemon.net>, "Machulsky, Zorik" <zorik@amazon.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Zilberman, 
 Zeev" <zeev@amazon.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Thomas Gleixner <tglx@linutronix.de>, "Woodhouse, David" <dwmw@amazon.co.uk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQWxpLAoKT24gRnJpLCAyOSBNYXkgMjAyMCAxMjozNjo0MiArMDAwMAoiU2FpZGksIEFsaSIg
PGFsaXNhaWRpQGFtYXpvbi5jb20+IHdyb3RlOgoKPiBIaSBNYXJjLAo+IAo+ID4gT24gTWF5IDI5
LCAyMDIwLCBhdCAzOjMzIEFNLCBNYXJjIFp5bmdpZXIgPG1hekBrZXJuZWwub3JnPiB3cm90ZToK
PiA+IAo+ID4gSGkgQWxpLAo+ID4gICAKPiA+PiBPbiAyMDIwLTA1LTI5IDAyOjU1LCBBbGkgU2Fp
ZGkgd3JvdGU6Cj4gPj4gSWYgYW4gaW50ZXJydXB0IGlzIGRpc2FibGVkIHRoZSBJVFMgZHJpdmVy
IGhhcyBzZW50IGEgZGlzY2FyZCByZW1vdmluZwo+ID4+IHRoZSBEZXZpY2VJRCBhbmQgRXZlbnRJ
RCBmcm9tIHRoZSBJVFQuIEFmdGVyIHRoaXMgb2NjdXJzIGl0IGNhbid0IGJlCj4gPj4gbW92ZWQg
dG8gYW5vdGhlciBjb2xsZWN0aW9uIHdpdGggYSBNT1ZJIGFuZCBhIGNvbW1hbmQgZXJyb3Igb2Nj
dXJzIGlmCj4gPj4gYXR0ZW1wdGVkLiBCZWZvcmUgaXNzdWluZyB0aGUgTU9WSSBjb21tYW5kIG1h
a2Ugc3VyZSB0aGF0IHRoZSBJUlEgaXNuJ3QKPiA+PiBkaXNhYmxlZCBhbmQgY2hhbmdlIHRoZSBh
Y3RpdmF0ZSBjb2RlIHRvIHRyeSBhbmQgdXNlIHRoZSBwcmV2aW91cwo+ID4+IGFmZmluaXR5Lgo+
ID4+IAo+ID4+IFNpZ25lZC1vZmYtYnk6IEFsaSBTYWlkaSA8YWxpc2FpZGlAYW1hem9uLmNvbT4K
PiA+PiAtLS0KPiA+PiBkcml2ZXJzL2lycWNoaXAvaXJxLWdpYy12My1pdHMuYyB8IDE4ICsrKysr
KysrKysrKysrKy0tLQo+ID4+IDEgZmlsZSBjaGFuZ2VkLCAxNSBpbnNlcnRpb25zKCspLCAzIGRl
bGV0aW9ucygtKQo+ID4+IAo+ID4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2lycWNoaXAvaXJxLWdp
Yy12My1pdHMuYwo+ID4+IGIvZHJpdmVycy9pcnFjaGlwL2lycS1naWMtdjMtaXRzLmMKPiA+PiBp
bmRleCAxMjQyNTFiMGNjYmEuLjEyMzVkZDlhMmZiMiAxMDA2NDQKPiA+PiAtLS0gYS9kcml2ZXJz
L2lycWNoaXAvaXJxLWdpYy12My1pdHMuYwo+ID4+ICsrKyBiL2RyaXZlcnMvaXJxY2hpcC9pcnEt
Z2ljLXYzLWl0cy5jCj4gPj4gQEAgLTE1NDAsNyArMTU0MCwxMSBAQCBzdGF0aWMgaW50IGl0c19z
ZXRfYWZmaW5pdHkoc3RydWN0IGlycV9kYXRhICpkLAo+ID4+IGNvbnN0IHN0cnVjdCBjcHVtYXNr
ICptYXNrX3ZhbCwKPiA+PiAgICAgIC8qIGRvbid0IHNldCB0aGUgYWZmaW5pdHkgd2hlbiB0aGUg
dGFyZ2V0IGNwdSBpcyBzYW1lIGFzIGN1cnJlbnQgb25lCj4gPj4gKi8KPiA+PiAgICAgIGlmIChj
cHUgIT0gaXRzX2Rldi0+ZXZlbnRfbWFwLmNvbF9tYXBbaWRdKSB7Cj4gPj4gICAgICAgICAgICAg
IHRhcmdldF9jb2wgPSAmaXRzX2Rldi0+aXRzLT5jb2xsZWN0aW9uc1tjcHVdOwo+ID4+IC0gICAg
ICAgICAgICAgaXRzX3NlbmRfbW92aShpdHNfZGV2LCB0YXJnZXRfY29sLCBpZCk7Cj4gPj4gKwo+
ID4+ICsgICAgICAgICAgICAgLyogSWYgdGhlIElSUSBpcyBkaXNhYmxlZCBhIGRpc2NhcmQgd2Fz
IHNlbnQgc28gZG9uJ3QgbW92ZSAqLwo+ID4+ICsgICAgICAgICAgICAgaWYgKCFpcnFkX2lycV9k
aXNhYmxlZChkKSkKPiA+PiArICAgICAgICAgICAgICAgICAgICAgaXRzX3NlbmRfbW92aShpdHNf
ZGV2LCB0YXJnZXRfY29sLCBpZCk7Cj4gPj4gKyAgCj4gPiAKPiA+IFRoaXMgbG9va3Mgd3Jvbmcu
IFdoYXQgeW91IGFyZSB0ZXN0aW5nIGhlcmUgaXMgd2hldGhlciB0aGUgaW50ZXJydXB0Cj4gPiBp
cyBtYXNrZWQsIG5vdCB0aGF0IHRoZXJlIGlzbid0IGEgdmFsaWQgdHJhbnNsYXRpb24uICAKPiBJ
4oCZbSBub3QgZXhhY3RseSBzdXJlIHRoZSBjb3JyZWN0IGNvbmRpdGlvbiwgYnV0IHdoYXQgSeKA
mW0gbG9va2luZyBmb3IKPiBpcyBpbnRlcnJ1cHRzIHdoaWNoIGFyZSBkZWFjdGl2YXRlZCBhbmQg
d2UgaGF2ZSB0aHVzIHNlbnQgYSBkaXNjYXJkLiAKClRoYXQgbG9va3MgbGlrZSBJUlFEX0lSUV9T
VEFSVEVEIG5vdCBiZWluZyBzZXQgaW4gdGhpcyBjYXNlLgoKPiA+IAo+ID4gSW4gdGhlIGNvbW1p
dCBtZXNzYWdlLCB5b3UncmUgc2F5aW5nIHRoYXQgd2UndmUgaXNzdWVkIGEgZGlzY2FyZC4KPiA+
IFRoaXMgaGludHMgYXQgZG9pbmcgYSBzZXRfYWZmaW5pdHkgb24gYW4gaW50ZXJydXB0IHRoYXQg
aGFzIGJlZW4KPiA+IGRlYWN0aXZhdGVkIChtYXBwaW5nIHJlbW92ZWQpLiBJcyB0aGF0IGFjdHVh
bGx5IHRoZSBjYXNlPyBJZiBzbywKPiA+IHdoeSB3YXMgaXQgZGVhY3RpdmF0ZWQKPiA+IHRoZSBm
aXJzdCBwbGFjZT8gIAo+IFRoaXMgaXMgdGhlIGNhc2UuIElmIHdlIGRvd24gYSBOSUMsIHRoYXQg
aW50ZXJmYWNl4oCZcyBNU0lzIHdpbGwgYmUKPiBkZWFjdGl2YXRlZCBidXQgcmVtYWluIGFsbG9j
YXRlZCB1bnRpbCB0aGUgZGV2aWNlIGlzIHVuYm91bmQgZnJvbSB0aGUKPiBkcml2ZXIgb3IgdGhl
IE5JQyBpcyBicm91Z2h0IHVwLiAKPiAKPiBXaGlsZSBzdHJlc3NpbmcgZG93bi91cCBhIGRldmlj
ZSBJ4oCZdmUgZm91bmQgdGhhdCBpcnFiYWxhbmNlIGNhbiBtb3ZlCj4gaW50ZXJydXB0cyBhbmQg
eW91IGVuZCB1cCB3aXRoIHRoZSBzaXR1YXRpb24gZGVzY3JpYmVkLiBUaGUgZGV2aWNlIGlzCj4g
ZG93bmVkLCB0aGUgaW50ZXJydXB0cyBhcmUgZGVhY3RpdmF0ZWQgYnV0IHN0aWxsIHByZXNlbnQg
YW5kIHRoZW4KPiB0cnlpbmcgdG8gbW92ZSBvbmUgcmVzdWx0cyBpbiBzZW5kaW5nIGEgTU9WSSBh
ZnRlciB0aGUgRElTQ0FSRCB3aGljaAo+IGlzIGFuIGVycm9yIHBlciB0aGUgR0lDIHNwZWMuIAoK
Tm90IGdyZWF0IGluZGVlZC4gQnV0IHRoaXMgaXMgbm90LCBhcyBmYXIgYXMgSSBjYW4gdGVsbCwg
YSBHSUMKZHJpdmVyIHByb2JsZW0uCgpUaGUgc2VtYW50aWMgb2YgYWN0aXZhdGUvZGVhY3RpdmF0
ZSAod2hpY2ggbWFwcyB0byBzdGFydGVkL3NodXRkb3duCmluIHRoZSBJUlEgY29kZSkgaXMgdGhh
dCB0aGUgSFcgcmVzb3VyY2VzIGZvciBhIGdpdmVuIGludGVycnVwdCBhcmUKb25seSBjb21taXR0
ZWQgd2hlbiB0aGUgaW50ZXJydXB0IGlzIGFjdGl2YXRlZC4gVHJ5aW5nIHRvIHBlcmZvcm0KYWN0
aW9ucyBpbnZvbHZpbmcgdGhlIEhXIG9uIGFuIGludGVycnVwdCB0aGF0IGlzbid0IGFjdGl2ZSBj
YW5ub3QgYmUKZ3VhcmFudGVlZCB0byB0YWtlIGVmZmVjdC4KCkknZCByYXRoZXIgYWRkcmVzcyBp
dCBpbiB0aGUgY29yZSBjb2RlLCBieSBwcmV2ZW50aW5nIHNldF9hZmZpbml0eSAoYW5kCnBvdGVu
dGlhbGx5IG90aGVycykgdG8gdGFrZSBwbGFjZSB3aGVuIHRoZSBpbnRlcnJ1cHQgaXMgbm90IGlu
IHRoZQpTVEFSVEVEIHN0YXRlLiBVc2Vyc3BhY2Ugd291bGQgZ2V0IGFuIGVycm9yLCB3aGljaCBp
cyBwZXJmZWN0bHkKbGVnaXRpbWF0ZSwgYW5kIHdoaWNoIGl0IGFscmVhZHkgaGFzIHRvIGRlYWwg
d2l0aCBpdCBmb3IgcGxlbnR5IG9mIG90aGVyCnJlYXNvbnMuCgo+IAo+ID4gICAKPiA+PiAgICAg
ICAgICAgICAgaXRzX2Rldi0+ZXZlbnRfbWFwLmNvbF9tYXBbaWRdID0gY3B1Owo+ID4+ICAgICAg
ICAgICAgICBpcnFfZGF0YV91cGRhdGVfZWZmZWN0aXZlX2FmZmluaXR5KGQsCj4gPj4gY3B1bWFz
a19vZihjcHUpKTsgfQo+ID4+IEBAIC0zNDM5LDggKzM0NDMsMTYgQEAgc3RhdGljIGludCBpdHNf
aXJxX2RvbWFpbl9hY3RpdmF0ZShzdHJ1Y3QKPiA+PiBpcnFfZG9tYWluICpkb21haW4sCj4gPj4g
ICAgICBpZiAoaXRzX2Rldi0+aXRzLT5udW1hX25vZGUgPj0gMCkKPiA+PiAgICAgICAgICAgICAg
Y3B1X21hc2sgPSBjcHVtYXNrX29mX25vZGUoaXRzX2Rldi0+aXRzLT5udW1hX25vZGUpOwo+ID4+
IAo+ID4+IC0gICAgIC8qIEJpbmQgdGhlIExQSSB0byB0aGUgZmlyc3QgcG9zc2libGUgQ1BVICov
Cj4gPj4gLSAgICAgY3B1ID0gY3B1bWFza19maXJzdF9hbmQoY3B1X21hc2ssIGNwdV9vbmxpbmVf
bWFzayk7Cj4gPj4gKyAgICAgLyogSWYgdGhlIGNwdSBzZXQgdG8gYSBkaWZmZXJlbnQgQ1BVIHRo
YXQgaXMgc3RpbGwgb25saW5lCj4gPj4gdXNlIGl0ICovCj4gPj4gKyAgICAgY3B1ID0gaXRzX2Rl
di0+ZXZlbnRfbWFwLmNvbF9tYXBbZXZlbnRdOwo+ID4+ICsKPiA+PiArICAgICBjcHVtYXNrX2Fu
ZChjcHVfbWFzaywgY3B1X21hc2ssIGNwdV9vbmxpbmVfbWFzayk7Cj4gPj4gKwo+ID4+ICsgICAg
IGlmICghY3B1bWFza190ZXN0X2NwdShjcHUsIGNwdV9tYXNrKSkgewo+ID4+ICsgICAgICAgICAg
ICAgLyogQmluZCB0aGUgTFBJIHRvIHRoZSBmaXJzdCBwb3NzaWJsZSBDUFUgKi8KPiA+PiArICAg
ICAgICAgICAgIGNwdSA9IGNwdW1hc2tfZmlyc3QoY3B1X21hc2spOwo+ID4+ICsgICAgIH0KPiA+
PiArCj4gPj4gICAgICBpZiAoY3B1ID49IG5yX2NwdV9pZHMpIHsKPiA+PiAgICAgICAgICAgICAg
aWYgKGl0c19kZXYtPml0cy0+ZmxhZ3MgJgo+ID4+IElUU19GTEFHU19XT1JLQVJPVU5EX0NBVklV
TV8yMzE0NCkgcmV0dXJuIC1FSU5WQUw7ICAKPiA+IAo+ID4gU28geW91IGRlYWN0aXZhdGUgYW4g
aW50ZXJydXB0LCBkbyBhIHNldF9hZmZpbml0eSB0aGF0IGRvZXNuJ3QgaXNzdWUKPiA+IGEgTU9W
SSBidXQgcHJlc2VydmVzIHRoZSBhZmZpbml0eSwgdGhlbiByZWFjdGl2YXRlIGl0IGFuZCBob3Bl
IHRoYXQKPiA+IHRoZSBuZXcgbWFwcGluZyB3aWxsIHRhcmdldCB0aGUgInJpZ2h0IiBDUFUuCj4g
PiAKPiA+IFRoYXQgc2VlbXMgYSBiaXQgbWFkLCBidXQgSSBwcmVzdW1lIHRoaXMgaXNuJ3QgdGhl
IHdob2xlIHN0b3J5Li4uICAKPiBEb2luZyBzb21lIGV4cGVyaW1lbnRzIGl0IGFwcGVhcnMgYXMg
dGhvdWdoIG90aGVyIGludGVycnVwdHMKPiBjb250cm9sbGVycyBkbyBwcmVzZXJ2ZSBhZmZpbml0
eSBhY3Jvc3MgZGVhY3RpdmF0ZS9hY3RpdmF0ZSwgc28gdGhpcwo+IGlzIG15IGF0dGVtcHQgYXQg
ZG9pbmcgdGhlIHNhbWUuIAoKSSBiZWxpZXZlIHRoaXMgaXMgb25seSBhbiBhcnRlZmFjdCBvZiB0
aGVzZSBvdGhlciBjb250cm9sbGVycyBub3QKcmVxdWlyaW5nIGFueSByZXNvdXJjZSB0byBiZSBj
b21taXR0ZWQgaW50byB0aGUgSFcgKFNQSXMgd291bGRuJ3QgY2FyZSwKZm9yIGV4YW1wbGUpLgoK
VGhhbmtzLAoKCU0uCi0tIApKYXp6IGlzIG5vdCBkZWFkLiBJdCBqdXN0IHNtZWxscyBmdW5ueS4u
LgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgt
YXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJt
LWtlcm5lbAo=
