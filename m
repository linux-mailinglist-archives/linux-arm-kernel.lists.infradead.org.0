Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB41C1F69C7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 16:20:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tkbo1NkQKdm8CTWz0YmX9Wx1z0/fzmiJzu9R2yyFtes=; b=McQViDu5/aWuhL
	rz5qF1hg3fg8MtlL4qdymM+uOTMGo0++O1DECVzs7xTwYKXnq6K4n2+wSb4XTHPsDmn64yjVCF0nE
	KrzqN6an9CzTfXTQm6u+ymAY/lSSIG0KKyXhlImfTwvTWEcr6STJCGGGKlgjXAmv9xGMG8RWHjkme
	9giyeuCWv+5sq38Ii72C+2LBrUWx5/mrcSRMe9IK0Je/Ocxf9IXMQUBUxmkPYw8vBpLeq0nOkUdp2
	HxJD3EMVNJLRJ+s6ZD6euelFzXwM9rSD45+A06eGkeB+vOPmxaKKJc3nqnGiuNskSHXhUNf+zmXKz
	rIQF0DZ4JdeXXkb1nbqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjO3c-00087Q-T0; Thu, 11 Jun 2020 14:19:52 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjO3S-00086j-Gh
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jun 2020 14:19:44 +0000
Received: by mail-wm1-x342.google.com with SMTP id j198so7075082wmj.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 11 Jun 2020 07:19:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=0x0f.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=dnKHXPEH1ozj37XOHtlpuuX/tbRfdpMEjZIEpqlLX6M=;
 b=IT02dr8GiskF5HGBwCOY84YSjJ5fu38NZHDoVPW7pUp3oEhZJwUiNVkPodr7wSVMTK
 kkv60uU6Ss3TLFgX8lqs4zDFWnQV0tQ8z7co8MsQb9sDFhmYGg1dvzFmRsGLexWwl3ON
 Cckjui3jfLAUmj6YPXOey9tYqH3IvmrSyQN68=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=dnKHXPEH1ozj37XOHtlpuuX/tbRfdpMEjZIEpqlLX6M=;
 b=jNqV8kXaR124CUCskNfjyDh1+Iqg3nNqlANpuVx3rB/CTjEvFxOv738cQeRR+WbAtR
 SWmkF8+d22z3AB3xmY3aosxvQjMLBCryM8crNzC3KPwG+0Ypm2Wu+n70HMTuIDOnFORb
 CTwt7Basghw2FY6fiP36Rlpk0cPgYthKRKFFHzzanjYgsJ8S9OBWNUz5jXQI9YJt9nHI
 cPUJciUFeFBux5Jib1vxFp76OeMDAqTceeR9WSLhMVXVlflt6vqK5wYH29h+a/uwFAmD
 lTMOWfYD6ta0AgezEq6ZJb0JBR3xmTH4EsdltlU/rtr2sOlLn7zK2oCRDXu57r3RNg6V
 nyqQ==
X-Gm-Message-State: AOAM530bqRPv5v8DZr3XrQ4HiM61gTc5yWVHCjeLD3LmTsHTRQtC1mAs
 5t/NB0+NJdjsbXy516X76j7Lin4SaML8cAWl+rm9Dw==
X-Google-Smtp-Source: ABdhPJwWn0Zuh4S+EzgrstrMFDmZbJ3qgVEgyY/VvonZ/Q9c/GYK2/Uyvn7J4TIzAvqDdFRozzqzSO4by1SmGPIyD4Y=
X-Received: by 2002:a1c:491:: with SMTP id 139mr7954685wme.99.1591885179520;
 Thu, 11 Jun 2020 07:19:39 -0700 (PDT)
MIME-Version: 1.0
References: <20191014061617.10296-2-daniel@0x0f.com>
 <20200610090421.3428945-4-daniel@0x0f.com>
 <bf26822d-acb0-ae40-df7f-80978bd26cfb@suse.de>
