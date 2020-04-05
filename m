Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E36719EBFA
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  5 Apr 2020 16:34:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Tmx9k237Tvoz9eDB7lnCWKzWBym9QlkmlWbnebEXXtU=; b=c47YOV/Gx5tJ9uOijkzNRWnOlt
	GCKEKgSIlst9mU71daOoC0iDZAPZXALNn4tSY1+hB/C3TTWUq/MSbgm+o/FcSuCiNdWAtbI9F4BhD
	wVB5cGJljLq3rebu57BnDS8fosOUeoqLCFgFrNhm0PikKoqYXViTXIEsvrp8EyBgVxVjgw0fjTTEa
	t4ihezpsuJdscNegatkpDQ30kc1us5UdrvOPRLWI0EGkAA1vjcG/dYd5S4nDprHm2o8BMHoQZ3FJ8
	zEz6XPsHOopSxq8pVYDA4MVuHT21SgKu4DXhSe31me1rSI3neiJP28sgm2lcToEEw40I9N+qCJoUD
	EwpXIo6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jL6LV-0000wX-Am; Sun, 05 Apr 2020 14:33:57 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jL6LO-0000ve-As
 for linux-arm-kernel@lists.infradead.org; Sun, 05 Apr 2020 14:33:52 +0000
Received: by mail-io1-xd42.google.com with SMTP id x9so12822193iom.10
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 05 Apr 2020 07:33:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=JePDQgBdQH33JrWs9bGy0UWdrzs7I8dGLAKTSz+7a7Y=;
 b=Zsqx3ZRfL1HezoMYoyXXp4KQe+WID5F4GINY6bNiukGoSPcxJVEQW02w9AhN4/wphx
 RZr8+mA/NmenUTtWTumjg64JwWAC1n9Nk9ABGCesqEZPcGjB0qamk0RDeBYJJPYjbzlg
 jSp8bToh/IKQNbsvymAYy76niDqv5RyWJVq/BfeFfBKQM/3Ls7d82oXa6trKqo3PxJkw
 xDaOTi2fQiAuA96FLZF+F5QQd6TLu2uXvlT2L3O03r0PZk7BmMru6UBANW6+PIdGes/t
 xLwUUHtyAOhfeN1U8pOJ4xSnzNaBA5RAKWVhLWwHqSleP2nsCTJHEjEQq/4bT6t2Npr5
 2+fA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:content-transfer-encoding;
 bh=JePDQgBdQH33JrWs9bGy0UWdrzs7I8dGLAKTSz+7a7Y=;
 b=F3YmNn/l+w4s02t2VFiZfuPjZ5ElrQLkXUJ0abwl3nsfflncHthR9MhoFs4Kw4FSd6
 t7UoUSw2J5HyAMRq0xFkFrLDgs+0SNHBeGkECuKbjkLoATbX15XwLeyzGJUNunSVgKXw
 x3amWp1GFpxeeH31Vd92JS0E9ABnVMsBSLn/QPKaSf8kpbuo6qVwJ2wXxVTpbUEhmGpx
 Nauxl0jKBbPy2y+7jWYzp6nUX6TvIDeRgywUQR62SFiRbnKZJhA3K2qtgREJb1ROurNr
 CE/YE4N+4sEp4x1T3+AZpUxvCekXh9nRSMnHaCgeyo4hnvOJUMsD+wlNc9wiJt1Ocfbp
 8Rkg==
X-Gm-Message-State: AGi0PuZDhWs9ntZJERevVwWGZhiV2rb2oR+r3PNsmLOzV7hXOVt5ymld
 g3ErfyaVUk6w4RDixqUR5NFFTkypszbB2Huf3UM=
X-Google-Smtp-Source: APiQypL3uqmHGooNnyDi0IND+otfVS3s95cae1ByIEV9XnSffNZGHqr+ArBkfkTwaDQokAGnnL6k7QOqHc195B+FL3s=
X-Received: by 2002:a5d:91ca:: with SMTP id k10mr3421128ior.36.1586097229049; 
 Sun, 05 Apr 2020 07:33:49 -0700 (PDT)
MIME-Version: 1.0
References: <20200405104913.22806-1-peron.clem@gmail.com>
 <20200405115138.vrrvv7spnv6ifm6x@core.my.home>
