Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F41C8E934E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 00:08:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0Kzp0NZW8OpHlvooVHEwqCkWxJ/4JIHyvCivRnM7rJU=; b=cM8XWBB81KsVXm
	6/3fXbt7Mw2DKarGl5KA+7TZc4cSvdoUiqYjeKR/Xm3VbQVAt4pO2V1BUNyf0M+ekaJdZg3Iiw/NU
	2/STH8fvv9thomO+KVew7l2AaReV34KkNrsPwN8QJ0MLan0qRfTQIuSf4c49m/Zh+qAv0T2mC6sex
	77WaddRMOUR/CQMEVNIDSZk+PktlcK2O4Pf+K3pX+4O5JSjBcA8BRZ4qIytzxP6fUcefgMhrLKz50
	Rctfyp8pW2bzkOvX+2NI6m7Y8nYcLf5DPUfQoiAzk5J7KBzVNbLdAuyNbEQ09wrwHTwB5fTnad0Jx
	3sfkucNjXU6pgU50bg5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPab1-0003K0-2y; Tue, 29 Oct 2019 23:08:15 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPaam-0003JM-3b
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 23:08:01 +0000
Received: by mail-pf1-x441.google.com with SMTP id r4so159234pfl.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 29 Oct 2019 16:07:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=EK/iR04QppfFL6hJjq1Qp4tKuC0yyvj8XT1kmd57Vc8=;
 b=dtLNUoC1eHJFg8kN8Jl92Mm/KMo4Rv2P/Ke5YttA0vm9EMCZXYT1ihVW7e044UMAr3
 8dejWZTNu6tNpmE10toXS+HsMsUY8loN8/tZsFYReKVrgSDC4FCwihhKTmwwbvMDYxB7
 eH9kvuBXcG/bcdeVX7kFXgcslFNyRSVP5CdWc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=EK/iR04QppfFL6hJjq1Qp4tKuC0yyvj8XT1kmd57Vc8=;
 b=CmjpCvMoQpnCAqgC55ZW+FrvVeXOdPsIgme1997MVqjcRZOzc4dPNyV+kSti89Z75g
 JfLPwdGdfvdrb8CE6htpGnPtTlUnle0M73c/YRfI4tMSPGg5BR/UVUX+E0i2QJIHHZHo
 fKBCnaDlCmPbNrS48KrM3o1nHdSbhyectH7fxvY07MvYFb4WVTp6iVJV55uaqhASXyIM
 8xJQN6s2Wnb0bU62I4SiU4Dj2HSJevnmWr5Q44Ha1J1/M4ZzJaKX7GvQWtI5sD1GOU7W
 tqLZAOJi2hRBI7+3slkuLmnJmbhWAwtpy5UEZOQa/lbR970SIOlzdeIwnEicp3dI8aeF
 kM5A==
X-Gm-Message-State: APjAAAV1g7qyH7dXWAmtS+0XfQxFv6kwpz+yK7iS8norOpeLsZisr2FJ
 MTWXDpwDrxYZcJDyczeOmc3Fwg==
X-Google-Smtp-Source: APXvYqxlpD8afJVfeJRJZqXRk4DC19b4p18OjNSVX2/RdrFGCqjrqXaMMfLfYxGsFkhlHHEsGanvkA==
X-Received: by 2002:a63:8f5e:: with SMTP id r30mr21918430pgn.146.1572390479068; 
 Tue, 29 Oct 2019 16:07:59 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id e17sm175911pfh.121.2019.10.29.16.07.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Oct 2019 16:07:58 -0700 (PDT)
Date: Tue, 29 Oct 2019 16:07:57 -0700
From: Kees Cook <keescook@chromium.org>
To: Dave Martin <Dave.Martin@arm.com>
Subject: Re: [PATCH v3 01/12] ELF: UAPI and Kconfig additions for ELF program
 properties
Message-ID: <201910291607.F5DA2EE@keescook>
References: <1571419545-20401-1-git-send-email-Dave.Martin@arm.com>
 <1571419545-20401-2-git-send-email-Dave.Martin@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1571419545-20401-2-git-send-email-Dave.Martin@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_160800_149147_30003D50 
