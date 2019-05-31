Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 308D530F41
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 15:47:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7mZSq0IuD9AK0LSn7gs4hdz7/WSL7nUXrWwcU+G3zeo=; b=HojVM4UCikrGYFzqrFEIdXazF
	TyEWkzWyplTuKuQHbangkLqPAr3sp9/Bd6E+V1jxwYB6SFPhXGG4RZ8e+AMnuZxSseN6LQ2ElBN+u
	ZEOCIxgdIwtJW44XT/OaWDaD2gEB56RsO9BxmvNxdsuOycy9qDiOf5YTz9d1DJ2ImailQ/W4lcjuU
	5KhcruRw/GVh7LiR+4TtwiEuq/KOX9D+AqErCEkatO3OxhC9r66oHnA6rHPAPlKprk0RtrgpeIJhf
	j0dJcM5EccBlhLs6LuCKFLg/w9Haie9Fg0QCP9krWzQM5bl1yoXjqnG+mOy+BYEjFWjygL0B+3qUP
	MJm/sjT9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWhsg-0006KZ-IF; Fri, 31 May 2019 13:47:38 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWhsZ-0006JE-8S
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 13:47:32 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 73245A78;
 Fri, 31 May 2019 06:47:28 -0700 (PDT)
Received: from [10.1.196.75] (e110467-lin.cambridge.arm.com [10.1.196.75])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 111CC3F5AF;
 Fri, 31 May 2019 06:47:25 -0700 (PDT)
Subject: Re: [PATCH v6 0/6] Allwinner H6 Mali GPU support
To: Tomeu Vizoso <tomeu.vizoso@collabora.com>
References: <20190521161102.29620-1-peron.clem@gmail.com>
 <CAAObsKD8bij1ANLqX6y11Y6mDEXiymNjrDkmHmvGWiFLKWu_FA@mail.gmail.com>
 <4ff02295-6c34-791b-49f4-6558a92ad7a3@arm.com>
 <CAAObsKBt1tPw9RKGi_Xey=1zy9Tu3N+A=1te2R8=NuJ5tDBqVg@mail.gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <dc3872a4-8cd9-462b-9f73-0d69a810d985@arm.com>
