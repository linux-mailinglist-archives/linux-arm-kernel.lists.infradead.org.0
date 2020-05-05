Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD8781C5CC5
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 17:59:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6HimJkar3CV7X1G7Q8ckRulL8Sysrx2OOD+rKhWM7Mg=; b=uC80CYIyjnCwRd
	YRzDufzvBtxgz++pMIojxko6SsVqiap1nozM/vceNArX5MRT7WsJolZhTI/esvHQM+msZjBhNHy7r
	32PIQYPXZ7kvvk7KHPU85X1tyVTEYWMBTNI/2l1brEZq48650Da/d9AFD5HuiIRA+gIe/gn1UqmfU
	AtDTt1+UO1ErIwpbsxLbvDfcWOm99DyPkYYraE3bslH+F31yxbummjV1pPS+glcSp86xTQ8+/u77x
	mI20I871bEZKptQBkjaqzj4A0lRKddvMMgP3i0z885TiU+qFERZKX/hxPV6F2zjxGM3VOfWG2xdQc
	2QCVmfiIXAJIHKTzkeug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVzyo-0000FP-Gt; Tue, 05 May 2020 15:59:34 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVzyc-0000Dy-W7
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 15:59:26 +0000
Received: by mail-wm1-x344.google.com with SMTP id z6so2944555wml.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 May 2020 08:59:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=PGN1A+sSuq/RZDk1hxq5pwV+/ZZ2rP8eCBzu/0i9JeE=;
 b=gkD+4b/HuVR1OV+wasxnOnWiiI7SPXpzXXV6NVB0/4aI4sxsX5dMVJHJSdOMD/GURm
 0qolj7BO2CfRRwNI14+BawRnPnhQFbnlUcP94ozWZKQZ1j+V70vzlvFOzNOzEr69a50h
 DB8zN1wrTSCem8xjw10+5voFbemDDzJBFhfQvssigfGPmr4ohNpwDBYQIdOM2SwI6T8a
 HLnlfx9P89ZU7KsSlT4it26YLSo+cIqmksGluTOY68GBTbihTzxie6CFZNiG0k3v9aPx
 K/LPKXjBg/4qPR7FGBucSgPN1l94dxQnIeL+ZTHRdPPaYpokD3D/8eXp7f61AvRYXn11
 zXMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=PGN1A+sSuq/RZDk1hxq5pwV+/ZZ2rP8eCBzu/0i9JeE=;
 b=j7440YzjcdbodJHU4j+OKaFhYL0nm3ABKqj4MwnoL4Xm7x6hMc9ryhKhUbniIQU/e5
 OGr8cUj/zAghIYSPVk98mkhECELhOmUK2cWeeD2HkQ6UTI25lF9RVAA3wBlAM5Cuih4L
 Gi09uJGqEpzOoSIxsVlvMHlU5RytHZ5YhutY1EYXr42dq5i5SgzSAc4maLpi/sDttdEI
 bH/c39DhZJ2mtWadDqC/BVHy1cCj4iVjmuwB/neZOSkbkk7yBtFY5jRWOaJtkLqXMy5a
 hNn1a4pFJD8VWVUtAmAy52B/oOHACc3qQzsZDkYLhKWWGHsFPtEWUNuX1qpf3925PKrW
 CwPQ==
X-Gm-Message-State: AGi0PubYA4zvlBI4Yfh1RCApOXhk9kKvPeTeC9TXaDylr8Yaym8rxyKL
 TM/oG/5wsDYYcH1Ibo9pJTJLEMMeDvvcdQ==
X-Google-Smtp-Source: APiQypIRbnHubEaPb4xAueBVmUC4wFvaCgRRjttD5slQL+gt6ng+H5WZMUHVwb5dq420a0m0Cc4QGw==
X-Received: by 2002:a7b:c7d2:: with SMTP id z18mr4240013wmk.72.1588694361415; 
 Tue, 05 May 2020 08:59:21 -0700 (PDT)
Received: from google.com ([2a00:79e0:d:109:355c:447d:ad3d:ac5c])
 by smtp.gmail.com with ESMTPSA id a12sm841990wro.68.2020.05.05.08.59.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 May 2020 08:59:20 -0700 (PDT)
Date: Tue, 5 May 2020 16:59:16 +0100
From: Andrew Scull <ascull@google.com>
To: Marc Zyngier <maz@kernel.org>
Subject: Re: [PATCH 05/26] arm64: Document SW reserved PTE/PMD bits in
 Stage-2 descriptors
Message-ID: <20200505155916.GB237572@google.com>
References: <20200422120050.3693593-1-maz@kernel.org>
 <20200422120050.3693593-6-maz@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200422120050.3693593-6-maz@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_085923_049940_89A95A4A 
X-CRM114-Status: GOOD (  14.19  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: kvm@vger.kernel.org, Andre Przywara <andre.przywara@arm.com>,
 kvmarm@lists.cs.columbia.edu, George Cherian <gcherian@marvell.com>,
 "Zengtao \(B\)" <prime.zeng@hisilicon.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Dave Martin <Dave.Martin@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 22, 2020 at 01:00:29PM +0100, Marc Zyngier wrote:
> Advertise bits [58:55] as reserved for SW in the S2 descriptors.
> 
> Signed-off-by: Marc Zyngier <maz@kernel.org>
> ---
>  arch/arm64/include/asm/pgtable-hwdef.h | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/arch/arm64/include/asm/pgtable-hwdef.h b/arch/arm64/include/asm/pgtable-hwdef.h
> index 6bf5e650da788..7eab0d23cdb52 100644
> --- a/arch/arm64/include/asm/pgtable-hwdef.h
> +++ b/arch/arm64/include/asm/pgtable-hwdef.h
> @@ -177,10 +177,12 @@
>  #define PTE_S2_RDONLY		(_AT(pteval_t, 1) << 6)   /* HAP[2:1] */
>  #define PTE_S2_RDWR		(_AT(pteval_t, 3) << 6)   /* HAP[2:1] */
>  #define PTE_S2_XN		(_AT(pteval_t, 2) << 53)  /* XN[1:0] */
> +#define PTE_S2_SW_RESVD		(_AT(pteval_t, 15) << 55) /* Reserved for SW */
>  
>  #define PMD_S2_RDONLY		(_AT(pmdval_t, 1) << 6)   /* HAP[2:1] */
>  #define PMD_S2_RDWR		(_AT(pmdval_t, 3) << 6)   /* HAP[2:1] */
>  #define PMD_S2_XN		(_AT(pmdval_t, 2) << 53)  /* XN[1:0] */
> +#define PMD_S2_SW_RESVD		(_AT(pmdval_t, 15) << 55) /* Reserved for SW */
>  
>  #define PUD_S2_RDONLY		(_AT(pudval_t, 1) << 6)   /* HAP[2:1] */
>  #define PUD_S2_RDWR		(_AT(pudval_t, 3) << 6)   /* HAP[2:1] */
> -- 
> 2.26.1
> 
> _______________________________________________
> kvmarm mailing list
> kvmarm@lists.cs.columbia.edu
> https://lists.cs.columbia.edu/mailman/listinfo/kvmarm

This is consistent with "Attribute fields in stage 1 VMSAv8-64 Block and
Page descriptors"

Reviewed-by: Andrew Scull <ascull@google.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
