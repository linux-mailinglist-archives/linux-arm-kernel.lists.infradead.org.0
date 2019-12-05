Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9916A113E1B
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 10:36:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jKoZj0daCXuAgFVKBCCsZX1mszKcLw84TF79mjVB6h8=; b=FhELyNrTanmEJC
	xYJbwp/FEHbZpQPkdKki/RkXPXzl5Q64NmS3Iut94ZvB9dxR7TzhpvsfeDBz0psrohwbFRynuaZ/6
	c1Di0o/Jg0pEhZPzIMbtSj6DMI9u35r5Tq6UkQNagPUNkkOW6fH0svaz7deRQVXW3YtQTRCxaLNaS
	yaVnfbSaSe5Qg60thYhYIDLiNfC0nMQOwnPhRwxuGSFACz1HEYgKJJ5UpnU/QM42QLjQ4riL9/KQl
	YHXut1nfRp+NScHskOaneQIWfbAA/s5DEb2SER0fRTuztAIi3J0JO0yFW0yen0ncfNreN3A+FH0iX
	/9imGELlofIfx4aMeUVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icnYv-0001P7-Lw; Thu, 05 Dec 2019 09:36:41 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icnYn-0001Oa-UB
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Dec 2019 09:36:35 +0000
Received: by mail-wr1-x443.google.com with SMTP id y11so2622919wrt.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Dec 2019 01:36:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=yDhpzGph/Sl3F5yiAxtDx7OozplQyiOLtDQYn1Ymcc4=;
 b=cFs1DKxxrz3wBHesk8ew2n1s9xKJYKOoB799VoJIVv7vULGEjf8uPBSiTsC/uIEN0b
 rGnDFF9fgPyFOi/HhbgkzTxaYPn89KCBGiQrMptVXesZLRn6BXw//WBBFa0NqxTTCRQ+
 RYm7Bph9RQq5Vne74F/S8/agrOXEavnZbA/yzX/HKP0sZsASJ2kebR4VFGv4iVKJZaKY
 B2MiD7qkcJeYtcY1CbGtrCvRNRRDzU81NWP49VI9Bh2UraywJ8vdE3cRdRwcs4CSyo8g
 B7YRwjFxN/n21rzlbyVkyiiW1EQ1AHPhxHem+7IJD9doSzgLWCydSd1dVtnhKPTocYXg
 BzLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=yDhpzGph/Sl3F5yiAxtDx7OozplQyiOLtDQYn1Ymcc4=;
 b=QHXw0T2DL2jyS0gjVMCuS8ebjRXn1NRXQkTnXrfPT6cVm6ZcNXdrNkH+L8+CnZhI4F
 y6DcbvpWszUtnGllZOCewXSod+4fzK5RwKo7r4iaPSamJ7XQLbAUG/gD91eMTAvuOqnd
 BVi7YDt34HrEmvxSbd68gbJeDFL978VxtN5wmiPTViGhONTVEnlu2gUwGxoe7z4kmgl/
 iZBOjWUBKsw4H/BdNEfmr8oxPLepBAVixiX/m2F3wHkFuuqQCpXMJpJsGnzDULUvUQHG
 r5AssB167IdY2VpXVPaQqgGyo1HBLkyEwENzInV0eAMA3LzboL4/7hj1kdnqdjIZFw33
 9MKw==
X-Gm-Message-State: APjAAAVtnpt+8pv5mSu807TyvQ6nDpgvf3bo+uh9i63ADRigMdhhdP6A
 lYQmfjIGk3Xghh9Ze0+kuHVkUHdDflz9bXkWAXxGVA==
X-Google-Smtp-Source: APXvYqzV4yD5evgBaMe8lq6m+lD5/SimV/mRxPFn5FYoNCSYAHmao71QnHJ9x2c2DpakxxM1i1+QHz1VLBVG3mRVAi4=
X-Received: by 2002:a5d:6652:: with SMTP id f18mr9267283wrw.246.1575538592021; 
 Thu, 05 Dec 2019 01:36:32 -0800 (PST)
MIME-Version: 1.0
References: <5de7d155.1c69fb81.c06f8.3583@mx.google.com>
 <377fa169-7ae5-479f-023c-e282d8c19f3a@collabora.com>
In-Reply-To: <377fa169-7ae5-479f-023c-e282d8c19f3a@collabora.com>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Thu, 5 Dec 2019 09:36:28 +0000
Message-ID: <CAKv+Gu_LY29hJ9c+myomeappoOgJYHdNYoWOu=KyfH3zCcTkLw@mail.gmail.com>
Subject: Re: ardb/for-kernelci bisection: boot on rk3288-rock2-square
To: Guillaume Tucker <guillaume.tucker@collabora.com>,
 Eric Biggers <ebiggers@kernel.org>, 
 Herbert Xu <herbert@gondor.apana.org.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_013633_991862_9245BB59 
