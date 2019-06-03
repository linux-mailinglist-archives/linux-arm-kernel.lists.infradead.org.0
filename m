Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0515233698
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 19:28:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+2TU0JQBWvci6fPAukRyD/Vn1Qb7Z2lw42fhPc/BM28=; b=frbhcdvc6r5fBW
	wmItWYlEprh376pAt6TSqcPioTZOs1ZRM7k5jfmr4hZj/o+ekK6baPgf/AsjlEfMxiQaXN4hL5V9/
	xGJ/EZqPUNcsUO2P0C7LxpWa1NE7FwddcftXivp/XEkPqs1gkqAFNvzGGAHfJbGnckTXQDXmvrrji
	E/H3gtsfjVpBFZ9P/EepMgGp05jIvRsPUVhI3+lMQbA6NK8Bytyn3fE5YmJZgDPgWQMceZTkyc2Da
	XezXcOSqaZY/u0isb4cclINwoLZvecQ7tkw+ZPrCrmVZwbQt2uFGmmbrO6m0rPm5cZRtCcl8eP2Aq
	prG/xygg0TCrfxGka2uQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXqkl-0001nE-S7; Mon, 03 Jun 2019 17:28:11 +0000
Received: from mail-yb1-xb42.google.com ([2607:f8b0:4864:20::b42])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXqke-0001mR-Qz
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 17:28:06 +0000
Received: by mail-yb1-xb42.google.com with SMTP id n145so6854426ybg.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 03 Jun 2019 10:28:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=/CnmclOqeFitdxQUE9bLrTl+THj0klsLpLvs2FULiUc=;
 b=SAN+/Qb9AVqYn57ZhyRBvnABldr92BWgtJKUyDxZUVDegfg6Hg/wW2NTGAgFOnyE63
 dBdT9OM2aaDM6qQbtrdiPqk5pTS3O2IHLuGjFcdRja7a7i0/c34FEWldCJTns/IJpvML
 LM23y4Y5Aq2EIIUcvbR+MqqHW/tZb2ggEG5WnbMne3zHqowjYDxINP5TEoXckHWZzHwa
 JpOWMO78/dyuTFrkYsvQNXInVy8WqA6UHCjTZOT8K68WVsNdiGHozgliJY4ZTHfHdMni
 eq8JyMQ5/LtpsQeMS5Kn6VTelTQadx7VXG9B3JGK4unIGTZaycj9jjsTvfUEz89TGvAa
 2ZQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=/CnmclOqeFitdxQUE9bLrTl+THj0klsLpLvs2FULiUc=;
 b=YHuF/5Q47CJdxnaac1a34n2VFSe9EVnOc2pV3OhYBM0MuLiST9MPXVFnLYXKo5YJYN
 wumgbjqrB7jEBE2h4RSlwrc7yqC6ePZtRipnJuIa4Fzt3JC4mns3KDSYjZOpt8SbzElm
 y54qIugat31gVDSo7M0gqTZmuaOvt9kPgIXxV6RSWUcAbQrmpQDMXpRDXZYrqokVglZb
 LVKkm9yv/Rt4PMacsZsAcO+GlfWgk0ntf4jC8HY+RH4ZGecMS/U/stJgaCvT03QlvLRT
 NYfuFVGaM7JwEjdWHL8ZazHNCvXkjgpswaUId5rD8FZoJgmUA0M5d2zmX6skbEP3faEI
 Ml3w==
X-Gm-Message-State: APjAAAU4IV42QUFcGVSKxIUkEpsTt2IjUH9Kut89ZQ5T5WDTFTqB5zTS
 IJcPxMkCZkyTet0OtBPhQLf21kfY+eWA9LDSfwie9rHrBN8=
X-Google-Smtp-Source: APXvYqwv36MV1EgjPM95jwDVnT/xOnPPHBe6w8IiRRT+qX6s8O/bgXKCVn5NKbfL9AQHj/f+E9bKbWM0yveHM2T4UZ4=
X-Received: by 2002:a25:ca8d:: with SMTP id a135mr9276509ybg.438.1559582882942; 
 Mon, 03 Jun 2019 10:28:02 -0700 (PDT)
