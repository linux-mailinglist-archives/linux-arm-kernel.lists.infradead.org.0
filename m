Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B0D01F6A78
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 17:00:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EJhsZa/MdS+SxUqAqWRhcKjKaXcSzvKrnPCnYUl5jw4=; b=YI+S+t4bD8DJNG
	YYnufrKe+FuRjuPc1Jd3WAUG1USybvwxTI+kVTDogqlDB6bgiOY+dWy+6Bb/vUrlZ0AZj+2PAg46E
	oycqpXuUeUdOy1DWGORr7tKQ7uP2W8qfOfRZGF0zX9S52pU4mjuMseZC0zzhufRx8AAfwNMGo+miI
	iyDMh+RdoWXZWK7z1NBcObic1/j4SRWggq4JcR1r0ys4gMb5X6usOCtAVBHyhJ5zYkmxWB74s9iRX
	PUCSI6jJ+5memNqcv6/aOmlHWBT09RPj+HEMmd6m8lepJRWq1YHNycplM7TgoIR+1zcaV9i+WLip2
	ndcV6R0yR1Cno3YiNUYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjOgr-0002xL-Ez; Thu, 11 Jun 2020 15:00:25 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjOgX-0000xO-Ji
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jun 2020 15:00:07 +0000
Received: by mail-wr1-x442.google.com with SMTP id r7so6534428wro.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 11 Jun 2020 08:00:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=0x0f.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=Zn13stpxx1Rl6Xjq5ftH7LM2yq+qpmzz5Dz1MnQNUPM=;
 b=B+Z3WDXPc51flB3UeEUdxOPDGME46i9EtyeRpwFsCr5JvF64iwG4FhswMrTGyj6mGn
 s+USFO0qbs3Cf6fqQBGxT5h1ANuIBWP6Qsj6eVuGckh4r+Gl7BFlG73ifQUcbJ7jzL1n
 PEdc9X0Kw9gtBSFMIj9AYMrDQR2Rs3rAp/Pmk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=Zn13stpxx1Rl6Xjq5ftH7LM2yq+qpmzz5Dz1MnQNUPM=;
 b=fM4zFBylk8D51h/JZguYuiqq4ftMOvM/iAVhPhCoUwfEep2j/GSl2PvUklGornAhaI
 UnUo9OJe1kl0BSCXi4IRZ8DJmZnCQaUicUD7K0xmxvHJrdhSpiOKCCBQcBv05yH3Bhca
 Tn8Pcgsz22NgfsWKQ1BAMxkrUdKYVL5N6rZdpjeAkhtGWRYQ3Uw+dCiB/9UGE+9LnYop
 RyGhkJkh/TUsl1rLp7vqb5d8D50Bfr+eVbDWDhjKFKzB06SmZFVnTyQcOhIqA4BbEjb3
 x1T0I0ocTUodEAEkQdxj1vs0qA3gOJdFJXHr1xlgz551TjsbPDxP12rVzoCfSqAL4kaM
 v6eA==
X-Gm-Message-State: AOAM532CzFmF5Gwa0Bk8K5swTBbmSKKoV9OrWs7eB5/RiFpei2kLZHVD
 /u6tC3B2Z0PBjB6z2jcOaBNDfnJ00W4GZuVGrLqPyw==
X-Google-Smtp-Source: ABdhPJxNJT/spy9XbHA9PU9q8cwSHEyiW4NzMoG2C4D+jtRZjp+QSEyOrmAAr+yM0n32lutR8zkOXLgsoPs/p1NMDZE=
X-Received: by 2002:adf:f003:: with SMTP id j3mr10047392wro.228.1591887603896; 
 Thu, 11 Jun 2020 08:00:03 -0700 (PDT)
MIME-Version: 1.0
References: <20191014061617.10296-2-daniel@0x0f.com>
 <20200610090421.3428945-3-daniel@0x0f.com>
 <976e789e-edd7-c44d-ea99-840ecb883ff8@suse.de>
 <CAFr9PXkvmZv3_EakxvRR+X522xN-a8epvF0ns10JeYCLn2uUKw@mail.gmail.com>
 <1e8262e0-9b30-0788-446a-5d88c1bb49ea@suse.de>
In-Reply-To: <1e8262e0-9b30-0788-446a-5d88c1bb49ea@suse.de>
From: Daniel Palmer <daniel@0x0f.com>
Date: Thu, 11 Jun 2020 23:58:44 +0900
Message-ID: <CAFr9PXkU8jYMx2NBHzNu2Xa7BfC6n9wpgxps9YE2VAcPTwdMiw@mail.gmail.com>
Subject: Re: [PATCH v2 2/5] ARM: mstar: Add machine for MStar/Sigmastar
 infinity/mercury family ARMv7 SoCs