X-CRM114-Status: GOOD (  16.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Paul Elliott <paul.elliott@arm.com>, Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Yu-cheng Yu <yu-cheng.yu@intel.com>,
 Amit Kachhap <amit.kachhap@arm.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 linux-arch@vger.kernel.org, Marc Zyngier <maz@kernel.org>,
 Eugene Syromiatnikov <esyr@redhat.com>, Szabolcs Nagy <szabolcs.nagy@arm.com>,
 "H.J. Lu" <hjl.tools@gmail.com>, Andrew Jones <drjones@redhat.com>,
 Arnd Bergmann <arnd@arndb.de>, Jann Horn <jannh@google.com>,
 Richard Henderson <richard.henderson@linaro.org>,
 Kristina =?utf-8?Q?Mart=C5=A1enko?= <kristina.martsenko@arm.com>,
 Mark Brown <broonie@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org, Florian Weimer <fweimer@redhat.com>,
 linux-kernel@vger.kernel.org, Sudakshina Das <sudi.das@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 18, 2019 at 06:25:34PM +0100, Dave Martin wrote:
> Pull the basic ELF definitions relating to the
> NT_GNU_PROPERTY_TYPE_0 note from Yu-Cheng Yu's earlier x86 shstk
> series.
> 
> Signed-off-by: Yu-cheng Yu <yu-cheng.yu@intel.com>

Reviewed-by: Kees Cook <keescook@chromium.org>

-Kees

> Signed-off-by: Dave Martin <Dave.Martin@arm.com>
> ---
>  fs/Kconfig.binfmt        | 3 +++
>  include/linux/elf.h      | 8 ++++++++
>  include/uapi/linux/elf.h | 1 +
>  3 files changed, 12 insertions(+)
> 
> diff --git a/fs/Kconfig.binfmt b/fs/Kconfig.binfmt
> index 62dc4f5..d2cfe07 100644
> --- a/fs/Kconfig.binfmt
> +++ b/fs/Kconfig.binfmt
> @@ -36,6 +36,9 @@ config COMPAT_BINFMT_ELF
>  config ARCH_BINFMT_ELF_STATE
>  	bool
>  
> +config ARCH_USE_GNU_PROPERTY
> +	bool
> +
>  config BINFMT_ELF_FDPIC
>  	bool "Kernel support for FDPIC ELF binaries"
>  	default y if !BINFMT_ELF
> diff --git a/include/linux/elf.h b/include/linux/elf.h
> index e3649b3..459cddc 100644
> --- a/include/linux/elf.h
> +++ b/include/linux/elf.h
> @@ -2,6 +2,7 @@
>  #ifndef _LINUX_ELF_H
>  #define _LINUX_ELF_H
>  
> +#include <linux/types.h>
>  #include <asm/elf.h>
>  #include <uapi/linux/elf.h>
>  
> @@ -56,4 +57,11 @@ static inline int elf_coredump_extra_notes_write(struct coredump_params *cprm) {
>  extern int elf_coredump_extra_notes_size(void);
>  extern int elf_coredump_extra_notes_write(struct coredump_params *cprm);
>  #endif
> +
> +/* NT_GNU_PROPERTY_TYPE_0 header */
> +struct gnu_property {
> +	u32 pr_type;
> +	u32 pr_datasz;
> +};
> +
>  #endif /* _LINUX_ELF_H */
> diff --git a/include/uapi/linux/elf.h b/include/uapi/linux/elf.h
> index 34c02e4..c377314 100644
> --- a/include/uapi/linux/elf.h
> +++ b/include/uapi/linux/elf.h
> @@ -36,6 +36,7 @@ typedef __s64	Elf64_Sxword;
>  #define PT_LOPROC  0x70000000
>  #define PT_HIPROC  0x7fffffff
>  #define PT_GNU_EH_FRAME		0x6474e550
> +#define PT_GNU_PROPERTY		0x6474e553
>  
>  #define PT_GNU_STACK	(PT_LOOS + 0x474e551)
>  
> -- 
> 2.1.4
> 

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