Date: Fri, 31 May 2019 14:47:24 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAAObsKBt1tPw9RKGi_Xey=1zy9Tu3N+A=1te2R8=NuJ5tDBqVg@mail.gmail.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_064731_310667_45BEFE95 
X-CRM114-Status: GOOD (  30.42  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Neil Armstrong <narmstrong@baylibre.com>,
 David Airlie <airlied@linux.ie>, Will Deacon <will.deacon@arm.com>,
 open list <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Steven Price <steven.price@arm.com>, Maxime Ripard <maxime.ripard@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>,
 Linux IOMMU <iommu@lists.linux-foundation.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMzEvMDUvMjAxOSAxMzowNCwgVG9tZXUgVml6b3NvIHdyb3RlOgo+IE9uIFdlZCwgMjkgTWF5
IDIwMTkgYXQgMTk6MzgsIFJvYmluIE11cnBoeSA8cm9iaW4ubXVycGh5QGFybS5jb20+IHdyb3Rl
Ogo+Pgo+PiBPbiAyOS8wNS8yMDE5IDE2OjA5LCBUb21ldSBWaXpvc28gd3JvdGU6Cj4+PiBPbiBU
dWUsIDIxIE1heSAyMDE5IGF0IDE4OjExLCBDbMOpbWVudCBQw6lyb24gPHBlcm9uLmNsZW1AZ21h
aWwuY29tPiB3cm90ZToKPj4+Pgo+Pj4gW3NuaXBdCj4+Pj4gWyAgMzQ1LjIwNDgxM10gcGFuZnJv
c3QgMTgwMDAwMC5ncHU6IG1tdSBpcnEgc3RhdHVzPTEKPj4+PiBbICAzNDUuMjA5NjE3XSBwYW5m
cm9zdCAxODAwMDAwLmdwdTogVW5oYW5kbGVkIFBhZ2UgZmF1bHQgaW4gQVMwIGF0IFZBCj4+Pj4g
MHgwMDAwMDAwMDAyNDAwNDAwCj4+Pgo+Pj4gICBGcm9tIHdoYXQgSSBjYW4gc2VlIGhlcmUsIDB4
MDAwMDAwMDAwMjQwMDQwMCBwb2ludHMgdG8gdGhlIGZpcnN0IGJ5dGUKPj4+IG9mIHRoZSBmaXJz
dCBzdWJtaXR0ZWQgam9iIGRlc2NyaXB0b3IuCj4+Pgo+Pj4gU28gbWFwcGluZyBidWZmZXJzIGZv
ciB0aGUgR1BVIGRvZXNuJ3Qgc2VlbSB0byBiZSB3b3JraW5nIGF0IGFsbCBvbgo+Pj4gNjQtYml0
IFQtNzYwLgo+Pj4KPj4+IFN0ZXZlbiwgUm9iaW4sIGRvIHlvdSBoYXZlIGFueSBpZGVhIG9mIHdo
eSB0aGlzIGNvdWxkIGJlPwo+Pgo+PiBJIHRyaWVkIHJvbGxpbmcgYmFjayB0byB0aGUgb2xkIHBh
bmZyb3N0L25vbmRybSBzaGltLCBhbmQgaXQgd29ya3MgZmluZQo+PiB3aXRoIGtiYXNlLCBhbmQg
SSBhbHNvIGZvdW5kIHRoYXQgVC04MjAgZmFsbHMgb3ZlciBpbiB0aGUgZXhhY3Qgc2FtZQo+PiBt
YW5uZXIsIHNvIHRoZSBmYWN0IHRoYXQgaXQgc2VlbWVkIHRvIGJlIGNvbW1vbiB0byB0aGUgc21h
bGxlciAzMy1iaXQKPj4gZGVzaWducyByYXRoZXIgdGhhbiBhbnl0aGluZyB0byBkbyB3aXRoIHRo
ZSBvdGhlcgo+PiBqb2JfZGVzY3JpcHRvcl9zaXplL3Y0L3Y1IGNvbXBsaWNhdGlvbiB0dXJuZWQg
b3V0IHRvIGJlIHRlbGxpbmcuCj4gCj4gSXMgdGhpcyBjb21wbGljYXRpb24gc29tZXRoaW5nIHlv
dSBjYW4gZXhwbGFpbj8gSSBkb24ndCBrbm93IHdoYXQgdjQKPiBhbmQgdjUgYXJlIG1lYW50IGhl
cmUuCgpJIHdhcyBhbGx1ZGluZyB0byBCQVNFX0hXX0ZFQVRVUkVfVjQsIHdoaWNoIEkgYmVsaWV2
ZSByZWZlcnMgdG8gdGhlIApNaWRnYXJkIGFyY2hpdGVjdHVyZSB2ZXJzaW9uIC0gdGhlIG9sZGVy
IHZlcnNpb25zIGltcGxlbWVudGVkIGJ5IFQ2eHggCmFuZCBUNzIwIHNlZW0gdG8gYmUgY29sbGVj
dGl2ZWx5IHRyZWF0ZWQgYXMgInY0Iiwgd2hpbGUgVDc2MCBhbmQgVDh4eCAKd291bGQgZWZmZWN0
aXZlbHkgYmUgInY1Ii4KCj4+IFsgYXMgYW4gYXNpZGUsIGFyZSA2NC1iaXQgam9icyBhY3R1YWxs
eSBrbm93biBub3QgdG8gd29yayBvbiB2NCBHUFVzLCBvcgo+PiBpcyBpdCBqdXN0IHRoYXQgbm9i
b2R5J3MgeWV0IG9ic2VydmVkIGEgNjQtYml0IGJsb2IgZHJpdmluZyBvbmU/IF0KPiAKPiBJJ20g
bG9va2luZyByaWdodCBub3cgYXQgZ2V0dGluZyBQYW5mcm9zdCB3b3JraW5nIG9uIFQ3MjAgd2l0
aCA2NC1iaXQKPiBkZXNjcmlwdG9ycywgd2l0aCB0aGUgdWx0aW1hdGUgZ29hbCBvZiBtYWtpbmcg
UGFuZnJvc3QKPiA2NC1iaXQtZGVzY3JpcHRvciBvbmx5IHNvIHdlIGNhbiBoYXZlIGEgc2luZ2xl
IGJ1aWxkIG9mIE1lc2EgaW4KPiBkaXN0cm9zLgoKQ29vbCwgSSdsbCBrZWVwIGFuIGV5ZSBvdXQs
IGFuZCBob3BlIHRoYXQgaXQgbWlnaHQgYmUgZW5vdWdoIGZvciBUNjIwIG9uIApKdW5vLCB0b28g
OikKCj4+IExvbmcgc3Rvcnkgc2hvcnQsIGl0IGFwcGVhcnMgdGhhdCAnTWFsaSBMUEFFJyBpcyBh
bHNvIGxhY2tpbmcgdGhlIHN0YXJ0Cj4+IGxldmVsIG5vdGlvbiBvZiBWTVNBLCBhbmQgZXhwZWN0
cyBhIGZ1bGwgNC1sZXZlbCB0YWJsZSBldmVuIGZvciA8NDAgYml0cwo+PiB3aGVuIGxldmVsIDAg
ZWZmZWN0aXZlbHkgcmVkdW5kYW50LiBUaHVzIHdhbGtpbmcgdGhlIDMtbGV2ZWwgdGFibGUgdGhh
dAo+PiBpby1wZ3RhYmxlIGNvbWVzIGJhY2sgd2l0aCBlbmRzIHVwIGdvaW5nIHdpbGRseSB3cm9u
Zy4gVGhlIGhhY2sgYmVsb3cKPj4gc2VlbXMgdG8gZG8gdGhlIGpvYiBmb3IgbWU7IGlmIENsw6lt
ZW50IGNhbiBjb25maXJtIChvbiBULTcyMCB5b3UnbGwKPj4gc3RpbGwgbmVlZCB0aGUgdXNlcnNw
YWNlIGhhY2sgdG8gZm9yY2UgMzItYml0IGpvYnMgYXMgd2VsbCkgdGhlbiBJIHRoaW5rCj4+IEkn
bGwgY29vayB1cCBhIHByb3BlciByZWZhY3RvcmluZyBvZiB0aGUgYWxsb2NhdG9yIHRvIHB1dCB0
aGluZ3MgcmlnaHQuCj4gCj4gTW1hcHMgc2VlbSB0byB3b3JrIHdpdGggdGhpcyBwYXRjaCwgdGhh
bmtzLgo+IAo+IFRoZSBtYWluIGNvbXBsaWNhdGlvbiBJJ20gZmFjaW5nIHJpZ2h0IG5vdyBzZWVt
cyB0byBiZSB0aGF0IHRoZSBTRkJECj4gZGVzY3JpcHRvciBvbiBUNzIwIHNlZW1zIHRvIGJlIGRp
ZmZlcmVudCBmcm9tIHRoZSBvbmUgd2UgYWxyZWFkeSBoYWQKPiAodGVzdGVkIG9uIFQ2eHg/KS4K
Ck9LIC0gd2l0aCB0aGUgMzItYml0IGhhY2sgcG9pbnRlZCB0byB1cC10aHJlYWQsIGEgcXVpY2sg
a21zY3ViZSB0ZXN0IApnYXZlIG1lIHRoZSBpbXByZXNzaW9uIHRoYXQgVDcyMCB3b3JrcyBmaW5l
LCBidXQgb24gY2xvc2VyIGluc3BlY3Rpb24gCnNvbWUgcGFydHMgb2YgZ2xtYXJrMiBkbyBzZWVt
IHRvIGdvIGEgYml0IHdvbmt5IChhbHRob3VnaCBJIHN1c3BlY3QgYXQgCmxlYXN0IHNvbWUgb2Yg
aXQgaXMganVzdCBkb3duIHRvIHRoZSBGUEdBIHNldHVwIGJlaW5nIGJvdGggdmVyeSBzbG93IGFu
ZCAKbGFja2luZyBpbiBtZW1vcnkgYmFuZHdpZHRoKSwgYW5kIHRoZSAibnYxMi0xaW1nIiBtb2Rl
IG9mIGttc2N1YmUgdHVybnMgCm91dCB0byByZW5kZXIgaW4gc29tZSBkZWxpZ2h0ZnVsbHkgd3Jv
bmcgY29sb3Vycy4KCkknbGwgdHJ5IHRvIGdldCBhICdwcm9wZXInIHZlcnNpb24gb2YgdGhlIGlv
LXBndGFibGUgcGF0Y2ggcG9zdGVkIHNvb24uCgpUaGFua3MsClJvYmluLgoKPiAKPiBDaGVlcnMs
Cj4gCj4gVG9tZXUKPiAKPj4gUm9iaW4uCj4+Cj4+Cj4+IC0tLS0tPjgtLS0tLQo+PiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9pb21tdS9pby1wZ3RhYmxlLWFybS5jIGIvZHJpdmVycy9pb21tdS9pby1w
Z3RhYmxlLWFybS5jCj4+IGluZGV4IDU0Njk2OGQ4YTM0OS4uZjI5ZGE2ZThkYzA4IDEwMDY0NAo+
PiAtLS0gYS9kcml2ZXJzL2lvbW11L2lvLXBndGFibGUtYXJtLmMKPj4gKysrIGIvZHJpdmVycy9p
b21tdS9pby1wZ3RhYmxlLWFybS5jCj4+IEBAIC0xMDIzLDEyICsxMDIzLDE0IEBAIGFybV9tYWxp
X2xwYWVfYWxsb2NfcGd0YWJsZShzdHJ1Y3QKPj4gaW9fcGd0YWJsZV9jZmcgKmNmZywgdm9pZCAq
Y29va2llKQo+PiAgICAgICAgICBpb3AgPSBhcm1fNjRfbHBhZV9hbGxvY19wZ3RhYmxlX3MxKGNm
ZywgY29va2llKTsKPj4gICAgICAgICAgaWYgKGlvcCkgewo+PiAgICAgICAgICAgICAgICAgIHU2
NCBtYWlyLCB0dGJyOwo+PiArICAgICAgICAgICAgICAgc3RydWN0IGFybV9scGFlX2lvX3BndGFi
bGUgKmRhdGEgPSBpb19wZ3RhYmxlX29wc190b19kYXRhKCZpb3AtPm9wcyk7Cj4+Cj4+ICsgICAg
ICAgICAgICAgICBkYXRhLT5sZXZlbHMgPSA0Owo+PiAgICAgICAgICAgICAgICAgIC8qIENvcHkg
dmFsdWVzIGFzIHVuaW9uIGZpZWxkcyBvdmVybGFwICovCj4+ICAgICAgICAgICAgICAgICAgbWFp
ciA9IGNmZy0+YXJtX2xwYWVfczFfY2ZnLm1haXJbMF07Cj4+ICAgICAgICAgICAgICAgICAgdHRi
ciA9IGNmZy0+YXJtX2xwYWVfczFfY2ZnLnR0YnJbMF07Cj4+Cj4+IF9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+IGRyaS1kZXZlbCBtYWlsaW5nIGxpc3QK
Pj4gZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+PiBodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaS1kZXZlbAoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxp
c3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