MIME-Version: 1.0
References: <20190521161102.29620-1-peron.clem@gmail.com>
 <CAL_Jsq+86nNEBzjbf_GLWWrAN91jwU+JQ7zrEoFaT_dxUzVv4A@mail.gmail.com>
In-Reply-To: <CAL_Jsq+86nNEBzjbf_GLWWrAN91jwU+JQ7zrEoFaT_dxUzVv4A@mail.gmail.com>
From: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Date: Mon, 3 Jun 2019 19:27:51 +0200
Message-ID: <CAJiuCcchRZZ-Wwy3_fo_aq=GuCaCW8RHS8nBtB2br4n5Qtu-MA@mail.gmail.com>
Subject: Re: [PATCH v6 0/6] Allwinner H6 Mali GPU support
To: Maxime Ripard <maxime.ripard@bootlin.com>, Joerg Roedel <joro@8bytes.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_102804_869143_ACAA9BBF 
X-CRM114-Status: GOOD (  19.93  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
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
 devicetree <devicetree@vger.kernel.org>,
 Tomeu Vizoso <tomeu.vizoso@collabora.com>,
 Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>,
 Will Deacon <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Steven Price <steven.price@arm.com>, Chen-Yu Tsai <wens@csie.org>,
 Linux IOMMU <iommu@lists.linux-foundation.org>,
 Daniel Vetter <daniel@ffwll.ch>, Robin Murphy <robin.murphy@arm.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWF4aW1lLCBKb2VyZywKCk9uIFdlZCwgMjIgTWF5IDIwMTkgYXQgMjE6MjcsIFJvYiBIZXJy
aW5nIDxyb2JoK2R0QGtlcm5lbC5vcmc+IHdyb3RlOgo+Cj4gT24gVHVlLCBNYXkgMjEsIDIwMTkg
YXQgMTE6MTEgQU0gQ2zDqW1lbnQgUMOpcm9uIDxwZXJvbi5jbGVtQGdtYWlsLmNvbT4gd3JvdGU6
Cj4gPgo+ID4gSGksCj4gPgo+ID4gVGhlIEFsbHdpbm5lciBINiBoYXMgYSBNYWxpLVQ3MjAgTVAy
IHdoaWNoIHNob3VsZCBiZSBzdXBwb3J0ZWQgYnkKPiA+IHRoZSBuZXcgcGFuZnJvc3QgZHJpdmVy
LiBUaGlzIHNlcmllcyBmaXggdHdvIGlzc3VlcyBhbmQgaW50cm9kdWNlIHRoZQo+ID4gZHQtYmlu
ZGluZ3MgYnV0IGEgc2ltcGxlIGJlbmNobWFyayBzaG93IHRoYXQgaXQncyBzdGlsbCBOT1QgV09S
S0lORy4KPiA+Cj4gPiBJJ20gcHVzaGluZyBpdCBpbiBjYXNlIHNvbWVvbmUgd2FudCB0byBjb250
aW51ZSB0aGUgd29yay4KPiA+Cj4gPiBUaGlzIGhhcyBiZWVuIHRlc3RlZCB3aXRoIE1lc2EzRCAx
OS4xLjAtUkMyIGFuZCBhIEdQVSBiaXRuZXNzIHBhdGNoWzFdLgo+ID4KPiA+IE9uZSBwYXRjaCBp
cyBmcm9tIEljZW5vd3kgWmhlbmcgd2hlcmUgSSBjaGFuZ2VkIHRoZSBvcmRlciBhcyByZXF1aXJl
ZAo+ID4gYnkgUm9iIEhlcnJpbmdbMl0uCj4gPgo+ID4gVGhhbmtzLAo+ID4gQ2xlbWVudAo+ID4K
PiA+IFsxXSBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcva3N6YXEvbWVzYS90cmVlL3Bh
bmZyb3N0XzY0XzMyCj4gPiBbMl0gaHR0cHM6Ly9wYXRjaHdvcmsua2VybmVsLm9yZy9wYXRjaC8x
MDY5OTgyOS8KPiA+Cj4gPgo+ID4gWyAgMzQ1LjIwNDgxM10gcGFuZnJvc3QgMTgwMDAwMC5ncHU6
IG1tdSBpcnEgc3RhdHVzPTEKPiA+IFsgIDM0NS4yMDk2MTddIHBhbmZyb3N0IDE4MDAwMDAuZ3B1
OiBVbmhhbmRsZWQgUGFnZSBmYXVsdCBpbiBBUzAgYXQgVkEKPiA+IDB4MDAwMDAwMDAwMjQwMDQw
MAo+ID4gWyAgMzQ1LjIwOTYxN10gUmVhc29uOiBUT0RPCj4gPiBbICAzNDUuMjA5NjE3XSByYXcg
ZmF1bHQgc3RhdHVzOiAweDgwMDAwMkMxCj4gPiBbICAzNDUuMjA5NjE3XSBkZWNvZGVkIGZhdWx0
IHN0YXR1czogU0xBVkUgRkFVTFQKPiA+IFsgIDM0NS4yMDk2MTddIGV4Y2VwdGlvbiB0eXBlIDB4
QzE6IFRSQU5TTEFUSU9OX0ZBVUxUX0xFVkVMMQo+ID4gWyAgMzQ1LjIwOTYxN10gYWNjZXNzIHR5
cGUgMHgyOiBSRUFECj4gPiBbICAzNDUuMjA5NjE3XSBzb3VyY2UgaWQgMHg4MDAwCj4gPiBbICAz
NDUuNzI5OTU3XSBwYW5mcm9zdCAxODAwMDAwLmdwdTogZ3B1IHNjaGVkIHRpbWVvdXQsIGpzPTAs
Cj4gPiBzdGF0dXM9MHg4LCBoZWFkPTB4MjQwMDQwMCwgdGFpbD0weDI0MDA0MDAsIHNjaGVkX2pv
Yj0wMDAwMDAwMDllMjA0ZGU5Cj4gPiBbICAzNDYuMDU1ODc2XSBwYW5mcm9zdCAxODAwMDAwLmdw
dTogbW11IGlycSBzdGF0dXM9MQo+ID4gWyAgMzQ2LjA2MDY4MF0gcGFuZnJvc3QgMTgwMDAwMC5n
cHU6IFVuaGFuZGxlZCBQYWdlIGZhdWx0IGluIEFTMCBhdCBWQQo+ID4gMHgwMDAwMDAwMDAyQzAw
QTAwCj4gPiBbICAzNDYuMDYwNjgwXSBSZWFzb246IFRPRE8KPiA+IFsgIDM0Ni4wNjA2ODBdIHJh
dyBmYXVsdCBzdGF0dXM6IDB4ODEwMDAyQzEKPiA+IFsgIDM0Ni4wNjA2ODBdIGRlY29kZWQgZmF1
bHQgc3RhdHVzOiBTTEFWRSBGQVVMVAo+ID4gWyAgMzQ2LjA2MDY4MF0gZXhjZXB0aW9uIHR5cGUg
MHhDMTogVFJBTlNMQVRJT05fRkFVTFRfTEVWRUwxCj4gPiBbICAzNDYuMDYwNjgwXSBhY2Nlc3Mg
dHlwZSAweDI6IFJFQUQKPiA+IFsgIDM0Ni4wNjA2ODBdIHNvdXJjZSBpZCAweDgxMDAKPiA+IFsg
IDM0Ni41NjE5NTVdIHBhbmZyb3N0IDE4MDAwMDAuZ3B1OiBncHUgc2NoZWQgdGltZW91dCwganM9
MSwKPiA+IHN0YXR1cz0weDgsIGhlYWQ9MHgyYzAwYTAwLCB0YWlsPTB4MmMwMGEwMCwgc2NoZWRf
am9iPTAwMDAwMDAwYjU1YTlhODUKPiA+IFsgIDM0Ni41NzM5MTNdIHBhbmZyb3N0IDE4MDAwMDAu
Z3B1OiBtbXUgaXJxIHN0YXR1cz0xCj4gPiBbICAzNDYuNTc4NzA3XSBwYW5mcm9zdCAxODAwMDAw
LmdwdTogVW5oYW5kbGVkIFBhZ2UgZmF1bHQgaW4gQVMwIGF0IFZBCj4gPiAweDAwMDAwMDAwMDJD
MDBCODAKPiA+Cj4gPiBDaGFuZ2UgaW4gdjU6Cj4gPiAgLSBSZW1vdmUgZml4IGluZGVudAo+ID4K
PiA+IENoYW5nZXMgaW4gdjQ6Cj4gPiAgLSBBZGQgYnVzX2Nsb2NrIHByb2JlCj4gPiAgLSBGaXgg
c2FuaXR5IGNoZWNrIGluIGlvLXBndGFibGUKPiA+ICAtIEFkZCB2cmFtcC1kZWxheQo+ID4gIC0g
TWVyZ2UgYWxsIGJvYXJkcyBpbnRvIG9uZSBwYXRjaAo+ID4gIC0gUmVtb3ZlIHVwc3RyZWFtZWQg
TmVpbCBBLiBwYXRjaAo+ID4KPiA+IENoYW5nZSBpbiB2MyAoVGhhbmtzIHRvIE1heGltZSBSaXBh
cmQpOgo+ID4gIC0gUmVhdXRob3IgSWNlbm93eSBmb3IgaGVyIHBhdGgKPiA+Cj4gPiBDaGFuZ2Vz
IGluIHYyIChUaGFua3MgdG8gTWF4aW1lIFJpcGFyZCk6Cj4gPiAgLSBEcm9wIEdQVSBPUFAgVGFi
bGUKPiA+ICAtIEFkZCBjbG9ja3MgYW5kIGNsb2NrLW5hbWVzIGluIHJlcXVpcmVkCj4gPgo+ID4g
Q2zDqW1lbnQgUMOpcm9uICg1KToKPiA+ICAgZHJtOiBwYW5mcm9zdDogYWRkIG9wdGlvbmFsIGJ1
c19jbG9jawo+ID4gICBpb21tdTogaW8tcGd0YWJsZTogZml4IHNhbml0eSBjaGVjayBmb3Igbm9u
IDQ4LWJpdCBtYWxpIGlvbW11Cj4gPiAgIGR0LWJpbmRpbmdzOiBncHU6IG1hbGktbWlkZ2FyZDog
QWRkIEg2IG1hbGkgZ3B1IGNvbXBhdGlibGUKPiA+ICAgYXJtNjQ6IGR0czogYWxsd2lubmVyOiBB
ZGQgQVJNIE1hbGkgR1BVIG5vZGUgZm9yIEg2Cj4gPiAgIGFybTY0OiBkdHM6IGFsbHdpbm5lcjog
QWRkIG1hbGkgR1BVIHN1cHBseSBmb3IgSDYgYm9hcmRzCj4gPgo+ID4gSWNlbm93eSBaaGVuZyAo
MSk6Cj4gPiAgIGR0LWJpbmRpbmdzOiBncHU6IGFkZCBidXMgY2xvY2sgZm9yIE1hbGkgTWlkZ2Fy
ZCBHUFVzCj4KPiBJJ3ZlIGFwcGxpZWQgcGF0Y2hlcyAxIGFuZCAzIHRvIGRybS1taXNjLiBJIHdh
cyBnb2luZyB0byBkbyBwYXRjaCA0Cj4gdG9vLCBidXQgaXQgZG9lc24ndCBhcHBseS4KPgo+IFBh
dGNoIDIgY2FuIGdvIGluIHZpYSB0aGUgaW9tbXUgdHJlZSBhbmQgdGhlIHJlc3QgdmlhIHRoZSBh
bGx3aW5uZXIgdHJlZS4KCklzIHRoaXMgT0sgZm9yIHlvdSB0byBwaWNrIHVwIHRoaXMgc2VyaWVz
PwoKVGhhbmtzLApDbMOpbWVudAoKPgo+IFJvYgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgt
YXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
