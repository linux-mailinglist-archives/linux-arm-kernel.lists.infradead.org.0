Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E9C085B20
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 08:58:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=05ECxr4pU8RHLMz7WOeO/A2BjsMlzS3AUFu5jp5ggCA=; b=XNWwufjccnOop6
	BT0tsmTtAp7Pc+OAPl9+ELDcVesz/MgBtlpr1ykPX1vtV7bE1NBSW6vnV8Bg3t23PpZ2Bv36WJoAn
	TzBXua5Xp0ivzKG0g/7axs6HG70sk1EAU5AtIp36Uq3Uxh3BcmsozNfFW/5w8EyvN3i/ZpO9ZSLaE
	pO7CLszo8LOqWrETaqYUBM9FcgXs4Eh9ZXR39GfxYria5XiTnRUcmp60ZPSaSAAMQHdObhWtkhd/I
	vkLDnD4bGfSiqiqunPFCwtFMDLUDDBi9ct7Md4J4IaVnOXgWQkqMLFbalh2RUswKxrxTs6t1Pl4Ya
	xfz56vqHCDnT0Z+9RY7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvcN9-0004xm-6E; Thu, 08 Aug 2019 06:58:03 +0000
Received: from mail-ed1-f67.google.com ([209.85.208.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvcMT-0004xJ-7F
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 06:57:23 +0000
Received: by mail-ed1-f67.google.com with SMTP id z51so1960012edz.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 07 Aug 2019 23:57:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=iMignKAyhbWHT1jXqVwb/MSABj/eXXgtJ6LwwUsHzCg=;
 b=GKeiOVGl33TaLuLaadJQINizfcw4TrQ/t/FszASrsqbSWAuiTdMl3uuzGZemsJdcWo
 x7T/AtD9gpcq7SpKUL9DUFGXCxKEAY74L0Gya+QA/+NxKkLlwTYcxDRSr12G/0sEH2VH
 OsYNpMddgeflI03FzmvBd4UP9UlDVd5mU/RIBJ2XLrXbaOSN7xQQ3vtvIJwnS0uP3Xl8
 7KtGt+Wuv+X0bgYBIiqrM3mdKAcVhaAu1hQjscNdg73VHAzNOebht6bqB0WYBS16NVQy
 KoP+zHOY2BOV5a3Gw03WLPvKbRGAEDjCP9tauMYMjwogJrzaJQGkmv0AgLkJfbI8KYLZ
 Sa0Q==
X-Gm-Message-State: APjAAAUThX7l64EgOsZH2tGCB1MrCVDyJtGErv7tz6r/eMVWMx2/dZLA
 HYulnGM6y42eVnUsSXkVqYdlsiXe/N0=
X-Google-Smtp-Source: APXvYqw+RnTYZ1M/Rl12ccdDxnUfVhzHqzuPTDgdeGXAAs0ip2LAkVLrLEh5T4mntBTlOvVQMq4OLA==
X-Received: by 2002:aa7:d5cf:: with SMTP id d15mr14116143eds.67.1565247438898; 
 Wed, 07 Aug 2019 23:57:18 -0700 (PDT)
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com.
 [209.85.128.52])
 by smtp.gmail.com with ESMTPSA id w24sm21833150edb.90.2019.08.07.23.57.17
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Wed, 07 Aug 2019 23:57:18 -0700 (PDT)
Received: by mail-wm1-f52.google.com with SMTP id 10so1232861wmp.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 07 Aug 2019 23:57:17 -0700 (PDT)
X-Received: by 2002:a7b:c051:: with SMTP id u17mr2352966wmc.25.1565247437688; 
 Wed, 07 Aug 2019 23:57:17 -0700 (PDT)
MIME-Version: 1.0
References: <20190727210307.17607-1-sunil@medhas.org>
 <CAGb2v66S1+CSn=CYwZQOP8V+ZL+D9ayf6cvidzK5ENXOqKRGew@mail.gmail.com>
 <CAKQ8BtjLmhDgA8woY5NqaifODLUh_w_K4QYOUuqc4Six5Amerg@mail.gmail.com>
 <fd19b2e3-e340-f4fd-a320-1cfc45964f5b@medhas.org>
 <CAGb2v66w6y_0NLcT=WminsgK=QXpUPVnMWdCotMmgM1vgPByxw@mail.gmail.com>
 <de875c31-6cb3-8975-ac3d-de4ab3a851bd@medhas.org>
 <1955D9AD572C4F57A2D66B15EB8CF79C@GirolesWin7>
 <CAGb2v67oT0OV9p+KffBDFGz5BN5zR7=DhYLStwkagY=TXkskQA@mail.gmail.com>
 <20190807120104.ssj5cvx4hwicufrv@flea>
 <CAGb2v66vcQxjoi-0hhCOesT59Loo7Bw5M9fX8eCBWv-wM1CnoA@mail.gmail.com>
 <20190807144533.bbgtmkva34su7c5v@flea>
 <CAGb2v66EjQ-_QNsJ+xR0LcR983whU-hF9SZ2dSX_i5v7qcEyww@mail.gmail.com>
 <70322b1b-2ee2-89c7-96f9-0d2dba4e0d64@medhas.org>
In-Reply-To: <70322b1b-2ee2-89c7-96f9-0d2dba4e0d64@medhas.org>
From: Chen-Yu Tsai <wens@csie.org>
Date: Thu, 8 Aug 2019 14:57:04 +0800
X-Gmail-Original-Message-ID: <CAGb2v67SphwRzRgXKmNpkUEArkvHXCcfBgw44PktSve9DqKfFA@mail.gmail.com>
Message-ID: <CAGb2v67SphwRzRgXKmNpkUEArkvHXCcfBgw44PktSve9DqKfFA@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: dts: allwinner: a64: Enable eMMC on
 A64-OLinuXino
To: Sunil Mohan Adapa <sunil@medhas.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_235721_277375_11CD2FCD 
X-CRM114-Status: GOOD (  27.98  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.67 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (wens213[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wens213[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.67 listed in wl.mailspike.net]
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
Cc: Maxime Ripard <maxime.ripard@bootlin.com>,
 Martin Ayotte <martinayotte@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCBBdWcgOCwgMjAxOSBhdCAyOjI1IFBNIFN1bmlsIE1vaGFuIEFkYXBhIDxzdW5pbEBt
ZWRoYXMub3JnPiB3cm90ZToKPgo+Cj4KPiBPbiAwNy8wOC8xOSAxMDoxMiBwbSwgQ2hlbi1ZdSBU
c2FpIHdyb3RlOgo+ID4gT24gV2VkLCBBdWcgNywgMjAxOSBhdCAxMDo0NSBQTSBNYXhpbWUgUmlw
YXJkIDxtYXhpbWUucmlwYXJkQGJvb3RsaW4uY29tPiB3cm90ZToKPiA+Pgo+ID4+IEhpLAo+ID4+
Cj4gPj4gT24gV2VkLCBBdWcgMDcsIDIwMTkgYXQgMDg6MDk6MTlQTSArMDgwMCwgQ2hlbi1ZdSBU
c2FpIHdyb3RlOgo+ID4+PiBPbiBXZWQsIEF1ZyA3LCAyMDE5IGF0IDg6MDEgUE0gTWF4aW1lIFJp
cGFyZCA8bWF4aW1lLnJpcGFyZEBib290bGluLmNvbT4gd3JvdGU6Cj4gPj4+Pgo+ID4+Pj4gT24g
VHVlLCBBdWcgMDYsIDIwMTkgYXQgMDI6MjU6MTdQTSArMDgwMCwgQ2hlbi1ZdSBUc2FpIHdyb3Rl
Ogo+ID4+Pj4+IE9uIE1vbiwgQXVnIDUsIDIwMTkgYXQgODo1OCBQTSBNYXJ0aW4gQXlvdHRlIDxt
YXJ0aW5heW90dGVAZ21haWwuY29tPiB3cm90ZToKPiA+Pj4+Pj4KPiA+Pj4+Pj4gRmluZSBmb3Ig
bWUgdG9vLgo+ID4+Pj4+Pgo+ID4+Pj4+PiBUaGFua3MgLgo+ID4+Pj4+Pgo+ID4+Pj4+PiAtLS0t
LU1lc3NhZ2UgZCdvcmlnaW5lLS0tLS0KPiA+Pj4+Pj4gRGUgOiBTdW5pbCBNb2hhbiBBZGFwYSBb
bWFpbHRvOnN1bmlsQG1lZGhhcy5vcmddCj4gPj4+Pj4+IEVudm95w6kgOiBNb25kYXksIEF1Z3Vz
dCAwNSwgMjAxOSAxOjI1IEFNCj4gPj4+Pj4+IMSEIDogQ2hlbi1ZdSBUc2FpCj4gPj4+Pj4+IENj
IDogTWF4aW1lIFJpcGFyZDsgTWFydGluIEF5b3R0ZTsgbGludXgtYXJtLWtlcm5lbAo+ID4+Pj4+
PiBPYmpldCA6IFJlOiBbUEFUQ0ggdjJdIGFybTY0OiBkdHM6IGFsbHdpbm5lcjogYTY0OiBFbmFi
bGUgZU1NQyBvbgo+ID4+Pj4+PiBBNjQtT0xpbnVYaW5vCj4gPj4+Pj4+Cj4gPj4+Pj4+IE9uIDA0
LzA4LzE5IDg6MzMgcG0sIENoZW4tWXUgVHNhaSB3cm90ZToKPiA+Pj4+Pj4+IE9uIEZyaSwgQXVn
IDIsIDIwMTkgYXQgMjo0NyBBTSBTdW5pbCBNb2hhbiBBZGFwYSA8c3VuaWxAbWVkaGFzLm9yZz4g
d3JvdGU6Cj4gPj4+Pj4+Pj4KPiA+Pj4+Pj4+PiBPbiAwMS8wOC8xOSA2OjQ5IGFtLCBNYXJ0aW4g
QXlvdHRlIHdyb3RlOgo+ID4+Pj4+Pj4+PiBJZiBteSBTT0IgY291bGQgaGVscCBoZXJlLCBJIGRv
bid0IG1pbmQgc2luY2UgSSd2ZSBkb25lIHRoZSBjb21taXQKPiA+Pj4+Pj4+Pj4gbW9yZSB0aGFu
IGEgeWVhciBhZ28gZm9yIEFybWJpYW4gLi4uCj4gPj4+Pj4+Pj4+Cj4gPj4+Pj4+Pj4+IFNpZ25l
ZC1vZmYtYnk6IE1hcnRpbiBBeW90dGUgPG1hcnRpbmF5b3R0ZUBnbWFpLmNvbT4KPiA+Pj4+Pj4+
Pj4gVGVzdGVkLWJ5OiBNYXJ0aW4gQXlvdHRlIDxtYXJ0aW5heW90dGVAZ21haS5jb20+Cj4gPj4+
Pj4+Pj4gZ21haS5jb20gaXMgbGlrZWx5IGEgdHlwby4KPiA+Pj4+Pj4+Pgo+ID4+Pj4+Pj4+PiBP
biBXZWQsIEp1bCAzMSwgMjAxOSBhdCAxMDo0MiBQTSBDaGVuLVl1IFRzYWkgPHdlbnNAY3NpZS5v
cmcKPiA+Pj4+Pj4+Pj4KPiA+Pj4+Pj4+Pj4+IFRoYW5rcy4gVGhlIHBhdGNoIGxvb2tzIGdvb2Qg
b3ZlcmFsbC4gVGhlIGF1dGhvcnNoaXAgaXMgYSBsaXR0bGUKPiA+Pj4+Pj4+Pj4+IGNvbmZ1c2lu
ZyB0aG91Z2guIElmIGl0IHdhcyBpbml0aWFsbHkgZG9uZSBieSBNYXJ0aW4gKENDLWVkKSwgdGhl
bgo+ID4+Pj4+Pj4+Pj4gaGUgc2hvdWxkIGJlIHRoZSBhdXRob3IsIGFuZCB3ZSBzaG91bGQgZ2V0
IGhpcyBTaWduZWQtb2ZmLWJ5IGlmCj4gPj4+Pj4+Pj4+PiBwb3NzaWJsZS4KPiA+Pj4+Pj4+Pgo+
ID4+Pj4+Pj4+IE1hcnRpbiBpcyBpbmRlZWQgdGhlIG9yaWdpbmFsIGF1dGhvciBvZiB0aGUgcGF0
Y2guIFRoYW5rIHlvdSBmb3IKPiA+Pj4+Pj4gcmV2aWV3aW5nLgo+ID4+Pj4+Pj4KPiA+Pj4+Pj4+
IEknZCBsaWtlIHRvIGFwcGx5IHRoaXMgcGF0Y2ggd2l0aCBNYXJ0aW4gYXMgdGhlIGF1dGhvciwg
aWYgdGhhdCdzIE9LIHdpdGgKPiA+Pj4+Pj4geW91Cj4gPj4+Pj4+PiBib3RoPwo+ID4+Pj4+Pgo+
ID4+Pj4+PiBUaGF0IGlzIGNvbXBsZXRlbHkgb2theSB3aXRoIG1lLgo+ID4+Pj4+Cj4gPj4+Pj4g
QXBwbGllZCBmb3IgNS40Lgo+ID4+Pj4+Cj4gPj4+Pj4gSSByZW9yZGVyZWQgdGhlIHRhZ3Mgc28g
dGhleSBtYWtlIG1vcmUgc2Vuc2U6Cj4gPj4+Pj4KPiA+Pj4+PiBodHRwczovL2dpdC5rZXJuZWwu
b3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC9zdW54aS9saW51eC5naXQvY29tbWl0Lz9oPXN1
bnhpL2R0LWZvci01LjQmaWQ9MDgzNDg4NzczMmRmNWFmNDFiNTliMmU0ZDUzMGZjMWY1NDc4OTY1
Zgo+ID4+Pj4KPiA+Pj4+IFNvcnJ5IGZvciBiZWluZyBsYXRlIG9uIHRoaXMsIGJ1dCBpdCBsb29r
cyBsaWtlIHRoZSBlTU1DLCBOQU5EIGFuZCBTUEkKPiA+Pj4+IHBpbnMgYXJlIGNvbmZsaWN0aW5n
IG9uIHRoZSBBNjQtT2xpbnV4aW5vIGRlc2lnbi4KPiA+Pj4+Cj4gPj4+PiBUaGVyZSdzIG5vIGNv
bmZpZ3VyYXRpb24gd2l0aCBhIE5BTkQsIHNvIHdlIGRvbid0IHJlYWxseSBuZWVkIHRvIHdvcnJ5
Cj4gPj4+PiBhYm91dCB0aGF0LCBidXQgaWYgd2UgbWVyZ2UgdGhpcyBpbiB0aGUgbWFpbiBEVCwg
d2UnbGwgcHJldmVudCBhbnlvbmUKPiA+Pj4+IGZyb20gdXNpbmcgdGhhdCBEVCBvbiBhbiBvbGlu
dXhpbm8gd2l0aCBhIFNQSSBmbGFzaC4KPiA+Pj4+Cj4gPj4+PiBJIHRoaW5rIHdlIHNob3VsZCBq
dXN0IGNyZWF0ZSBlbW1jIGFuZCBTUEktZmxhc2ggdmFyaWFudHMgb2YgdGhhdCBEVC4KPiA+Pj4K
PiA+Pj4gQWN0dWFsbHkgdGhleSBhcmVuJ3QuIE9saW1leCBzcGVjaWZpY2FsbHkgdXNlcyBlTU1D
IG1vZHVsZXMgdGhhdCBkb24ndAo+ID4+PiB1c2UgdGhlIGRhdGEgc3Ryb2JlIGxpbmUsIHNvIFNQ
SSBjYW4gYmUgdXNlZCB0b2dldGhlci4KPiA+Pgo+ID4+IEFoLCByaWdodC4KPiA+Pgo+ID4+IFN0
aWxsLCB0aGlzIGNyZWF0ZXMgYSBwcmVjZWRlbnQgdGhhdCBJJ20gbm90IHJlYWxseSBjb21mb3J0
YWJsZQo+ID4+IHdpdGguIFRocmVlIGFjdHVhbGx5Lgo+ID4+Cj4gPj4gTWVyZ2luZyB0aGlzIGlu
IHRoZSBtYWluIERUIG1lYW5zIHRocmVlIHRoaW5nczoKPiA+PiAgIC0gV2UncmUgbm90IGNvbnNp
c3RlbnQgYW55bW9yZSwgaW5jbHVkaW5nIHdpdGhpbiB0aGUgb2xpbnV4aW5vCj4gPj4gICAgIGJv
YXJkcyBvbmx5LiBBMjAgT2xpbnV4aW5vIGlzIHByZXR0eSBtdWNoIGluIHRoZSBzYW1lIHNpdHVh
dGlvbiwKPiA+PiAgICAgeWV0IHdlIGRlYWx0IHdpdGggaXQgZGlmZmVyZW50bHkuCj4gPj4gICAt
IFRoaXMgbWVhbnMgdGhhdCB0aGlzIHdpbGwgY3JlYXRlIGEgc3B1cmlvdXMgZGV2aWNlIGFuZCBy
ZXBvcnQKPiA+PiAgICAgZXJyb3JzIGluIHRoZSBrZXJuZWwgbWVzc2FnZSBhbmQgd2hlbmV2ZXIg
c29tZW9uZSB3aWxsIHRyeSB0bwo+ID4+ICAgICBhY2Nlc3MgdGhlIGRldmljZSBvbiBib2FyZHMg
dGhhdCBkb24ndCBoYXZlIGl0IHdpcmVkLiBUaGlzCj4gPj4gICAgIHNob3VsZG4ndCBoYXBwZW4g
YW5kIHdlIHJlYWxseSBzaG91bGRuJ3QgZXhwb3NlIGRldmljZXMgdGhhdCBqdXN0Cj4gPj4gICAg
IGFyZW4ndCB0aGVyZSwganVzdCBsaWtlIHlvdSBkb24ndCBoYXZlIGFsbCB0aGUgZGV2aWNlcyB0
aGF0IGFyZQo+ID4+ICAgICBub3QgY29ubmVjdGVkIG9uIHlvdXIgVVNCIGNvbm5lY3Rvci4KPiA+
PiAgIC0gRmluYWxseSwgdGhpcyBtZWFucyB0aGF0IGluIG9yZGVyIHRvIGtlZXAgaXQgc29tZXdo
YXQgY29uc2lzdGVudCwKPiA+PiAgICAgd2Ugd291bGQgaGF2ZSB0byBtZXJnZSB0aGUgU1BJIGZs
YXNoIGluIHRoZSBtYWluIERUIHRvby4gVGhpcyB3aWxsCj4gPj4gICAgIHByZXZlbnQgcGVvcGxl
IHdpdGhvdXQgYSBTUEkgZmxhc2ggdG8gdXNlIHRoZSBTUEkgc2lnbmFscyBvbiB0aGUKPiA+PiAg
ICAgVUVYVCBjb25uZWN0b3IgZm9yIHNvbWV0aGluZyBlbHNlLCB3aGljaCBhZ2FpbiBnb2VzIGFn
YWluc3QgdGhlCj4gPj4gICAgIHBvbGljeSB3ZSd2ZSBoYWQgZm9yIGJhc2ljYWxseSBhbnkgb3Ro
ZXIgYm9hcmQuCj4gPgo+ID4gT0suIFNoYWxsIHdlIGJhY2sgaXQgb3V0IGFuZCBmaWd1cmUgb3V0
IHNvbWV0aGluZyBlbHNlPwo+Cj4gSSBjYW4gdHJ5IHRvIGhlbHAgd2l0aCBhbHRlcm5hdGUgaW1w
bGVtZW50YXRpb24gd2l0aCBzb21lIGd1aWRhbmNlLiBJCj4gY2FuIGFsc28gdGVzdCBhbnkgcGF0
Y2hlcyBvbiBhbiBBNjQtT0xpbnVYaW5vIG1vZGVsIHdpdGggZU1NQy4gU28sIGRvIHdlCj4gY3Jl
YXRlIGEgbmV3IC1lbW1jLmR0cyBsaWtlIGluIGNhc2Ugb2YgQTIwIE9MaW51WGlubz8KPgo+IEJU
VywgYSBiYXNpYyBxdWVzdGlvbjogaG93IGRvZXMgdS1ib290IGtub3cgd2hpY2ggdmFyaWFudCBv
ZiBkdGIgKHdpdGgKPiAtZW1tYyBvciB3aXRob3V0KSBpdCBoYXMgbG9hZCBiZWZvcmUgYm9vdGlu
ZyBMaW51eD8gRG9lcyB0aGlzIG5lZWQgdG8gYmUKPiBoYXJkY29kZWQgbm93IGludG8gdGhlIGJv
b3Qgc2NyaXB0PyBDdXJyZW50bHksIGluIERlYmlhbiB0aGUgRFRCIG5hbWUgaXMKPiBjaG9zZW4g
YnkgdS1ib290IGFuZCBub3QgcHJlc2VudCBpbiB0aGUgYm9vdCBzY3JpcHQuCgpUaGUgZGVmYXVs
dCBuYW1lIGlzIHNldCB1c2luZyBLY29uZmlnLiBJdCBpcyBwcmVzZW50IGluIHRoZSBwZXItYm9h
cmQKZGVmY29uZmlnIGZpbGVzLgoKQ2hlbll1CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1h
cm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
