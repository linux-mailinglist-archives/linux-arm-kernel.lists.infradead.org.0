Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 920F41130A1
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 18:17:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lbs1jZh/fY/v1XkqQ5dtS8UYd46hDezaaDTSTnp7c60=; b=et32Shk52NlzFT
	rwkkFdBFDWdvi1TygbtKuI8DjAhGT/dcUMU+SyACSXPuvJE3yZJogpuRRhRIZ9Ack3i5SDxgDj8L+
	GUZmGYa1BFha1IOoyzppWbJgH1MSIYqP8kL3yJdhtlePUxoaHnDPN20LjPj7MYyVzRN6Ga4qxR4FG
	zhBUOg8iwlKlgwnk2xg2znFfXxxuL5goxZeXPDJWYwmJH79iXy0S+SBcsoIDxapLn1+P54Z5IYaIe
	umnT7ShTlFlAvpuLBkw/JCWmav03ni3UO7GJBPBXcMCfyuOBACEZhTXrf85q0nhD9k+AuloR4MzlV
	+hO2Dqp0a061Y3z/X5WQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icYHJ-0003bf-G6; Wed, 04 Dec 2019 17:17:29 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icYHA-0003Z2-CA
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 17:17:22 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: gtucker) with ESMTPSA id 3AACF260419
Subject: Re: ardb/for-kernelci bisection: boot on rk3288-rock2-square
To: Ard Biesheuvel <ardb@kernel.org>, mgalka@collabora.com,
 broonie@kernel.org, enric.balletbo@collabora.com,
 tomeu.vizoso@collabora.com, khilman@baylibre.com
