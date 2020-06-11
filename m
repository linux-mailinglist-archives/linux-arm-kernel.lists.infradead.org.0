Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8C711F6A9E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 17:09:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K8dVAxRw3En3bd5XWMTKjopMiHLAno32t0yIfiW1OpQ=; b=Zp5BJowJbx+91f
	CalYvbHEl7s3MTCFAewwljQaHjFRSdBWkCei/jdpYQmrY2EZMCWD466mHJJcJk90H5mf/1+8EOmwV
	4d/kfJJycSfK/0HwXnVBuXobdoXszY0ryLFIe78M1z7roWg+OgM7JL2CyCaCXhF37QuhpFc6SIKd1
	jcxM/tqHxvOfVcJt8rNOOoi4ca+qKdowXm//0++u+iL4gPscnkfO0/JL8otLBfOCK2Mot1PZ4GctM
	Nur6nXnDuQJPBF1ropSya00bOmGSH0guGZ4Q/3rCoNr3O0arfKVlFYKotXOQS0PCMjJsEbOb54LsH
	EBkZefvbBEyz1Cf715og==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjOpd-0006ku-Hp; Thu, 11 Jun 2020 15:09:29 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjOpU-0006kN-Nc
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jun 2020 15:09:22 +0000
Received: by mail-wm1-x341.google.com with SMTP id u26so7161055wmn.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 11 Jun 2020 08:09:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=0x0f.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=+bnRdnq8JLK2uL0FC3ENBorVkJKs02mTezFsQPAeEpw=;
 b=J/es4ZuPXP+1e5VAnum1Q+8LyG8YgT+34mxouqoQK396yvZPiwXy9whPazs99utmeh
 DyTYcwtRjrpBg6pu4vVfy1dkV/vbVL6mwcEEopeFCEDHWIbmdYLiiAgLTIBqn2KZyui+
 JsvClLkiKpUBdEGo/omhYWtZu1DAE+g4RA2pE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=+bnRdnq8JLK2uL0FC3ENBorVkJKs02mTezFsQPAeEpw=;
 b=Qk2BeSY6lyLSFOiq27lBsOGm8gInxvSFp3aQpVJMefPZwED+ZMqfTHSkELgPvt8w2G
 f3s9+S1zFaGNS+b6/dvBW2GyEz9HwsE2BbWYz9kXElHTlTk/h/IHLXgVaxzV8t/nME0E
 08I1pzE9dQleRqRU1H5oiVPmmtuuj33eWuYCETag4FXikGakpfetBZflvp8454KlkQ9s
 EGxuzsywfRxldStVO3ofqFbdzkInnonQ7JJvRzyGCJywdCZzEZI9piCMFIkYXS9hdpcd
 L6nRE1EllSMrzFy4gYDyiPbs/DaLSbecv+KbN3uR2PGBZ437WzYZ8Ib5cBnlo6T/Nd3c
 JJiw==
X-Gm-Message-State: AOAM531ZBPHTAZHUc+y64nOY1r07wrztseFOI9u78gQDILvoUfY0ucfv
 S7JRFqfvshrX8OgfiKKc2lxGmkfgWNrEGBlO2m5j0w==
X-Google-Smtp-Source: ABdhPJzFEzbTe4nZOrgkcxbo8Z7lm4vXqAHZCE4wREr2gS5klf4OPdEt5oMniUG7xfDDSBaEaZTBP4wrxJeFb49IkAE=
X-Received: by 2002:a1c:491:: with SMTP id 139mr8147455wme.99.1591888159280;
 Thu, 11 Jun 2020 08:09:19 -0700 (PDT)
MIME-Version: 1.0
References: <20191014061617.10296-2-daniel@0x0f.com>
 <20200610090421.3428945-4-daniel@0x0f.com>
 <bf26822d-acb0-ae40-df7f-80978bd26cfb@suse.de>
 <CAFr9PXmp=mZhyRDpx_E0_1Zc5SFrSYUm9jP-k7VCDf9P37sT6g@mail.gmail.com>
 <3d933b03-9757-f659-d19a-ce6d0fccebea@suse.de>
In-Reply-To: <3d933b03-9757-f659-d19a-ce6d0fccebea@suse.de>
From: Daniel Palmer <daniel@0x0f.com>
Date: Fri, 12 Jun 2020 00:07:59 +0900
Message-ID: <CAFr9PXmkqFfA=1XFcxOwGM-477eCvy-_y=hY8aW8ePE=nrOO7A@mail.gmail.com>
Subject: Re: [PATCH v2 3/5] ARM: mstar: Add infinity/mercury series dtsi
To: =?UTF-8?Q?Andreas_F=C3=A4rber?= <afaerber@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_080920_771643_D4653416 
X-CRM114-Status: GOOD (  13.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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

SGkgQW5kcmVhcywKCk9uIFRodSwgMTEgSnVuIDIwMjAgYXQgMjM6MzksIEFuZHJlYXMgRsOkcmJl
ciA8YWZhZXJiZXJAc3VzZS5kZT4gd3JvdGU6Cgo+IFRoZSBkb3duc2lkZSB3b3VsZCBiZSBpZiBz
b21lb25lIHdhbnRlZCB0byBhZGQgbmV3ZXIgc3N0YXIgY2hpcHMgdW5kZXIKPiB0aGUgbmV3IG5h
bWUgbGF0ZXIsIHRoZW4gdGhleSB3b3VsZG4ndCBiZSBncm91cGVkIHdpdGggcHJlZGVjZXNzb3IK
PiBmYW1pbGllcy4gUmlnaHQgbm93IGl0IHNlZW1zIGxpa2UgbWVyY3VyeSBhbmQgaW5maW5pdHkg
YXJlIG5vdCB0aGF0Cj4gZGlmZmVyZW50LCBzbyBJIGZpZ3VyZWQgaXQgbWlnaHQgYmUgdXNlZnVs
IGZvciBwZW9wbGUgY29udHJpYnV0aW5nCj4gcGF0Y2hlcyB0byBzZWUgdGhhdCBjaGFuZ2VzIGlu
IG9uZSBtaWdodCByZXF1aXJlIHJldmlldyBvZiB0aGUgb3RoZXIuCgpJJ3ZlIHRob3VnaHQgYWJv
dXQgdGhpcyB0b28uIE9uZSB0aGluZyBJIGNvbnNpZGVyZWQgd2FzIG5vdCB1c2luZwptc3RhciBv
ciBzc3RhciBhdCBhbGwKYW5kIGRvaW5nIHRoZSBzYW1lIHRoaW5nIGFzIHN1bnhpIGFuZCB1c2lu
ZyBlaXRoZXIgdGhlICJjaGVueGluZyIKKE1vcm5pbmdTdGFyLCBNU3Rhcikgb3IgInhpbmdjaGVu
IiAoU2lnbWFTdGFyKQptb25pa2VyIGluc3RlYWQuCkhvd2V2ZXIsIHRoZXJlIGFyZSBsb3RzIG9m
IGtlcm5lbCBkdW1wcyBmcm9tIE1TdGFyIGJhc2VkIFRWcyBldGMgaW4KdGhlIHdpbGQgYWxyZWFk
eSB0aGF0IGFyZSB1c2luZyB0aGUgbXN0YXIKcHJlZml4IHNvIGp1c3QgY29udGludWluZyB0byB1
c2UgdGhhdCBzZWVtcyBsaWtlIHRoZSByaWdodCB0aGluZyB0byBkby4KClRoYW5rcywKCkRhbmll
bAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgt
YXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJt
LWtlcm5lbAo=
