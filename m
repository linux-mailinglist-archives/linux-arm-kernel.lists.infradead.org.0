Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF58C9B4EB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 18:53:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8ow4t6gvJ+5E8/WbXlAG28NneyEnoO6n01+4C5JYrDA=; b=lVsQMjzQWNvO7i
	Olpe3KVlYEoynMo/qWb4QKszd5dM6GWfjsmL7Gd12/j7fKaQzUserRUEpCgzIRkTIdkwxs2I0tDhe
	ZduUI4sq+AqjJvhq0HO3BDyO6vhG5DF9AS1hxRPalhpbnd6VbsPmPjdj6gfVgiAmnJaC+VuENhYYM
	uP6LDIr1NpsUtbiGK25jV7qLyLwzGj1g9teK5MkSViwwxIQ5Noclx16pDy+lbp81+4ZMj3wWBU5+l
	G3JqsTK9NqtJUPGA4Ib9Y9/bQC1op7A0WTDEpR7aHP1q6O9q66SLErbC/592lJGmj7Fd9SnJPh9Mm
	XUw015C9K4uIRqV+YkoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1Co9-0001La-VG; Fri, 23 Aug 2019 16:53:01 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1Co2-0001KO-B1
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 16:52:56 +0000
Received: by mail-pg1-x542.google.com with SMTP id i18so6067816pgl.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 23 Aug 2019 09:52:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version:content-transfer-encoding;
 bh=zIEqGVFm20QH2rrlURxbZuA/nBxUqeTlHMT3qLXaCW0=;
 b=G0L5ZUBIAKo7O+9XeV/SKXTVkdkpHit4PiENfeChbIF26Z95QNr4aiXee75Pf4lKuz
 tgZiIpA3XGNp0+SLSy6/FCpD/g+ij2Pf2RjaN64NCp4/hhpZIX1n2jm/xU/gzAp/bkwm
 NXJuIbefPjqnsYnHBdVJQpJSd6z97hMeZPDlWy9kp/uRcFlMRqXdDgQhzwLIijJZAKIB
 zSr7OTAAEuA4fGehoul/WRSJ80fl6pJ935Ych8RZitV4u3zXZXUBb+uGkzELsyCPo7SW
 d68isfQuhmGzfiBZofcP7XarkFvxoOVdvtwsoBX4Vs+W3ZvHyyR05JmRx0x0Uo/U4ZqZ
 TDag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version:content-transfer-encoding;
 bh=zIEqGVFm20QH2rrlURxbZuA/nBxUqeTlHMT3qLXaCW0=;
 b=SwylFHa9Pxd3B67Uw6EMVttnYUmRpnTKM6BUj6ahOX1e5imNEMzI5ttB/9j7VXRozw
 PZm4A7QeVn8rZIs3OEN/rkEHJZPBH2fEH35d4B0Sosf7MV6/qhtU/TqXoAU/w6RlRewK
 +Qro4mOFA3znwyWTPTiMUro3K3361jAOAXcn2Hm7IRapSGkEOQVgGc/WvnImCDH5gjnD
 J7Rbzptp0u1FW4/Ili2ZuQV1tE4lvvQBlSY6HZnVzUmlrox3n6xDX+s0gebt4sE64FZr
 OCmypBOi9fBPlGIk64nuPR0MK5OLKoFiQjpUOSv+SQG0ui5StzdyRU45RjM0nm5uKndl
 3Spw==
X-Gm-Message-State: APjAAAXWn+GcUH7Z7C7WZrWFYAUuzq4xWCZyuLvroCL/N8wS2an/oWYH
 NKx7d+7XA1aZSPbxPgESUad/kQ==
X-Google-Smtp-Source: APXvYqwUBOoIdTD1TRV8B52/BmDqa47JsmySRJ8hznDrFqykLcLfGM9wbDEcLGWYB8RrKF9R2CVB7w==
X-Received: by 2002:a17:90b:8e:: with SMTP id
 bb14mr6088866pjb.35.1566579173540; 
 Fri, 23 Aug 2019 09:52:53 -0700 (PDT)
