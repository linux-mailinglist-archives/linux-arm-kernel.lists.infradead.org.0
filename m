Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45869D444C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 17:31:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Cu2y29yvOFa14DPDhCMBr/k74PdUFz0sROr50ZjzFSk=; b=X9sPm3LeBXOqj/
	Fl3mUVb6uf77W9a6ttePxljC4qvQ52+DrzIvLwS9MhcEicDr2qQyuHaCzq0RRXCRogAai2S880rsE
	R3wmSI/G5hDx8TplDHIdDrhQAuQaT64lgjy/J3oICf+NIpcX0JUKIcdptewtdmU1GXp9/EHMxPMM3
	NP2DJrvbcACtTA9xNGTxhdT15X2l91zG+ULSlB++76tLLgLavGDsUTixVxY9KQaEmrU+SAh2XAoOy
	9l375doq4rJNp47Nyzcmw/R5oShh4ZmDwlzbxqDNxH89b8IQeGfAfgZkxz6l2rsNFu4/rsXN3lKwD
	hBvQQCLxSZ+Jv1pbvhVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIwsx-0002rN-3q; Fri, 11 Oct 2019 15:31:19 +0000
Received: from mail-yw1-xc41.google.com ([2607:f8b0:4864:20::c41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIwsl-0002qB-Mb
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 15:31:11 +0000
Received: by mail-yw1-xc41.google.com with SMTP id x65so3605157ywf.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 11 Oct 2019 08:31:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:openpgp:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=mxX6ZfMEu9UblL7e3DTkotuZrSFsmDbCoebjzwcL8h0=;
 b=ufYqM9IQiYWJXmizW9EncXRMAuDKV9ixLq/HSNFNpNZkGyWPmgPmKChqyOWtlvaJz2
 g171+ritEahrlLdJp1/aQUN77kRibcDDDwNCbo1kCC7dMbYiIJm8FjDvrXt0BigYOpqM
 vxCWKhAfox0ET7SmICRFSnzf1UwkwSa/pULtSsJlSPL1imZcNtZ2ZxNcvzlubz3Fio+i
 Z0+zDzeaG/fXw9rtujEMs1vg88g+XvC0vcVF7sOA8Flf5dsgLysz9Xi/cfy0IzepX0wX
 tZ7vvGrcZJ6cA8xJ5YMjLE1j0APNWiCpGkJ7Ter0ruivx4Mva/2M1NJ4EF66JZS06BLC
 4/cQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=mxX6ZfMEu9UblL7e3DTkotuZrSFsmDbCoebjzwcL8h0=;
 b=ksdjiTpRQCw6WumnedGTCdsjHSFnMXZIkRe4zcC40RqRU5+fV9/F4oknmia0qxhb0K
 nZTqDgcgRoqwrjs7MdqdUB4xHHjNIke+qy/QBhQlMh5NgpiJ67tLS9cG2oDqnJwRS10Q
 Wkwz6VTufiDbH0t3LaoD17wMbWrfVHZi6EN2vHs7Pm7UyOmkaahwoviIdwUOrM8QdkAd
 t9gRJiQFb33ftoExSdOckHJQNmwPYeQ5vRFQ+sOx3Txdu9nrwXqCGDwgC9qUZeBqc+j5
 U61RgKswQGLiWSDLu52jiVQWEIOJ5p2fkaXKqvEtbjjDPutCAf/VktYNVsgBZ+CmpXzR
 poTg==
X-Gm-Message-State: APjAAAUzVJ/BnYb5MZU+YIjN8rsEZX/Kf5zKPJNzDA5NYqvH7voveace
 /6ishxDRMEMTffTz0nJE6Kfv09JXX6g=
X-Google-Smtp-Source: APXvYqz6suOMvjy8hdUWKuD9/89Nspymjqm4b1UZYQ8wE1NHnKF8NkD1PtR18YIcumQ9lLTUYrRm2w==
X-Received: by 2002:a81:a30d:: with SMTP id a13mr2662067ywh.278.1570807865387; 
 Fri, 11 Oct 2019 08:31:05 -0700 (PDT)
Received: from [192.168.1.44] (67.216.151.25.pool.hargray.net. [67.216.151.25])
 by smtp.gmail.com with ESMTPSA id d63sm2313883ywe.55.2019.10.11.08.31.04
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 11 Oct 2019 08:31:04 -0700 (PDT)
Subject: Re: [PATCH v2 08/12] arm64: BTI: Decode BYTPE bits when printing
 PSTATE
To: Dave Martin <Dave.Martin@arm.com>, linux-kernel@vger.kernel.org
References: <1570733080-21015-1-git-send-email-Dave.Martin@arm.com>
 <1570733080-21015-9-git-send-email-Dave.Martin@arm.com>
From: Richard Henderson <richard.henderson@linaro.org>
Openpgp: preference=signencrypt
Message-ID: <18c9318c-d122-b534-b526-318935d9e2cc@linaro.org>
Date: Fri, 11 Oct 2019 11:31:02 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1570733080-21015-9-git-send-email-Dave.Martin@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_083107_740750_01F01F83 
X-CRM114-Status: GOOD (  14.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Florian Weimer <fweimer@redhat.com>, "H.J. Lu" <hjl.tools@gmail.com>,
 Andrew Jones <drjones@redhat.com>, Kees Cook <keescook@chromium.org>,
 Arnd Bergmann <arnd@arndb.de>, Jann Horn <jannh@google.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 Eugene Syromiatnikov <esyr@redhat.com>,
 =?UTF-8?Q?Kristina_Mart=c5=a1enko?= <kristina.martsenko@arm.com>,
 Szabolcs Nagy <szabolcs.nagy@arm.com>, Mark Brown <broonie@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-arch@vger.kernel.org,
 Amit Kachhap <amit.kachhap@arm.com>, Paul Elliott <paul.elliott@arm.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Sudakshina Das <sudi.das@arm.com>, Thomas Gleixner <tglx@linutronix.de>,
 Yu-cheng Yu <yu-cheng.yu@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 10/10/19 2:44 PM, Dave Martin wrote:
>  #define PSR_IL_BIT		(1 << 20)
> -#define PSR_BTYPE_CALL		(2 << PSR_BTYPE_SHIFT)
> +
> +/* Convenience names for the values of PSTATE.BTYPE */
> +#define PSR_BTYPE_NONE		(0b00 << PSR_BTYPE_SHIFT)
> +#define PSR_BTYPE_JC		(0b01 << PSR_BTYPE_SHIFT)
> +#define PSR_BTYPE_C		(0b10 << PSR_BTYPE_SHIFT)
> +#define PSR_BTYPE_J		(0b11 << PSR_BTYPE_SHIFT)

It'd be nice to sort this patch earlier, so that ...

> diff --git a/arch/arm64/kernel/signal.c b/arch/arm64/kernel/signal.c
> index 4a3bd32..452ac5b 100644
> --- a/arch/arm64/kernel/signal.c
> +++ b/arch/arm64/kernel/signal.c
> @@ -732,7 +732,7 @@ static void setup_return(struct pt_regs *regs, struct k_sigaction *ka,
>  
>  	if (system_supports_bti()) {
>  		regs->pstate &= ~PSR_BTYPE_MASK;
> -		regs->pstate |= PSR_BTYPE_CALL;
> +		regs->pstate |= PSR_BTYPE_C;
>  	}
>  
>  	if (ka->sa.sa_flags & SA_RESTORER)

... setup_return does not need to be adjusted a second time.

I don't see any other conflicts vs patch 5.


r~

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
