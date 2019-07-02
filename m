Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26D615D862
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 01:25:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pv1r/YAC9gVGBec9CYY/QVQBNflqvUjXN0OwIrIAHmo=; b=Hy2jv6RPYIqeJY
	CV3MTdeXO4iZNmbT3aKm6zTYeMYqMRUfQUaKIlhYb2EsbWvrWaTUx9DuhL/l0FQG14UKdgNi1eBAF
	PTPKDX0Ms8oH2XrO4LI5U6jP49bFNnoNlcYByNn/EhvIYk7SLa2foTFPM+RnskeYvjoiLVQgXsvFU
	PPInJY9ZFojZRx6cmqOYSzaHR4l9xGeyZR9k94v76apoBTDBIU9iIGtsCPFQAq0FJ4PUciGR/ZJU/
	LRmQI4wuhdaeStCOcg7XyZBezd2XSzM2z5+Czwzl9vG0Q/wKsm9Bv6LVpZVt9yU3pKyNZ6I7MngeG
	dAgYzPwkakX6fA3vYPfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiS9G-0004W3-8c; Tue, 02 Jul 2019 23:25:18 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiS92-0003pw-Np
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jul 2019 23:25:06 +0000
Received: by mail-ed1-x542.google.com with SMTP id w13so210502eds.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 02 Jul 2019 16:25:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=NZtVuNGmIL9iaoOv0S9sHPsevjMvF/JVL4gPcjO5NUI=;
 b=SHh1FgYPa22DIxBnLW3RbawjFoO5Ews8pSLyOZtbQLVFUITDB/8JUBPIyVCQQqif2o
 jh0XBWcmHMPfugvHT4zk9ZjmT/ikZnm/p6VSJjTMfg4cwitT7AT/HiFcTuSR1FBLDQPa
 rBV2OXCkJgC371eYAR/rFiKQQGs535az8ojnru1tfAIBz0Fgoj2YMtZVCdSpmLxem0pq
 IlUoJcxyhGdbJq/Nszm0bvjhzXKF0PXEfoUwkQ6S1AxufB4AinVLqzLZI5XvXwBdawlg
 AaKBWT7X2DMQfSWdzKY7fMrxBY/iWG0flIV3U8h2rXGA2uCmaP3WkWxPLubhXjDjb5Y8
 CkOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=NZtVuNGmIL9iaoOv0S9sHPsevjMvF/JVL4gPcjO5NUI=;
 b=S2wwdQdlydKHWhUS0QjEjL9Wh+P/txh6f964Z2hgJAJnpDv/oTv8XDUsRe5Iexx4OX
 ipKsw0Wi+Pf1u3Y4WtHsY0DbL6Yxnc9QC2WIylf8EBP1yXMaSAFC+Bc2TlYgSdBeRKOm
 wUXk7Kj6cjX9Gf7TW+xihFWTOcqiwIPjm1wB78yn4vMzLFzF8esi1blpOle+HFouYe18
 drdTwUWfh83MID0ORLTqGmvggE557oFnXERhvPjEep1KAJKlsCFhQ9F8TnNrYn7USDCK
 uR+cM9jH6NaUYzIUzookffY+13/DuGuNY07FP6x0+8eLqyl7ckKFwt1l5ncupWcIis2U
 PkGg==
X-Gm-Message-State: APjAAAXXbZRfrnTSZ41IUxzcNz8Ig8O6DmkSPfdZbUsUCwk3OQROeO1p
 rmYe6o5lbJCNexqzQkdRS8U=
X-Google-Smtp-Source: APXvYqy+5foubNJ06De2DuMgU5AFGqLcI3pTtf/zTzuWwlpy+qCo7LSTAegL5DC5/UAsumZaZbpBRw==
X-Received: by 2002:a50:ec03:: with SMTP id g3mr38512006edr.233.1562109902787; 
 Tue, 02 Jul 2019 16:25:02 -0700 (PDT)
