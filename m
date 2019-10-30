Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 643F5E9AE5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 12:37:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vBj0pFYTsYUmGBCpykCUesn2OlionUelvMyE7RnTsgc=; b=GxgaRZAh2nH8jg
	SnXVdpRG6fTPHJARLLQFkqOkYWEP9ZJcA2GKLJiYVNfhPUIIb10WTByVXOvS5WCUrY+3quaBs9gli
	FGOZ9L2kLefRFjdwSNdBdGqtAbrX3QAu3V5IFH6TlL+Mp4aiW6qsTGyZieBPKvbbCu6ZCDSN2jpgf
	0jfmgVRaRUpNbf0bXL/esuZIEYIRAB/T8akLuHf/sma2BIGmM2DkEyaq4ynL07uDfLe69C3PHtS9Q
	e0DfZacTvUXkNbZ3SJ3fmFJgJuv/fLDJd4IG81yvQoBIok0WBkyfnsTmUQBvpFeiwQQ2X0mbBwO07
	yL+6KviqCY1Dvc7ydOcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPmHt-0005W5-4o; Wed, 30 Oct 2019 11:37:17 +0000
Received: from ozlabs.org ([2401:3900:2:1::2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPmHj-0005Uo-IB
 for linux-arm-kernel@lists.infradead.org; Wed, 30 Oct 2019 11:37:09 +0000
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 4735ym2XKNz9sPL;
 Wed, 30 Oct 2019 22:37:04 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ellerman.id.au;
 s=201909; t=1572435424;
 bh=Ukmow9kPMiVR7CRBSSLkfrTkYl/luRkDY70O/Ez8ScE=;
 h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
 b=JcbMjt25mjAa/p5TQmHhbYsbMDLQNAWLBgG+KisPaucipwHOlReXn1BMxdr8jiuF/
 TQEhrhfC6nyl4bbiSf04t8hQnvbWd1H4WYlJbNB+6bCe8Xjl1a5dHMhJVaA95XvaTa
 Ctkb/6vSdbVW+3EVC6zycS/u152N053ziA5BCVcW/Mvl0h8h2tEoAjTpvVgorhkZp8
 2Ap8Eh1+sYtQBgpbanoEYCf1FXizsuVA7Iqet41OaDAY0WovQWeV9v+oCfpkBPC9v3
 H4A2rbF05lv18BITDGxmR8CpVkPcCXCSePbv9QWGgcskjrfXANv0wPUA2DKxHv0ONE
 8COwKqErc3MZQ==
From: Michael Ellerman <mpe@ellerman.id.au>
To: Richard Henderson <richard.henderson@linaro.org>,
 linux-arch@vger.kernel.org
Subject: Re: [PATCH 5/6] powerpc: Mark archrandom.h functions __must_check
In-Reply-To: <20191028210559.8289-6-rth@twiddle.net>
References: <20191028210559.8289-1-rth@twiddle.net>
 <20191028210559.8289-6-rth@twiddle.net>
Date: Wed, 30 Oct 2019 22:37:01 +1100
Message-ID: <87v9s6bh2a.fsf@mpe.ellerman.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_043707_854520_56AE7B78 
X-CRM114-Status: UNSURE (   9.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2401:3900:2:1:0:0:0:2 listed in] [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: linux-s390@vger.kernel.org,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>, x86@kernel.org,
 Paul Mackerras <paulus@samba.org>, linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Richard Henderson <richard.henderson@linaro.org> writes:
> We cannot use the pointer output without validating the
> success of the random read.

You _can_, but you must not. </pedant>

> Signed-off-by: Richard Henderson <rth@twiddle.net>
> ---
> Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>
> Cc: Paul Mackerras <paulus@samba.org>
> Cc: Michael Ellerman <mpe@ellerman.id.au>
> ---
>  arch/powerpc/include/asm/archrandom.h | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)

Acked-by: Michael Ellerman <mpe@ellerman.id.au>

cheers

> diff --git a/arch/powerpc/include/asm/archrandom.h b/arch/powerpc/include/asm/archrandom.h
> index f8a887c8b7f8..ee214b153a71 100644
> --- a/arch/powerpc/include/asm/archrandom.h
> +++ b/arch/powerpc/include/asm/archrandom.h
> @@ -6,17 +6,17 @@
>  
>  #include <asm/machdep.h>
>  
> -static inline bool arch_get_random_long(unsigned long *v)
> +static inline bool __must_check arch_get_random_long(unsigned long *v)
>  {
>  	return false;
>  }
>  
> -static inline bool arch_get_random_int(unsigned int *v)
> +static inline bool __must_check arch_get_random_int(unsigned int *v)
>  {
>  	return false;
>  }
>  
> -static inline bool arch_get_random_seed_long(unsigned long *v)
> +static inline bool __must_check arch_get_random_seed_long(unsigned long *v)
>  {
>  	if (ppc_md.get_random_seed)
>  		return ppc_md.get_random_seed(v);
> @@ -24,7 +24,7 @@ static inline bool arch_get_random_seed_long(unsigned long *v)
>  	return false;
>  }
>  
> -static inline bool arch_get_random_seed_int(unsigned int *v)
> +static inline bool __must_check arch_get_random_seed_int(unsigned int *v)
>  {
>  	unsigned long val;
>  	bool rc;
> -- 
> 2.17.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
