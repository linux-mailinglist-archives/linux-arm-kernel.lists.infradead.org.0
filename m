Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EDA2562083
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jul 2019 16:32:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vThc6inbyHBWSLOmZlSB09Z7oVEynmG9RIoCnNSTrYg=; b=UOdxlUPb04lK2Z
	diYR3+N9/+QNIHTDIlBdOKSICi+0qr4WtrT9qH7JipYuYZwyIib1lA8j4tO9BEpTTs5J8z1wUzGqx
	ZbaA++l9SDTXQBolYJwTMv6HrPMfbjg7/6Wo6Ce8ecO2htJbXPGem7rQvEF4riS2whZfDPGOXLeKQ
	Bc/E2k3jfubJq6HSo13fxjQyIomz5e/IUkRHXZSefluS/T57hHgJgE4T5raI8SzcL5ri1JQjRv3d+
	y/Q2VccXsCFS6Cmty4ajMDzEvrsiTgELftkRtv5HsM8L2MNrGcSK2v7Jhp4caHxyWHCQUoz0FGELg
	dCJEXgy7wdbsxHE4qXgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkUhI-0000o2-3K; Mon, 08 Jul 2019 14:32:52 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkUh7-0000nP-E3
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jul 2019 14:32:42 +0000
Received: by mail-lj1-x243.google.com with SMTP id m8so6665038lji.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 08 Jul 2019 07:32:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=WAw/aU6LZwIL6FVu56mHN3vVX8j9GNHFwvAGIAISsSo=;
 b=yFqK2Fa5FNVeLOgjpxiFNic8jzO/GwJcdLUaJGStjJNMhZz60Qo9R01U6fDs8KmWG4
 GplEP1TLR3Pfsfch/6zDCoois6dE+JkDPJCZxL53pMK4aVXM+32qSKQovQelrf7BMije
 Wb34buu0hSbVOhACpS1mqqhzcrpPeHcfvY0UrPjnphdg+bYXKFoXA/5tEdcSyOk+4y8L
 LH7xym5vOdPlASdtQEntkguxyuXCVlObt47p67yK8XYa/3FY5Z0oORjMBRGzmTEebBVZ
 QI1RP6a6eCQoe1mahq5d2fxAQzp/5GciyTf9t845dUVI5n/dqxrMk62beqjm37oYGp1n
 lpIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=WAw/aU6LZwIL6FVu56mHN3vVX8j9GNHFwvAGIAISsSo=;
 b=Sii9ZlsIE/Mbg/aCDdmIkYedUE20QaH7PB0t4HYKxpboiOjxLKsHC6Oqxdeb3WTeJS
 BEh6vPoNyRXm4kUbBuBn3zHjyFMvdDQZtxH1h/clGO1wYF2mzzH3VWDrkO11foN4UjhX
 HwP6GI+KQoX07jUw5l9Es306OiJSLo7dLR+4/kiWZmNTy3u3fr0VU1qxv092Q4Ks/0zJ
 ruLovA2O1UhA5/HFErf7HkizJOQJ8kOAG+nIp0NRyNv/GgQByyJF3D0FnKf3/wdRcy01
 V4nkCVYYr0FfwkmVjgSEmlSUJqr3Q9YexrCPfeNDsxlUThSpIsA5coU6BBR1xlaJyGVR
 FKlA==
X-Gm-Message-State: APjAAAWmnbuNb5B/Ge0nIMAJ3+uCocxdlTdk0WEwI8D7SmPyY+NB3qMK
 YIUee+h1ibJ196x2njaUUI5dp46bjXohG8F/eMmI8A==
X-Google-Smtp-Source: APXvYqzA7Vn8bG35rz7cR5NV9vyloKLEVm/Czse88spJybT0Aob5DfBfCdBt1z7MfJ3MzJlZPvwkGqI5V1izfq1OR94=
X-Received: by 2002:a2e:9593:: with SMTP id w19mr7413475ljh.69.1562596357740; 
 Mon, 08 Jul 2019 07:32:37 -0700 (PDT)
MIME-Version: 1.0
References: <20190703205527.955320-1-arnd@arndb.de>
 <20190703205527.955320-2-arnd@arndb.de>
In-Reply-To: <20190703205527.955320-2-arnd@arndb.de>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 8 Jul 2019 16:32:26 +0200
Message-ID: <CACRpkdYnuSqiYBPMe_+u6dx_X1zSYKCnCtFznWtxkMf-BGBwjA@mail.gmail.com>
Subject: Re: [PATCH 2/3] kasan: disable CONFIG_KASAN_STACK with clang on arm32
To: Arnd Bergmann <arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_073241_479117_8954B7A8 
X-CRM114-Status: GOOD (  14.49  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: Florian Fainelli <f.fainelli@gmail.com>, clang-built-linux@googlegroups.com,
 linux-kbuild <linux-kbuild@vger.kernel.org>,
 Abbott Liu <liuwenliang@huawei.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 kasan-dev@googlegroups.com, Masahiro Yamada <yamada.masahiro@socionext.com>,
 Michal Marek <michal.lkml@markovi.net>,
 Alexander Potapenko <glider@google.com>, Dmitry Vyukov <dvyukov@google.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Andrey Ryabinin <aryabinin@virtuozzo.com>,
 Andrew Morton <akpm@linux-foundation.org>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 3, 2019 at 10:56 PM Arnd Bergmann <arnd@arndb.de> wrote:

> The CONFIG_KASAN_STACK symbol tells us whether we should be using the
> asan-stack=1 parameter. On clang-8, this causes explosive kernel stack
> frame growth, so it is currently disabled, hopefully to be turned back
> on when a future clang version is fixed. Examples include
>
> drivers/media/dvb-frontends/mb86a20s.c:1942:12: error: stack frame size of 4128 bytes in function
> drivers/net/wireless/atmel/atmel.c:1307:5: error: stack frame size of 4928 bytes in function 'atmel_open'
> drivers/gpu/drm/nouveau/nvkm/subdev/fb/ramgk104.c:1521:1: error: stack frame size of 5440 bytes in function
> drivers/media/i2c/mt9t112.c:670:12: error: stack frame size of 9344 bytes in function 'mt9t112_init_camera'
> drivers/video/fbdev/omap2/omapfb/displays/panel-tpo-td028ttec1.c:185:12: error: stack frame size of 10048 bytes
>
> For the 32-bit ARM build, the logic I introduced earlier does
> not work because $(CFLAGS_KASAN_SHADOW) is empty, and we don't add
> those flags.
>
> Moving the asan-stack= parameter down fixes this. No idea of any
> of the other parameters should also be moved though.
>
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

For some reason the RealView doesn't boot after this patch. Trying to figure
out why.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
