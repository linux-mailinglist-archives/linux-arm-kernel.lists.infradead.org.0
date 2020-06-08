Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AD3E1F1B8D
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jun 2020 17:00:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PGtgdV/JJbeGrAdr6Brza8WEu0ke3qblGpSB6L2zVRA=; b=i77iu2xlwSc2it
	HyG50OR5W8nmpDkgKzksbZJcdjNSVI8aHT9bdj0rA5LvuD3DI7d0LEmj/Q8LjUMVm0HQ9+1QXVDsx
	Dyeh3Y41DHymfHX1zGVCHCyfFdr9X7ih3CfYs0kh7Qd9CW4zHQF5yQ9jFDL4a0dWG60yMahIe4GHp
	kA768owGhq2lAULaMVVJHKTVtZSEFBBD0PPhJQFqdSO07x0DFBIhItm0v3f1IIQlUQtSLoOQ1yo92
	Q5ve7tc110ns9THFAc0MpbvC26UhGzQG+sDrwdF85jjRfx07lQMGHLhHjJCSp2fKaJmyJE8ZWJSIm
	48TNwr+xbqZYvut8PvsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiJGc-0005lF-CT; Mon, 08 Jun 2020 15:00:50 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiJGT-0005kk-Qg
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jun 2020 15:00:43 +0000
Received: by mail-wm1-x341.google.com with SMTP id y20so9111777wmi.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 08 Jun 2020 08:00:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=hjZu9HUiJ4ghbYbVLHHdJJBsYU84vEwMo6AWGQbzbMg=;
 b=H4q0p6dexKRAu9bVDnRSuBCRoRqXk6tNmInurnFg/yZIgEWNJZaxUzJp9X/7yxQx+E
 Kq2z1a4o455v0Lxpi92VdXUmx0hyUT0ay2fwkkHVS1FvMcpSIx7mbZvGiPS7WuQUjzAw
 +cq2dDek+N/qnt2G0nz9jyyORRXYAg2c+A2CWUB9l9QseFwiLsjbg2wasklnP4DkeOMi
 VOrKoLsghKd23Fp3h4gjM7oPG8kR6M86DVX4S1hH0lU785YYfm1JWSQXLe+LiIiogHW4
 nvA3eES0u3Nvu4q1p8fvq7vAiy3KGMlaVeuQ9lD+gmWKWTx46tvQi7eMxrKOD7Hmz7oz
 wKFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=hjZu9HUiJ4ghbYbVLHHdJJBsYU84vEwMo6AWGQbzbMg=;
 b=PlMqIdjlCfBcPVmU28DoJy6y5UKAFEy6aObyLZxtWaT4CjHyO703T8qUQ7/xzKnV5x
 117fX71x8Qv3hp0GxT6Nbgs2dZwh8+90Z5gHqa0dyjW4Jfapulm9PxPOfWZjUlSSiONB
 vZHWpZiEgO2N8N5ngdtu77jBEdKM+gREgUKlt9FKYlDELn2GLX/woQBbbXUYup1pmWMw
 nIUABTrl538ny6ivlnF+BJmY4Rc7SaLQUySwrm/ZO7UAtp3Io4RVHn7UjSG/nFdzjYxX
 IxFk1KiVyrYl1m4nL5Bh+qbmG7PC5TRTwA9/p4tUa/1ZLh8ba4NUvqFLgk/FbS8cWj2I
 7I1A==
X-Gm-Message-State: AOAM5330vmx7F9//kCROoEdsXQUIxmdV4M+8apEJLWmXMXeE9Tyc6T6a
 1FETCYik8ROIfntpx7BTOtu0gQ==
X-Google-Smtp-Source: ABdhPJwc83jEVUrsYqdet2/G/6Soma/d1TvTQMjyae5cRkkAfGcbkJMyoOVSLQRjigs4Bo6/5LNImQ==
X-Received: by 2002:a1c:29c4:: with SMTP id p187mr16901343wmp.73.1591628440198; 
 Mon, 08 Jun 2020 08:00:40 -0700 (PDT)
Received: from google.com ([2a00:79e0:d:109:355c:447d:ad3d:ac5c])
 by smtp.gmail.com with ESMTPSA id n1sm10397wrp.10.2020.06.08.08.00.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 08 Jun 2020 08:00:39 -0700 (PDT)
Date: Mon, 8 Jun 2020 16:00:35 +0100
From: Andrew Scull <ascull@google.com>
To: Marc Zyngier <maz@kernel.org>
Subject: Re: [PATCH] KVM: arm64: Stop sparse from moaning at __hyp_this_cpu_ptr
Message-ID: <20200608150035.GB96714@google.com>
References: <20200608085731.1405854-1-maz@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200608085731.1405854-1-maz@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_080041_886309_A64136DF 
X-CRM114-Status: GOOD (  17.41  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: kvm@vger.kernel.org, Suzuki K Poulose <suzuki.poulose@arm.com>,
 James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>, kernel-team@android.com,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 08, 2020 at 09:57:31AM +0100, Marc Zyngier wrote:
> Sparse complains that __hyp_this_cpu_ptr() returns something
> that is flagged noderef and not in the correct address space
> (both being the result of the __percpu annotation).
> 
> Pretend that __hyp_this_cpu_ptr() knows what it is doing by
> forcefully casting the pointer with __kernel __force.
> 
> Signed-off-by: Marc Zyngier <maz@kernel.org>
> ---
>  arch/arm64/include/asm/kvm_asm.h | 9 +++++++--
>  1 file changed, 7 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/include/asm/kvm_asm.h b/arch/arm64/include/asm/kvm_asm.h
> index 0c9b5fc4ba0a..82691406d493 100644
> --- a/arch/arm64/include/asm/kvm_asm.h
> +++ b/arch/arm64/include/asm/kvm_asm.h
> @@ -81,12 +81,17 @@ extern u32 __kvm_get_mdcr_el2(void);
>  
>  extern char __smccc_workaround_1_smc[__SMCCC_WORKAROUND_1_SMC_SZ];
>  
> -/* Home-grown __this_cpu_{ptr,read} variants that always work at HYP */
> +/*
> + * Home-grown __this_cpu_{ptr,read} variants that always work at HYP,
> + * provided that sym is really a *symbol* and not a pointer obtained from

Look at `this_cpu_ptr` one thing that stood out was `__verify_pcpu_ptr`
that is documented to be suitable for used in custom per CPU macros. I
didn't get how it worked (a type check?) but maybe it would work here
to validate the argment was indeed a per CPU symbol?

> + * a data structure. As for SHIFT_PERCPU_PTR(), the creative casting keeps
> + * sparse quiet.
> + */
>  #define __hyp_this_cpu_ptr(sym)						\
>  	({								\
>  		void *__ptr = hyp_symbol_addr(sym);			\
>  		__ptr += read_sysreg(tpidr_el2);			\
> -		(typeof(&sym))__ptr;					\
> +		(typeof(sym) __kernel __force *)__ptr;			\
>  	 })
>  
>  #define __hyp_this_cpu_read(sym)					\

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
