Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 437F41F6A2E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 16:38:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dFab5s9tsNbaNO4OwZmj8MlLZbwwcGH+nDOVLChJXn8=; b=gkFV6vMV2owwWl
	VW7IFrTKNu/0mnXX1UJN3fzK4auD0icrYSu0ywlst+nlGICDE0z/j8ulDVFOx2pIg0813sIjr7cag
	l5Nl8vUmifY3Q+v1r/UwhajYhkG/fKS1m56BRo/lyc4JisnH7ICgZgoX34Dz2s/EFDGWRldlqRzBq
	oopn3VXw0tjSKqIfz/M99Ms+S04w+NAL9O58Wk+PTW2SvRKSwLSu5majM2Er21iscjC8xog820PIl
	rROkONiOuxeEerPC876zfAwiHBS4GWpbf8vLpbUDKYfAucychokQSHXwYGytrX9oRWAK906RYbrf7
	66HvDxSUhcnWG2qvItFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjOLr-0004Wj-5P; Thu, 11 Jun 2020 14:38:43 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjOLj-0004WG-SG
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jun 2020 14:38:37 +0000
Received: by mail-wm1-x344.google.com with SMTP id g10so5183264wmh.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 11 Jun 2020 07:38:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=0x0f.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=OkSwpbu3nanzuKZFRobLrpEC9ZCDno96sQzcjNj/eXY=;
 b=cI+OX7XoTGzmSDSsWCBAgUmvoYrhcn7OEtY/zt2TxdrMTXMKh0GXYchPkoZT+khQPD
 nV8rBtdgwRtq55gdiZYS/FgVPKwGH5TEAiw5PDtJxEU2mA//8hWvWFd+9XHNZIPQqwJt
 +O1X0H1P7QlKx+hbQ8bZ/P1XCLh3vXtzV68e4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=OkSwpbu3nanzuKZFRobLrpEC9ZCDno96sQzcjNj/eXY=;
 b=gbou2TRdqLF38dosyiPzCgKsFjCTHOny5d8Pe2pNSPYoX0EBlzFoAJoc1CQt5yMZZH
 m7/DmbhS2ay/f3qAMaytb4BDI490e4fmRrQ8LTTKEjmCsxV2M0uuI4LGDWc7Vn6PcnMV
 PNa4OmSRxLX/cz7tuxFJ5vJJAGSIRkXUkPSFoDabPy+/zOQ8Mof9tD2RkwmQu7YuMeNL
 IjGME0D1wxvXvQSpK4IKEzUDh9zZB/ZzW5KbMI5MZCXUttaPt+Mnu2NdSm9bw1jAD/eE
 DcmSEmsPZ7JD5fUJH2+o/XA/lkYByvqLeHkx/iOVcMO2s2m8r1mxVErdOJoV3f8r7lck
 Y6gQ==
X-Gm-Message-State: AOAM533rDWTjOjGhJVASaqot712x/gfafedxF8i7++d6jJohnJ3np/a5
 WOiKnkD+6y3TwwWOarZP9VTp3pItcCdkwon8YnJZig==
X-Google-Smtp-Source: ABdhPJym84e7SJjEkEqSAakLhjhByUtudobqIP49Z3U2O/dZpWA1dZ+0tNVwVesl3Gq55GaV+1O9IkNIEKJMiPotclk=
X-Received: by 2002:a7b:c3c6:: with SMTP id t6mr8182714wmj.159.1591886314439; 
 Thu, 11 Jun 2020 07:38:34 -0700 (PDT)
MIME-Version: 1.0
References: <20191014061617.10296-2-daniel@0x0f.com>
 <20200610090421.3428945-6-daniel@0x0f.com>
 <a626d8a5-16c2-8f0a-b131-c124c06b0317@suse.de>
