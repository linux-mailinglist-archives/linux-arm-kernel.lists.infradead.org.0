Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 049871638D4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 01:59:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J5HEEu01KDazPjrmDeGJ4C/svzUkffe6qW9C8qwU/rU=; b=rWGU022ht9MQCA
	nN06vDVmgLy+XbFoWtG0urpWRmS5DN+ywqYXNxWZVi4shHKDTrb0PU8XJIKTCwMGJhd71ZXB/EHDR
	uaaSzXNUH+3B6taNWkcGBtE+0s2wFgE8EmCS+GAj/iD85DSqkbhQAfZQY896k08s/kDRuPR6fw6Zg
	zKKGAJMAvUNGgJWJruldPIljW//sPU+/Cl0pQOE4x0PmVjqcTgE2FswJ5+o7ckyMOKx/IlLoiCvz8
	x+Qmkr67/7US1t/XU74IoO9TZSueTN118CBrkiVW7VHpDUBVbkg6I+Wld+BtiQUgXC+Or0qX6U/E9
	oRzJiIoU2WR0dFiPQ/sQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4Dhk-0003X8-JU; Wed, 19 Feb 2020 00:59:08 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4Dhb-0003VG-ER
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 00:59:00 +0000
Received: by mail-pl1-x643.google.com with SMTP id g6so8823502plt.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Feb 2020 16:58:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=gnHrGjs2d4rz7O5tZjdzLtL+/TxZSgxldIF3J/GkKZs=;
 b=IzhUosfrcEGWqNX3mEcMBIr1zOOchilV9ewuFD+HoG5ciFAxqXbB4J+beO2BpkVdd2
 SpEpavUmfa3Uu83TMZyvYqjzM1rYC38XzZ6PgxBVtweceDQ65TXzBQcjSOeXX0zJL559
 DAcpGs9S0QzkDBHDXRYSuTfPTPAw54Oj19kC8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=gnHrGjs2d4rz7O5tZjdzLtL+/TxZSgxldIF3J/GkKZs=;
 b=SP/ulmqZsXKmt0uT1srt2IwMw6mzne8Ogcu+Auaw12nQYEzTCF+l+ZGk1ZRmrz5oT/
 qRLHK953wJEnqvDDmUgri4pl1EfGQXc7kwskROa3c8Y5m+PFVy06jUBc0gpChHE8KSXf
 kQyEqXuVJIzEjeMssq+XKqiZ8VTa8tvWG959u/rfl1K6FvfqTRqGOKCvhPvVn7rB3JFe
 4Xz1HjBQMfLs+oLWMPSGbAYp81vD08ery5DNs2/J5dDg8dwZVPIQbi8Zz26nfpw+vLex
 9HurvhWYWVR769UDIMtygTnszmK+a+uQ4Ce9OFE5+8tPNiRtE+uCpuk3L2DKRoODGVsj
 FsDQ==
X-Gm-Message-State: APjAAAXttNZQ3y9OMgwgvOr8Ys7CMXv1BPlVW1HtozT0bj2ErauWOXgx
 7tNG4k/pJHHRNe6GUigMAjdPLA==
X-Google-Smtp-Source: APXvYqyyUVqi0udPEq0kk+xXnOiXAZrDL6nmRuPiWdSBtQVB+Zr5mfeTFPLXXkm6NSzwKNuLtifp4A==
X-Received: by 2002:a17:902:7244:: with SMTP id
 c4mr21514780pll.49.1582073937923; 
 Tue, 18 Feb 2020 16:58:57 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id m18sm155133pgd.39.2020.02.18.16.58.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 18 Feb 2020 16:58:57 -0800 (PST)
Date: Tue, 18 Feb 2020 16:58:56 -0800
From: Kees Cook <keescook@chromium.org>
To: Sami Tolvanen <samitolvanen@google.com>
Subject: Re: [PATCH v8 12/12] efi/libstub: disable SCS
Message-ID: <202002181658.45F66E21F@keescook>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200219000817.195049-1-samitolvanen@google.com>
 <20200219000817.195049-13-samitolvanen@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200219000817.195049-13-samitolvanen@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_165859_485876_F3B09207 
X-CRM114-Status: GOOD (  14.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, james.morse@arm.com,
 Masami Hiramatsu <mhiramat@kernel.org>, Marc Zyngier <maz@kernel.org>,
 kernel-hardening@lists.openwall.com, Laura Abbott <labbott@redhat.com>,
 Will Deacon <will@kernel.org>, Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Feb 18, 2020 at 04:08:17PM -0800, Sami Tolvanen wrote:
> Disable SCS for the EFI stub and allow x18 to be used.
> 
> Suggested-by: James Morse <james.morse@arm.com>
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>

Reviewed-by: Kees Cook <keescook@chromium.org>

-Kees

> ---
>  drivers/firmware/efi/libstub/Makefile | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/firmware/efi/libstub/Makefile b/drivers/firmware/efi/libstub/Makefile
> index 98a81576213d..dff9fa5a3f1c 100644
> --- a/drivers/firmware/efi/libstub/Makefile
> +++ b/drivers/firmware/efi/libstub/Makefile
> @@ -30,6 +30,9 @@ KBUILD_CFLAGS			:= $(cflags-y) -DDISABLE_BRANCH_PROFILING \
>  				   $(call cc-option,-fno-stack-protector) \
>  				   -D__DISABLE_EXPORTS
>  
> +#  remove SCS flags from all objects in this directory
> +KBUILD_CFLAGS := $(filter-out -ffixed-x18 $(CC_FLAGS_SCS), $(KBUILD_CFLAGS))
> +
>  GCOV_PROFILE			:= n
>  KASAN_SANITIZE			:= n
>  UBSAN_SANITIZE			:= n
> -- 
> 2.25.0.265.gbab2e86ba0-goog
> 

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
