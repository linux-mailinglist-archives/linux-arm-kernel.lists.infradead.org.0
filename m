Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE1A89A0F6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 22:19:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jPTASFcnLOlGcqf0E/dw1kdZTJGTPTBWSrR1n0ptQTU=; b=V7kKCOmzYYqO0Q
	HDyH0nQenGxBt/AuVIyHglPVJRVkIdbg/Su/zOZPBnq2hNZP2EKdDbnzeRYkw87kQ8KIx8o34IuHW
	uRnKFd4Rp4piOKP1JxraoV5B9gksgSA036c1tPZGsgpi/Gq4rlcixBlgW2supHC0ECyD9kEsON2Qo
	9m43a4Ra/rICqlTIUqy20l+ZrNKG55xEIXxQAbqet2ocQs35TbBiq/6AOQ2KT5g95g96bDHW4s+kl
	d/6PnLOZdlkiUn9ZVRFD7f+xmCqAph2ktZV6rK5bP9QgoJ4STKV3W6ISvAqovN6sjjUpSH/L60r60
	DeGA4G8zyi5BkwxlAUng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0tYD-0000K3-Bc; Thu, 22 Aug 2019 20:19:17 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0tY3-0000J6-2W
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 20:19:08 +0000
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id BB6BB10576D9;
 Thu, 22 Aug 2019 20:19:06 +0000 (UTC)
Received: from treble (ovpn-121-55.rdu2.redhat.com [10.10.121.55])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id C40425D713;
 Thu, 22 Aug 2019 20:19:05 +0000 (UTC)
Date: Thu, 22 Aug 2019 15:19:03 -0500
From: Josh Poimboeuf <jpoimboe@redhat.com>
To: Raphael Gault <raphael.gault@arm.com>
Subject: Re: [RFC v4 16/18] arm64: crypto: Add exceptions for crypto object
 to prevent stack analysis
Message-ID: <20190822201903.srbxynoabrarnlyw@treble>
References: <20190816122403.14994-1-raphael.gault@arm.com>
 <20190816122403.14994-17-raphael.gault@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190816122403.14994-17-raphael.gault@arm.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.64]); Thu, 22 Aug 2019 20:19:06 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_131907_130934_84C51172 
X-CRM114-Status: GOOD (  17.47  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: raph.gault+kdev@gmail.com, peterz@infradead.org, catalin.marinas@arm.com,
 will.deacon@arm.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, julien.thierry.kdev@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 16, 2019 at 01:24:01PM +0100, Raphael Gault wrote:
> Some crypto modules contain `.word` of data in the .text section.
> Since objtool can't make the distinction between data and incorrect
> instruction, it gives a warning about the instruction beeing unknown
> and stops the analysis of the object file.
> 
> The exception can be removed if the data are moved to another section
> or if objtool is tweaked to handle this particular case.
> 
> Signed-off-by: Raphael Gault <raphael.gault@arm.com>

If the data can be moved to .rodata then I think that would be a much
better solution.

> ---
>  arch/arm64/crypto/Makefile | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/arch/arm64/crypto/Makefile b/arch/arm64/crypto/Makefile
> index 0435f2a0610e..e2a25919ebaa 100644
> --- a/arch/arm64/crypto/Makefile
> +++ b/arch/arm64/crypto/Makefile
> @@ -43,9 +43,11 @@ aes-neon-blk-y := aes-glue-neon.o aes-neon.o
>  
>  obj-$(CONFIG_CRYPTO_SHA256_ARM64) += sha256-arm64.o
>  sha256-arm64-y := sha256-glue.o sha256-core.o
> +OBJECT_FILES_NON_STANDARD_sha256-core.o := y
>  
>  obj-$(CONFIG_CRYPTO_SHA512_ARM64) += sha512-arm64.o
>  sha512-arm64-y := sha512-glue.o sha512-core.o
> +OBJECT_FILES_NON_STANDARD_sha512-core.o := y
>  
>  obj-$(CONFIG_CRYPTO_CHACHA20_NEON) += chacha-neon.o
>  chacha-neon-y := chacha-neon-core.o chacha-neon-glue.o
> @@ -58,6 +60,7 @@ aes-arm64-y := aes-cipher-core.o aes-cipher-glue.o
>  
>  obj-$(CONFIG_CRYPTO_AES_ARM64_BS) += aes-neon-bs.o
>  aes-neon-bs-y := aes-neonbs-core.o aes-neonbs-glue.o
> +OBJECT_FILES_NON_STANDARD_aes-neonbs-core.o := y
>  
>  CFLAGS_aes-glue-ce.o	:= -DUSE_V8_CRYPTO_EXTENSIONS
>  
> -- 
> 2.17.1
> 

-- 
Josh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