In-Reply-To: <a626d8a5-16c2-8f0a-b131-c124c06b0317@suse.de>
From: Daniel Palmer <daniel@0x0f.com>
Date: Thu, 11 Jun 2020 23:38:18 +0900
Message-ID: <CAFr9PX=Q+xeQvZD3diV5bTb7+T4oWJiq2kS6cFwv0=no5KxCLg@mail.gmail.com>
Subject: Re: [PATCH v2 5/5] ARM: mstar: Add dts for 70mai midrive d08
To: =?UTF-8?Q?Andreas_F=C3=A4rber?= <afaerber@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_073835_914857_09263FE2 
X-CRM114-Status: GOOD (  17.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
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
 Christian Lamparter <chunkeey@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 Mark Brown <broonie@kernel.org>, Marc Zyngier <maz@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQW5kcmVhcywKCk9uIFRodSwgMTEgSnVuIDIwMjAgYXQgMjI6NTQsIEFuZHJlYXMgRsOkcmJl
ciA8YWZhZXJiZXJAc3VzZS5kZT4gd3JvdGU6Cj4KPiBCVFcgSSB0aGluayB0aGUgc3ViamVjdCBj
b252ZW50aW9uIGhhcyBiZWVuICJBUk06IGR0czogLi4uIiwgd2l0aCAiQVJNOgo+IG1zdGFyOiAu
Li4iIG1vcmUgZm9yIG1hY2gtbXN0YXIuCgpJIG5vdGljZWQgdGhpcyBhZnRlciBzZW5kaW5nIG91
dCB0aGlzIHNlcmllcy4gSSd2ZSBmaXhlZCB1cCB0aGUKc3ViamVjdHMgaW4gbGluZSB3aXRoIGNv
bnZlbnRpb24gZm9yIHRoZSBuZXh0IHRyeS4KCj4gPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vYm9v
dC9kdHMvbWVyY3VyeTUtc3NjODMzNm4tbWlkcml2ZTA4LmR0cyBiL2FyY2gvYXJtL2Jvb3QvZHRz
L21lcmN1cnk1LXNzYzgzMzZuLW1pZHJpdmUwOC5kdHMKPiA+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0
Cj4gPiBpbmRleCAwMDAwMDAwMDAwMDAuLjRlZTUwZWNmNmFiMQo+ID4gLS0tIC9kZXYvbnVsbAo+
ID4gKysrIGIvYXJjaC9hcm0vYm9vdC9kdHMvbWVyY3VyeTUtc3NjODMzNm4tbWlkcml2ZTA4LmR0
cwo+ID4gQEAgLTAsMCArMSwyNSBAQAo+ID4gKy8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBH
UEwtMi4wCj4gPiArLyoKPiA+ICsgKiBDb3B5cmlnaHQgKGMpIDIwMTkgdGhpbmd5LmpwLgo+ID4g
KyAqIEF1dGhvcjogRGFuaWVsIFBhbG1lciA8ZGFuaWVsQHRoaW5neS5qcD4KPiA+ICsgKi8KPiA+
ICsKPiA+ICsvZHRzLXYxLzsKPiA+ICsjaW5jbHVkZSAibWVyY3VyeTUtc3NjODMzNm4uZHRzaSIK
PiA+ICsKPiA+ICsvIHsKPiA+ICsgICAgIG1vZGVsID0gIm1pZHJpdmUgZDA4IjsKPgo+IENvdWxk
bid0IGZpbmQgdGhpcyBvbiB0aGVpciB3ZWJzaXRlLiBTaG91bGQgdGhpcyBiZSAiNzBtYWkgbWlk
cml2ZSAuLi4iCj4gb3IgaXMgIm1pZHJpdmUiIGEgZGlmZmVyZW50IGJyYW5kPwoKSSB0aGluayBp
dCBzaG91bGQgYmUgNzBtYWkgTWlkcml2ZSBEMDggYmFzZWQgb24geW91ciBjb21tZW50cyBvbiB0
aGUKb3RoZXIgbW9kZWwgbmFtZXMuCk9uIHRoZWlyIHNpdGUgdGhpcyBjYW1lcmEgaXMgbm93IGNh
bGxlZCAiRGFzaCBDYW0gTGl0ZSIuCk1pZHJpdmUgRDA4IGlzIHRoZSBuYW1lIEkgYm91Z2h0IGl0
IHVuZGVyIGFuZCB0aGUgbmFtZSB0aGF0IHdhcyB1c2VkCmZvciBpdCdzIEZDQyBhcHByb3ZhbCAo
aHR0cHM6Ly9mY2NpZC5pby8yQU9LOS1NSURSSVZFRDA4KSBzbyB0aGF0J3MKd2hhdCBJIHdlbnQK
d2l0aC4KCj4gPiArICAgICBjb21wYXRpYmxlID0gIjcwbWFpLG1pZHJpdmVkMDgiLCAibXN0YXIs
bWVyY3VyeTUiOwo+Cj4gSGF2ZSB5b3UgY29uc2lkZXJlZCBuYW1pbmcgaXQgIjcwbWFpLG1pZHJp
dmUtZDA4IiBmb3IgYmV0dGVyCj4gcmVhZGFiaWxpdHk/IChhZmZlY3RzIDEvNSkKCkkgd2VudCB3
aXRoIG1pZHJpdmVkMDggYXMgdGhhdCdzIHdoYXQgd2FzIHVzZWQgZm9yIHRoZSBGQ0MgYW5kIGZy
b20Kd2hhdCBJIHJlbWVtYmVyIHdhcyB3cml0dGVuIG9uIHRoZSBjYXNpbmcuCgpUaGFua3MsCgpE
YW5pZWwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxp
bnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LWFybS1rZXJuZWwK
