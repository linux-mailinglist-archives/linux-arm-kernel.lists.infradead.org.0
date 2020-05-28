Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 761D71E625A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 15:33:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6Hd+3pp2bpctaNvV6VIaYtToGzgL8Af8tnc0lHYYnEQ=; b=iuEcKSnu66XTqA
	KaO9EAyKuOORbAiBEn0TLcJMrbyhNpN7wIQJMAinUt+BZpKh2SBMZTEIkIecpFfSssSYnTizaqPcB
	Lr3/1RJLIVkr4c5MhWZf9SSzbxnuwA1jHzDGn4AjR+5fZgUhy8i6ezoFI+IXG/52wmTickATfHzdh
	QAC7hoVmRqwCq08H1A/kRDuMOL54y8Fp4IamNysdOj03qO3D+uraYVIb9WhA8RWnt3s8u5J1lf22J
	tNEnczFqCbb/nSpCaXkZM2SVjL/F2aTmTvTFm7i4S2FCNvAW0gpmorbnhZvTUYW4WtloqktGE2cHR
	dlONcmNo0MuDeQ9iANeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeIef-0004UZ-HK; Thu, 28 May 2020 13:33:05 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeIeS-0004TE-7j
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 13:32:53 +0000
Received: by mail-io1-xd44.google.com with SMTP id d5so20444492ios.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 May 2020 06:32:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=W6Ng+4krUrmarKse2LeV5TbqCd00mWN+CVVq8JMM5SE=;
 b=NJ0ybiSwbgGo1ahGYgAEwAdeEVE39Up4uZ5A1HFgeBFSeLdYyEjBoxzLaGany3U5qV
 tjyrvq25hqP+szOxI6JhW3xweR3C+uklX69AslmSgzZCTItj/lE1GwHfTH3xcf08EAt3
 mIwE34/rwjc7maTJJIaEZzx9+zgsTJyg16wtDEVvAZDos92VaeKTKyLujiHiG6B1cOYc
 KIuFtxHGqOtrjVeCdhdPy1poHODMArChjps6RUTUQ889ANVor3RtIvsULAyoI9a8m+lM
 yGQ/vmJQnyAURdQlFeawVfHk0vmYbLrVgpgL5isYwZKpihaGQitPE1wijKFtYBpDmHAO
 jbyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=W6Ng+4krUrmarKse2LeV5TbqCd00mWN+CVVq8JMM5SE=;
 b=evztZFbum/hbkz9yNt5UNtv+8ExyaKGZnHgRSP4k553qCEwU4B0KuTPs+shoDiRoem
 6vN8atK6L98MEq4G+leMDrFrhmbdYUFkU7pDDqk7z/BYXSh8qQs/GmleBe3MRwDaiLGR
 6Qb05Lx4x1SaUPfFOTxmlGeaJstpU1Buuv/jOuayZFwn86p/Z/pQi98a4i5SXwZcvdI8
 cFuSi3paHz482fuzDuCywbBxJOW4diQVf3YNoomA3dZcMCb7JSFWk9TPOazYxBqtJGB8
 sxhhmR0bmRSEOu9Y+e0pSuaZDt/o2DYrYwPFLmRlxN+H2umXLSWTn6bncy3BJxOcQ5kv
 6TTQ==
X-Gm-Message-State: AOAM532Pn+ehpc872At+WjVliIOHoK+4Sm1rIbpxRZnM9RVgiT5Ef6mo
 aeNKKXVlzB8cQ9zBG52yS88bcnymomLU1kUeIY+R4g==
X-Google-Smtp-Source: ABdhPJzo7KSXJqLmG4j0rLnWfVnluS/E9w7gshGux7pMtHXApV9skQgthF60OVdfNho6c1thzgPYEEykEs0OHoviWNw=
X-Received: by 2002:a5e:981a:: with SMTP id s26mr2322972ioj.131.1590672771135; 
 Thu, 28 May 2020 06:32:51 -0700 (PDT)
MIME-Version: 1.0
References: <20200528123459.21168-1-brgl@bgdev.pl>
 <20200528123459.21168-2-brgl@bgdev.pl>
 <20200528132938.GC3606@sirena.org.uk>
In-Reply-To: <20200528132938.GC3606@sirena.org.uk>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Thu, 28 May 2020 15:32:40 +0200
Message-ID: <CAMRc=MejeXv6vd5iRW_EB3XqBtdCWDcV=4BOCDDFd4D0-y9LUA@mail.gmail.com>
Subject: Re: [PATCH 1/2] regmap: provide helpers for simple bit operations
To: Mark Brown <broonie@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_063252_285564_947AD68B 
X-CRM114-Status: UNSURE (   9.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Stephane Le Provost <stephane.leprovost@mediatek.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 netdev <netdev@vger.kernel.org>, Sean Wang <sean.wang@mediatek.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Mark Lee <Mark-MC.Lee@mediatek.com>, Fabien Parent <fparent@baylibre.com>,
 Pedro Tsai <pedro.tsai@mediatek.com>,
 "moderated list:ARM/Mediatek SoC..." <linux-mediatek@lists.infradead.org>,
 Andrew Perepech <andrew.perepech@mediatek.com>,
 John Crispin <john@phrozen.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Jakub Kicinski <kuba@kernel.org>, "David S . Miller" <davem@davemloft.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Y3p3LiwgMjggbWFqIDIwMjAgbyAxNToyOSBNYXJrIEJyb3duIDxicm9vbmllQGtlcm5lbC5vcmc+
IG5hcGlzYcWCKGEpOgo+Cj4gT24gVGh1LCBNYXkgMjgsIDIwMjAgYXQgMDI6MzQ6NThQTSArMDIw
MCwgQmFydG9zeiBHb2xhc3pld3NraSB3cm90ZToKPgo+ID4gVGhpcyBhZGRzIHRocmVlIG5ldyBt
YWNyb3MgZm9yIHNpbXBsZSBiaXQgb3BlcmF0aW9uczogc2V0X2JpdHMsCj4gPiBjbGVhcl9iaXRz
IGFuZCB0ZXN0X2JpdHMuCj4KPiBXaHkgbWFjcm9zIGFuZCBub3Qgc3RhdGljIGlubGluZXM/CgpU
aGUgZXhpc3RpbmcgcmVnbWFwX3VwZGF0ZV9iaXRzXyooKSBoZWxwZXJzIGFyZSBtYWNyb3MgdG9v
LCBzbyBJIHRyaWVkCnRvIHN0YXkgY29uc2lzdGVudC4gQW55IHJlYXNvbiB3aHkgdGhleSBhcmUg
bWFjcm9zIGFuZCBub3Qgc3RhdGljCmlubGluZXM/IElmIHRoZXJlJ3Mgbm9uZSwgdGhlbiB3aHkg
bm90IGNvbnZlcnQgdGhlbSB0b28/IE90aGVyd2lzZQp3ZSdkIGhhdmUgYSBzdGF0aWMgaW5saW5l
IGV4cGFuZGluZyBhIG1hY3JvIHdoaWNoIGluIHR1cm4gaXMgY2FsbGluZyBhCmZ1bmN0aW9uIChy
ZWdtYXBfdXBkYXRlX2JpdHNfYmFzZSgpKS4KCkJhcnRvc3oKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0
CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
