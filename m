Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FC4E12764C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 08:10:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TnwNk/FNboYmXdf3zGtZAoPSv3VxYt/oA4y4SGFGs9M=; b=Tm+W+o9Qlsiuj+
	slIN1nZwzErO3Wzt8Hou6TlVFNLCCzb6T3Y1LidAksAGs3ntnCwzONpV8ywoqKRP66VL6k+SnFHDi
	HT7yWWWmulnKC1awnwZQ8AsYFPbiMqM4AIKiPwxy9/EdgNf30A9jdK2cngBXeR6G2DbIFxXIsCroJ
	VCrqEvulpUrl1nozO7Y0fSrlMdooaIbXT8CbL+IBgAHbGAntjCz0P2OgN4ECArHCjBCK4ehk3vldw
	3KjoPXZzKiXmRFg6Wb83AW3dyaWkDmmq9si7DotBr4d8VVJiWePeSjN2n49522nn0D1/X05MNeFWv
	SyGlLOC/lEOePLn36llw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiCQD-0007ux-B4; Fri, 20 Dec 2019 07:10:01 +0000
Received: from helcar.hmeau.com ([216.24.177.18] helo=deadmen.hmeau.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiCQ6-0007uc-0w
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Dec 2019 07:09:55 +0000
Received: from gondobar.mordor.me.apana.org.au ([192.168.128.4] helo=gondobar)
 by deadmen.hmeau.com with esmtps (Exim 4.89 #2 (Debian))
 id 1iiCQ1-0000Ar-1m; Fri, 20 Dec 2019 15:09:49 +0800
Received: from herbert by gondobar with local (Exim 4.89)
 (envelope-from <herbert@gondor.apana.org.au>)
 id 1iiCPz-0007uD-82; Fri, 20 Dec 2019 15:09:47 +0800
Date: Fri, 20 Dec 2019 15:09:47 +0800
From: Herbert Xu <herbert@gondor.apana.org.au>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH] arm64: crypto: Use modern annotations for assembly
 functions
Message-ID: <20191220070947.5me6oi2nqrinigao@gondor.apana.org.au>
References: <20191213154910.32479-1-broonie@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191213154910.32479-1-broonie@kernel.org>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_230954_219688_AD80571D 
X-CRM114-Status: GOOD (  11.78  )
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
Cc: Eric Biggers <ebiggers@google.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-crypto@vger.kernel.org,
 Will Deacon <will@kernel.org>, Ard Biesheuvel <ardb@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Dec 13, 2019 at 03:49:10PM +0000, Mark Brown wrote:
> In an effort to clarify and simplify the annotation of assembly functions
> in the kernel new macros have been introduced. These replace ENTRY and
> ENDPROC and also add a new annotation for static functions which previously
> had no ENTRY equivalent. Update the annotations in the crypto code to the
> new macros.
> 
> There are a small number of files imported from OpenSSL where the assembly
> is generated using perl programs, these are not currently annotated at all
> and have not been modified.
> 
> Signed-off-by: Mark Brown <broonie@kernel.org>
> ---
> 
> I'm intending to do this for all the rest of the asm too, this is the
> simplest directory and there's no direct interdependencies so starting
> here.
> 
>  arch/arm64/crypto/aes-ce-ccm-core.S   | 16 +++++------
>  arch/arm64/crypto/aes-ce-core.S       | 16 +++++------
>  arch/arm64/crypto/aes-ce.S            |  4 +--
>  arch/arm64/crypto/aes-cipher-core.S   |  8 +++---
>  arch/arm64/crypto/aes-modes.S         | 16 +++++------
>  arch/arm64/crypto/aes-neon.S          |  4 +--
>  arch/arm64/crypto/aes-neonbs-core.S   | 40 +++++++++++++--------------
>  arch/arm64/crypto/chacha-neon-core.S  | 16 +++++------
>  arch/arm64/crypto/crct10dif-ce-core.S | 12 ++++----
>  arch/arm64/crypto/ghash-ce-core.S     |  8 +++---
>  arch/arm64/crypto/nh-neon-core.S      |  4 +--
>  arch/arm64/crypto/sha1-ce-core.S      |  4 +--
>  arch/arm64/crypto/sha2-ce-core.S      |  4 +--
>  arch/arm64/crypto/sha3-ce-core.S      |  4 +--
>  arch/arm64/crypto/sha512-ce-core.S    |  4 +--
>  arch/arm64/crypto/sm3-ce-core.S       |  4 +--
>  arch/arm64/crypto/sm4-ce-core.S       |  4 +--
>  17 files changed, 84 insertions(+), 84 deletions(-)

Patch applied.  Thanks.
-- 
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
