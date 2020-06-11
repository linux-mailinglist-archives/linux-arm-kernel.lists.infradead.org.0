Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 045631F69E6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 16:27:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=njtRwDbyWSvbLd8o+7KIrVV7qeT9p4IRMf2clXDIdMU=; b=ShO1ddlFe/V/xL
	6/YY+mVWSdciSIse7t76eqnH2yGXreSnQNGIW3Uc9PK/idx40ZSvyxchIG8TqGSmiMkg0mKxnNZaT
	yRUh4pQQf9W4EyCY3jzTyyKrikAktwLOL3Lr0N5wvJRlja2W5a0zsyU87C26adLsMgsAeMTscZAtU
	NylxVRcpb75TURFmO+va8tcqokd5/bFk2cX2pGAQcc/Ll1Hb6N+PiTRH4Adj+AcAdsmLR9SBq0NSM
	xTmXv/qCFz2uaZPx6+7TbIdZIXWmnmlBx1l+1C0qGiTKMIEdZUafhgoC+CgVodsn8wwNmXSl0oXN3
	NT0+lTyt8MlNmMF7GcPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjOAt-0005uF-18; Thu, 11 Jun 2020 14:27:23 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjOAl-0005tj-RN
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jun 2020 14:27:17 +0000
Received: by mail-wm1-x341.google.com with SMTP id d128so5259607wmc.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 11 Jun 2020 07:27:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=0x0f.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=9PTMI4AzXbLxjyyfz+xfdpQHe4hbBWsXmsCFiQIKN4U=;
 b=FwBN+sIO4TrTpP0kISN3kEu0krnuRDrBMvQaELuZn2dafIWWIy3mCsH4FnnW14hbhE
 mQZvr+O1MMO1HbLLkF3esMZtzen5E4PSL/AFedMg9N7ZvIJHmtFJqWaEOL1D+FWBJpdk
 ++BzE/BZLtUb84uvG5wlSGRetmJXlxgLzcf6Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=9PTMI4AzXbLxjyyfz+xfdpQHe4hbBWsXmsCFiQIKN4U=;
 b=qpLuSIBuXl5ww0q+NlK6KtWGMZUJdAInGGx0UOl3gG9vFWAL1pz78Eh6VA2DWGujkY
 9knDw64aN2gqLs+iP5/L892qyILLaijb08L6QakSEiYqpX9YXJUHIb0iIZxQ0VGlzbgk
 eZGdG5MLGleSDiN7mmEZURpbXn/IdEt1FMOWuKt3Qo6UivTTmqHvDnmuMOlJIJDykv9x
 jOtoG4ANk4zN9+aepJroFwPUemgsQt3SyQjHaPZmC5kwBf7JVbfhKjGu5TG1250h5pWg
 S+7G4yXpNnRtPVGoMtryU2odqF1vcdQ2kMCpLME60L6AI9Yzs0uWwKVHDLi0R+O61boW
 sXWA==
X-Gm-Message-State: AOAM530/OlF4WfiN+NPegteoB2HJwMvsJY7w7CfoLXxLQ6gWYRsO13vd
 3c4rblzS4v3/4dshPIkyjtLdHTcoVgFOAR1zbNxSeg==
X-Google-Smtp-Source: ABdhPJxFx37GGZrR7mx+bOeh2G0xHw4CjeDEUlLUymRGmdGvuYyynBKWPZnPWwH+zKli3nFcFwjcLZAVrfDcfzhzaPA=
X-Received: by 2002:a1c:7206:: with SMTP id n6mr8751619wmc.4.1591885634606;
 Thu, 11 Jun 2020 07:27:14 -0700 (PDT)
MIME-Version: 1.0
References: <20191014061617.10296-2-daniel@0x0f.com>
 <20200610090421.3428945-5-daniel@0x0f.com>
 <42aa9e03-3fcc-a602-40db-cfbddef36b34@suse.de>
In-Reply-To: <42aa9e03-3fcc-a602-40db-cfbddef36b34@suse.de>
From: Daniel Palmer <daniel@0x0f.com>
Date: Thu, 11 Jun 2020 23:26:59 +0900
Message-ID: <CAFr9PXkFqhivokPzP3ZyHMKaT52nRuJHE=DKd9V5BnC=pV+JWg@mail.gmail.com>
Subject: Re: [PATCH v2 4/5] ARM: mstar: Add dts for msc313(e) based BreadBee
 boards