In-Reply-To: <20200405115138.vrrvv7spnv6ifm6x@core.my.home>
From: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Date: Sun, 5 Apr 2020 16:33:37 +0200
Message-ID: <CAJiuCcfAKCs5ZLi_O21eyx-ZraC2Sb_ugQSmOEYm5+eVkQ7ZSw@mail.gmail.com>
Subject: Re: [linux-sunxi] [PATCH 0/7] Add support for Allwinner H6 DVFS
To: =?UTF-8?Q?Ond=C5=99ej_Jirman?= <megous@megous.com>, 
 =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>, 
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, 
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
 devicetree <devicetree@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, 
 linux-sunxi <linux-sunxi@googlegroups.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200405_073350_378868_BA3ADDD1 
X-CRM114-Status: GOOD (  33.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [peron.clem[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

SGkgT25kxZllaiwKCk9uIFN1biwgNSBBcHIgMjAyMCBhdCAxMzo1MSwgT25kxZllaiBKaXJtYW4g
PG1lZ291c0BtZWdvdXMuY29tPiB3cm90ZToKPgo+IEhlbGxvIENsw6ltZW50LAo+Cj4gT24gU3Vu
LCBBcHIgMDUsIDIwMjAgYXQgMTI6NDk6MDZQTSArMDIwMCwgQ2zDqW1lbnQgUMOpcm9uIHdyb3Rl
Ogo+ID4gSGkgU3VueGkgbWFpbnRhaW5lcnMgYW5kIG1lbWJlcnMsCj4gPgo+ID4gTm93IHRoYXQg
cmVxdWlyZWQgZHJpdmVycyBhcmUgbWVyZ2VkIHdlIGNhbiBjb250aWJ1dGUgb24gRFZGUyBzdXBw
b3J0IGZvcgo+ID4gQWxsd2lubmVyIEg2Lgo+ID4KPiA+IFRoaXMgc2VyaWUgaXMgYmFzZWQgb24g
WWFuZ3RhbyBMaSBzZXJpZVswXSBhbmQgTWVnb3VzIHdvcmtzWzFdLgo+ID4KPiA+IE1vc3Qgb2Yg
dGhlIE9QUCB0YWJsZXMgYXJlIHRha2VuIGZyb20gb3JpZ2luYWwgdmVuZG9yIGtlcm5lbFsyXS4K
PiA+IFBsdXMgdGhlcmUgaXMgYSBuZXcgQ1BVIGZyZXF1ZW5jeSBAMS44R0h6Lgo+ID4KPiA+IEkg
d3JvdGUgYSBzaW1wbGUgc2NyaXB0IHRvIHJhbmRvbWx5IHNldCBhIGZyZXF1ZW5jeSBkdXJpbmcg
YSByYW5kb20gdGltZVszXS4KPiA+IFdpdGggdGhpcyBzY3JpcHQgYW5kIHVzaW5nIHN0cmVzcy1u
ZyBkdXJpbmcgYSBkYXkgSSBkaWRuJ3Qgc2VlIGFueSBpc3N1ZS4KPiA+IE1vcmVvdmVyIEkgaGF2
ZSB0ZXN0ZWQgc3BlY2lmaWNhbGx5IHRoZSAxLjhHSHogb24gbXkgQmVlbGluayBHUzEsIG1heCB0
aGVybWFsCj4gPiA4MMKwQyBpcyByZWFjaGVkIGFmdGVyIH4xMG1pbiBhbmQgdGhlbiB0aGUgU29D
IG9zY2lsbGF0ZXMgcXVpY2tseSBiZXR3ZWVuIDEuNQo+ID4gYW5kIDEuOEdIei4KPgo+IFRoYW5r
IHlvdSBmb3Igd29ya2luZyBvbiB0aGlzLiA6KSBJIHdvbmRlciB3aGF0IFNvQyBiaW4geW91IHRl
c3RlZCB0aGlzIG9uLgo+Cj4gSSBoYXZlIGEgcGF0Y2ggdG8gcHJpbnQgaXQgaGVyZToKPgo+ICAg
aHR0cHM6Ly9tZWdvdXMuY29tL2dpdC9saW51eC9jb21taXQvP2g9dGhzLTUuNyZpZD1jNWRkZDJh
NDVjN2UwNGRjZWMzMTYxOWI1OGRlN2M3OThhZDY1OTRjCk15IFNvQyBiaW4gaXMgOgpbICAgIDAu
NTg0NTUzXSBzdW41MGlfY3B1ZnJlcV9udm1lbTogVXNpbmcgQ1BVIHNwZWVkIGJpbiBzcGVlZDAK
Pgo+ID4gSSBhbHNvIHRlc3QgdGhhdCB0aGF0IG9mZmxpbmluZyBDUFUwIGFuZCBkb2luZyBEVkZT
IG9uIG90aGVyIENQVXMgd29ya3MuCj4gPiBBcyBDUFUgcmVndWxhdG9yIGlzIG9ubHkgc2V0IGZv
ciBDUFUwLgo+ID4KPiA+IEJ1dCBtYXliZSBpdCBkb2Vzbid0IGNvc3QgbXVjaCB0byBzZXQgdGhl
IHJlZ3VsYXRvciBmb3IgYWxsIHRoZSBDUFVzPwo+ID4KPiA+IEplcm5laiB0ZXN0IHRoZSBHUFUg
ZGV2ZnJlcSBvbiBzZXZlcmFsIEg2IGJvYXJkIHBhcnRpY3VsYXJ5IHRoZSBUYW5peCBUWDYgd2hp
Y2gKPiA+IGRvZXNuJ3QgaGF2ZSBhIHByb3BlciBkZWRpY2F0ZWQgUE1JQyBhbmQgZG9lc24ndCBo
YWQgYW55IHRyb3VibGUgd2l0aCBpdC4KPiA+Cj4gPiBEbyB5b3UgdGhpbmsgSSBjYW4gZW5hYmxl
IEdQVSBPUFAgZm9yIGFsbCBINiBCb2FyZHM/Cj4gPgo+ID4gQWxzbyBZYW5ndGFvIExpIGVuYWJs
ZSBEVkZTIGZvciBPcmFuZ2VQaSBhbmQgUGluZTY0LCBhcyBJIGNhbid0IHRlc3QgdGhlbSBJCj4g
PiBkaWRuJ3QgcmVlbmFibGUgdGhlc2UgYm9hcmRzLiBQbGVhc2UsIGxldCBtZSBrbm93IGlmIHlv
dSB3YW50IG1lIHRvIGFkZCB0aGVzZQo+ID4gYm9hcmRzIGluIHRoaXMgc2VyaWUuCj4KPiBGZWVs
IGZyZWUgdG8gYWRkIHRoZXNlIE9QUHMgYWxzbyB0byBPcmFuZ2VQaSAzIGR0cywgSSd2ZSBiZWVu
IHJ1bm5pbmcgbWluZSB3aXRoCj4gdGhpcyBPUFAgdGFibGUgZm9yIGF0IGxlYXN0IGEgeWVhciBh
bHJlYWR5IChJIGhhdmUgdGhlIHdvcnN0IFNvQyBiaW4pLgo+Cj4gVGhvdWdoIEknbGwgcnVuIGEg
Yml0IG1vcmUgY29tcHJlaGVuc2l2ZSB0ZXN0IGZvciBtb3JlIGZyZXF1ZW5jaWVzLCBsaWtlIHlv
dQo+IGRpZCwganVzdCB0byBiZSBzdXJlLgo+Cj4gT25lIHRoaW5nIEkgd29uZGVyIGFib3V0IGlz
IGlmIHRoZXJlIHNob3VsZCBub3QgYmUgc29tZSBzbWFsbCByYW1wIGRlbGF5IG9uIHRoZQo+IENQ
VSByZWd1bGF0b3Igbm9kZSwgYmVjYXVzZSB2b2x0YWdlIGNoYW5nZSBwcm9iYWJseSB0YWtlcyBz
b21lIHNtYWxsIHRpbWUgdG8KPiBhcHBseSwgY29tcGFyZWQgdG8gY2hhbmdpbmcgdGhlIFBMTCBm
cmVxdWVuY3kuIEFuZCBJIGhhdmUgbm8gaWRlYSBpZiB0aGUgQ1BVCj4gaXMgbm90IHJ1bm5pbmcg
Zm9yIHNvbWUgdmVyeSBzbWFsbCB0aW1lIG91dCBvZiBzcGVjIGR1cmluZyB0cmFuc2l0aW9ucy4K
Pgo+IEkgZGlkbid0IGZpbmQgdGltaW5nIGluZm9ybWF0aW9uIGluIHRoZSBQTUlDIGRhdGFzaGVl
dCwgYnV0IEkgc3VwcG9zZSBiYXNlZAo+IG9uIHRoZSBEQ0RDQSBmcmVxdWVuY3kgb2YgM01IeiB0
aGF0IGl0IHdpbGwgYWRhcHQgdG8gdGhlIG5ldyB2b2x0YWdlIGluIHRoZQo+IHJhbmdlIG9mIDFz
LTEwcyBvZiBtaWNyb3NlY29uZHMuCj4KPiBJbiBkYXRhc2hlZXQgb2YgdGhlIHNpbWlsYXIgUE1J
QyAoQVhQODEzKSB0aGVyZSBpcyB0aGlzIG5vdGU6Cj4KPiAgIERWTSAoRHluYW1pYyBWb2x0YWdl
IHNjYWxpbmcgTWFuYWdlbWVudCkgcmFtcCByYXRlOiAyLjVtVi91cyBhdCBidWNrIGZyZXF1ZW5j
eSAzTUh6CgpHb29kIHBvaW50LCB0aGlzIGluZm9ybWF0aW9uIHNob3VsZCBiZSBhZGRlZCBmb3Ig
Ym90aCBDUFUgYW5kIEdQVSByZWd1bGF0b3IuClRoaXMgY291bGQgYmUgbmljZSB0byBjb25maXJt
IHRoaXMgcG9pbnQgd2l0aCBhIHNjb3BlLgoKQWxzbyBJIHJlbWFyayB0aGF0IEFsbHdpbm5lciB1
c2VyIGhpZ2hlciB0ZW1wZXJhdHVyZSB0aGFuIHdoYXQgd2Ugc2V0IDoKYWxhcm1fbG93X3RlbXAg
PSA8MTA1MDAwPjsKYWxhcm1faGlnaF90ZW1wID0gPDExMDAwMD47CmFsYXJtX3RlbXBfaHlzdGVy
ZXNpcyA9IDwxNTAwMD47CnNodXRfdGVtcD0gPDExNTAwMD47Cmh0dHBzOi8vZ2l0aHViLmNvbS9v
cmFuZ2VwaS14dW5sb25nL09yYW5nZVBpSDZfTGludXg0XzkvYmxvYi9tYXN0ZXIvYXJjaC9hcm02
NC9ib290L2R0cy9zdW54aS9zdW41MGl3NnAxLmR0c2kjTDE5MjQKCkRvbid0IHlvdSB0aGluayB0
aGF0IHdlIGNhbiBwdXNoIGEgYml0IGhpZ2hlciB0aGUgdGVtcGVyYXR1cmUgaXQncwphY3R1YWxs
eSBhdCA4MMKwQyA/CgpUaGFua3MgZm9yIHRoZSByZXZpZXcsCkNsZW1lbnQKCj4KPiBJIHRoaW5r
IGl0IHdpbGwgYmUgc2ltaWFyIHdpdGggQVhQODA1Lgo+Cj4gcmVnYXJkcywKPiAgICAgICAgIG8u
Cj4KPiA+IFRoYW5rcywKPiA+IENsw6ltZW50Cj4gPgo+ID4gMDogaHR0cHM6Ly9wYXRjaHdvcmsu
a2VybmVsLm9yZy9jb3Zlci8xMDgxNTExNy8KPiA+IDE6IGh0dHBzOi8vbWVnb3VzLmNvbS9naXQv
bGludXgvbG9nLz9oPXRocy01LjcKPiA+IDI6IGh0dHBzOi8vZ2l0aHViLmNvbS9vcmFuZ2VwaS14
dW5sb25nL09yYW5nZVBpSDZfTGludXg0XzkvYmxvYi9tYXN0ZXIvYXJjaC9hcm02NC9ib290L2R0
cy9zdW54aS9zdW41MGl3NnAxLmR0c2kjTDM0NS1MNTE3Cj4gPiAzOiBodHRwczovL2dpc3QuZ2l0
aHViLmNvbS9jbGVtZW50cGVyb24vNTVhMDU1ZGFlM2YxM2JiZDE0ZmIzOWMwMDY5ZmUyZTIKPiA+
Cj4gPiBDbMOpbWVudCBQw6lyb24gKDQpOgo+ID4gICBhcm02NDogZHRzOiBhbGx3aW5uZXI6IGg2
OiBzZXQgdGhlcm1hbCBwb2xsaW5nIHRpbWUKPiA+ICAgYXJtNjQ6IGR0czogYWxsd2lubmVyOiBo
NjogQWRkIEdQVSBPcGVyYXRpbmcgUGVyZm9ybWFuY2UgUG9pbnRzIHRhYmxlCj4gPiAgIGFybTY0
OiBjb25maWdzOiBFbmFibGUgc3VuNTBpIGNwdWZyZXEgbnZtZW0KPiA+ICAgYXJtNjQ6IGR0czog
YWxsd2lubmVyOiBoNjogRW5hYmxlIENQVSBhbmQgR1BVIG9wcCB0YWJsZXMgZm9yIEJlZWxpbmsK
PiA+ICAgICBHUzEKPiA+Cj4gPiBPbmRyZWogSmlybWFuICgyKToKPiA+ICAgYXJtNjQ6IGR0czog
YWxsd2lubmVyOiBoNjogQWRkIHRoZXJtYWwgdHJpcCBwb2ludHMvY29vbGluZyBtYXAKPiA+ICAg
YXJtNjQ6IGR0czogYWxsd2lubmVyOiBoNjogQWRkIENQVSBPcGVyYXRpbmcgUGVyZm9ybWFuY2Ug
UG9pbnRzIHRhYmxlCj4gPgo+ID4gWWFuZ3RhbyBMaSAoMSk6Cj4gPiAgIGFybTY0OiBkdHM6IGFs
bHdpbm5lcjogaDY6IEFkZCBjbG9jayB0byBDUFUgY29yZXMKPiA+Cj4gPiAgLi4uL2R0cy9hbGx3
aW5uZXIvc3VuNTBpLWg2LWJlZWxpbmstZ3MxLmR0cyAgIHwgIDEwICstCj4gPiAgLi4uL2Jvb3Qv
ZHRzL2FsbHdpbm5lci9zdW41MGktaDYtY3B1LW9wcC5kdHNpIHwgMTAzICsrKysrKysrKysrKysr
KysrKwo+ID4gIC4uLi9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LWdwdS1vcHAuZHRzaSB8
ICA3NCArKysrKysrKysrKysrCj4gPiAgYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3Vu
NTBpLWg2LmR0c2kgIHwgIDQ0ICsrKysrKystCj4gPiAgYXJjaC9hcm02NC9jb25maWdzL2RlZmNv
bmZpZyAgICAgICAgICAgICAgICAgIHwgICAxICsKPiA+ICA1IGZpbGVzIGNoYW5nZWQsIDIyNiBp
bnNlcnRpb25zKCspLCA2IGRlbGV0aW9ucygtKQo+ID4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBhcmNo
L2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYtY3B1LW9wcC5kdHNpCj4gPiAgY3Jl
YXRlIG1vZGUgMTAwNjQ0IGFyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi1n
cHUtb3BwLmR0c2kKPiA+Cj4gPiAtLQo+ID4gMi4yMC4xCj4gPgo+ID4gLS0KPiA+IFlvdSByZWNl
aXZlZCB0aGlzIG1lc3NhZ2UgYmVjYXVzZSB5b3UgYXJlIHN1YnNjcmliZWQgdG8gdGhlIEdvb2ds
ZSBHcm91cHMgImxpbnV4LXN1bnhpIiBncm91cC4KPiA+IFRvIHVuc3Vic2NyaWJlIGZyb20gdGhp
cyBncm91cCBhbmQgc3RvcCByZWNlaXZpbmcgZW1haWxzIGZyb20gaXQsIHNlbmQgYW4gZW1haWwg
dG8gbGludXgtc3VueGkrdW5zdWJzY3JpYmVAZ29vZ2xlZ3JvdXBzLmNvbS4KPiA+IFRvIHZpZXcg
dGhpcyBkaXNjdXNzaW9uIG9uIHRoZSB3ZWIsIHZpc2l0IGh0dHBzOi8vZ3JvdXBzLmdvb2dsZS5j
b20vZC9tc2dpZC9saW51eC1zdW54aS8yMDIwMDQwNTEwNDkxMy4yMjgwNi0xLXBlcm9uLmNsZW0l
NDBnbWFpbC5jb20uCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1hcm0ta2VybmVsCg==