References: <5de7d155.1c69fb81.c06f8.3583@mx.google.com>
From: Guillaume Tucker <guillaume.tucker@collabora.com>
Message-ID: <377fa169-7ae5-479f-023c-e282d8c19f3a@collabora.com>
Date: Wed, 4 Dec 2019 17:17:14 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <5de7d155.1c69fb81.c06f8.3583@mx.google.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_091720_681989_73BA24DE 
X-CRM114-Status: GOOD (  15.16  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Herbert Xu <herbert@gondor.apana.org.au>, linux-kernel@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>, linux-crypto@vger.kernel.org,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 Alexandre Torgue <alexandre.torgue@st.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 04/12/2019 15:31, kernelci.org bot wrote:
> * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
> * This automated bisection report was sent to you on the basis  *
> * that you may be involved with the breaking commit it has      *
> * found.  No manual investigation has been done to verify it,   *
> * and the root cause of the problem may be somewhere else.      *
> *                                                               *
> * If you do send a fix, please include this trailer:            *
> *   Reported-by: "kernelci.org bot" <bot@kernelci.org>          *
> *                                                               *
> * Hope this helps!                                              *
> * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
> 
> ardb/for-kernelci bisection: boot on rk3288-rock2-square
> 
> Summary:
>   Start:      16839329da69 enable extra tests by default
>   Details:    https://kernelci.org/boot/id/5de79104990bc03e5a960f0b
>   Plain log:  https://storage.kernelci.org//ardb/for-kernelci/v5.4-9340-g16839329da69/arm/multi_v7_defconfig+CONFIG_EFI=y+CONFIG_ARM_LPAE=y/gcc-8/lab-collabora/boot-rk3288-rock2-square.txt
>   HTML log:   https://storage.kernelci.org//ardb/for-kernelci/v5.4-9340-g16839329da69/arm/multi_v7_defconfig+CONFIG_EFI=y+CONFIG_ARM_LPAE=y/gcc-8/lab-collabora/boot-rk3288-rock2-square.html
>   Result:     16839329da69 enable extra tests by default
> 
> Checks:
>   revert:     PASS
>   verify:     PASS
> 
> Parameters:
>   Tree:       ardb
>   URL:        git://git.kernel.org/pub/scm/linux/kernel/git/ardb/linux.git
>   Branch:     for-kernelci
>   Target:     rk3288-rock2-square
>   CPU arch:   arm
>   Lab:        lab-collabora
>   Compiler:   gcc-8
>   Config:     multi_v7_defconfig+CONFIG_EFI=y+CONFIG_ARM_LPAE=y
>   Test suite: boot
> 
> Breaking commit found:
> 
> -------------------------------------------------------------------------------
> commit 16839329da69263e7360f3819bae01bcf4b220ec
> Author: Ard Biesheuvel <ardb@kernel.org>
> Date:   Tue Dec 3 12:29:31 2019 +0000
> 
>     enable extra tests by default
> 
> diff --git a/crypto/Kconfig b/crypto/Kconfig
> index 5575d48473bd..36af840aa820 100644
> --- a/crypto/Kconfig
> +++ b/crypto/Kconfig
> @@ -140,7 +140,6 @@ if CRYPTO_MANAGER2
>  
>  config CRYPTO_MANAGER_DISABLE_TESTS
>  	bool "Disable run-time self tests"
> -	default y
>  	help
>  	  Disable run-time self tests that normally take place at
>  	  algorithm registration.
> @@ -148,6 +147,7 @@ config CRYPTO_MANAGER_DISABLE_TESTS
>  config CRYPTO_MANAGER_EXTRA_TESTS
>  	bool "Enable extra run-time crypto self tests"
>  	depends on DEBUG_KERNEL && !CRYPTO_MANAGER_DISABLE_TESTS
> +	default y
>  	help
>  	  Enable extra run-time self tests of registered crypto algorithms,
>  	  including randomized fuzz tests.
> diff --git a/crypto/testmgr.c b/crypto/testmgr.c
> index 88f33c0efb23..5df87bcf6c4d 100644
> --- a/crypto/testmgr.c
> +++ b/crypto/testmgr.c
> @@ -40,7 +40,7 @@ static bool notests;
>  module_param(notests, bool, 0644);
>  MODULE_PARM_DESC(notests, "disable crypto self-tests");
>  
> -static bool panic_on_fail;
> +static bool panic_on_fail = true;
>  module_param(panic_on_fail, bool, 0444);
>  
>  #ifdef CONFIG_CRYPTO_MANAGER_EXTRA_TESTS
> -------------------------------------------------------------------------------


Seems legit, from the log:

<3>[   18.186181] rk3288-crypto ff8a0000.cypto-controller: [rk_load_data:123] pcopy err
<3>[   18.199432] alg: skcipher: ecb-aes-rk encryption failed on test vector \"random: len=0 klen=32\"; expected_error=0, actual_error=-22, cfg=\"random: inplace use_finup nosimd src_divs=[100.0%@+2054] key_offset=16\"
<0>[   18.220458] Kernel panic - not syncing: alg: self-tests for ecb-aes-rk (ecb(aes)) failed in panic_on_fail mode!

Let me know if you need any help with testing a fix on this
platform or anything.

Also, as you probably only want this to be enabled in KernelCI
and not merged upstream, we could have a config fragment to
enable the config with your branch and maybe even others.

Guillaume


> Git bisection log:
> 
> -------------------------------------------------------------------------------
> git bisect start
> # good: [b94ae8ad9fe79da61231999f347f79645b909bda] Merge tag 'seccomp-v5.5-rc1' of git://git.kernel.org/pub/scm/linux/kernel/git/kees/linux
> git bisect good b94ae8ad9fe79da61231999f347f79645b909bda
> # bad: [16839329da69263e7360f3819bae01bcf4b220ec] enable extra tests by default
> git bisect bad 16839329da69263e7360f3819bae01bcf4b220ec
> # good: [25cbf24a7eec7c3dee4113b2e98b572e128009b7] crypto: aead - move crypto_aead_maxauthsize() to <crypto/aead.h>
> git bisect good 25cbf24a7eec7c3dee4113b2e98b572e128009b7
> # good: [7b19c7a82950ed034645fa92adce29cd6163ed3e] crypto: testmgr - check skcipher min_keysize
> git bisect good 7b19c7a82950ed034645fa92adce29cd6163ed3e
> # good: [062752a354aaf03b46b86cba5fdaa2fd5c932860] crypto: testmgr - create struct aead_extra_tests_ctx
> git bisect good 062752a354aaf03b46b86cba5fdaa2fd5c932860
> # good: [2cd56a00fff8584e342164c65e6b55da61f79c4a] crypto: testmgr - generate inauthentic AEAD test vectors
> git bisect good 2cd56a00fff8584e342164c65e6b55da61f79c4a
> # first bad commit: [16839329da69263e7360f3819bae01bcf4b220ec] enable extra tests by default
> -------------------------------------------------------------------------------
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
