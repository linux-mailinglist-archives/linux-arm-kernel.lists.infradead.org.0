Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 349B01E9738
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 31 May 2020 13:09:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=c6w9O+J3QQ1bQ6I21qqcvkajXYU0dCYCJs3a0iUbu/Y=; b=BVniKMZL+TRicd+ZbGQLMYDAl
	7n4WeGuG+M2wtXvvEXvl0qLxTPxmuJL0xkmRx5y712tRsLfJdT9vAkpun9gvJ+jt5wfaAFUc9NLFO
	GJclA6bpnpFqrmfoESbDqMqCVydGNfNwUpTqpe7LLNtrLn0ieRLqsvy+8lTLsyiBo6K+gO5xV8uNF
	k9ZZ/YDWH1VBoJ/w8BxBsWWK63PLF32LB02DFRoYcXHRwLIo6jNuuX8W3wSykvDF+AdWcaReExBO9
	nRUHUElmHtYHCenOM6APbnejm/nQPaasMOAWgmyufCyT3ZaKIJE/D9PJ81Zd9vLhwRbAPjkDWyoQa
	U30GxZB3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfLqS-0000gL-0B; Sun, 31 May 2020 11:09:36 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfLqJ-0000fr-QH
 for linux-arm-kernel@lists.infradead.org; Sun, 31 May 2020 11:09:29 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0BEEE20707;
 Sun, 31 May 2020 11:09:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590923367;
 bh=FghhYqKlaTRbFKgAaP4e9YXbKVNDOMp4WqJZfCrcChs=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=IHCvLUpDo9Kbt6tA3zFV3vp8NAoz76KPjQ8F7BlWIh0dpViN44diK8Z5tTHo7SyX8
 wl59oa+ZSyaRFiEDkUkV9aVTYm2IASUFOwcAMrLA8nTZAStkJe6DVCYAzNPSuiWF3U
 Wf7NtM0vQDCwpmaW74YoLFmoBmnD3bPKUYi44Zd8=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jfLqH-00Gg3Y-Fm; Sun, 31 May 2020 12:09:25 +0100
MIME-Version: 1.0
Date: Sun, 31 May 2020 12:09:25 +0100
From: Marc Zyngier <maz@kernel.org>
To: "Saidi, Ali" <alisaidi@amazon.com>
Subject: Re: [PATCH] irqchip/gic-v3-its: Don't try to move a disabled irq
In-Reply-To: <20200530174929.7bf6d5d7@why>
References: <20200529015501.15771-1-alisaidi@amazon.com>
 <8c3be990888ecfb7cca9503853dc4aac@kernel.org>
 <2C4F431F-8140-4C82-B4BD-E51DE618FC08@amazon.com>
 <20200530174929.7bf6d5d7@why>
User-Agent: Roundcube Webmail/1.4.4
Message-ID: <eed907d48de84c96e3ceb27c1ed6f622@kernel.org>
X-Sender: maz@kernel.org
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: alisaidi@amazon.com, tglx@linutronix.de,
 jason@lakedaemon.net, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, benh@amazon.com, dwmw@amazon.co.uk,
 zeev@amazon.com, zorik@amazon.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200531_040927_891783_A4A02802 
