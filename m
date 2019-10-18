Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C987DBF56
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 10:04:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DkYXJNtifTkmua+MjOyrZlBMhuFBarci/aBkTpOQW5U=; b=hK6OL1ktpujLfw
	765lgE/uxMzyTFQU5Q/NqKiU01FrOL1wNdP3EpyvUPd1/8OrVNCi+dwHcJiXqb7gLmmAYc9RwyqSq
	EFw/hL71YIexyrQD2oD4kf8tYTzVXGx7NT90P5OAZzK8d/Izu9OmWg+zqt491MUf9QTdNgZz6uPVF
	4+p14dpxes3mQJGdKdmliZN9q+eB6bQd9UHFRxopmLHVfJEW85dSAB/jpkbyaYeybfXS8PNGtoK3d
	PVDp34hGt3Vu7SAJcIGskzypd2KAGbrClWOeIpfU5+XPluXfZKPgRX+q3h326WwNFVUjhpsKKhpGu
	DCiaDwMO56n3np0I/kvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLNFX-0005hX-A5; Fri, 18 Oct 2019 08:04:39 +0000
Received: from helcar.hmeau.com ([216.24.177.18] helo=fornost.hmeau.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLNFP-0005gy-IU
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 08:04:33 +0000
Received: from gwarestrin.arnor.me.apana.org.au ([192.168.0.7])
 by fornost.hmeau.com with smtp (Exim 4.89 #2 (Debian))
 id 1iLNF9-0001v3-Bm; Fri, 18 Oct 2019 19:04:16 +1100
Received: by gwarestrin.arnor.me.apana.org.au (sSMTP sendmail emulation);
 Fri, 18 Oct 2019 19:04:15 +1100
Date: Fri, 18 Oct 2019 19:04:15 +1100
From: Herbert Xu <herbert@gondor.apana.org.au>
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Subject: Re: [PATCH] crypto: arm - use Kconfig based compiler checks for
 crypto opcodes
Message-ID: <20191018080415.GF25128@gondor.apana.org.au>
References: <20191011090800.29386-1-ard.biesheuvel@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191011090800.29386-1-ard.biesheuvel@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_010431_901027_645328CF 
X-CRM114-Status: GOOD (  12.34  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: arnd@arndb.de, linux-crypto@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 11, 2019 at 11:08:00AM +0200, Ard Biesheuvel wrote:
> Instead of allowing the Crypto Extensions algorithms to be selected when
> using a toolchain that does not support them, and complain about it at
> build time, use the information we have about the compiler to prevent
> them from being selected in the first place. Users that are stuck with
> a GCC version <4.8 are unlikely to care about these routines anyway, and
> it cleans up the Makefile considerably.
> 
> While at it, add explicit 'armv8-a' CPU specifiers to the code that uses
> the 'crypto-neon-fp-armv8' FPU specifier so we don't regress Clang, which
> will complain about this in version 10 and later.
> 
> Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> ---
>  arch/arm/crypto/Kconfig             | 14 +++++++------
>  arch/arm/crypto/Makefile            | 32 ++++++-----------------------
>  arch/arm/crypto/aes-ce-core.S       |  1 +
>  arch/arm/crypto/crct10dif-ce-core.S |  2 +-
>  arch/arm/crypto/ghash-ce-core.S     |  1 +
>  arch/arm/crypto/sha1-ce-core.S      |  1 +
>  arch/arm/crypto/sha2-ce-core.S      |  1 +
>  7 files changed, 19 insertions(+), 33 deletions(-)

Patch applied.  Thanks.
-- 
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
