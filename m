Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 806FD19FD07
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 20:23:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4NmODEl0TGFTAq+neiZ+M0MZO+EOuommg33Ghr6zYzY=; b=DULAqy4t2OcYcE
	pZLFie4oP/ubR4ev00olHl0nBZEKkuAG47ZgP6/b/06MuZijD0WTCmm99ATbuY+TNhoNum0l+FaDj
	rjJDsEddUsucT2pOPuMQQgObxrGmMR0Z9pOFk0oW8gBDI4+YX5gh4uni/hmrPfjcaxRqXaCKq6wt3
	lzA4P2qcuhgUg81qAD1UA/swzcWwrFQmUUjGMiCSRJOCRGln64L1T4y4RNopnAaD7z+IeJ6KJNYqt
	vWJw4urek4DuQcicDoWKS2DBGT05c58ZKpsXDtRK2G/+Ge/OnASoDqNQSlG4Agj/Nz9hBm3B5GC13
	DZAJbdhdg1v9GAVVODXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLWPG-0002bS-DC; Mon, 06 Apr 2020 18:23:34 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLWPA-0002ac-D4
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Apr 2020 18:23:29 +0000
Received: by mail-pj1-x1041.google.com with SMTP id ng8so206968pjb.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 Apr 2020 11:23:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=t1E7i5Ja/N4v3hN9ILxMO9xPBTPnxiRK5Clfelm4oBw=;
 b=UPvVgdH8M87ZZpVFk710GBac6Ivj+/QhMtWTYlwmRZOj1tj7f2kNEC+ZiI35QZ5dL4
 MGx/U2nXkhynTePhJKF2P/g9mbGDtn5+ErGMSjnhl32QKNOfQYn2U+paYJNipAm3VyAA
 D58HSMWOlbmLBj7Gg5Te2Kpdrw+3StLiF0oh0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=t1E7i5Ja/N4v3hN9ILxMO9xPBTPnxiRK5Clfelm4oBw=;
 b=nytzA756slKaEEVLgjjNlfmtQTvNQezqlmTEr9xBzsWKs8bCNc4T2mXBqvxIbTM+zt
 jcu1TRCA4fnNODPQwilyc2YMoU5pzascC9rJclV4qfx1JGrLXuETYXF8W81ypuF5xy2N
 srUufb4i2ht60NjwL4uBQGrdKYUiAoYCDBXNkRnmWorc/472kq5KFgcOK68DCR7zp/Su
 ppbvih9r2xpSVs/yYua+3AzfIUt+B6QnlSlLgqPoQD434rQV9EV6VCslHQrIcpUs5qjl
 LT/1nZ5L5D8tFiEQEIZXOT5UiAh0zjzSvtNKkMvwZb06Dkhvjw50GyJ0M2BuUM5iTDkE
 t7Qw==
X-Gm-Message-State: AGi0PuZL6vVa/Z5KQ0qWOEIZXcAlstyXVAQi2L7PHmgc1TwBEr8BdURm
 pYHSEh56QCpgkcVPwYbhVkhgBQ==
X-Google-Smtp-Source: APiQypIUOtn72OybuMmOpw7ZoRHvYwoqpUGT0d68iEfAhBT8YfgewjV9UGIYBvXQYFb80jItY6ieRQ==
X-Received: by 2002:a17:902:d685:: with SMTP id
 v5mr22055094ply.256.1586197407139; 
 Mon, 06 Apr 2020 11:23:27 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id e184sm12005953pfh.219.2020.04.06.11.23.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 06 Apr 2020 11:23:26 -0700 (PDT)
Date: Mon, 6 Apr 2020 11:23:24 -0700
From: Kees Cook <keescook@chromium.org>
To: Sami Tolvanen <samitolvanen@google.com>
Subject: Re: [PATCH v10 09/12] arm64: disable SCS for hypervisor code
Message-ID: <202004061123.CE436424@keescook>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200406164121.154322-1-samitolvanen@google.com>
 <20200406164121.154322-10-samitolvanen@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200406164121.154322-10-samitolvanen@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_112328_472918_80FA2894 
X-CRM114-Status: GOOD (  14.38  )
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1041 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, clang-built-linux@googlegroups.com,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Jann Horn <jannh@google.com>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 Steven Rostedt <rostedt@goodmis.org>,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 James Morse <james.morse@arm.com>, Masami Hiramatsu <mhiramat@kernel.org>,
 Marc Zyngier <maz@kernel.org>, kernel-hardening@lists.openwall.com,
 Laura Abbott <labbott@redhat.com>, Will Deacon <will@kernel.org>,
 Dave Martin <Dave.Martin@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 06, 2020 at 09:41:18AM -0700, Sami Tolvanen wrote:
> Disable SCS for code that runs at a different exception level by
> adding __noscs to __hyp_text.
> 
> Suggested-by: James Morse <james.morse@arm.com>
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>

Reviewed-by: Kees Cook <keescook@chromium.org>

-Kees

> Acked-by: Marc Zyngier <maz@kernel.org>
> ---
>  arch/arm64/include/asm/kvm_hyp.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/include/asm/kvm_hyp.h b/arch/arm64/include/asm/kvm_hyp.h
> index fe57f60f06a8..875b106c5d98 100644
> --- a/arch/arm64/include/asm/kvm_hyp.h
> +++ b/arch/arm64/include/asm/kvm_hyp.h
> @@ -13,7 +13,7 @@
>  #include <asm/kvm_mmu.h>
>  #include <asm/sysreg.h>
>  
> -#define __hyp_text __section(.hyp.text) notrace
> +#define __hyp_text __section(.hyp.text) notrace __noscs
>  
>  #define read_sysreg_elx(r,nvh,vh)					\
>  	({								\
> -- 
> 2.26.0.292.g33ef6b2f38-goog
> 

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