Received: from localhost ([2601:602:9200:a1a5:89d4:68d1:fc04:721])
 by smtp.gmail.com with ESMTPSA id h17sm4438026pfo.24.2019.08.23.09.52.52
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 23 Aug 2019 09:52:52 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Kever Yang <kever.yang@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>
Subject: Re: CPUfreq fail on rk3399-firefly
In-Reply-To: <c973d3fa-5f0d-c277-7c83-6227942a671a@rock-chips.com>
References: <5d3057c8.1c69fb81.c6489.8ad2@mx.google.com>
 <20190718162005.GF5761@sirena.org.uk> <7hmugdynmk.fsf@baylibre.com>
 <2314814.WbdfqDVNqK@phil> <7hv9uq9wfe.fsf@baylibre.com>
 <c973d3fa-5f0d-c277-7c83-6227942a671a@rock-chips.com>
Date: Fri, 23 Aug 2019 09:52:51 -0700
Message-ID: <7hd0gvzuvw.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_095254_389850_889B8585 
X-CRM114-Status: GOOD (  21.58  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: kernel-build-reports@lists.linaro.org, linux-rockchip@lists.infradead.org,
 linux-next@vger.kernel.org,
 =?utf-8?B?6Zer5a2d?= =?utf-8?B?5Yab?= <andy.yan@rock-chips.com>,
 =?utf-8?B?5byg5pm0?= <elaine.zhang@rock-chips.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

S2V2ZXIgWWFuZyA8a2V2ZXIueWFuZ0Byb2NrLWNoaXBzLmNvbT4gd3JpdGVzOgoKPiBIaSBLZXZp
biwgSGVpa28sCj4KPiBPbiAyMDE5LzgvMjIg5LiK5Y2IMjo1OSwgS2V2aW4gSGlsbWFuIHdyb3Rl
Ogo+PiBIaSBIZWlrbywKPj4KPj4gSGVpa28gU3R1ZWJuZXIgPGhlaWtvQHNudGVjaC5kZT4gd3Jp
dGVzOgo+Pgo+Pj4gQW0gRGllbnN0YWcsIDEzLiBBdWd1c3QgMjAxOSwgMTk6MzU6MzEgQ0VTVCBz
Y2hyaWViIEtldmluIEhpbG1hbjoKPj4+PiBbIHJlc2VudCB3aXRoIGNvcnJlY3QgYWRkciBmb3Ig
bGludXgtcm9ja2NoaXAgbGlzdCBdCj4+Pj4KPj4+PiBNYXJrIEJyb3duIDxicm9vbmllQGtlcm5l
bC5vcmc+IHdyaXRlczoKPj4+Pgo+Pj4+PiBPbiBUaHUsIEp1bCAxOCwgMjAxOSBhdCAwNDoyODow
OEFNIC0wNzAwLCBrZXJuZWxjaS5vcmcgYm90IHdyb3RlOgo+Pj4+Pgo+Pj4+PiBUb2RheSdzIC1u
ZXh0IHN0YXJ0ZWQgZmFpbGluZyB0byBib290IGRlZmNvbmZpZyBvbiByazMzOTktZmlyZWZseToK
Pj4+Pj4KPj4+Pj4+IGFybTY0Ogo+Pj4+Pj4gICAgICBkZWZjb25maWc6Cj4+Pj4+PiAgICAgICAg
ICBnY2MtODoKPj4+Pj4+ICAgICAgICAgICAgICByazMzOTktZmlyZWZseTogMSBmYWlsZWQgbGFi
Cj4+Pj4+IEl0IGhpdHMgYSBCVUcoKSB0cnlpbmcgdG8gc2V0IHVwIGNwdWZyZXE6Cj4+Pj4+Cj4+
Pj4+IFsgICA4Ny4zODE2MDZdIGNwdWZyZXE6IGNwdWZyZXFfb25saW5lOiBDUFUwOiBSdW5uaW5n
IGF0IHVubGlzdGVkIGZyZXE6IDIwMDAwMCBLSHoKPj4+Pj4gWyAgIDg3LjM5MzI0NF0gY3B1ZnJl
cTogY3B1ZnJlcV9vbmxpbmU6IENQVTA6IFVubGlzdGVkIGluaXRpYWwgZnJlcXVlbmN5IGNoYW5n
ZWQgdG86IDQwODAwMCBLSHoKPj4+Pj4gWyAgIDg3LjQ2OTc3N10gY3B1ZnJlcTogY3B1ZnJlcV9v
bmxpbmU6IENQVTQ6IFJ1bm5pbmcgYXQgdW5saXN0ZWQgZnJlcTogMTIwMDAgS0h6Cj4+Pj4+IFsg
ICA4Ny40ODg1OTVdIGNwdSBjcHU0OiBfZ2VuZXJpY19zZXRfb3BwX2Nsa19vbmx5OiBmYWlsZWQg
dG8gc2V0IGNsb2NrIHJhdGU6IC0yMgo+Pj4+PiBbICAgODcuNDkxODgxXSBjcHVmcmVxOiBfX3Rh
cmdldF9pbmRleDogRmFpbGVkIHRvIGNoYW5nZSBjcHUgZnJlcXVlbmN5OiAtMjIKPj4+Pj4gWyAg
IDg3LjQ5NTMzNV0gLS0tLS0tLS0tLS0tWyBjdXQgaGVyZSBdLS0tLS0tLS0tLS0tCj4+Pj4+IFsg
ICA4Ny40OTY4MjFdIGtlcm5lbCBCVUcgYXQgZHJpdmVycy9jcHVmcmVxL2NwdWZyZXEuYzoxNDM4
IQo+Pj4+PiBbICAgODcuNDk4NDYyXSBJbnRlcm5hbCBlcnJvcjogT29wcyAtIEJVRzogMCBbIzFd
IFBSRUVNUFQgU01QCj4+Pj4+Cj4+Pj4+IEknbSBzdHJ1Z2dsaW5nIHRvIHNlZSBhbnl0aGluZyBy
ZWxldmFudCBpbiB0aGUgZGlmZiBmcm9tIHllc3RlcmRheSwgdGhlCj4+Pj4+IHVubGlzdGVkIGZy
ZXF1ZW5jeSB3YXJuaW5ncyB3ZXJlIHRoZXJlIGluIHRoZSBsb2dzIHllc3RlcmRheSBidXQgbm8g
b29wcwo+Pj4+PiBhbmQgSSdtIG5vdCBzZWVpbmcgYW55IGNoYW5nZXMgaW4gY3B1ZnJlcSwgY2xr
IG9yIGFueXRoaW5nIHJlbGV2YW50Cj4+Pj4+IGxvb2tpbmcuCj4+Pj4+Cj4+Pj4+IEZ1bGwgYm9v
dGxvZyBhbmQgb3RoZXIgaW5mbyBjYW4gYmUgZm91bmQgaGVyZToKPj4+Pj4KPj4+Pj4gCWh0dHBz
Oi8va2VybmVsY2kub3JnL2Jvb3QvaWQvNWQzMDJkODM1OWI1MTQ5OGQwNDllOTgzLwo+Pj4+IEkg
Y29uZmlybSB0aGF0IGRpc2FibGluZyBDUFVmcmVxIGluIHRoZSBkZWZjb25maWcgKENPTkZJR19D
UFVfRlJFUT1uKQo+Pj4+IG1ha2VzIHRoZSBmaXJlZmx5IGJvYXJkIHN0YXJ0IHdvcmtpbmcgYWdh
aW4uCj4+Pj4KPj4+PiBOb3RlIHRoYXQgdGhlIGRlZmF1bHQgZGVmY29uZmlnIGVuYWJsZXMgdGhl
ICJwZXJmb3JtYW5jZSIgQ1BVZnJlcQo+Pj4+IGdvdmVybm9yIGFzIHRoZSBkZWZhdWx0IGdvdmVy
bm9yLCBzbyBkdXJpbmcga2VybmVsIGJvb3QsIGl0IHdpbGwgYWx3YXlzCj4+Pj4gc3dpdGNoIHRv
IHRoZSBtYXggZnJlcXVlbmN5Lgo+Pj4+Cj4+Pj4gRm9yIGZ1biwgSSBzZXQgdGhlIGRlZmF1bHQg
Z292ZXJub3IgdG8gInVzZXJzcGFjZSIgc28gdGhlIGtlcm5lbAo+Pj4+IHdvdWxkbid0IG1ha2Ug
YW55IE9QUCBjaGFuZ2VzLCBhbmQgdGhhdCBsZWFkcyB0byBhIHNsaWdodGx5IG1vcmUKPj4+PiBp
bmZvcm1hdGl2ZSBzcGxhdFsxXQo+Pj4+Cj4+Pj4gVGhlcmUgaXMgc3RpbGwgYW4gT1BQIGNoYW5n
ZSBoYXBwZW5pbmcgYmVjYXVzZSB0aGUgZGV0ZWN0ZWQgT1BQIGlzIG5vdAo+Pj4+IG9uZSB0aGF0
J3MgbGlzdGVkIGluIHRoZSB0YWJsZSwgc28gaXQgdHJpZXMgdG8gY2hhbmdlIHRvIGEgbGlzdGVk
IE9QUAo+Pj4+IGFuZCBmYWlscyBpbiB0aGUgYm93ZWxzIG9mIGNsa19zZXRfcmF0ZSgpCj4+PiBU
aG91Z2ggSSB0aGluayB0aGF0IG1pZ2h0IG9ubHkgYmUgYSBzeW1wdG9tIGFzIHdlbGwuCj4+PiBC
b3RoIHRoZSBQTEwgc2V0dGluZyBjb2RlIGFzIHdlbGwgYXMgdGhlIGFjdHVhbCBjcHUtY2xvY2sg
aW1wbGVtZW50YXRpb24KPj4+IGlzIHVuY2hhbmdlZCBzaW5jZSAyMDE3IChhbmQgcnVucyBqdXN0
IGZpbmUgb24gYWxsIGJvYXJkcyBpbiBteSBmYXJtKS4KPj4+Cj4+PiBPbmUgc291cmNlIGZvciB0
aGVzZSBpc3N1ZXMgaXMgb2Z0ZW4gdGhlIHJlZ3VsYXRvciBzdXBwbHlpbmcgdGhlIGNwdQo+Pj4g
Z29pbmcgaGF5d2lyZSAtIGFrYSB0aGUgdm9sdGFnZSBub3QgbWF0Y2hpbmcgdGhlIG9wcC4KPj4+
Cj4+PiBBcyBpbiB0aGlzIGVycm9yLWNhc2UgaXQncyBDUFU0IGJlaW5nIHNldCwgdGhpcyB3b3Vs
ZCBtZWFuIGl0IG1pZ2h0Cj4+PiBiZSB0aGUgYmlnIGNsdXN0ZXIgc3VwcGxpZWQgYnkgdGhlIGV4
dGVybmFsIHN5cjgyNSAoZmFuNTM1NSBjbG9uZSkKPj4+IHRoYXQgbWlnaHQgYWN0IHVwLiBJbiB0
aGUgRmlyZWZseS1yazMzOTkgY2FzZSB0aGlzIGlzIGV2ZW4gc3RyYW5nZXIuCj4+Pgo+Pj4gVGhl
cmUgaXMgYSBkaXNjcmVwYW5jeSBiZXR3ZWVuIHRoZSAiZmNzLHN1c3BlbmQtdm9sdGFnZS1zZWxl
Y3RvciIKPj4+IGJldHdlZW4gZGlmZmVyZW50IGJvb3Rsb2FkZXIgdmVyc2lvbnMgKGhvdyB0aGUg
c2VsZWN0aW9uLXBpbiBpcyBzZXQgdXApLAo+Pj4gc28gdGhlIGtlcm5lbCBtaWdodCBhY3R1YWxs
eSB3cml0ZSBoaXMgcmVxdWVzdGVkIHZvbHRhZ2UgdG8gdGhlIHdyb25nCj4+PiByZWdpc3RlciAo
bm90IHRoZSBvbmUgZm9yIGFjdHVhbCB2b2x0YWdlLCBidXQgdGhlIHNlY29uZCBzZXQgdXNlZCBm
b3IKPj4+IHRoZSBzdXNwZW5kIHZvbHRhZ2UpLgo+Pj4KPj4+IERpZCB5b3UgYnkgY2hhbmNlIHN3
YXAgYm9vdGxvYWRlcnMgYXQgc29tZSBwb2ludCBpbiByZWNlbnQgcGFzdD8KPj4gTm8sIGhhdmVu
J3QgdG91Y2hlZCBib290bG9hZGVyIHNpbmNlIEkgaW5pdGlhbGx5IHNldHVwIHRoZSBib2FyZC4K
Pgo+IFRoZSBDUFUgdm9sdGFnZSBkb2VzIG5vdCBhZmZlY3QgYnkgYm9vdGxvYWRlciBmb3Iga2Vy
bmVsIHNob3VsZCBoYXZlIGl0cyAKPiBvd24gb3BwLXRhYmxlLAo+Cj4gdGhlIGJvb3Rsb2FkZXIg
bWF5IG9ubHkgYWZmZWN0IHRoZSBjZW50ZXIvbG9naWMgcG93ZXIgc3VwcGx5Lgo+Cj4+Cj4+PiBJ
J2QgYXNzdW1lIFsyXSBtaWdodCBhY3R1YWxseSBiZSB0aGUgc2FtZSBpc3N1ZSBsYXN0IHllYXIs
IHRob3VnaAo+Pj4gdGhlIENJLWxvZ3MgYXJlIG5vdCBhdmFpbGFibGUgYW55bW9yZSBpdCBzZWVt
cy4KPj4+Cj4+PiBDb3VsZCB5b3UgdHJ5IHRvIHNldCB0aGUgdmRkX2NwdV9iIHJlZ3VsYXRvciB0
byBkaXNhYmxlZCwgc28gdGhhdAo+Pj4gY3B1ZnJlcSBmb3IgdGhpcyBjbHVzdGVyIGRlZmVycyBh
bmQgc2VlIHdoYXQgaGFwcGVucz8KPj4gWWVzLCB0aGlzIGNoYW5nZVsxXSBkZWZpbml0ZWx5IG1h
a2VzIHRoaW5ncyBib290IHJlbGlhYmx5IGFnYWluLCBzbwo+PiB0aGVyZSdzIGRlZmludGllbHkg
c29tZXRoaW5nIGEgYml0IHVuc3RhYmxlIHdpdGggdGhpcyByZWd1bGF0b3IsIGF0Cj4+IGxlYXN0
IG9uIHRoaXMgZmlyZWZseS4KPgo+IElzIGl0IHBvc3NpYmxlIHRvIHRhcmdldCB3aGljaCBwYXRj
aCBpbnRyb2R1Y2UgdGhpcyBidWc/IFRoaXMgYm9hcmTCoCAKPiBzaG91bGQgaGF2ZSB3b3JrIGNv
cnJlY3RseSBmb3IgYSBsb25nIHRpbWUgd2l0aCB1cHN0cmVhbSBzb3VyY2UgY29kZS4KClVuZm9y
dHVuYXRlbHksIGl0IHNlZW1zIHRvIGJlIGEgcmVndWxhciwgYnV0IGludGVybWl0dGVudCBmYWls
dXJlLCBzbwpiaXNlY3Rpb24gaXMgbm90IHByb2R1Y2luZyBhbnl0aGluZyByZWxpYWJsZS4KCllv
dSBjYW4gc2VlIHRoYXQgYm90aCBpbiBtYWlubGluZVsxXSBhbmQgaW4gbGludXgtbmV4dFsyXSB0
aGVyZSBhcmUKcGVyaW9kaWMgZmFpbHVyZXMsIGJ1dCBpdCdzIGhhcmQgdG8gc2VlIGFueSBwYXR0
ZXJucy4KCkknbSBzdGFydGluZyB0byB0aGluayB0aGF0IG1heWJlIHRoZSByZWd1bGF0b3Igb24g
bXkgcGFydGljdWxhciBib2FyZCBpcwpqdXN0IHN0YXJ0aW5nIHRvIGZhaWwsIHNpbmNlIGRpc2Fi
bGluZyB0aGUgcmVndWxhdG9yIGZvciB0aGF0IGNsdXN0ZXIKcHJldmVudHMgYW55IHZvbHRhZ2Ug
Y2hhbmdlcyBhbmQgbWFrZXMgdGhpbmdzIHJlbGlhYmxlIGFnYWluLgoKSWYgd2UgZG9uJ3QgZmlu
ZCBhIHNvbHV0aW9uIHRvIHRoaXMsIEknbGwgcHJvYmFibHkganVzdCBoYXZlIHRvIHJldGlyZQp0
aGlzIGJvYXJkIGZyb20gbXkga2VybmVsQ0kgbGFiIChvZiBjb3Vyc2UsIEknZCBiZSBoYXBweSB0
byByZXBsYWNlIGl0CmlmIHNvbWVvbmUgd2FudHMgdG8gZG9uYXRlIGFub3RoZXIgb25lLikgIDop
CgpLZXZpbgoKWzFdIGh0dHBzOi8va2VybmVsY2kub3JnL2Jvb3QvcmszMzk5LWZpcmVmbHkvam9i
L21haW5saW5lLwpbMl0gaHR0cHM6Ly9rZXJuZWxjaS5vcmcvYm9vdC9yazMzOTktZmlyZWZseS9q
b2IvbmV4dC8KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LWFybS1rZXJuZWwK