X-CRM114-Status: GOOD (  29.65  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 linux-kernel@vger.kernel.org, "Zilberman, Zeev" <zeev@amazon.com>,
 linux-arm-kernel@lists.infradead.org, Thomas Gleixner <tglx@linutronix.de>,
 "Woodhouse, David" <dwmw@amazon.co.uk>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjAyMC0wNS0zMCAxNzo0OSwgTWFyYyBaeW5naWVyIHdyb3RlOgo+IEhpIEFsaSwKPiAKPiBP
biBGcmksIDI5IE1heSAyMDIwIDEyOjM2OjQyICswMDAwCj4gIlNhaWRpLCBBbGkiIDxhbGlzYWlk
aUBhbWF6b24uY29tPiB3cm90ZToKPiAKPj4gSGkgTWFyYywKPj4gCj4+ID4gT24gTWF5IDI5LCAy
MDIwLCBhdCAzOjMzIEFNLCBNYXJjIFp5bmdpZXIgPG1hekBrZXJuZWwub3JnPiB3cm90ZToKPj4g
Pgo+PiA+IEhpIEFsaSwKPj4gPgo+PiA+PiBPbiAyMDIwLTA1LTI5IDAyOjU1LCBBbGkgU2FpZGkg
d3JvdGU6Cj4+ID4+IElmIGFuIGludGVycnVwdCBpcyBkaXNhYmxlZCB0aGUgSVRTIGRyaXZlciBo
YXMgc2VudCBhIGRpc2NhcmQgcmVtb3ZpbmcKPj4gPj4gdGhlIERldmljZUlEIGFuZCBFdmVudElE
IGZyb20gdGhlIElUVC4gQWZ0ZXIgdGhpcyBvY2N1cnMgaXQgY2FuJ3QgYmUKPj4gPj4gbW92ZWQg
dG8gYW5vdGhlciBjb2xsZWN0aW9uIHdpdGggYSBNT1ZJIGFuZCBhIGNvbW1hbmQgZXJyb3Igb2Nj
dXJzIGlmCj4+ID4+IGF0dGVtcHRlZC4gQmVmb3JlIGlzc3VpbmcgdGhlIE1PVkkgY29tbWFuZCBt
YWtlIHN1cmUgdGhhdCB0aGUgSVJRIGlzbid0Cj4+ID4+IGRpc2FibGVkIGFuZCBjaGFuZ2UgdGhl
IGFjdGl2YXRlIGNvZGUgdG8gdHJ5IGFuZCB1c2UgdGhlIHByZXZpb3VzCj4+ID4+IGFmZmluaXR5
Lgo+PiA+Pgo+PiA+PiBTaWduZWQtb2ZmLWJ5OiBBbGkgU2FpZGkgPGFsaXNhaWRpQGFtYXpvbi5j
b20+Cj4+ID4+IC0tLQo+PiA+PiBkcml2ZXJzL2lycWNoaXAvaXJxLWdpYy12My1pdHMuYyB8IDE4
ICsrKysrKysrKysrKysrKy0tLQo+PiA+PiAxIGZpbGUgY2hhbmdlZCwgMTUgaW5zZXJ0aW9ucygr
KSwgMyBkZWxldGlvbnMoLSkKPj4gPj4KPj4gPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvaXJxY2hp
cC9pcnEtZ2ljLXYzLWl0cy5jCj4+ID4+IGIvZHJpdmVycy9pcnFjaGlwL2lycS1naWMtdjMtaXRz
LmMKPj4gPj4gaW5kZXggMTI0MjUxYjBjY2JhLi4xMjM1ZGQ5YTJmYjIgMTAwNjQ0Cj4+ID4+IC0t
LSBhL2RyaXZlcnMvaXJxY2hpcC9pcnEtZ2ljLXYzLWl0cy5jCj4+ID4+ICsrKyBiL2RyaXZlcnMv
aXJxY2hpcC9pcnEtZ2ljLXYzLWl0cy5jCj4+ID4+IEBAIC0xNTQwLDcgKzE1NDAsMTEgQEAgc3Rh
dGljIGludCBpdHNfc2V0X2FmZmluaXR5KHN0cnVjdCBpcnFfZGF0YSAqZCwKPj4gPj4gY29uc3Qg
c3RydWN0IGNwdW1hc2sgKm1hc2tfdmFsLAo+PiA+PiAgICAgIC8qIGRvbid0IHNldCB0aGUgYWZm
aW5pdHkgd2hlbiB0aGUgdGFyZ2V0IGNwdSBpcyBzYW1lIGFzIGN1cnJlbnQgb25lCj4+ID4+ICov
Cj4+ID4+ICAgICAgaWYgKGNwdSAhPSBpdHNfZGV2LT5ldmVudF9tYXAuY29sX21hcFtpZF0pIHsK
Pj4gPj4gICAgICAgICAgICAgIHRhcmdldF9jb2wgPSAmaXRzX2Rldi0+aXRzLT5jb2xsZWN0aW9u
c1tjcHVdOwo+PiA+PiAtICAgICAgICAgICAgIGl0c19zZW5kX21vdmkoaXRzX2RldiwgdGFyZ2V0
X2NvbCwgaWQpOwo+PiA+PiArCj4+ID4+ICsgICAgICAgICAgICAgLyogSWYgdGhlIElSUSBpcyBk
aXNhYmxlZCBhIGRpc2NhcmQgd2FzIHNlbnQgc28gZG9uJ3QgbW92ZSAqLwo+PiA+PiArICAgICAg
ICAgICAgIGlmICghaXJxZF9pcnFfZGlzYWJsZWQoZCkpCj4+ID4+ICsgICAgICAgICAgICAgICAg
ICAgICBpdHNfc2VuZF9tb3ZpKGl0c19kZXYsIHRhcmdldF9jb2wsIGlkKTsKPj4gPj4gKwo+PiA+
Cj4+ID4gVGhpcyBsb29rcyB3cm9uZy4gV2hhdCB5b3UgYXJlIHRlc3RpbmcgaGVyZSBpcyB3aGV0
aGVyIHRoZSBpbnRlcnJ1cHQKPj4gPiBpcyBtYXNrZWQsIG5vdCB0aGF0IHRoZXJlIGlzbid0IGEg
dmFsaWQgdHJhbnNsYXRpb24uCj4+IEnigJltIG5vdCBleGFjdGx5IHN1cmUgdGhlIGNvcnJlY3Qg
Y29uZGl0aW9uLCBidXQgd2hhdCBJ4oCZbSBsb29raW5nIGZvcgo+PiBpcyBpbnRlcnJ1cHRzIHdo
aWNoIGFyZSBkZWFjdGl2YXRlZCBhbmQgd2UgaGF2ZSB0aHVzIHNlbnQgYSBkaXNjYXJkLgo+IAo+
IFRoYXQgbG9va3MgbGlrZSBJUlFEX0lSUV9TVEFSVEVEIG5vdCBiZWluZyBzZXQgaW4gdGhpcyBj
YXNlLgo+IAo+PiA+Cj4+ID4gSW4gdGhlIGNvbW1pdCBtZXNzYWdlLCB5b3UncmUgc2F5aW5nIHRo
YXQgd2UndmUgaXNzdWVkIGEgZGlzY2FyZC4KPj4gPiBUaGlzIGhpbnRzIGF0IGRvaW5nIGEgc2V0
X2FmZmluaXR5IG9uIGFuIGludGVycnVwdCB0aGF0IGhhcyBiZWVuCj4+ID4gZGVhY3RpdmF0ZWQg
KG1hcHBpbmcgcmVtb3ZlZCkuIElzIHRoYXQgYWN0dWFsbHkgdGhlIGNhc2U/IElmIHNvLAo+PiA+
IHdoeSB3YXMgaXQgZGVhY3RpdmF0ZWQKPj4gPiB0aGUgZmlyc3QgcGxhY2U/Cj4+IFRoaXMgaXMg
dGhlIGNhc2UuIElmIHdlIGRvd24gYSBOSUMsIHRoYXQgaW50ZXJmYWNl4oCZcyBNU0lzIHdpbGwg
YmUKPj4gZGVhY3RpdmF0ZWQgYnV0IHJlbWFpbiBhbGxvY2F0ZWQgdW50aWwgdGhlIGRldmljZSBp
cyB1bmJvdW5kIGZyb20gdGhlCj4+IGRyaXZlciBvciB0aGUgTklDIGlzIGJyb3VnaHQgdXAuCj4+
IAo+PiBXaGlsZSBzdHJlc3NpbmcgZG93bi91cCBhIGRldmljZSBJ4oCZdmUgZm91bmQgdGhhdCBp
cnFiYWxhbmNlIGNhbiBtb3ZlCj4+IGludGVycnVwdHMgYW5kIHlvdSBlbmQgdXAgd2l0aCB0aGUg
c2l0dWF0aW9uIGRlc2NyaWJlZC4gVGhlIGRldmljZSBpcwo+PiBkb3duZWQsIHRoZSBpbnRlcnJ1
cHRzIGFyZSBkZWFjdGl2YXRlZCBidXQgc3RpbGwgcHJlc2VudCBhbmQgdGhlbgo+PiB0cnlpbmcg
dG8gbW92ZSBvbmUgcmVzdWx0cyBpbiBzZW5kaW5nIGEgTU9WSSBhZnRlciB0aGUgRElTQ0FSRCB3
aGljaAo+PiBpcyBhbiBlcnJvciBwZXIgdGhlIEdJQyBzcGVjLgo+IAo+IE5vdCBncmVhdCBpbmRl
ZWQuIEJ1dCB0aGlzIGlzIG5vdCwgYXMgZmFyIGFzIEkgY2FuIHRlbGwsIGEgR0lDCj4gZHJpdmVy
IHByb2JsZW0uCj4gCj4gVGhlIHNlbWFudGljIG9mIGFjdGl2YXRlL2RlYWN0aXZhdGUgKHdoaWNo
IG1hcHMgdG8gc3RhcnRlZC9zaHV0ZG93bgo+IGluIHRoZSBJUlEgY29kZSkgaXMgdGhhdCB0aGUg
SFcgcmVzb3VyY2VzIGZvciBhIGdpdmVuIGludGVycnVwdCBhcmUKPiBvbmx5IGNvbW1pdHRlZCB3
aGVuIHRoZSBpbnRlcnJ1cHQgaXMgYWN0aXZhdGVkLiBUcnlpbmcgdG8gcGVyZm9ybQo+IGFjdGlv
bnMgaW52b2x2aW5nIHRoZSBIVyBvbiBhbiBpbnRlcnJ1cHQgdGhhdCBpc24ndCBhY3RpdmUgY2Fu
bm90IGJlCj4gZ3VhcmFudGVlZCB0byB0YWtlIGVmZmVjdC4KPiAKPiBJJ2QgcmF0aGVyIGFkZHJl
c3MgaXQgaW4gdGhlIGNvcmUgY29kZSwgYnkgcHJldmVudGluZyBzZXRfYWZmaW5pdHkgKGFuZAo+
IHBvdGVudGlhbGx5IG90aGVycykgdG8gdGFrZSBwbGFjZSB3aGVuIHRoZSBpbnRlcnJ1cHQgaXMg
bm90IGluIHRoZQo+IFNUQVJURUQgc3RhdGUuIFVzZXJzcGFjZSB3b3VsZCBnZXQgYW4gZXJyb3Is
IHdoaWNoIGlzIHBlcmZlY3RseQo+IGxlZ2l0aW1hdGUsIGFuZCB3aGljaCBpdCBhbHJlYWR5IGhh
cyB0byBkZWFsIHdpdGggaXQgZm9yIHBsZW50eSBvZiAKPiBvdGhlcgo+IHJlYXNvbnMuCgpIb3cg
YWJvdXQgdGhpczoKCmRpZmYgLS1naXQgYS9rZXJuZWwvaXJxL21hbmFnZS5jIGIva2VybmVsL2ly
cS9tYW5hZ2UuYwppbmRleCA0NTNhOGEwZjQ4MDQuLjFhMmFjMTM5MmMwZiAxMDA2NDQKLS0tIGEv
a2VybmVsL2lycS9tYW5hZ2UuYworKysgYi9rZXJuZWwvaXJxL21hbmFnZS5jCkBAIC0xNDcsNyAr
MTQ3LDggQEAgY3B1bWFza192YXJfdCBpcnFfZGVmYXVsdF9hZmZpbml0eTsKICBzdGF0aWMgYm9v
bCBfX2lycV9jYW5fc2V0X2FmZmluaXR5KHN0cnVjdCBpcnFfZGVzYyAqZGVzYykKICB7CiAgCWlm
ICghZGVzYyB8fCAhaXJxZF9jYW5fYmFsYW5jZSgmZGVzYy0+aXJxX2RhdGEpIHx8Ci0JICAgICFk
ZXNjLT5pcnFfZGF0YS5jaGlwIHx8ICFkZXNjLT5pcnFfZGF0YS5jaGlwLT5pcnFfc2V0X2FmZmlu
aXR5KQorCSAgICAhZGVzYy0+aXJxX2RhdGEuY2hpcCB8fCAhZGVzYy0+aXJxX2RhdGEuY2hpcC0+
aXJxX3NldF9hZmZpbml0eSB8fAorCSAgICAhaXJxZF9pc19zdGFydGVkKCZkZXNjLT5pcnFfZGF0
YSkpCiAgCQlyZXR1cm4gZmFsc2U7CiAgCXJldHVybiB0cnVlOwogIH0KClRoYW5rcywKCiAgICAg
ICAgIE0uCi0tIApKYXp6IGlzIG5vdCBkZWFkLiBJdCBqdXN0IHNtZWxscyBmdW5ueS4uLgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtl
cm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5l
bAo=