Received: from archlinux-epyc ([2a01:4f9:2b:2b15::2])
 by smtp.gmail.com with ESMTPSA id s52sm135306edm.55.2019.07.02.16.25.01
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 02 Jul 2019 16:25:01 -0700 (PDT)
Date: Tue, 2 Jul 2019 16:24:59 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Nathan Huckleberry <nhuck@google.com>
Subject: Re: [PATCH] arm64: mm: Fix dead assignment of old_pte
Message-ID: <20190702232459.GA14941@archlinux-epyc>
References: <20190702231302.60727-1-nhuck@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190702231302.60727-1-nhuck@google.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_162504_815204_37B4008C 
X-CRM114-Status: GOOD (  18.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (natechancellor[at]gmail.com)
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
Cc: catalin.marinas@arm.com, will@kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 02, 2019 at 04:13:02PM -0700, 'Nathan Huckleberry' via Clang Built Linux wrote:
> When analyzed with the clang static analyzer the
> following warning occurs
> 
> line 251, column 2
> Value stored to 'old_pte' is never read
> 
> This warning is repeated every time pgtable.h is
> included by another file and produces ~3500
> extra warnings.
> 
> Moving old_pte into preprocessor guard.
> 
> Cc: clang-built-linux@googlegroups.com
> Signed-off-by: Nathan Huckleberry <nhuck@google.com>
> ---
>  arch/arm64/include/asm/pgtable.h | 8 +++++---
>  1 file changed, 5 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm64/include/asm/pgtable.h b/arch/arm64/include/asm/pgtable.h
> index fca26759081a..42ca4fc67f27 100644
> --- a/arch/arm64/include/asm/pgtable.h
> +++ b/arch/arm64/include/asm/pgtable.h
> @@ -238,8 +238,6 @@ extern void __sync_icache_dcache(pte_t pteval);
>  static inline void set_pte_at(struct mm_struct *mm, unsigned long addr,
>  			      pte_t *ptep, pte_t pte)
>  {
> -	pte_t old_pte;
> -
>  	if (pte_present(pte) && pte_user_exec(pte) && !pte_special(pte))
>  		__sync_icache_dcache(pte);
>  
> @@ -248,8 +246,11 @@ static inline void set_pte_at(struct mm_struct *mm, unsigned long addr,
>  	 * hardware updates of the pte (ptep_set_access_flags safely changes
>  	 * valid ptes without going through an invalid entry).
>  	 */
> +	#if IS_ENABLED(CONFIG_DEBUG_VM)
> +	pte_t old_pte;
> +
>  	old_pte = READ_ONCE(*ptep);
> -	if (IS_ENABLED(CONFIG_DEBUG_VM) && pte_valid(old_pte) && pte_valid(pte) &&
> +	if (pte_valid(old_pte) && pte_valid(pte) &&
>  	   (mm == current->active_mm || atomic_read(&mm->mm_users) > 1)) {
>  		VM_WARN_ONCE(!pte_young(pte),
>  			     "%s: racy access flag clearing: 0x%016llx -> 0x%016llx",
> @@ -258,6 +259,7 @@ static inline void set_pte_at(struct mm_struct *mm, unsigned long addr,
>  			     "%s: racy dirty state clearing: 0x%016llx -> 0x%016llx",
>  			     __func__, pte_val(old_pte), pte_val(pte));
>  	}
> +	#endif
>  
>  	set_pte(ptep, pte);
>  }
> -- 
> 2.22.0.410.gd8fdbe21b5-goog
> 

Hi Nathan,

This does not apply on -next because of https://git.kernel.org/arm64/c/9b604722059039a1a3ff69fb8dfd024264046024.
I would get into the habit of testing -next to see if the warning is
present there first because someone may have independently fixed it
already (I'd be surprised if it wasn't fixed by that commit from a quick
glance).

Additionally, when I do apply this patch to mainline and build, I see
the following warning:

In file included from /home/nathan/cbl/linux/arch/arm64/kernel/asm-offsets.c:10:
In file included from /home/nathan/cbl/linux/include/linux/arm_sdei.h:14:
In file included from /home/nathan/cbl/linux/include/acpi/ghes.h:5:
In file included from /home/nathan/cbl/linux/include/acpi/apei.h:9:
In file included from /home/nathan/cbl/linux/include/linux/acpi.h:34:
In file included from /home/nathan/cbl/linux/include/acpi/acpi_io.h:5:
In file included from /home/nathan/cbl/linux/include/linux/io.h:13:
In file included from /home/nathan/cbl/linux/arch/arm64/include/asm/io.h:18:
/home/nathan/cbl/linux/arch/arm64/include/asm/pgtable.h:250:8: warning: ISO C90 forbids mixing declarations and code [-Wdeclaration-after-statement]
        pte_t old_pte;
              ^
1 warning generated.

Cheers,
Nathan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