X-CRM114-Status: GOOD (  21.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Alexandre Torgue <alexandre.torgue@st.com>, tomeu.vizoso@collabora.com,
 "David S. Miller" <davem@davemloft.net>, Kevin Hilman <khilman@baylibre.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-stm32@st-md-mailman.stormreply.com, Mark Brown <broonie@kernel.org>,
 "open list:HARDWARE RANDOM NUMBER GENERATOR CORE"
 <linux-crypto@vger.kernel.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 mgalka@collabora.com, Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Ard Biesheuvel <ardb@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

(+ Eric)

On Wed, 4 Dec 2019 at 17:17, Guillaume Tucker
<guillaume.tucker@collabora.com> wrote:
>
> On 04/12/2019 15:31, kernelci.org bot wrote:
> > * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
> > * This automated bisection report was sent to you on the basis  *
> > * that you may be involved with the breaking commit it has      *
> > * found.  No manual investigation has been done to verify it,   *
> > * and the root cause of the problem may be somewhere else.      *
> > *                                                               *
> > * If you do send a fix, please include this trailer:            *
> > *   Reported-by: "kernelci.org bot" <bot@kernelci.org>          *
> > *                                                               *
> > * Hope this helps!                                              *
> > * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
> >
> > ardb/for-kernelci bisection: boot on rk3288-rock2-square
> >
> > Summary:
> >   Start:      16839329da69 enable extra tests by default
> >   Details:    https://kernelci.org/boot/id/5de79104990bc03e5a960f0b
> >   Plain log:  https://storage.kernelci.org//ardb/for-kernelci/v5.4-9340-g16839329da69/arm/multi_v7_defconfig+CONFIG_EFI=y+CONFIG_ARM_LPAE=y/gcc-8/lab-collabora/boot-rk3288-rock2-square.txt
> >   HTML log:   https://storage.kernelci.org//ardb/for-kernelci/v5.4-9340-g16839329da69/arm/multi_v7_defconfig+CONFIG_EFI=y+CONFIG_ARM_LPAE=y/gcc-8/lab-collabora/boot-rk3288-rock2-square.html
> >   Result:     16839329da69 enable extra tests by default
> >
> > Checks:
> >   revert:     PASS
> >   verify:     PASS
> >
> > Parameters:
> >   Tree:       ardb
> >   URL:        git://git.kernel.org/pub/scm/linux/kernel/git/ardb/linux.git
> >   Branch:     for-kernelci
> >   Target:     rk3288-rock2-square
> >   CPU arch:   arm
> >   Lab:        lab-collabora
> >   Compiler:   gcc-8
> >   Config:     multi_v7_defconfig+CONFIG_EFI=y+CONFIG_ARM_LPAE=y
> >   Test suite: boot
> >
> > Breaking commit found:
> >
> > -------------------------------------------------------------------------------
> > commit 16839329da69263e7360f3819bae01bcf4b220ec
> > Author: Ard Biesheuvel <ardb@kernel.org>
> > Date:   Tue Dec 3 12:29:31 2019 +0000
> >
> >     enable extra tests by default
> >
> > diff --git a/crypto/Kconfig b/crypto/Kconfig
> > index 5575d48473bd..36af840aa820 100644
> > --- a/crypto/Kconfig
> > +++ b/crypto/Kconfig
> > @@ -140,7 +140,6 @@ if CRYPTO_MANAGER2
> >
> >  config CRYPTO_MANAGER_DISABLE_TESTS
> >       bool "Disable run-time self tests"
> > -     default y
> >       help
> >         Disable run-time self tests that normally take place at
> >         algorithm registration.
> > @@ -148,6 +147,7 @@ config CRYPTO_MANAGER_DISABLE_TESTS
> >  config CRYPTO_MANAGER_EXTRA_TESTS
> >       bool "Enable extra run-time crypto self tests"
> >       depends on DEBUG_KERNEL && !CRYPTO_MANAGER_DISABLE_TESTS
> > +     default y
> >       help
> >         Enable extra run-time self tests of registered crypto algorithms,
> >         including randomized fuzz tests.
> > diff --git a/crypto/testmgr.c b/crypto/testmgr.c
> > index 88f33c0efb23..5df87bcf6c4d 100644
> > --- a/crypto/testmgr.c
> > +++ b/crypto/testmgr.c
> > @@ -40,7 +40,7 @@ static bool notests;
> >  module_param(notests, bool, 0644);
> >  MODULE_PARM_DESC(notests, "disable crypto self-tests");
> >
> > -static bool panic_on_fail;
> > +static bool panic_on_fail = true;
> >  module_param(panic_on_fail, bool, 0444);
> >
> >  #ifdef CONFIG_CRYPTO_MANAGER_EXTRA_TESTS
> > -------------------------------------------------------------------------------
>
>
> Seems legit, from the log:
>
> <3>[   18.186181] rk3288-crypto ff8a0000.cypto-controller: [rk_load_data:123] pcopy err
> <3>[   18.199432] alg: skcipher: ecb-aes-rk encryption failed on test vector \"random: len=0 klen=32\"; expected_error=0, actual_error=-22, cfg=\"random: inplace use_finup nosimd src_divs=[100.0%@+2054] key_offset=16\"
> <0>[   18.220458] Kernel panic - not syncing: alg: self-tests for ecb-aes-rk (ecb(aes)) failed in panic_on_fail mode!
>
> Let me know if you need any help with testing a fix on this
> platform or anything.
>

This is an expected failure. I pushed this to my branch to check if
Eric's new AEAD testing code identifies any new problems on the
hardware we have in kernelCI, but it only found stuff we already knew
about.

> Also, as you probably only want this to be enabled in KernelCI
> and not merged upstream, we could have a config fragment to
> enable the config with your branch and maybe even others.
>

It would be *very* helpful if we could add Herbert's cryptodev branch
[0] to kernelCI with a kconfig fragment that turns off
CRYPTO_MANAGER_DISABLE_TESTS and turns on CRYPTO_MANAGER_EXTRA_TESTS,
and passes cryptomgr.panic_on_fail=1 on the kernel command line. That
way, we'll have rolling coverage of just the crypto changes queued up
in linux-next, but tested thoroughly on actual hardware, and without
the need to carry patches like the above to trigger the tests
explicitly.

[0] https://git.kernel.org/pub/scm/linux/kernel/git/herbert/cryptodev-2.6.git/

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