To: =?UTF-8?Q?Andreas_F=C3=A4rber?= <afaerber@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_080005_692465_60D6BFB4 
X-CRM114-Status: GOOD (  17.58  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.7 URIBL_BLACK            Contains an URL listed in the URIBL blacklist
 [URIs: linux-chenxing.org]
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
Cc: Linus Walleij <linus.walleij@linaro.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Daniel Palmer <daniel@thingy.jp>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Sam Ravnborg <sam@ravnborg.org>, Ard Biesheuvel <ardb@kernel.org>,
 Stephan Gerhold <stephan@gerhold.net>, Jonathan Corbet <corbet@lwn.net>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
 Russell King <linux@armlinux.org.uk>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Nathan Huckleberry <nhuck15@gmail.com>, devicetree@vger.kernel.org,
 Arnd Bergmann <arnd@arndb.de>, allen <allen.chen@ite.com.tw>,
 tim.bird@sony.com, Maxime Ripard <mripard@kernel.org>,
 Lubomir Rintel <lkundrak@v3.sk>, Rob Herring <robh+dt@kernel.org>,
 Gregory Fong <gregory.0xf0@gmail.com>, Doug Anderson <armlinux@m.disordat.com>,
 Nathan Chancellor <natechancellor@gmail.com>, Krzysztof Adamski <k@japko.eu>,
 Christian Lamparter <chunkeey@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 Mark Brown <broonie@kernel.org>, Marc Zyngier <maz@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 "David S. Miller" <davem@davemloft.net>, Mike Rapoport <rppt@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQW5kcmVhcywKCk9uIFRodSwgMTEgSnVuIDIwMjAgYXQgMjM6MjcsIEFuZHJlYXMgRsOkcmJl
ciA8YWZhZXJiZXJAc3VzZS5kZT4gd3JvdGU6Cj4KPiBIaSBEYW5pZWwsCj4KPiBBbSAxMS4wNi4y
MCB1bSAxNTowMSBzY2hyaWViIERhbmllbCBQYWxtZXI6Cj4gPiBPbiBUaHUsIDExIEp1biAyMDIw
IGF0IDIxOjQ5LCBBbmRyZWFzIEbDpHJiZXIgPGFmYWVyYmVyQHN1c2UuZGU+IHdyb3RlOgo+ID4+
PiBwZXJpcGhlcmFscyBhbmQgc3lzdGVtIG1lbW9yeSBpbiBhIHNpbmdsZSB0aW55IFFGTiBwYWNr
YWdlIHRoYXQKPiA+Pj4gY2FuIGJlIGhhbmQgc29sZGVyZWQgYWxsb3dpbmcgYWxtb3N0IGFueW9u
ZSB0byBlbWJlZCBMaW51eAo+ID4+Cj4gPj4gInNvbGRlcmVkLCBhbGxvd2luZyI/Cj4gPgo+ID4g
VGhlIG9yaWdpbmFsIHJlYWRzIG9rIHRvIG1lLiBNYXliZSBJIGNhbiBqdXN0IHNwbGl0IHRoYXQg
aW50byB0d28gc2VudGVuY2VzPwo+ID4gTGlrZSAiLi4gUUZOIHBhY2thZ2UgdGhhdCBjYW4gYmUg
aGFuZCBzb2xkZXJlZC4gVGhpcyBhbGxvd3MgYWxtb3N0IGFueW9uZS4uIi4KPgo+IEFzIG5vbi1u
YXRpdmUgc3BlYWtlciBJIG1lcmVseSB3b25kZXJlZCB3aGV0aGVyIGEgY29tbWEgc2hvdWxkIGJl
dHRlciBiZQo+IGluc2VydGVkIHRvIHNlcGFyYXRlIHRoZSB0d28gcGFydHMgb2YgdGhlIHNlbnRl
bmNlLiBTcGxpdHRpbmcgaXQgaW4gdHdvCj4gb3IgbGVhdmluZyBhcyBpcyBzaG91bGQgYmUgZmlu
ZSwgdG9vIC0gSSBhc3N1bWUgeW91J3JlIGEgbmF0aXZlIHNwZWFrZXIuCgpJJ20gYSBuYXRpdmUg
c3BlYWtlciBidXQgaXQncyBub3QgbXkgZGFpbHkgZHJpdmVyIGFueW1vcmUgc28gSSBvZnRlbiBt
YW5nbGUgaXQuCgo+IE1vc3QgcGVvcGxlIHdpbGwgcmF0aGVyIHJlYWQgdGhlIGJpbmRpbmdzIGRv
Y3VtZW50IHRoYW4gb2xkIGdpdCBoaXN0b3J5LAo+IHNvIHlvdSBtaWdodCB3YW50IHRvIGNvbnNp
ZGVyIGFkZGluZyBzdWNoIGEgZGVzY3JpcHRpb24gYmVsb3cgaXRzIHRpdGxlLgoKSSdsbCBtb3Zl
IHRoZSBibHVyYiBhbmQgbWF5YmUgcmV3b3JkIGl0LgoKPiBXaGljaCByZW1pbmRzIG1lLCBpbiAx
LzUgeW91IHNob3VsZCBwcm9iYWJseSBhZGQgYSBXOiBsaW5lIChhZnRlciBTOgo+IGFjY29yZGlu
ZyB0byBhYm92ZSBzb3J0IGNvbW1pdCkgcG9pbnRpbmcgdG8geW91cgo+IGh0dHA6Ly9saW51eC1j
aGVueGluZy5vcmcvIHdlYnNpdGUuCj4KPiBBbmQgZm9yIHRoZSBjb21tdW5pdHkgZm9sbG93aW5n
IHlvdXIgcHJvamVjdCwgeW91IG1heSB3YW50IHRvIHNldCB1cCBhCj4gbGludXgtY2hlbnhpbmcg
bWFpbGluZyBsaXN0IG9uIHZnZXIua2VybmVsLm9yZyBvciBvbiBpbmZyYWRlYWQub3JnIGFuZAo+
IGFkZCBpdCBhcyBMOiwgdG8gYWxsb3cgZm9yIGVycm9yIHJlcG9ydHMgYW5kIHBhdGNoZXMgdG8g
bm90IGp1c3QgZ28gdG8KPiB5b3UgYW5kIGNyb3dkZWQgTEFLTUwuCgpWZXJ5IGdvb2QgcG9pbnRz
LiBJIHdhcyB0aGlua2luZyBJIHNob3VsZCBwcm9iYWJseSBnZXQgdGhpcyBpbnRvIG1haW5saW5l
CmJlZm9yZSBzZXR0aW5nIHVwIGxpc3RzIGV0Yy4KClRoYW5rcywKCkRhbmllbAoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBt
YWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
