Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 761B81E4CF0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 20:18:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QTcfc+rG4xd0lsqy1BCC7U5UNnrYC08uguUd4S+zUHs=; b=XvJ2ccmgXF5Mh9
	EmIqRH9KngiPyZl6BTETJZtoMnmBoGClY5xpO335DibHAgl1eD4fWnFyX3GNhRjDUxbbvP8HXfR0Z
	L/YrD/HJdaLc9GgjnSpfhYWfZWPsuoMSXN8bxdyKdynYSfDYbCKO1IXNscbtnslR1wARzZg9DgniH
	ZiTj3DRfHEEPJT8pmp2/3X/1JAMeBrpgztwbOAPLxkeZLo3LA0QaqgWGYl9wNxXI959E5U/iCHuEt
	HYoz+b7/lKyawUqE8cBF966mLIFa3xcwAhvd1Im8za1YGZ7Fb592EiIeV98iZcVrFkUQTVWyndoA2
	3IopL9Mh6h/WitDZGDCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1je0dL-0004qr-Il; Wed, 27 May 2020 18:18:31 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1je0dB-0004qM-DK
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 18:18:23 +0000
Received: by mail-oi1-f196.google.com with SMTP id j145so22597577oib.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 May 2020 11:18:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=Var6zB7r/K27Y0hKiyg6WYBIMMgMr1FRwYS50LiCuf4=;
 b=bJjK6LSYFDioMYFE+5wib3ZKWwDJdSXO+z5Df5J8b49+bSMWERWARZzySSKpBvoOIL
 1ao1EQdm1a8YiR4xEEthXiVfpslwUdWk51pDgQfaPswNgzT64Pn5mW5ZWaK1b/uqEggh
 +9DxynlazDC1NzIGeGHmfnoO2ktuEED7iQANpF7BduP7S1JULjKHQ3YPZzBLoGRplwX2
 O4WbRlxRUA9s+H/MTd8ol716RI0BM32EZ1iL7gpGmHcfFpz28ZFOys65cHIpyqYbIshm
 q/iL7TRR0QOSijEZ2OC+zllDouJ5Yda5vHT175L7wy+uFeNIhvdrmbVtuJa1jQWuRozl
 v42g==
X-Gm-Message-State: AOAM532XGbY75yYIOT1Duy9xGmFgTZyX6klEy8r/6jcY5yeBC541EMeQ
 LjMFrFUYOlvIVvykOGr7rQlaMdMJJ64QwUzeBnE=
X-Google-Smtp-Source: ABdhPJwDA4zHg5WB5PjjdXFgYfKNq5akaZGI8EL531AovJiaDg7KWPSpYl/RVEBlXbX6o0CsK9tXlv/w5MWsVk++Glo=
X-Received: by 2002:a05:6808:1:: with SMTP id u1mr3675937oic.54.1590603498756; 
 Wed, 27 May 2020 11:18:18 -0700 (PDT)
MIME-Version: 1.0
References: <20200511110611.3142-1-ricardo.canuelo@collabora.com>
 <20200511110611.3142-7-ricardo.canuelo@collabora.com>
 <20200514015412.GF7425@pendragon.ideasonboard.com>
 <20200514093617.dwhmqaasc3z5ixy6@rcn-XPS-13-9360>
 <20200514152239.GG5955@pendragon.ideasonboard.com>
 <20200525074335.grnjvdjnipq5g3kf@rcn-XPS-13-9360>
 <20200526014444.GB6179@pendragon.ideasonboard.com>
 <CAMuHMdXinhY13us9rt9h7EvrT_8zhnQg6tmOBtA0nEQ=1G1O7Q@mail.gmail.com>
 <CAL_JsqJgQajnKdQ1Bt6YFX04fX0VGz44Q3kBdLLR04OzhWrH5A@mail.gmail.com>
In-Reply-To: <CAL_JsqJgQajnKdQ1Bt6YFX04fX0VGz44Q3kBdLLR04OzhWrH5A@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 27 May 2020 20:18:07 +0200
Message-ID: <CAMuHMdXQQXOcVuq7Zhfp4qGH0vmLtxp3fdCJ+7VSAMQYSdjsTg@mail.gmail.com>
Subject: Re: [PATCH v2 6/6] dt-bindings: drm: bridge: adi, adv7511.txt: convert
 to yaml
