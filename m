Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6978F84B3D
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 14:10:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qaIlzEBl+YzLAmpscgQKiROTH+6nY3YerAUzJOMd6p4=; b=AOX2V2A1dGzRVl
	47gYOPL418oZbNSYlizelhsGXu6ok8snFFhQxvOm9edj1fEY+skvxlDRlDA9Kw3XSNlN/JH2YcgfS
	oINZgZoye8kN1EaJu873m/aNrSJuU+mqymHZtlYmL36yjJEG9jNy5Up7vrd295zZWHNtU5KDb7swd
	baMkow3cgccB/ikSaPjNZ/oROujYC9dw51gkqMFRB+uRpgzEdUy3Gi2CqiDJysZ6avtFsd/PMhL6c
	OpktOV31WzjwVG5Hp5C8rNqjOvdd4lhqDZQ8XlQn4va0fNXL4WuDAyLOR7BwHjvTUqVI+HotEjfjZ
	Zeo/aaqI0RgFbnQuOgXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvKlQ-0006nb-Pa; Wed, 07 Aug 2019 12:09:57 +0000
Received: from mail-ed1-f67.google.com ([209.85.208.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvKl6-0006nH-Jl
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 12:09:38 +0000
Received: by mail-ed1-f67.google.com with SMTP id m10so85978559edv.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 07 Aug 2019 05:09:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=mGQFabcxbkM8eEaIcS0riTQDh6p2Z9dfO67fH+tY7AM=;
 b=dVJwR59s7svU3nzvBpJiKNyHVGt/GoHLSAtKBg00k46uIuqoCplhN05mpltIrJooyL
 8hjOvff+q+amvt9Cf7CleuWHc+iIvRL9uVv9DdF85q/Z51oiiK5wfxtqZldnl0fY5USk
 bJZFRPnCry5aRSkG411uYkzkCMAjY5AAEB1MRpNOy73D6FfDeOcwTEJCW49V+HDUmSMt
 L9E7UCoIZb9JJcTPyPzlh+wA1gcJJ8wdw2ILv7gVee+mAn2413qXuL4vsStxlGdy8pZ4
 FMHKbrIikzDK/Jx0MpnLJ5iFAw5bG8EINzQ5IYaTby0FC6ZHVJLmQC6P4iyLY7b2NtPX
 Qrjw==
X-Gm-Message-State: APjAAAVg8+dPQmobIqizVgiLvMMaMyhMVQfuO6GLFp/oc7FoUDX8m3Ab
 iF7Q6y112g52cNDSuPU1oeFJkgl7bYg=
X-Google-Smtp-Source: APXvYqx6izH4itb6fWP7KOEnrBudci56BZsiiryNSDaHpMY6BpsUlh1rN5H/di3ci2GFgNpjMlVofg==
X-Received: by 2002:a17:906:b34d:: with SMTP id
 cd13mr7973802ejb.107.1565179772728; 
 Wed, 07 Aug 2019 05:09:32 -0700 (PDT)
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com.
 [209.85.128.48])
 by smtp.gmail.com with ESMTPSA id c15sm3061967edf.37.2019.08.07.05.09.32
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Wed, 07 Aug 2019 05:09:32 -0700 (PDT)
Received: by mail-wm1-f48.google.com with SMTP id s15so58424498wmj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 07 Aug 2019 05:09:32 -0700 (PDT)
X-Received: by 2002:a7b:cc04:: with SMTP id f4mr10909677wmh.125.1565179771847; 
 Wed, 07 Aug 2019 05:09:31 -0700 (PDT)
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
In-Reply-To: <20190807120104.ssj5cvx4hwicufrv@flea>
From: Chen-Yu Tsai <wens@csie.org>
Date: Wed, 7 Aug 2019 20:09:19 +0800
X-Gmail-Original-Message-ID: <CAGb2v66vcQxjoi-0hhCOesT59Loo7Bw5M9fX8eCBWv-wM1CnoA@mail.gmail.com>
Message-ID: <CAGb2v66vcQxjoi-0hhCOesT59Loo7Bw5M9fX8eCBWv-wM1CnoA@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: dts: allwinner: a64: Enable eMMC on
 A64-OLinuXino
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_050936_652846_5E2B7840 
X-CRM114-Status: GOOD (  22.82  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.67 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.67 listed in wl.mailspike.net]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (wens213[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wens213[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Sunil Mohan Adapa <sunil@medhas.org>,
 Martin Ayotte <martinayotte@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCBBdWcgNywgMjAxOSBhdCA4OjAxIFBNIE1heGltZSBSaXBhcmQgPG1heGltZS5yaXBh
cmRAYm9vdGxpbi5jb20+IHdyb3RlOgo+Cj4gT24gVHVlLCBBdWcgMDYsIDIwMTkgYXQgMDI6MjU6
MTdQTSArMDgwMCwgQ2hlbi1ZdSBUc2FpIHdyb3RlOgo+ID4gT24gTW9uLCBBdWcgNSwgMjAxOSBh
dCA4OjU4IFBNIE1hcnRpbiBBeW90dGUgPG1hcnRpbmF5b3R0ZUBnbWFpbC5jb20+IHdyb3RlOgo+
ID4gPgo+ID4gPiBGaW5lIGZvciBtZSB0b28uCj4gPiA+Cj4gPiA+IFRoYW5rcyAuCj4gPiA+Cj4g
PiA+IC0tLS0tTWVzc2FnZSBkJ29yaWdpbmUtLS0tLQo+ID4gPiBEZSA6IFN1bmlsIE1vaGFuIEFk
YXBhIFttYWlsdG86c3VuaWxAbWVkaGFzLm9yZ10KPiA+ID4gRW52b3nDqSA6IE1vbmRheSwgQXVn
dXN0IDA1LCAyMDE5IDE6MjUgQU0KPiA+ID4gxIQgOiBDaGVuLVl1IFRzYWkKPiA+ID4gQ2MgOiBN
YXhpbWUgUmlwYXJkOyBNYXJ0aW4gQXlvdHRlOyBsaW51eC1hcm0ta2VybmVsCj4gPiA+IE9iamV0
IDogUmU6IFtQQVRDSCB2Ml0gYXJtNjQ6IGR0czogYWxsd2lubmVyOiBhNjQ6IEVuYWJsZSBlTU1D
IG9uCj4gPiA+IEE2NC1PTGludVhpbm8KPiA+ID4KPiA+ID4gT24gMDQvMDgvMTkgODozMyBwbSwg
Q2hlbi1ZdSBUc2FpIHdyb3RlOgo+ID4gPiA+IE9uIEZyaSwgQXVnIDIsIDIwMTkgYXQgMjo0NyBB
TSBTdW5pbCBNb2hhbiBBZGFwYSA8c3VuaWxAbWVkaGFzLm9yZz4gd3JvdGU6Cj4gPiA+ID4+Cj4g
PiA+ID4+IE9uIDAxLzA4LzE5IDY6NDkgYW0sIE1hcnRpbiBBeW90dGUgd3JvdGU6Cj4gPiA+ID4+
PiBJZiBteSBTT0IgY291bGQgaGVscCBoZXJlLCBJIGRvbid0IG1pbmQgc2luY2UgSSd2ZSBkb25l
IHRoZSBjb21taXQKPiA+ID4gPj4+IG1vcmUgdGhhbiBhIHllYXIgYWdvIGZvciBBcm1iaWFuIC4u
Lgo+ID4gPiA+Pj4KPiA+ID4gPj4+IFNpZ25lZC1vZmYtYnk6IE1hcnRpbiBBeW90dGUgPG1hcnRp
bmF5b3R0ZUBnbWFpLmNvbT4KPiA+ID4gPj4+IFRlc3RlZC1ieTogTWFydGluIEF5b3R0ZSA8bWFy
dGluYXlvdHRlQGdtYWkuY29tPgo+ID4gPiA+PiBnbWFpLmNvbSBpcyBsaWtlbHkgYSB0eXBvLgo+
ID4gPiA+Pgo+ID4gPiA+Pj4gT24gV2VkLCBKdWwgMzEsIDIwMTkgYXQgMTA6NDIgUE0gQ2hlbi1Z
dSBUc2FpIDx3ZW5zQGNzaWUub3JnCj4gPiA+ID4+Pgo+ID4gPiA+Pj4+IFRoYW5rcy4gVGhlIHBh
dGNoIGxvb2tzIGdvb2Qgb3ZlcmFsbC4gVGhlIGF1dGhvcnNoaXAgaXMgYSBsaXR0bGUKPiA+ID4g
Pj4+PiBjb25mdXNpbmcgdGhvdWdoLiBJZiBpdCB3YXMgaW5pdGlhbGx5IGRvbmUgYnkgTWFydGlu
IChDQy1lZCksIHRoZW4KPiA+ID4gPj4+PiBoZSBzaG91bGQgYmUgdGhlIGF1dGhvciwgYW5kIHdl
IHNob3VsZCBnZXQgaGlzIFNpZ25lZC1vZmYtYnkgaWYKPiA+ID4gPj4+PiBwb3NzaWJsZS4KPiA+
ID4gPj4KPiA+ID4gPj4gTWFydGluIGlzIGluZGVlZCB0aGUgb3JpZ2luYWwgYXV0aG9yIG9mIHRo
ZSBwYXRjaC4gVGhhbmsgeW91IGZvcgo+ID4gPiByZXZpZXdpbmcuCj4gPiA+ID4KPiA+ID4gPiBJ
J2QgbGlrZSB0byBhcHBseSB0aGlzIHBhdGNoIHdpdGggTWFydGluIGFzIHRoZSBhdXRob3IsIGlm
IHRoYXQncyBPSyB3aXRoCj4gPiA+IHlvdQo+ID4gPiA+IGJvdGg/Cj4gPiA+Cj4gPiA+IFRoYXQg
aXMgY29tcGxldGVseSBva2F5IHdpdGggbWUuCj4gPgo+ID4gQXBwbGllZCBmb3IgNS40Lgo+ID4K
PiA+IEkgcmVvcmRlcmVkIHRoZSB0YWdzIHNvIHRoZXkgbWFrZSBtb3JlIHNlbnNlOgo+ID4KPiA+
IGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L3N1bnhpL2xp
bnV4LmdpdC9jb21taXQvP2g9c3VueGkvZHQtZm9yLTUuNCZpZD0wODM0ODg3NzMyZGY1YWY0MWI1
OWIyZTRkNTMwZmMxZjU0Nzg5NjVmCj4KPiBTb3JyeSBmb3IgYmVpbmcgbGF0ZSBvbiB0aGlzLCBi
dXQgaXQgbG9va3MgbGlrZSB0aGUgZU1NQywgTkFORCBhbmQgU1BJCj4gcGlucyBhcmUgY29uZmxp
Y3Rpbmcgb24gdGhlIEE2NC1PbGludXhpbm8gZGVzaWduLgo+Cj4gVGhlcmUncyBubyBjb25maWd1
cmF0aW9uIHdpdGggYSBOQU5ELCBzbyB3ZSBkb24ndCByZWFsbHkgbmVlZCB0byB3b3JyeQo+IGFi
b3V0IHRoYXQsIGJ1dCBpZiB3ZSBtZXJnZSB0aGlzIGluIHRoZSBtYWluIERULCB3ZSdsbCBwcmV2
ZW50IGFueW9uZQo+IGZyb20gdXNpbmcgdGhhdCBEVCBvbiBhbiBvbGludXhpbm8gd2l0aCBhIFNQ
SSBmbGFzaC4KPgo+IEkgdGhpbmsgd2Ugc2hvdWxkIGp1c3QgY3JlYXRlIGVtbWMgYW5kIFNQSS1m
bGFzaCB2YXJpYW50cyBvZiB0aGF0IERULgoKQWN0dWFsbHkgdGhleSBhcmVuJ3QuIE9saW1leCBz
cGVjaWZpY2FsbHkgdXNlcyBlTU1DIG1vZHVsZXMgdGhhdCBkb24ndAp1c2UgdGhlIGRhdGEgc3Ry
b2JlIGxpbmUsIHNvIFNQSSBjYW4gYmUgdXNlZCB0b2dldGhlci4KCkNoZW5ZdQoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBt
YWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
