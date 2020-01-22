Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5182414525A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Jan 2020 11:16:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PTUpFQvCedgMQAXNKbjO66hcPjp3Bcot+LHboYfoe7s=; b=kthPVeugLPpyY8
	CKPbFRit45X7fANzUcmmqec1+1q8b8Rf9DtXA5XK0qWcDeF0nh/uk70c1wVVUaCL/ZDMCGraokl8m
	HZfsRsfmcivxxLI839oQxqCDLwCFdqr8+uXntyyJomu3ULGSVZkl73bMVJJLzN50gosXAW4/3Bph+
	dg4U2w2flrqRCsNG6ulMlTk0+lWEdXTjYXY0SuyHdMWFg4u3AsXN76WRc0/p9EjnLYJ3iEIY6Cl5q
	clvmurhn5pDwtCMvn1Vi1FtjWioXYlBoNvhzbeX4uEd+ELREH0iNL28RyhKiGFiioGjNAC2YPXuEr
	Gy11iVv8j1xggd8DdZRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuD3d-0001ah-PV; Wed, 22 Jan 2020 10:16:21 +0000
Received: from helcar.hmeau.com ([216.24.177.18] helo=deadmen.hmeau.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuD3U-0001aD-88
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Jan 2020 10:16:13 +0000
Received: from gondobar.mordor.me.apana.org.au ([192.168.128.4] helo=gondobar)
 by deadmen.hmeau.com with esmtps (Exim 4.89 #2 (Debian))
 id 1iuD3S-0000eQ-UF; Wed, 22 Jan 2020 18:16:11 +0800
Received: from herbert by gondobar with local (Exim 4.89)
 (envelope-from <herbert@gondor.apana.org.au>)
 id 1iuD3Q-00045N-Ct; Wed, 22 Jan 2020 18:16:08 +0800
Date: Wed, 22 Jan 2020 18:16:08 +0800
From: Herbert Xu <herbert@gondor.apana.org.au>
To: Ard Biesheuvel <ardb@kernel.org>
Subject: Re: [PATCH] crypto: arm/chacha - fix build failured when kernel mode
 NEON is disabled
Message-ID: <20200122101608.v7phje7p52rxjorw@gondor.apana.org.au>
References: <20200117164318.21941-1-ardb@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200117164318.21941-1-ardb@kernel.org>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200122_021612_457701_3C57A38F 
X-CRM114-Status: GOOD (  14.67  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Arnd Bergmann <arnd@arndb.de>, linux-crypto@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Russell King <linux@armlinux.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jan 17, 2020 at 05:43:18PM +0100, Ard Biesheuvel wrote:
> When the ARM accelerated ChaCha driver is built as part of a configuration
> that has kernel mode NEON disabled, we expect the compiler to propagate
> the build time constant expression IS_ENABLED(CONFIG_KERNEL_MODE_NEON) in
> a way that eliminates all the cross-object references to the actual NEON
> routines, which allows the chacha-neon-core.o object to be omitted from
> the build entirely.
> 
> Unfortunately, this fails to work as expected in some cases, and we may
> end up with a build error such as
> 
>   chacha-glue.c:(.text+0xc0): undefined reference to `chacha_4block_xor_neon'
> 
> caused by the fact that chacha_doneon() has not been eliminated from the
> object code, even though it will never be called in practice.
> 
> Let's fix this by adding some IS_ENABLED(CONFIG_KERNEL_MODE_NEON) tests
> that are not strictly needed from a logical point of view, but should
> help the compiler infer that the NEON code paths are unreachable in
> those cases.
> 
> Fixes: b36d8c09e710c71f ("crypto: arm/chacha - remove dependency on generic ...")
> Reported-by: Russell King <linux@armlinux.org.uk>
> Cc: Arnd Bergmann <arnd@arndb.de>
> Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
> ---
>  arch/arm/crypto/chacha-glue.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

Patch applied.  Thanks.
-- 
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