To: =?UTF-8?Q?Andreas_F=C3=A4rber?= <afaerber@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_072715_889157_C47E538F 
X-CRM114-Status: GOOD (  16.33  )
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
 tim.bird@sony.com, Maxime Ripard <mripard@kernel.org>,
 Lubomir Rintel <lkundrak@v3.sk>, Rob Herring <robh+dt@kernel.org>,
 Gregory Fong <gregory.0xf0@gmail.com>, Doug Anderson <armlinux@m.disordat.com>,
 Nathan Chancellor <natechancellor@gmail.com>, Krzysztof Adamski <k@japko.eu>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 Mark Brown <broonie@kernel.org>, Marc Zyngier <maz@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 "David S. Miller" <davem@davemloft.net>, Mike Rapoport <rppt@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQW5kcmVhcywKCk9uIFRodSwgMTEgSnVuIDIwMjAgYXQgMjI6NDUsIEFuZHJlYXMgRsOkcmJl
ciA8YWZhZXJiZXJAc3VzZS5kZT4gd3JvdGU6Cgo+ID4gKyAgICAgY29tcGF0aWJsZSA9ICJ0aGlu
Z3lqcCxicmVhZGJlZS1jcnVzdCIsICJtc3RhcixpbmZpbml0eSI7Cj4gPiArCj4gPiArICAgICBh
bGlhc2VzIHsKPiA+ICsgICAgICAgICAgICAgc2VyaWFsMCA9ICZwbV91YXJ0Owo+ID4gKyAgICAg
fTsKPiA+ICsKPiA+ICsgICAgIGNob3NlbiB7Cj4gPiArICAgICAgICAgICAgIHN0ZG91dC1wYXRo
ID0gInNlcmlhbDA6MTE1MjAwbjgiOwo+ID4gKyAgICAgfTsKPiA+ICt9Owo+ID4gKwo+ID4gKyZw
bV91YXJ0IHsKPiA+ICsgICAgIHN0YXR1cyA9ICJva2F5IjsKPgo+IE1pZ2h0IHRoaXMgYmUgYSBt
b3JlIHN1aXRlZCBwbGFjZSBmb3IgdGVtcG9yYXJ5IGNsb2NrLWZyZXF1ZW5jeT8gRm9yCj4gbGFj
ayBvZiBjbGsgZHJpdmVyIGl0IHdvdWxkIHNlZW0gdG8gZGVwZW5kIG9uIHRoZSBib2FyZCdzIGJv
b3Rsb2FkZXIKPiBwcmUtY29uZmlndXJpbmcgaXQgcmF0aGVyIHRoYW4gYmVpbmcgYSBkZWZhdWx0
IG9mIHRoZSBTb0MuCgpGb3IgYWxsIG9mIHRoZSBjaGlwcyBzbyBmYXIgdGhlaXIgc2Vjb25kIHN0
YWdlIGJvb3Rsb2FkZXIgYWx3YXlzIHR1cm5zCm9uIGEgUExMIGFuZApyZWNvbmZpZ3VyZXMgdGhl
IHBtX3VhcnQgY2xvY2sgdG8gdXNlIGEgMTcyTUh6IHRhcCBmcm9tIHRoYXQgUExMIHJpZ2h0CmF0
IHRoZSBzdGFydApvZiB0aGUgYm9vdCBwcm9jZXNzIGJlZm9yZSB1LWJvb3QgaXMgc3RhcnRlZC4g
VGhlIG5ldyB1LWJvb3QgU1BMIEknbQp3b3JraW5nIG9uIHRvIHJlcGxhY2UKdGhhdCBsb2FkZXIg
Zm9sbG93cyB0aGF0IGNvbnZlbnRpb24uCk9uY2UgdGhlIGNsayBwYXJ0cyBhcmUgaW4gaXQgc2hv
dWxkIGJlIHBvc3NpYmxlIHRvIHB1bGwgb3V0IHRoZSBmaXhlZApmcmVxdWVuY3kgYW5kCnJlcGxh
Y2UgaXQgd2l0aCBhIHByb3BlciBoYW5kbGUgdG8gdGhhdCBQTEwgdGFwLgpCYXNpY2FsbHkgaXQn
cyBub3QgZG9jdW1lbnRlZCBhbnl3aGVyZSBleGNlcHQgdGhlIGFzc2VtYmx5IGJ1dCB0aGUKY29u
dmVudGlvbiBmb3IKdGhlc2UgY2hpcHMgaXMgdG8gdXNlIHRoZSAxNzJNSHogY2xvY2sgZm9yIHRo
ZSB1YXJ0IHByZXR0eSBzb29uIGFmdGVyCnBvd2VyIG9uIHNvIGl0Cm1hZGUgc2Vuc2UgdG8gaGF2
ZSBpdCBpbiBvbmUgcGxhY2UuCgpUaGFua3MsCgpEYW5pZWwKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0
CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
