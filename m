Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03C3E140EDC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 17:23:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GUKFjuvIN4qMvmJKGG60wkV9Mij62Obj5ifroKAzdKg=; b=J4YsR4JeBuMGE6
	/EiIqY2kVMSuZjYKg3xvE3SJ5qFpiki6RoddnwscG+0o8DtmaNXtI2uOAsbbcazYokrfpn1n90jSK
	EdbdEbIUhc5MAxZLtCixLRJAE59beIVuK2kMeyTr4tsGc2n6BDyLlBi7XHXii+1tDG9cZ4jLYYMT0
	9yVRUsmNy51zVIL8+1/cVyB3k80R4UYdkprZA1CJBu4ahzvWuS1TSr+HW98V17khLwz+FW4ITTLRZ
	y/QsgZOGKne947n1YQ0ewSxlvuyAOTOQhpTofpvOEJLK00R8i8hEZcnEeDH0oRaKx0Sk7+aPlZahh
	PXGIx31x4RuJB5fpCMWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isUOr-0004sz-Gy; Fri, 17 Jan 2020 16:23:09 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isUOe-0004RZ-Ep
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Jan 2020 16:23:01 +0000
Received: by mail-wm1-x343.google.com with SMTP id q9so8007875wmj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 Jan 2020 08:22:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=fXYdfeuGiinYnhGBOfeXP9JkO0zF83G+sHEIIkYV2j4=;
 b=V+w3i+EoJgnKQ08cLvZo1srLvukcYxkwrZKt11ku2dNxMhA+9U0ZhXbDxzhH8s7p/P
 yh3KjX7zZHqKqO6y4NmN5vTqRfd1YvodnEFCpp/kurNkZplqXiwpwQLCrcEW2X1ZXTml
 LF4GV6ST7Kqy8Q7dlRCywVHOdfwcfBqg3RYanI7n5+JmbULVVpPkGsgolSLTlm+vcU61
 ycb+lV4LSAwCxaUnkkVQ+sZIXsGRZBPFcvfpB7GRMjpA5mPR3+e/iECr0Smdn77kZBWw
 HD8cHTEkMEraNbZOAmYY95HEG3EelIIJFe7bvJWWzgaJeOCk7Xu1TCGGPoUxERsiR7ki
 Fthg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fXYdfeuGiinYnhGBOfeXP9JkO0zF83G+sHEIIkYV2j4=;
 b=XaKGA4HmWmBxTmPq53ocDu6zBIq9y1BHp9KdeT+b+dIv55lCAyoasSTA9uxaXPXe/K
 5+DNmxS7EgBQjR/oPzZEHkXm1iifSlTEKAZg91tESEoqeKZP0bAtztYz8IG2r889pRKM
 DZPdBAq7vOI8wp1pYaPRd/e38dOkI3JAXK/vfJwVauPi28Aj1CIRszG9AW94OyFBZkuY
 SEtzjax8LXjTJuQvl1qPS7Rti7itayftBRIpY2XFbQrAOiVP24uSfORJLsfpeto923tJ
 YRPZ6mxs91qub0txxqMDx/uYdb8FRe94YxuF4UfQ6ogPzfKeFRbb3QkpHmMhJAEXNQYp
 XA4g==
X-Gm-Message-State: APjAAAWb56LAp8U8z/0L9gbxhrPawkT8SaUdSPhU7lRLzhf++oBlOSX8
 7wEmLZtaq90Dynu7VSYtrckHZCEFjv1YYm5VpfGkVQ==
X-Google-Smtp-Source: APXvYqzX+hEgsDfpoDbDReRIOyP4kllHOs0sRSLvIr57NZvHbGU39Pf+OIo0RJkh/rgyo2UYexYDjcAa66rWqsrsQhw=
X-Received: by 2002:a7b:cc81:: with SMTP id p1mr5273097wma.62.1579278174281;
 Fri, 17 Jan 2020 08:22:54 -0800 (PST)
MIME-Version: 1.0
References: <20200117160251.GQ25745@shell.armlinux.org.uk>
In-Reply-To: <20200117160251.GQ25745@shell.armlinux.org.uk>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Fri, 17 Jan 2020 17:22:43 +0100
Message-ID: <CAKv+Gu_aPNfk1bvVJdh3Bzr4V0q+9sNvAKNYxpWtUeD_WbtYXQ@mail.gmail.com>
Subject: Re: REGRESSION: ChaCha fails to build in randconfig
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_082257_263819_1AD9BC55 
X-CRM114-Status: GOOD (  16.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
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
Cc: Arnd Bergmann <arnd@arndb.de>, Ard Biesheuvel <ardb@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 17 Jan 2020 at 17:02, Russell King - ARM Linux admin
<linux@armlinux.org.uk> wrote:
>
> Ard,
>
> Randconfig builds have found an issue with a commit in the last merge
> window:
>
> chacha-glue.c:(.text+0xc0): undefined reference to `chacha_4block_xor_neon'
>
> This seems to be a result of this commit:
>
> commit b36d8c09e710c71f6a9690b6586fea2d1c9e1e27
> Author: Ard Biesheuvel <ardb@kernel.org>
> Date:   Fri Nov 8 13:22:14 2019 +0100
>
>     crypto: arm/chacha - remove dependency on generic ChaCha driver
>
> CRYPTO_CHACHA20_NEON does not depend on KERNEL_MODE_NEON, yet the
> makefile has:
>
> obj-$(CONFIG_CRYPTO_CHACHA20_NEON) += chacha-neon.o
> chacha-neon-y := chacha-scalar-core.o chacha-glue.o
> chacha-neon-$(CONFIG_KERNEL_MODE_NEON) += chacha-neon-core.o
>
> chacha-glue.c refers to chacha_4block_xor_neon in chacha_doneon(),
> and I guess some compilers are not clever enough to eliminate that
> code with KERNEL_MODE_NEON is disabled.
>
> Arnd has a patch that adds a dependency to stop this being a problem,
> but that is probably not what you want.  Please fix.
>

Thanks for the head's up

I'll post something along the lines of the below, that should convince
the compiler that chacha_4block_xor_neon() is never called when
CONFIG_KERNEL_MODE_NEON is not enabled.



--- a/arch/arm/crypto/chacha-glue.c
+++ b/arch/arm/crypto/chacha-glue.c
@@ -115,7 +115,7 @@ static int chacha_stream_xor(struct skcipher_request *req,
                if (nbytes < walk.total)
                        nbytes = round_down(nbytes, walk.stride);

-               if (!neon) {
+               if (!IS_ENABLED(CONFIG_KERNEL_MODE_NEON) || !neon) {
                        chacha_doarm(walk.dst.virt.addr, walk.src.virt.addr,
                                     nbytes, state, ctx->nrounds);
                        state[12] += DIV_ROUND_UP(nbytes, CHACHA_BLOCK_SIZE);
@@ -159,7 +159,7 @@ static int do_xchacha(struct skcipher_request
*req, bool neon)

        chacha_init_generic(state, ctx->key, req->iv);

-       if (!neon) {
+       if (!IS_ENABLED(CONFIG_KERNEL_MODE_NEON) || !neon) {
                hchacha_block_arm(state, subctx.key, ctx->nrounds);
        } else {
                kernel_neon_begin();

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
