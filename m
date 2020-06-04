Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA23D1EDCAB
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jun 2020 07:20:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xvCDMaHuSjlOoZqqYnyJZwPf549P4HrTMFRDkeShTTc=; b=CniHUed0bqkgSK
	Ok6Av/ll2mPVXuVnGvQlECq/2fVaWagBJAI73itiMZ5h9f+wbzdkBdYiU12dcXCu7JN7EHM7kFsC8
	hW0vovTvV2mTFmuqDdO4ph5M3AcZWStyAHn3VQvOAs9l7Zskjwd/IdgA5YklxxOyF0BlkpNrr4JPy
	LYAy730FmvyNMYj11cfwcxIlM16UPuHBz1aZ/BgycWu1tJr4t7R3uVrjshJbfkcxN+T+HWTHBD+Ap
	4vUlQySiOVxLv8b8/zKBM+8PadacBSMvb9CNya2TbceRst9T18bhdy+lgf52vk8g2wfv7Vvnd4hNc
	6xHc5pGBCR7Y1EX87n5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgiIE-0000jV-Ti; Thu, 04 Jun 2020 05:19:54 +0000
Received: from mail-lj1-f194.google.com ([209.85.208.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgiI7-0000j9-0r
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jun 2020 05:19:48 +0000
Received: by mail-lj1-f194.google.com with SMTP id a25so5652623ljp.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 03 Jun 2020 22:19:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=CDYCwrGwgyePOxlS0CraEvHzE1DftCgl+yxJsEBFx8c=;
 b=paK7Do5PJn98MjMMMLdvQiaQKYFBAKSj/5oAbavMu69UXckCgxxDuq6X1fWjCepIm9
 GfuUjGiZJ88FulrM053jBhQusMDmgIVFVdbe+xsPOwf9TmnK69Utidss1V6C9hL5hiUc
 QD1B8qk4i/TMBmIe1aIt72/OShDwNooGfEFrEOkt9CAvsKl4PFPiRR56d19XijLMmfhB
 UI2ZHGGk/RBxVPakdpGTxaoCCQObOFOlfkylEfi+DiNtGFdsYIIUAtiHcztCvaUKJTqA
 wlZpsF9V84u/KcQejl+9WKrE2cm9P2Q8zXwm+qdygMoXdUgsDjGH/Bf7PX4/HwkTERET
 WTkQ==
X-Gm-Message-State: AOAM533+xSHhrsZQThU6DzQw2zgXiqZ5G8O0EFO+F7CDFvGrOtrINVHN
 HZjVE0Ezh2daZWI90tsujCmUkkKKG/s=
X-Google-Smtp-Source: ABdhPJxaCNVCtyJwOuPcO3SA4zmY44zGZiqYUvdqpWdP6IYKIrtmgNjuTYvcSt6a+0Gf6B1hFH9UNA==
X-Received: by 2002:a2e:6c07:: with SMTP id h7mr1303111ljc.125.1591247983617; 
 Wed, 03 Jun 2020 22:19:43 -0700 (PDT)
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com.
 [209.85.208.175])
 by smtp.gmail.com with ESMTPSA id i24sm957195ljg.82.2020.06.03.22.19.43
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 03 Jun 2020 22:19:43 -0700 (PDT)
Received: by mail-lj1-f175.google.com with SMTP id s1so5669918ljo.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 03 Jun 2020 22:19:43 -0700 (PDT)
X-Received: by 2002:a2e:9246:: with SMTP id v6mr1269112ljg.47.1591247982979;
 Wed, 03 Jun 2020 22:19:42 -0700 (PDT)
MIME-Version: 1.0
References: <20200413095457.1176754-1-jernej.skrabec@siol.net>
 <1742537.tdWV9SEqCh@jernej-laptop>
 <20200415104214.ndkkxfnufkxgu53r@gilmour.lan>
 <1785843.taCxCBeP46@jernej-laptop>
 <20200422092300.444wcaurdwyrorow@gilmour.lan>
In-Reply-To: <20200422092300.444wcaurdwyrorow@gilmour.lan>
From: Chen-Yu Tsai <wens@csie.org>
Date: Thu, 4 Jun 2020 13:19:32 +0800
X-Gmail-Original-Message-ID: <CAGb2v64++4rxcwdQXgz30vNbRRR5+tXehP-CFu9T7Lx7K_QOOw@mail.gmail.com>
Message-ID: <CAGb2v64++4rxcwdQXgz30vNbRRR5+tXehP-CFu9T7Lx7K_QOOw@mail.gmail.com>
Subject: Re: [PATCH] drm/sun4i: hdmi ddc clk: Fix size of m divider
To: Maxime Ripard <maxime@cerno.tech>,
 =?UTF-8?Q?Jernej_=C5=A0krabec?= <jernej.skrabec@siol.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_221947_066435_BE02227D 
X-CRM114-Status: GOOD (  28.76  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.194 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.194 listed in wl.mailspike.net]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [wens213[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [wens213[at]gmail.com]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: David Airlie <airlied@linux.ie>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, Daniel Vetter <daniel@ffwll.ch>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCBBcHIgMjIsIDIwMjAgYXQgNToyMyBQTSBNYXhpbWUgUmlwYXJkIDxtYXhpbWVAY2Vy
bm8udGVjaD4gd3JvdGU6Cj4KPiBIaSwKPgo+IE9uIFdlZCwgQXByIDE1LCAyMDIwIGF0IDA3OjUy
OjI4UE0gKzAyMDAsIEplcm5laiDFoGtyYWJlYyB3cm90ZToKPiA+IERuZSBzcmVkYSwgMTUuIGFw
cmlsIDIwMjAgb2IgMTI6NDI6MTQgQ0VTVCBqZSBNYXhpbWUgUmlwYXJkIG5hcGlzYWwoYSk6Cj4g
PiA+IE9uIE1vbiwgQXByIDEzLCAyMDIwIGF0IDA2OjA5OjA4UE0gKzAyMDAsIEplcm5laiDFoGty
YWJlYyB3cm90ZToKPiA+ID4gPiBEbmUgcG9uZWRlbGplaywgMTMuIGFwcmlsIDIwMjAgb2IgMTY6
MTI6MzkgQ0VTVCBqZSBDaGVuLVl1IFRzYWkKPiA+IG5hcGlzYWwoYSk6Cj4gPiA+ID4gPiBPbiBN
b24sIEFwciAxMywgMjAyMCBhdCA2OjExIFBNIENoZW4tWXUgVHNhaSA8d2Vuc0Bjc2llLm9yZz4g
d3JvdGU6Cj4gPiA+ID4gPiA+IE9uIE1vbiwgQXByIDEzLCAyMDIwIGF0IDU6NTUgUE0gSmVybmVq
IFNrcmFiZWMKPiA+ID4gPiA+ID4gPGplcm5lai5za3JhYmVjQHNpb2wubmV0Pgo+ID4gPiA+Cj4g
PiA+ID4gd3JvdGU6Cj4gPiA+ID4gPiA+ID4gbSBkaXZpZGVyIGluIEREQyBjbG9jayByZWdpc3Rl
ciBpcyA0IGJpdHMgd2lkZS4gRml4IHRoYXQuCj4gPiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4gPiBG
aXhlczogOWM1NjgxMDExYTBjICgiZHJtL3N1bjRpOiBBZGQgSERNSSBzdXBwb3J0IikKPiA+ID4g
PiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBKZXJuZWogU2tyYWJlYyA8amVybmVqLnNrcmFiZWNAc2lv
bC5uZXQ+Cj4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+IFJldmlld2VkLWJ5OiBDaGVuLVl1IFRzYWkg
PHdlbnNAY3NpZS5vcmc+Cj4gPiA+ID4gPgo+ID4gPiA+ID4gQ2Mgc3RhYmxlPwo+ID4gPiA+Cj4g
PiA+ID4gSSBkb24ndCB0aGluayBpdCdzIG5lY2Vzc2FyeToKPiA+ID4gPiAxLiBJdCBkb2Vzbid0
IGNoYW5nZSBtdWNoIChhbnl0aGluZz8pIGZvciBtZSB3aGVuIHJlYWRpbmcgRURJRC4gSSBkb24n
dAo+ID4gPiA+IHRoaW5rIGl0J3Mgc3VwZXIgaW1wb3J0YW50IHRvIGhhdmUgcHJlY2lzZSBEREMg
Y2xvY2sgaW4gb3JkZXIgdG8gcHJvcGVybHkKPiA+ID4gPiByZWFkIEVESUQuIDIuIE5vIG1hdHRl
ciBpZiBpdCBoYXMgIkNjIHN0YWJsZSIgdGFnIG9yIG5vdCwgaXQgd2lsbCBiZQo+ID4gPiA+IGV2
ZW50dWFsbHkgcGlja2VkIGZvciBzdGFibGUgZHVlIHRvIGZpeGVzIHRhZy4KPiA+ID4gPgo+ID4g
PiA+IFRoaXMgd2FzIG9ubHkgc21hbGwgb2JzZXJ2YXRpb24gd2hlbiBJIHdhcyByZXNlYXJjaGlu
ZyBFRElEIHJlYWRvdXQgaXNzdWUKPiA+ID4gPiBvbiBBMjAgYm9hcmQsIGJ1dCBzYWRseSwgSSB3
YXNuJ3QgYWJsZSB0byBmaWd1cmUgb3V0IHdoeSByZWFkaW5nIGl0Cj4gPiA+ID4gc29tZXRpbWVz
IGZhaWxzLiBJIG5vdGljZWQgc2ltaWxhciBpc3N1ZSBvbiBTb0NzIHdpdGggREUyIChtb3N0Cj4g
PiA+ID4gcHJvbWluZW50bHkgb24gT3JhbmdlUGkgUEMyIC0gSDUpLCBidXQgdGhlcmUgd2FzIGVh
c3kgd29ya2Fyb3VuZCAtIEkganVzdAo+ID4gPiA+IGRpc2FibGVkIHZpZGVvIGRyaXZlciBpbiBV
LSBCb290LiBIb3dldmVyLCBpZiBBMjAgZGlzcGxheSBkcml2ZXIgZ2V0cwo+ID4gPiA+IGRpc2Fi
bGVkIGluIFUtQm9vdCwgaXQgdG90YWxseSBicmVha3MgdmlkZW8gb3V0cHV0IG9uIG15IFRWIHdo
ZW4gTGludXgKPiA+ID4gPiBib290cyAobm8gb3V0cHV0KS4gSSBndWVzcyB0aGVyZSBpcyBtb3Jl
IGZ1bmRhbWVudGFsIHByb2JsZW0gd2l0aCBjbG9ja3MKPiA+ID4gPiB0aGFuIGp1c3QgZmllbGQg
c2l6ZS4gSSB0aGluayB3ZSBzaG91bGQgYWRkIG1vcmUgY29uc3RyYWludHMgaW4gY2xvY2sKPiA+
ID4gPiBkcml2ZXIsIGxpa2UgcHJlc2V0IHNvbWUgY2xvY2sgcGFyZW50cyBhbmQgbm90IGFsbG93
IHRvIGNoYW5nZSBwYXJlbnRzCj4gPiA+ID4gd2hlbiBzZXR0aW5nIHJhdGUsIGJ1dCBjYXJlZnVs
bHksIHNvIHNpbXBsZWZiIGRvZXNuJ3QgYnJlYWsuIFN1Y2gKPiA+ID4gPiBjb25zdHJhaW50cyBz
aG91bGQgYWxzbyBzb2x2ZSBwcm9ibGVtcyB3aXRoIGR1YWwgaGVhZCBzZXR1cHMuCj4gPiA+IEkg
ZGlzYWdyZWUgaGVyZS4gRG9pbmcgYWxsIHNvcnRzIG9mIHNwZWNpYWwgY2FzZSBqdXN0IGRvZXNu
J3Qgc2NhbGUsCj4gPiA+IGFuZCB3ZSdsbCBuZXZlciBoYXZlIHRoZSBzcGVjaWFsIGNhc2VzIHNv
cnRlZCBvdXQgb24gYWxsIHRoZSBib2FyZHMKPiA+ID4gKGFuZCBpdCdzIGEgbmlnaHRtYXJlIHRv
IG1haW50YWluKS4KPiA+ID4KPiA+ID4gRXNwZWNpYWxseSBzaW5jZSBpdCdzIGJhc2ljYWxseSBw
dXR0aW5nIGEgYmxhbmtldCBvdmVyIHRoZSBhY3R1YWwKPiA+ID4gaXNzdWUgYW5kIGxvb2tpbmcg
dGhlIG90aGVyIHdheS4gSWYgdGhlcmUncyBzb21ldGhpbmcgd3Jvbmcgd2l0aCBob3cKPiA+ID4g
d2UgZGVhbCB3aXRoIChyZSlwYXJlbnRpbmcsIHdlIHNob3VsZCBmaXggdGhhdC4gSXQgaW1wYWN0
cyBtb3JlIHRoYW4KPiA+ID4ganVzdCBEUk0sIGFuZCBhbGwgdGhlIFNvQ3MuCj4gPgo+ID4gSSBh
Z3JlZSB3aXRoIHlvdSB0aGF0IGF1dG9tYXRpYyBzb2x1dGlvbiB3b3VsZCBiZSBiZXN0LCBidXQg
SSBqdXN0IGRvbid0IHNlZQo+ID4gaXQgaG93IGl0IHdvdWxkIGJlIGRvbmUuCj4KPiA+IER1YWwg
aGVhZCBkaXNwbGF5IHBpcGVsaW5lIGlzIHByZXR0eSBjb21wbGV4IGZvciBjbG9jayBkcml2ZXIg
dG8gZ2V0IGl0IHJpZ2h0Cj4gPiBvbiBpdCdzIG93bi4gVGhlcmUgYXJlIGRpZmZlcmVudCBwb3Nz
aWJsZSBzZXR1cHMgYW5kIHNvbWUgb2YgdGhlbSBhcmUgaG90Cj4gPiBwbHVnZ2FibGUsIGxpa2Ug
SERNSS4KPgo+IERvIHlvdSBoYXZlIGFuIGFjdHVhbCBzY2VuYXJpbyB0aGF0IGlzIGJyb2tlbiBy
aWdodCBub3c/Cj4KPiA+IEFuZCB0aGVyZSBhcmUgYWxzbyBTb0Mgc3BlY2lmaWMgcXVpcmtzLCBs
aWtlIEE2NCwgd2hlcmUgZm9yIHNvbWUgcmVhc29uLCBNSVBJCj4gPiBEUEhZIGFuZCBIRE1JIFBI
WSBzaGFyZSBzYW1lIGNsb2NrIHBhcmVudCAtIFBMTF9WSURFTzAuIFRlY2huaWNhbGx5LCBNSVBJ
IERQSFkKPiA+IGNhbiBiZSBjbG9ja2VkIGZyb20gUExMX1BFUklQSDAgKGZpeGVkIHRvIDYwMCBN
SHopLCBidXQgdGhhdCdzIG5vdCByZWFsbHkKPiA+IGhlbHBmdWwuIEknbSBub3QgZXZlbiBzdXJl
IGlmIHRoZXJlIGlzIGFueSBnb29kIHNvbHV0aW9uIHRvIHRoaXMgLSBjZXJ0YWlubHkKPiA+IEhE
TUkgYW5kIE1JUEkgY2FuJ3QgY2xhaW0gZXhjbHVzaXZpdHkgYW5kIHNvbWVob3cgYmVzdCBjb21t
b24gcmF0ZSBtdXN0IGJlCj4gPiBmb3VuZCBmb3IgUExMX1ZJREVPMCwgaWYgdGhhdCdzIGV2ZW4g
cG9zc2libGUuCj4KPiBJSVJDIHRoZSBEU0kgRFBIWSBuZWVkcyBhIGNsb2NrIHJ1bm5pbmcgYXQg
Mjk3TUh6LCB3aGljaCBpcyBwcmV0dHkgbXVjaCB3aGF0IHRoZQo+IEhETUkgUEhZIHNob3VsZCBu
ZWVkIHRvbyAob3IgMTQ4LjUsIGJ1dCB0aGF0J3MgcHJldHR5IGVhc3kgdG8gZ2VuZXJhdGUgZnJv
bQo+IDI5NykuIFNvIHdoaWNoIHByb2JsZW0gZG8gd2UgaGF2ZSB0aGVyZT8KPgo+ID4gSSB3YXMg
c3VyZSB0aGF0IEhETUkgUEhZIG9uIEE2NCBjYW4gYmUgY2xvY2tlZCBmcm9tIFBMTF9WSURFTzEs
IHdoaWNoIHdvdWxkCj4gPiBzb2x2ZSBtYWluIGlzc3VlLCBidXQgdG8gZGF0ZSwgSSBkaWRuJ3Qg
ZmluZCBhbnkgd2F5IHRvIGRvIHRoYXQuCj4gPgo+ID4gVGhhdCdzIHByZXR0eSBvZmYgdG9waWMs
IHNvIEkgaG9wZSBvcmlnaW5hbCBwYXRjaCBjYW4gYmUgbWVyZ2VkIGFzLWlzLgo+Cj4gSXQgZG9l
cywgc29ycnkKPgo+IEFja2VkLWJ5OiBNYXhpbWUgUmlwYXJkIDxtYXhpbWVAY2Vybm8udGVjaD4K
Ckxvb2tzIGxpa2UgdGhpcyBoYXNuJ3QgbGFuZGVkIHlldC4KCkNoZW5ZdQoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWls
aW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