To: Rob Herring <robh+dt@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_111821_450774_FD0B09B1 
X-CRM114-Status: GOOD (  21.28  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Geert Uytterhoeven <geert+renesas@glider.be>,
 Wei Xu <xuwei5@hisilicon.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Collabora Kernel ML <kernel@collabora.com>,
 =?UTF-8?Q?Ricardo_Ca=C3=B1uelo?= <ricardo.canuelo@collabora.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgUm9iLAoKT24gV2VkLCBNYXkgMjcsIDIwMjAgYXQgNzozMCBQTSBSb2IgSGVycmluZyA8cm9i
aCtkdEBrZXJuZWwub3JnPiB3cm90ZToKPiBPbiBUdWUsIE1heSAyNiwgMjAyMCBhdCAxOjAzIEFN
IEdlZXJ0IFV5dHRlcmhvZXZlbiA8Z2VlcnRAbGludXgtbTY4ay5vcmc+IHdyb3RlOgo+ID4gT24g
VHVlLCBNYXkgMjYsIDIwMjAgYXQgMzo0NCBBTSBMYXVyZW50IFBpbmNoYXJ0Cj4gPiA8bGF1cmVu
dC5waW5jaGFydEBpZGVhc29uYm9hcmQuY29tPiB3cm90ZToKPiA+ID4gT24gTW9uLCBNYXkgMjUs
IDIwMjAgYXQgMDk6NDM6MzVBTSArMDIwMCwgUmljYXJkbyBDYcOxdWVsbyB3cm90ZToKPiA+ID4g
PiBPbiBqdWUgMTQtMDUtMjAyMCAxODoyMjozOSwgTGF1cmVudCBQaW5jaGFydCB3cm90ZToKPiA+
ID4gPiA+ID4gSWYgd2Ugd2FudCB0byBiZSBtb3JlIHN0cmljdCBhbmQgcmVxdWlyZSB0aGUgZGVm
aW5pdGlvbiBvZiBhbGwgdGhlCj4gPiA+ID4gPiA+IHN1cHBsaWVzLCB0aGVyZSB3aWxsIGJlIG1h
bnkgbW9yZSBEVHMgY2hhbmdlcyBpbiB0aGUgc2VyaWVzLCBhbmQgSSdtIG5vdAo+ID4gPiA+ID4g
PiBzdXJlIEknbGwgYmUgYWJsZSB0byBkbyB0aGF0IGluIGEgcmVhc29uYWJsZSBhbW91bnQgb2Yg
dGltZS4gSSdtIGxvb2tpbmcKPiA+ID4gPiA+ID4gYXQgdGhlbSBhbmQgaXQncyBub3QgYWx3YXlz
IGNsZWFyIHdoaWNoIHJlZ3VsYXRvcnMgdG8gdXNlIG9yIGlmIHRoZXkgYXJlCj4gPiA+ID4gPiA+
IGV2ZW4gZGVmaW5lZC4KPiA+ID4gPiA+Cj4gPiA+ID4gPiBXZSBjYW4gZGVjb3VwbGUgdGhlIHR3
byB0aG91Z2ggKEkgdGhpbmspLiBUaGUgYmluZGluZ3Mgc2hvdWxkIHJlZmxlY3QKPiA+ID4gPiA+
IHdoYXQgd2UgY29uc2lkZXIgcmlnaHQsIGFuZCB0aGUgZHRzIGZpbGVzIGNvdWxkIGJlIGZpeGVk
IG9uIHRvcC4KPiA+ID4gPgo+ID4gPiA+IERvIHlvdSBoYXZlIGEgc3VnZ2VzdGlvbiBvbiBob3cg
dG8gZG8gdGhpcz8gSWYgd2UgZGVjb3VwbGUgdGhlIHR3bwo+ID4gPiA+IHRhc2tzIG1vc3Qgb2Yg
dGhlIHdvcmsgd291bGQgYmUgc2VhcmNoaW5nIGZvciBEVHMgdG8gZml4IGFuZCBmaW5kaW5nIGEK
PiA+ID4gPiB3YXkgdG8gZml4IGVhY2ggb25lIG9mIHRoZW0sIGFuZCB1bmxlc3MgSSBkbyB0aGlz
IF9iZWZvcmVfIHRoZSBiaW5kaW5nCj4gPiA+ID4gY29udmVyc2lvbiBJJ2xsIGdldCBhIGxvdCBv
ZiBkdGJzX2NoZWNrIGVycm9ycy4KPiA+ID4KPiA+ID4gUm9iIHNob3VsZCBhbnN3ZXIgdGhpcyBx
dWVzdGlvbiBhcyBpdCB3aWxsIGJlIGhpcyBkZWNpc2lvbiwgYnV0IEkndmUKPiA+ID4gcGVyc29u
YWxseSBuZXZlciBjb25zaWRlcmVkIG5vbi1jb21wbGlhbnQgRFQgc291cmNlcyB0byBiZSBhbiBv
YnN0YWNsZQo+ID4gPiB0byBiaW5kaW5ncyBjb252ZXJzaW9uIHRvIFlBTUwuIFRoZSBEVCBzb3Vy
Y2VzIHNob3VsZCBiZSBmaXhlZCwgYnV0IEkKPiA+ID4gZG9uJ3Qgc2VlIGl0IGFzIGEgcHJlcmVx
dWlzaXRlIChhbHRob3VnaCBpdCdzIGEgZ29vZCBwcmFjdGljZSkuCj4KPiBUaGVyZSdzIGN1cnJl
bnRseSBubyByZXF1aXJlbWVudCB0aGF0IGJpbmRpbmcgc2NoZW1hIGRvbid0IGludHJvZHVjZQo+
IHdhcm5pbmdzIGluIGR0cyBmaWxlcy4gVGhhdCBzaG91bGQgY2hhbmdlIHdoZW4vaWYgd2UgZ2V0
IHRvIGEgd2FybmluZwo+IGZyZWUgc3RhdGUgKHByb2JhYmx5IHBlciBwbGF0Zm9ybS9mYW1pbHkp
LiBJIGRvbid0IHRoaW5rIHdlJ3JlIGNsb3NlCj4gb24gYW55IHBsYXRmb3JtPyAoSWYgd2UgYXJl
LCBJJ2QgbGlrZSB0byBzdGFydCB0cmFja2luZyB0aGF0KS4gSXQgaXMKPiBnb29kIHRvIHBheSBh
dHRlbnRpb24gdG8gdGhlIHdhcm5pbmdzIHlvdSBnZXQgdGhvdWdoIGFzIHRoZSBzY2hlbWEgbWF5
Cj4gbm90IGJlIGRvaW5nIHdoYXQgeW91IGV4cGVjdCBvciB0aGUgYmluZGluZyByZWFsbHkgZG9l
c24ndCBtYXRjaAo+IHJlYWxpdHkuCgpPSy4KCj4gPiBJIGRvIG15IGJlc3QgdG8gYXZvaWQgaW50
cm9kdWNpbmcgcmVncmVzc2lvbnMgd2hlbiB0aGUgYmluZGluZyBjb252ZXJzaW9ucwo+ID4gZ28g
dXBzdHJlYW0uCj4KPiBNZWFuaW5nIHlvdSBmaXggdGhlIGR0cyBmaWxlcyBvciBtYXNzYWdlIHRo
ZSBzY2hlbWEgdG8gbWF0Y2g/IElmIHdlCj4ganVzdCBhZGp1c3Qgc2NoZW1hIHRvIG1hdGNoLCB3
aGF0J3MgdGhlIHBvaW50IGluIHRoaXMgZWZmb3J0PyBXZQo+IHNob3VsZCBmaW5kIHRoaW5ncyB3
cm9uZyBvciBpbGwgZGVmaW5lZC4KCkkgZml4IHVwIERUUyBmaWxlcywgYW5kIGZhc3QtdHJhY2sg
dGhvc2UgZml4ZXMsIHNvIHRoZXkgYXBwZWFyIHVwc3RyZWFtIGJlZm9yZQp0aGUgRFQgYmluZGlu
ZyBjb252ZXJzaW9uLCB3aGVyZSBwb3NzaWJsZS4KCkdye29ldGplLGVldGluZ31zLAoKICAgICAg
ICAgICAgICAgICAgICAgICAgR2VlcnQKCi0tIApHZWVydCBVeXR0ZXJob2V2ZW4gLS0gVGhlcmUn
cyBsb3RzIG9mIExpbnV4IGJleW9uZCBpYTMyIC0tIGdlZXJ0QGxpbnV4LW02OGsub3JnCgpJbiBw
ZXJzb25hbCBjb252ZXJzYXRpb25zIHdpdGggdGVjaG5pY2FsIHBlb3BsZSwgSSBjYWxsIG15c2Vs
ZiBhIGhhY2tlci4gQnV0CndoZW4gSSdtIHRhbGtpbmcgdG8gam91cm5hbGlzdHMgSSBqdXN0IHNh
eSAicHJvZ3JhbW1lciIgb3Igc29tZXRoaW5nIGxpa2UgdGhhdC4KICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAtLSBMaW51cyBUb3J2YWxkcwoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGlu
dXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
