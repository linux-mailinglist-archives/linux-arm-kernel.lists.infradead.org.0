Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7340384468
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 08:18:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=22zZIP0Vb3DIe7ptp2sbYqruKpp5axfDp2dYB9LECqs=; b=cHyFAVNUAqdx3+
	B5HchkzPg3kYaWjVmgCgC/c2dHsVLRXS8XISmEOyKgjEoWgrSKLIZo51EHZ4GkFwfVttDun0hKYGF
	AQKn9anPL+hRZynD8RpEXSNX1u1sEhMdPjCMIvsUpnn5btz6zxtS76SlF8AfZEWNhiugzT6gFH0Ht
	lZI9MbWbvNe/nnh0v08imUouHBT8mi8LNkzXrgby2xC80/imQM2eMtfTuWiNuuY2e7Ytn1XKOlp6o
	r57VyaPCRLZ//hotE8ntB7EpKdEIDHRRgKEUX8UuA3QUan1gChilfa7kV3/4G+mcef9d9eHRDWWRI
	SF2R9Cz0roXwIRHGL9sg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvFHP-0008Tm-RP; Wed, 07 Aug 2019 06:18:35 +0000
Received: from mail-ed1-f65.google.com ([209.85.208.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvFHG-0008TP-Hy
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 06:18:28 +0000
Received: by mail-ed1-f65.google.com with SMTP id w13so85047726eds.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 06 Aug 2019 23:18:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=MaPmvShM+LYGJb6aisj822bMcF0vqn/GxMk22lK7XWM=;
 b=DREw84kLsSHYXOV44IuBMg4S+vhWpYO1VrqpPQW+haUT6ZmCZLxZbaZUnjcr7xc62r
 DIzANsCGynXCHtFOWbz4HzmALKbsHlkMsLGdrCxs8JPiFnIuude2dfO9BZrMLRYB5p3r
 hhuQyiG+oF8DkFKdHvINLl2V/vq2LGSA3+XlUtn4+sNH0v6px2Y1hvEcA+RsZ3v76TD/
 BlMiUUXjw4bk1KGI/pE6sRXGgDrgPFnVPaCXiRx55sjGly4ag6UQWkBImxyVyN5vnNkz
 cTf0B7BieYtDTSL2JBKyKnBh64Q+Mo3h5Rb/lDvFtvLGnMpjEuUUP1rrSu9th3/Sz95i
 wl3Q==
X-Gm-Message-State: APjAAAWKkRYE7WNIfsu2tleka2lh0qSeqQ7mgeBZsVK25Rs25ZgEy9zH
 AYuOsp0dxgPUSpFp5FViaPanH5KaBGU=
X-Google-Smtp-Source: APXvYqywIMqaHDjT7SV/JRiGzx0FBJ0BrVCZZWSePvZVnltTpPNwv7Tvecjb+Wtq1ZHYv4kBGLIIkg==
X-Received: by 2002:a50:b66f:: with SMTP id c44mr7943023ede.171.1565158703430; 
 Tue, 06 Aug 2019 23:18:23 -0700 (PDT)
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com.
 [209.85.128.50])
 by smtp.gmail.com with ESMTPSA id i6sm21113734eda.79.2019.08.06.23.18.22
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Tue, 06 Aug 2019 23:18:23 -0700 (PDT)
Received: by mail-wm1-f50.google.com with SMTP id v15so80525058wml.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 06 Aug 2019 23:18:22 -0700 (PDT)
X-Received: by 2002:a1c:618b:: with SMTP id v133mr2553919wmb.47.1565158702418; 
 Tue, 06 Aug 2019 23:18:22 -0700 (PDT)
MIME-Version: 1.0
References: <20190727210307.17607-1-sunil@medhas.org>
 <CAGb2v66S1+CSn=CYwZQOP8V+ZL+D9ayf6cvidzK5ENXOqKRGew@mail.gmail.com>
 <CAKQ8BtjLmhDgA8woY5NqaifODLUh_w_K4QYOUuqc4Six5Amerg@mail.gmail.com>
 <fd19b2e3-e340-f4fd-a320-1cfc45964f5b@medhas.org>
 <CAGb2v66w6y_0NLcT=WminsgK=QXpUPVnMWdCotMmgM1vgPByxw@mail.gmail.com>
 <de875c31-6cb3-8975-ac3d-de4ab3a851bd@medhas.org>
 <1955D9AD572C4F57A2D66B15EB8CF79C@GirolesWin7>
 <CAGb2v67oT0OV9p+KffBDFGz5BN5zR7=DhYLStwkagY=TXkskQA@mail.gmail.com>
 <AD4CCAA0C22145CFB1E662CF924CB239@GirolesWin7>
In-Reply-To: <AD4CCAA0C22145CFB1E662CF924CB239@GirolesWin7>
From: Chen-Yu Tsai <wens@csie.org>
Date: Wed, 7 Aug 2019 14:18:09 +0800
X-Gmail-Original-Message-ID: <CAGb2v66EDX1aL+rPrVMUnmgK8PECi1P5CS7749b2=8gTn5vdiA@mail.gmail.com>
Message-ID: <CAGb2v66EDX1aL+rPrVMUnmgK8PECi1P5CS7749b2=8gTn5vdiA@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: dts: allwinner: a64: Enable eMMC on
 A64-OLinuXino
To: Martin Ayotte <martinayotte@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_231826_593201_EA0F17BD 
X-CRM114-Status: GOOD (  18.36  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.65 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.65 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (wens213[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wens213[at]gmail.com)
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
 Sunil Mohan Adapa <sunil@medhas.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCBBdWcgNiwgMjAxOSBhdCA4OjQ5IFBNIE1hcnRpbiBBeW90dGUgPG1hcnRpbmF5b3R0
ZUBnbWFpbC5jb20+IHdyb3RlOgo+Cj4gSnVzdCB0byBsZXQgeW91IGtub3cgOiB0eXBvIGluIG15
IGVtYWlsIHN0aWxsIHRoZXJlLi4uCgpEdWguIEZpeGVkIGl0IG5vdy4KCmh0dHBzOi8vZ2l0Lmtl
cm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L3N1bnhpL2xpbnV4LmdpdC9jb21taXQv
P2g9c3VueGkvZHQtZm9yLTUuNCZpZD04ZDMwNzFmM2U4NTg5NGJlMzVhMWIzNWJjZjZmZGVmOTcw
YzgxMDE4Cgo+IC0tLS0tTWVzc2FnZSBkJ29yaWdpbmUtLS0tLQo+IERlIDogQ2hlbi1ZdSBUc2Fp
IFttYWlsdG86d2Vuc0Bjc2llLm9yZ10KPiBFbnZvecOpIDogVHVlc2RheSwgQXVndXN0IDA2LCAy
MDE5IDI6MjUgQU0KPiDDgCA6IE1hcnRpbiBBeW90dGUKPiBDYyA6IFN1bmlsIE1vaGFuIEFkYXBh
OyBNYXhpbWUgUmlwYXJkOyBsaW51eC1hcm0ta2VybmVsCj4gT2JqZXQgOiBSZTogW1BBVENIIHYy
XSBhcm02NDogZHRzOiBhbGx3aW5uZXI6IGE2NDogRW5hYmxlIGVNTUMgb24KPiBBNjQtT0xpbnVY
aW5vCj4KPiBPbiBNb24sIEF1ZyA1LCAyMDE5IGF0IDg6NTggUE0gTWFydGluIEF5b3R0ZSA8bWFy
dGluYXlvdHRlQGdtYWlsLmNvbT4gd3JvdGU6Cj4gPgo+ID4gRmluZSBmb3IgbWUgdG9vLgo+ID4K
PiA+IFRoYW5rcyAuCj4gPgo+ID4gLS0tLS1NZXNzYWdlIGQnb3JpZ2luZS0tLS0tCj4gPiBEZSA6
IFN1bmlsIE1vaGFuIEFkYXBhIFttYWlsdG86c3VuaWxAbWVkaGFzLm9yZ10KPiA+IEVudm95w6kg
OiBNb25kYXksIEF1Z3VzdCAwNSwgMjAxOSAxOjI1IEFNCj4gPiDDgCA6IENoZW4tWXUgVHNhaQo+
ID4gQ2MgOiBNYXhpbWUgUmlwYXJkOyBNYXJ0aW4gQXlvdHRlOyBsaW51eC1hcm0ta2VybmVsCj4g
PiBPYmpldCA6IFJlOiBbUEFUQ0ggdjJdIGFybTY0OiBkdHM6IGFsbHdpbm5lcjogYTY0OiBFbmFi
bGUgZU1NQyBvbgo+ID4gQTY0LU9MaW51WGlubwo+ID4KPiA+IE9uIDA0LzA4LzE5IDg6MzMgcG0s
IENoZW4tWXUgVHNhaSB3cm90ZToKPiA+ID4gT24gRnJpLCBBdWcgMiwgMjAxOSBhdCAyOjQ3IEFN
IFN1bmlsIE1vaGFuIEFkYXBhIDxzdW5pbEBtZWRoYXMub3JnPgo+IHdyb3RlOgo+ID4gPj4KPiA+
ID4+IE9uIDAxLzA4LzE5IDY6NDkgYW0sIE1hcnRpbiBBeW90dGUgd3JvdGU6Cj4gPiA+Pj4gSWYg
bXkgU09CIGNvdWxkIGhlbHAgaGVyZSwgSSBkb24ndCBtaW5kIHNpbmNlIEkndmUgZG9uZSB0aGUg
Y29tbWl0Cj4gPiA+Pj4gbW9yZSB0aGFuIGEgeWVhciBhZ28gZm9yIEFybWJpYW4gLi4uCj4gPiA+
Pj4KPiA+ID4+PiBTaWduZWQtb2ZmLWJ5OiBNYXJ0aW4gQXlvdHRlIDxtYXJ0aW5heW90dGVAZ21h
aS5jb20+Cj4gPiA+Pj4gVGVzdGVkLWJ5OiBNYXJ0aW4gQXlvdHRlIDxtYXJ0aW5heW90dGVAZ21h
aS5jb20+Cj4gPiA+PiBnbWFpLmNvbSBpcyBsaWtlbHkgYSB0eXBvLgo+ID4gPj4KPiA+ID4+PiBP
biBXZWQsIEp1bCAzMSwgMjAxOSBhdCAxMDo0MiBQTSBDaGVuLVl1IFRzYWkgPHdlbnNAY3NpZS5v
cmcKPiA+ID4+Pgo+ID4gPj4+PiBUaGFua3MuIFRoZSBwYXRjaCBsb29rcyBnb29kIG92ZXJhbGwu
IFRoZSBhdXRob3JzaGlwIGlzIGEgbGl0dGxlCj4gPiA+Pj4+IGNvbmZ1c2luZyB0aG91Z2guIElm
IGl0IHdhcyBpbml0aWFsbHkgZG9uZSBieSBNYXJ0aW4gKENDLWVkKSwgdGhlbgo+ID4gPj4+PiBo
ZSBzaG91bGQgYmUgdGhlIGF1dGhvciwgYW5kIHdlIHNob3VsZCBnZXQgaGlzIFNpZ25lZC1vZmYt
YnkgaWYKPiA+ID4+Pj4gcG9zc2libGUuCj4gPiA+Pgo+ID4gPj4gTWFydGluIGlzIGluZGVlZCB0
aGUgb3JpZ2luYWwgYXV0aG9yIG9mIHRoZSBwYXRjaC4gVGhhbmsgeW91IGZvcgo+ID4gcmV2aWV3
aW5nLgo+ID4gPgo+ID4gPiBJJ2QgbGlrZSB0byBhcHBseSB0aGlzIHBhdGNoIHdpdGggTWFydGlu
IGFzIHRoZSBhdXRob3IsIGlmIHRoYXQncyBPSwo+IHdpdGgKPiA+IHlvdQo+ID4gPiBib3RoPwo+
ID4KPiA+IFRoYXQgaXMgY29tcGxldGVseSBva2F5IHdpdGggbWUuCj4KPiBBcHBsaWVkIGZvciA1
LjQuCj4KPiBJIHJlb3JkZXJlZCB0aGUgdGFncyBzbyB0aGV5IG1ha2UgbW9yZSBzZW5zZToKPgo+
IGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L3N1bnhpL2xp
bnV4LmdpdC9jb21taXQvP2g9c3UKPiBueGkvZHQtZm9yLTUuNCZpZD0wODM0ODg3NzMyZGY1YWY0
MWI1OWIyZTRkNTMwZmMxZjU0Nzg5NjVmCj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFy
bS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