In-Reply-To: <bf26822d-acb0-ae40-df7f-80978bd26cfb@suse.de>
From: Daniel Palmer <daniel@0x0f.com>
Date: Thu, 11 Jun 2020 23:19:23 +0900
Message-ID: <CAFr9PXmp=mZhyRDpx_E0_1Zc5SFrSYUm9jP-k7VCDf9P37sT6g@mail.gmail.com>
Subject: Re: [PATCH v2 3/5] ARM: mstar: Add infinity/mercury series dtsi
To: =?UTF-8?Q?Andreas_F=C3=A4rber?= <afaerber@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_071942_659017_ED683B9F 
X-CRM114-Status: GOOD (  26.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
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
 tim.bird@sony.com, Will Deacon <will@kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Lubomir Rintel <lkundrak@v3.sk>,
 Rob Herring <robh+dt@kernel.org>, Gregory Fong <gregory.0xf0@gmail.com>,
 Doug Anderson <armlinux@m.disordat.com>,
 Nathan Chancellor <natechancellor@gmail.com>, Krzysztof Adamski <k@japko.eu>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 Mark Brown <broonie@kernel.org>, Marc Zyngier <maz@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQW5kcmVhcywKCk9uIFRodSwgMTEgSnVuIDIwMjAgYXQgMjI6MzksIEFuZHJlYXMgRsOkcmJl
ciA8YWZhZXJiZXJAc3VzZS5kZT4gd3JvdGU6Cgo+IENhbiB5b3Ugc3BsaXQgdGhpcyB1cCBpbnRv
IHRocmVlIHBhcnRzIGZvciBlYXNpZXIgcmV2aWV3PwoKVW5kZXJzdG9vZC4gV2lsbCBkby4KCj4g
MjAxOS0yMDIwPyBDaGVjayBlbHNld2hlcmUuCgpUaGUgcGF0Y2hlcyBhcmUgb3JpZ2luYWxseSBm
cm9tIDIwMTkuIEknbGwgdXBkYXRlIGV2ZXJ5dGhpbmcuCgo+ID4gKyAqIEF1dGhvcjogRGFuaWVs
IFBhbG1lciA8ZGFuaWVsQHRoaW5neS5qcD4KPiA+ICsgKi8KPiA+ICsKPiA+ICsjaW5jbHVkZSAi
aW5maW5pdHkuZHRzaSIKPiA+ICsKPiA+ICsvIHsKPiA+ICsgICAgIG1lbW9yeSB7Cj4gPiArICAg
ICAgICAgICAgIGRldmljZV90eXBlID0gIm1lbW9yeSI7Cj4gPiArICAgICAgICAgICAgIHJlZyA9
IDwweDIwMDAwMDAwIDB4NDAwMDAwMD47Cj4KPiBUaGUgbWVtb3J5IG5vZGUgbmVlZHMgdG8gYmVj
b21lIG1lbW9yeUAyMDAwMDAwMCB0aGVuLgo+Cj4gPiArICAgICB9Owo+Cj4gSSB0YWtlIGl0LCB0
aGlzIFJBTSBpcyBpbnRlZ3JhdGVkPyBNYXliZSBhZGQgc29tZSBleHBsYW5hdGlvbiBvZiB3aGF0
Cj4gdGhpcyBmaWxlIGlzCgpZZXMuIFRoZSBtZW1vcnkgaXMgaW50ZWdyYXRlZCBhbmQgdGhlIHNp
emUgZGVwZW5kcyBvbiB0aGUgc3BlY2lmaWMgY2hpcHMKc28gdGhlIG1lbW9yeSBub2RlIGlzIGF0
IHRoZSBjaGlwIGxldmVsIGR0c2kgYW5kIG5vdCB0aGUgYm9hcmQgbGV2ZWwuCgo+ID4gK307Cj4g
PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vYm9vdC9kdHMvaW5maW5pdHkuZHRzaSBiL2FyY2gvYXJt
L2Jvb3QvZHRzL2luZmluaXR5LmR0c2kKPiA+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4gPiBpbmRl
eCAwMDAwMDAwMDAwMDAuLjI1ZDM3OTAyODY4OQo+ID4gLS0tIC9kZXYvbnVsbAo+ID4gKysrIGIv
YXJjaC9hcm0vYm9vdC9kdHMvaW5maW5pdHkuZHRzaQo+ID4gQEAgLTAsMCArMSwxMCBAQAo+ID4g
Ky8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wCj4gPiArLyoKPiA+ICsgKiBDb3B5
cmlnaHQgKGMpIDIwMTkgdGhpbmd5LmpwLgo+ID4gKyAqIEF1dGhvcjogRGFuaWVsIFBhbG1lciA8
ZGFuaWVsQHRoaW5neS5qcD4KPiA+ICsgKi8KPiA+ICsKPiA+ICsjaW5jbHVkZSAibXN0YXItdjcu
ZHRzaSIKPiA+ICsKPiA+ICsvIHsKPiA+ICt9Owo+Cj4gV2hhdCBkbyB5b3UgaW50ZW5kIHRvIGFk
ZCBoZXJlPyBJcyBpdCByZWFsbHkgbmVlZGVkPyAoc2FtZSBiZWxvdykKClRoZSBzcGVjaWZpYyBu
b2RlcyB3aWxsIGdvIGludG8gdGhlcmUuIFRoaXMgaXMgbW9zdGx5IGFuIGFydGVmYWN0IG9mIHNw
bGl0dGluZwp0aGUgZGV2aWNlIHRyZWVzIG91dCBvZiBhIG1vcmUgZGV2ZWxvcGVkIHRyZWUuCgo+
ID4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPiA+IGluZGV4IDAwMDAwMDAwMDAwMC4uY2Y1ZjE4YTA3
ODM1Cj4gPiAtLS0gL2Rldi9udWxsCj4gPiArKysgYi9hcmNoL2FybS9ib290L2R0cy9pbmZpbml0
eTMuZHRzaQo+ID4gQEAgLTAsMCArMSwxMCBAQAo+ID4gKy8vIFNQRFgtTGljZW5zZS1JZGVudGlm
aWVyOiBHUEwtMi4wCj4gPiArLyoKPiA+ICsgKiBDb3B5cmlnaHQgKGMpIDIwMTkgdGhpbmd5Lmpw
Lgo+ID4gKyAqIEF1dGhvcjogRGFuaWVsIFBhbG1lciA8ZGFuaWVsQHRoaW5neS5qcD4KPiA+ICsg
Ki8KPiA+ICsKPiA+ICsjaW5jbHVkZSAiaW5maW5pdHkuZHRzaSIKPiA+ICsKPiA+ICsvIHsKPiA+
ICt9Owo+Cj4gRG9uJ3QgeW91IGFudGljaXBhdGUgaW5jb21wYXRpYmlsaXRpZXMgYmV0d2VlbiBp
bmZpbml0eSBhbmQgaW5maW5pdHkzLAo+IGkuZS4sIHRoaW5ncyB5b3UgZG9uJ3Qgd2FudCB0byBp
bmhlcml0PyBTZWVtcyBhIGJpdCBvcHRpbWlzdGljLiBZb3UgY2FuCj4gb2YgY291cnNlIG92ZXJ3
cml0ZSBwcm9wZXJ0aWVzLCBidXQgZGVsZXRpbmcgaXMgbW9yZSBkaWZmaWN1bHQuCgpJbiBteSB0
cmVlIHdpdGggZHJpdmVycyBmb3IgdGhlIHJlc3Qgb2YgdGhlIGhhcmR3YXJlIGl0IGhhc24ndCBi
ZWVuIGEgcHJvYmxlbS4KU28gZmFyIEkndmUgZm91bmQgaW5maW5pdHksIGluZmluaXR5MiwgaW5m
aW5pdHkzLCBpbmZpbml0eTUgYW5kCmluZmluaXR5NiBjaGlwcy4gVGhlIG1lbW9yeQptYXAgZm9y
IHRoZW0gaXMgYWxtb3N0IGlkZW50aWNhbCBhbmQgdGhlIGNoYW5nZXMgYXJlIGFkZGluZyBpbiBt
b3JlCmNvcGllcyBvZiB0aGluZ3MKbGlrZSBETUEgY29udHJvbGxlcnMsIGV4dHJhIGNsb2NrIGJs
b2NrcyBldGMuCgpIYXZpbmcgaW5maW5pdHkuZHRzaSBhcyB0aGUgYmFzZSBmb3IgdGhlIG5ld2Vy
IHZlcnNpb25zIHNob3VsZCBhdm9pZApoYXZpbmcgZHVwbGljYXRpb24Kb2Ygbm9kZXMgdGhhdCBh
cmVuJ3QgY29tbW9uIG9uIHRoZSBtc3RhciBhcm12NyBsZXZlbCBidXQgYXJlIGNvbW1vbiB0bwp0
aGUgaW5maW5pdHkgc3VidHlwZXMuCgpUaGVyZSBhcmUgdHdvIGdvb2QgZXhhbXBsZXMgb2YgdGhp
czoKRm9yIGluZmluaXR5PyB0aGUgVVNCIGFuZCBTRCBjb250cm9sbGVycyBhcmUgYXQgdGhlIHNh
bWUgcGxhY2UgZm9yIGFsbApvZiB0aGUgY2hpcHMgSSd2ZQpmb3VuZCBzbyBmYXIuIFVuZm9ydHVu
YXRlbHksIGRlc3BpdGUgdXNpbmcgdGhlIHNhbWUgSVAgYmxvY2sgYW5kIHRoZQpzYW1lIGRyaXZl
ciB0aG9zZQpibG9ja3MgYXJlIGluIGRpZmZlcmVudCBwbGFjZXMgaW4gdGhlIG1lcmN1cnk1LiBB
dCB0aGUgbW9tZW50IHdpdGggYWxsCm9mIHRoZSBpbmZpbml0eSBjaGlwcwpwdWxsaW5nIGluIGlu
ZmluaXR5LmR0c2kgdGhvc2Ugbm9kZXMgYXJlIG9ubHkgaW4gaW5maW5pdHkuZHRzaSBhbmQKbWVy
Y3VyeTUuZHRzaS4KSWYgaW5maW5pdHk/LmR0c2kgYXJlIGFsbCBzdGFja2VkIG9uIHRvcCBvZiB0
aGUgbXN0YXJ2Ny5kdHNpIGJhc2UgdGhlbgp0aGVyZSB3aWxsIGJlIGEgbnVtYmVyIG9mCmNvcGll
cyBvZiB0aGUgc2FtZSBub2Rlcy4KCj4gPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vYm9vdC9kdHMv
bWVyY3VyeTUuZHRzaSBiL2FyY2gvYXJtL2Jvb3QvZHRzL21lcmN1cnk1LmR0c2kKPiA+IG5ldyBm
aWxlIG1vZGUgMTAwNjQ0Cj4gPiBpbmRleCAwMDAwMDAwMDAwMDAuLjI1ZDM3OTAyODY4OQo+ID4g
LS0tIC9kZXYvbnVsbAo+ID4gKysrIGIvYXJjaC9hcm0vYm9vdC9kdHMvbWVyY3VyeTUuZHRzaQo+
ID4gQEAgLTAsMCArMSwxMCBAQAo+ID4gKy8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwt
Mi4wCj4gPiArLyoKPiA+ICsgKiBDb3B5cmlnaHQgKGMpIDIwMTkgdGhpbmd5LmpwLgo+ID4gKyAq
IEF1dGhvcjogRGFuaWVsIFBhbG1lciA8ZGFuaWVsQHRoaW5neS5qcD4KPiA+ICsgKi8KPiA+ICsK
PiA+ICsjaW5jbHVkZSAibXN0YXItdjcuZHRzaSIKPiA+ICsKPiA+ICsvIHsKPiA+ICt9Owo+ID4g
ZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2Jvb3QvZHRzL21zdGFyLXY3LmR0c2kgYi9hcmNoL2FybS9i
b290L2R0cy9tc3Rhci12Ny5kdHNpCj4gPiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+ID4gaW5kZXgg
MDAwMDAwMDAwMDAwLi4wZmNjYzRjYTUyYTQKPiA+IC0tLSAvZGV2L251bGwKPiA+ICsrKyBiL2Fy
Y2gvYXJtL2Jvb3QvZHRzL21zdGFyLXY3LmR0c2kKPgo+IFNvIHRoaXMgaXMgdGhlIG9ubHkgZmls
ZSBzdGFydGluZyB3aXRoIG1zdGFyLiBIYXZlIHlvdSB0aG91Z2h0IGFib3V0Cj4gcHJlZml4aW5n
IGluZmluaXR5L21lcmN1cnksIHNvIHRoYXQgdGhleSdyZSBncm91cGVkIHRvZ2V0aGVyPwoKSSBo
YXZlIGJlZW4gdGhpbmtpbmcgYWJvdXQgdGhhdC4gSSBkaWRuJ3Qgc2VlIGFueSBvdGhlciBkdHMg
aW4gYXJtIHRoYXQgaGFkCnRoZSB2ZW5kb3IgYXMgYSBwcmVmaXggdGhvdWdoLiBXaXRoIGFybTY0
IGV2ZXJ5dGhpbmcgaXMgaW4gcGVyIHZlbmRvcgpzdWJkaXJlY3Rvcmllcwp0byBhY2hpZXZlIHRo
ZSBzYW1lIHRoaW5nLgoKPiA+ICsgICAgICAgICAgICAgfTsKPiA+ICsKPiA+ICsgICAgICAgICAg
ICAgcG1fdWFydDogdWFydEAxZjIyMTAwMCB7Cj4gPiArICAgICAgICAgICAgICAgICAgICAgY29t
cGF0aWJsZSA9ICJuczE2NTUwYSI7Cj4gPiArICAgICAgICAgICAgICAgICAgICAgcmVnID0gPDB4
MWYyMjEwMDAgMHgxMDA+Owo+ID4gKyAgICAgICAgICAgICAgICAgICAgIHJlZy1zaGlmdCA9IDwz
PjsKPiA+ICsgICAgICAgICAgICAgICAgICAgICBjbG9jay1mcmVxdWVuY3kgPSA8MTcyMDAwMDAw
PjsKPiA+ICsgICAgICAgICAgICAgICAgICAgICBzdGF0dXMgPSAiZGlzYWJsZWQiOwo+ID4gKyAg
ICAgICAgICAgICB9Owo+Cj4gSWYgeW91IGhhdmUgYW55IGRlY2VudCBtYW51YWxzIGZvciB0aGVz
ZSBTb0NzLAoKRXZlcnl0aGluZyBzbyBmYXIgaGFzIGJlZW4gcmV2ZXJzZSBlbmdpbmVlcmVkIGZy
b20gYW4gb2xkIDMuMTgKa2VybmVsLCBwb2tpbmcgd2l0aCBhIG11bHRpbWV0ZXIgZXRjLiBJIHdp
c2ggSSBoYWQgYSBkZWNlbnQgbWFudWFsLgoKPiBJIHN1Z2dlc3QgdG8gY2hlY2sgd2hldGhlciB0
aGVyZSBhcmUgYW55IGludGVybmFsIGJ1c2VzIHRoYXQgeW91IG1heQo+IHdhbnQgdG8gbW9kZWwg
YXMgc2ltcGxlLWJ1cyBmb3IgZ3JvdXBpbmcuIEluLXRyZWUgZXhhbXBsZXMgaW5jbHVkZSBtZXNv
bgo+IGFuZCByZWNlbnRseSBtZXJnZWQgcnRkMTE5NSAtIGl0IGFmZmVjdHMgdGhlIHJlZyBhZGRy
ZXNzZXMgYW5kIHVuaXQgYWRkcmVzc2VzIHZpYQo+IHN1aXRhYmxlIHJhbmdlcyBtYXBwaW5ncy4K
ClRoZXJlIGlzIGEgYnJpZGdlIHRoYXQgaXMgYmV0d2VlbiB0aGUgQ1BVIGFuZCB0aGUgcGVyaXBo
ZXJhbCByZWdpc3RlcnMKdGhhdCBkb2Vzbid0IHF1aXRlIGZpdCBzaW1wbGUtYnVzIChmcm9tIHdo
YXQgSSByZW1lbWJlciBpdCBuZWVkcyBhIGNsaykuCk15IHBsYW4gd2FzIHRvIGludHJvZHVjZSB0
aGUgdGhpbiBkcml2ZXIgZm9yIHRoYXQgYnVzIChpdCBqdXN0IGNvbnN1bWVzIHRoZSBjbGtzCml0
IG5lZWRzIHNvIHRoZXkgZG9uJ3QgZ2V0IGRpc2FibGVkIGF0IHRoZSBtb21lbnQpIGFmdGVyIGlu
dHJvZHVjaW5nCnRoZSBjbGsgc3VwcG9ydC4KClRoYW5rcywKCkRhbmllbAoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWls
aW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
