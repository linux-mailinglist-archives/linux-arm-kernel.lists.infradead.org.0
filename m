Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B7C51BD490
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 08:24:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GuVBe/hgpxuN+1wXkrCjFQhXQ4UscBYQJZGHM0E0Y9c=; b=rnXdueu63naKho
	YKKPlsfb7oSj1BZgeZC3EtD6TXJzaJareqyKoPhkfev+aMXH0bc7S8pBtyg/mrz4j37LyrIUZNF6p
	hWiCoJtYeMUSjNg3kUQPXJpc+C9gwC1AWwKaNEbX8R3BxSReCsVFD6ihNKi5gWx5qcBCUS55uPeB7
	KYB8X0k2F01BKkoS4gTofh1jzii7/Tycyn1xLNlmBtNzCUpVvHKX7vQc1KDUaU9BmRutyYALHAuqT
	1evykrnQoCPxi3IW9leqjsdwh+1SAtZK5AbG9F2a9bFR6Zlpod61bVPikjS+PypSTOPHoK/7XTOg2
	nTaZ0ip3qN61hrjdQdxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTg8v-0006Ii-Nk; Wed, 29 Apr 2020 06:24:25 +0000
Received: from mail-lf1-f66.google.com ([209.85.167.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTg8l-0006IO-8c
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 06:24:17 +0000
Received: by mail-lf1-f66.google.com with SMTP id h6so671690lfc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 Apr 2020 23:24:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=UMvE1bKhgPMPyH5g6riW7cDoy79w0qtcoyNsyUsk4iA=;
 b=fOU0lJZU48IrbmVw98pE/iG+Iicr0IjTlbBORKFg4jtj5eGnLMJ/spt8BTJlksE0n/
 zZQGzlTLclMmqzDdgKlEqOTjzJzAok3Kqf2ZpzkOnN6BW2mEmSjUEPZ/iyPmlEKvfiBq
 ecED0i0wyw83CgNCQbaHQgg/NnW7NV8duREEmEOaw+Ht5p3ePLV0NMm14qQbM6qQU+Ut
 NHB8BORSo15z0F152Ssal3MOTDeEa6+wZhxLojBTxZsR+ctaEOfExOiwnB2dvICvkS8V
 +8KCkkiw1YgOgRI5XDaUrNk6ASv9KcFezstjOOBvSHChYhdB6c11Y5cX4UInj+7pmNdU
 jRJA==
X-Gm-Message-State: AGi0PuYgcaMDg0CREL3QJWuMBD3l7V2IH5/taZTYwRO1RkOKm8oOonhM
 zYKAAi6ry7ER0s15wsfOJ8jgoAt3WaJlVg==
X-Google-Smtp-Source: APiQypL11PkHT8WPRtn6vbNgPwASX4I7XpMz9CN6lHo25IVwpnIq0efIQ5c6QVZ5ziH3EJYclkDTKA==
X-Received: by 2002:ac2:4551:: with SMTP id j17mr20980345lfm.147.1588141452418; 
 Tue, 28 Apr 2020 23:24:12 -0700 (PDT)
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com.
 [209.85.167.51])
 by smtp.gmail.com with ESMTPSA id c2sm1706407lfb.43.2020.04.28.23.24.11
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 28 Apr 2020 23:24:11 -0700 (PDT)
Received: by mail-lf1-f51.google.com with SMTP id u10so643902lfo.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 Apr 2020 23:24:11 -0700 (PDT)
X-Received: by 2002:ac2:5238:: with SMTP id i24mr5157585lfl.7.1588141451325;
 Tue, 28 Apr 2020 23:24:11 -0700 (PDT)
MIME-Version: 1.0
References: <20200426120442.11560-1-peron.clem@gmail.com>
 <20200426120442.11560-5-peron.clem@gmail.com>
 <20200428080020.35qcuylwq2ylmubu@gilmour.lan>
 <CAJiuCcc2LQ4L36KSfO8iLVFBUO6k+zsZFX+_Ovm_10PoWO4AsA@mail.gmail.com>
 <20200428160417.6q5oab2guaumhhwi@gilmour.lan>
 <CAJiuCccFFUJJzXwygLQbDK4fGJ61p72Hv7vj3WVP-=z=J1Yj0Q@mail.gmail.com>
 <031ee5d3-8a30-82ee-76db-c0e8a1073046@arm.com>
In-Reply-To: <031ee5d3-8a30-82ee-76db-c0e8a1073046@arm.com>
From: Chen-Yu Tsai <wens@csie.org>
Date: Wed, 29 Apr 2020 14:24:00 +0800
X-Gmail-Original-Message-ID: <CAGb2v65rRbRpUTdkTF3hd5LnLQQt19YVOyVzM5te5XNVhQQH=A@mail.gmail.com>
Message-ID: <CAGb2v65rRbRpUTdkTF3hd5LnLQQt19YVOyVzM5te5XNVhQQH=A@mail.gmail.com>
Subject: Re: [linux-sunxi] Re: Audio sound card name [was [PATCH 4/7] arm64:
 dts: allwinner: a64: Add HDMI audio]
To: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_232415_304437_F5B26B63 
X-CRM114-Status: GOOD (  24.67  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.66 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.66 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [wens213[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [wens213[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree <devicetree@vger.kernel.org>,
 Linux-ALSA <alsa-devel@alsa-project.org>, Takashi Iwai <tiwai@suse.com>,
 Jernej Skrabec <jernej.skrabec@siol.net>, Liam Girdwood <lgirdwood@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, linux-kernel <linux-kernel@vger.kernel.org>,
 Marcus Cooper <codekipper@gmail.com>,
 linux-sunxi <linux-sunxi@googlegroups.com>, Mark Brown <broonie@kernel.org>,
 Maxime Ripard <maxime@cerno.tech>, Jaroslav Kysela <perex@perex.cz>,
 Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCBBcHIgMjksIDIwMjAgYXQgMToxMSBBTSBSb2JpbiBNdXJwaHkgPHJvYmluLm11cnBo
eUBhcm0uY29tPiB3cm90ZToKPgo+IE9uIDIwMjAtMDQtMjggNTo0OSBwbSwgQ2zDqW1lbnQgUMOp
cm9uIHdyb3RlOgo+ID4gSGkgTWFyaywgUm9iLAo+ID4KPiA+IE9uIFR1ZSwgMjggQXByIDIwMjAg
YXQgMTg6MDQsIE1heGltZSBSaXBhcmQgPG1heGltZUBjZXJuby50ZWNoPiB3cm90ZToKPiA+Pgo+
ID4+IE9uIFR1ZSwgQXByIDI4LCAyMDIwIGF0IDEwOjU0OjAwQU0gKzAyMDAsIENsw6ltZW50IFDD
qXJvbiB3cm90ZToKPiA+Pj4gSGkgTWF4aW1lLAo+ID4+Pgo+ID4+PiBPbiBUdWUsIDI4IEFwciAy
MDIwIGF0IDEwOjAwLCBNYXhpbWUgUmlwYXJkIDxtYXhpbWVAY2Vybm8udGVjaD4gd3JvdGU6Cj4g
Pj4+Pgo+ID4+Pj4gT24gU3VuLCBBcHIgMjYsIDIwMjAgYXQgMDI6MDQ6MzlQTSArMDIwMCwgQ2zD
qW1lbnQgUMOpcm9uIHdyb3RlOgo+ID4+Pj4+IEZyb206IE1hcmN1cyBDb29wZXIgPGNvZGVraXBw
ZXJAZ21haWwuY29tPgo+ID4+Pj4+Cj4gPj4+Pj4gQWRkIGEgc2ltcGxlLXNvdW5kY2FyZCB0byBs
aW5rIGF1ZGlvIGJldHdlZW4gSERNSSBhbmQgSTJTLgo+ID4+Pj4+Cj4gPj4+Pj4gU2lnbmVkLW9m
Zi1ieTogSmVybmVqIFNrcmFiZWMgPGplcm5lai5za3JhYmVjQHNpb2wubmV0Pgo+ID4+Pj4+IFNp
Z25lZC1vZmYtYnk6IE1hcmN1cyBDb29wZXIgPGNvZGVraXBwZXJAZ21haWwuY29tPgo+ID4+Pj4+
IFNpZ25lZC1vZmYtYnk6IENsw6ltZW50IFDDqXJvbiA8cGVyb24uY2xlbUBnbWFpbC5jb20+Cj4g
Pj4+Pj4gLS0tCj4gPj4+Pj4gICBhcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGkt
YTY0LmR0c2kgfCAyMSArKysrKysrKysrKysrKysrKysrCj4gPj4+Pj4gICAxIGZpbGUgY2hhbmdl
ZCwgMjEgaW5zZXJ0aW9ucygrKQo+ID4+Pj4+Cj4gPj4+Pj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJt
NjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1hNjQuZHRzaSBiL2FyY2gvYXJtNjQvYm9vdC9k
dHMvYWxsd2lubmVyL3N1bjUwaS1hNjQuZHRzaQo+ID4+Pj4+IGluZGV4IGU1NmUxZTNkNGI3My4u
MDhhYjZiNWU3MmE1IDEwMDY0NAo+ID4+Pj4+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxs
d2lubmVyL3N1bjUwaS1hNjQuZHRzaQo+ID4+Pj4+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMv
YWxsd2lubmVyL3N1bjUwaS1hNjQuZHRzaQo+ID4+Pj4+IEBAIC0xMDIsNiArMTAyLDI1IEBACj4g
Pj4+Pj4gICAgICAgICAgICAgICAgc3RhdHVzID0gImRpc2FibGVkIjsKPiA+Pj4+PiAgICAgICAg
fTsKPiA+Pj4+Pgo+ID4+Pj4+ICsgICAgIGhkbWlfc291bmQ6IGhkbWktc291bmQgewo+ID4+Pj4+
ICsgICAgICAgICAgICAgY29tcGF0aWJsZSA9ICJzaW1wbGUtYXVkaW8tY2FyZCI7Cj4gPj4+Pj4g
KyAgICAgICAgICAgICBzaW1wbGUtYXVkaW8tY2FyZCxmb3JtYXQgPSAiaTJzIjsKPiA+Pj4+PiAr
ICAgICAgICAgICAgIHNpbXBsZS1hdWRpby1jYXJkLG5hbWUgPSAiYWxsd2lubmVyLGhkbWkiOwo+
ID4+Pj4KPiA+Pj4+IEknbSBub3Qgc3VyZSB3aGF0IHRoZSB1c3VhbCBjYXJkIG5hbWUgc2hvdWxk
IGJlIGxpa2UgdGhvdWdoLiBJIHdvdWxkIGFzc3VtZSB0aGF0Cj4gPj4+PiB0aGlzIHNob3VsZCBi
ZSBzb21ldGhpbmcgc3BlY2lmaWMgZW5vdWdoIHNvIHRoYXQgeW91J3JlIGFibGUgdG8gZGlmZmVy
ZW50aWF0ZQo+ID4+Pj4gYmV0d2VlbiBib2FyZHMgLyBTb0Mgc28gdGhhdCB0aGUgdXNlcnNwYWNl
IGNhbiBjaG9vc2UgYSBkaWZmZXJlbnQgY29uZmlndXJhdGlvbgo+ID4+Pj4gYmFzZWQgb24gaXQ/
Cj4gPj4+Cj4gPj4+IEkgcmVhbGx5IGRvbid0IGtub3cgd2hhdCB3ZSBzaG91bGQgdXNlIGhlcmUs
Cj4gPj4+IEkganVzdCBoYXZlIGEgbG9vayBhdCBvdGhlciBTb0M6Cj4gPj4+IHJrMzMyODogIkhE
TUkiCj4gPj4+IHJrMzM5OTogImhkbWktc291bmQiCj4gPj4+IHI4YTc3NGMwLWNhdDg3NDogIkNB
VDg3NCBIRE1JIHNvdW5kIgo+ID4+Pgo+ID4+PiBCdXQgbWF5YmUgaXQncyB0aW1lIHRvIGludHJv
ZHVjZSBwcm9wZXIgbmFtZToKPiA+Pj4gV2hhdCBhYm91dCA6Cj4gPj4+IHBhdAo+ID4+PiBzdW41
MGktaDYtaGRtaQo+ID4+Cj4gPj4gSXQncyBwcmV0dHkgbXVjaCB3aGF0IHdlJ3ZlIGJlZW4gdXNp
bmcgZm9yIHRoZSBvdGhlciBzb3VuZCBjYXJkcyB3ZSBoYXZlLCBzbyBpdAo+ID4+IG1ha2VzIHNl
bnNlIHRvIG1lLgo+ID4KPiA+IEkgaGF2ZSBhIHF1ZXN0aW9uIHJlZ2FyZGluZyB0aGUgc2ltcGxl
LWF1ZGlvLWNhcmQsbmFtZS4KPiA+IEluIHRoaXMgcGF0Y2gsIEkgd291bGQgbGlrZSB0byBpbnRy
b2R1Y2UgYSBzaW1wbGUtYXVkaW8tY2FyZCBmb3IgdGhlCj4gPiBBbGx3aW5uZXIgQTY0IEhETUku
Cj4gPgo+ID4gV2hhdCBzaG91bGQgYmUgdGhlIHByZWZlcnJlZCBuYW1lIGZvciB0aGlzIHNvdW5k
IGNhcmQ/Cj4gPiAic3VuNTBpLWE2NC1oZG1pIiA/ICJhbGx3aW5uZXIsIHN1bjUwaS1hNjQtaGRt
aSIgPwo+Cj4gSSBjYW4gYXQgbGVhc3Qgc3BlYWsgZm9yIFJLMzMyOCwgYW5kIHRoZSByZWFzb25p
bmcgdGhlcmUgd2FzIHRoYXQgYXMgdGhlCj4gdXNlciBsb29raW5nIGF0IHdoYXQgYGFwbGF5IC1s
YCBzYXlzLCBJIGRvbid0IGdpdmUgYSBob290IGFib3V0IHdoYXQgdGhlCj4gU29DIG1heSBiZSBj
YWxsZWQsIEkgc2VlIHR3byBjYXJkcyBhbmQgSSB3YW50IHRvIGtub3csIHdpdGggdGhlIGxlYXN0
Cj4gYW1vdW50IG9mIHVuY2VydGFpbnR5LCB3aGljaCBvbmUgd2lsbCBtYWtlIHRoZSBzb3VuZCBj
b21lIG91dCBvZiB0aGUKPiBwb3J0IHRoYXQncyBsYWJlbGxlZCAiSERNSSIgb24gdGhlIGJveCA7
KQoKSSBhZ3JlZS4gVGhlIHVzZXIgcmVhbGx5IGRvZXNuJ3QgY2FyZSB3aGF0IFNvQyB0aGUgc3lz
dGVtIHVzZXMuIFRoZSBvbmx5CnJlYWwgcmVxdWlyZW1lbnQgaXMgdG8gYmUgYWJsZSB0byB0ZWxs
IHdoaWNoIG91dHB1dCB0aGUgY2FyZCBpcyByZWxhdGVkCnRvLCBpLmUuIGlzIGl0IG9uYm9hcmQg
b3IgYW4gZXh0ZXJuYWwgREFDLCBpcyBpdCBhbmFsb2cgb3IgSERNSSwgZXRjLi4KCkNoZW5ZdQoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJt
LWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtl
cm5lbAo=
