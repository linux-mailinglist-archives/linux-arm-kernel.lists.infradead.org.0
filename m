Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94619183DBA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 01:02:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gm4+KmdiLjorF+SOFz+/SNFQlGyILaHSIXfHPM7k7fA=; b=ZNb4S3iKKuMcYM
	W9zMBKl9EYuTWx+SBeCKd8tGHMHYxrxgvWdewntcDbmE7bCA44/nHpZt3V7LKAjkHuFY+Ewu7F071
	g9B6ox6pMzxBYKEzn106pU6x0wDvqvCGWX4EdvgIVtdzaqgzCEAZySPDUq8j4c4f0qs9pvcHeOdCX
	PINUn6f3abiQ1PEORZUwQgeEBmzmVh+iRHOEyQ3uFXUafh/PqBt22rI1KtzRtE5GixrDFF5rZ/rDU
	WReVEd0XZ/j3NhnSP+uH8UPu8i495G1udCyr9qdI0Gp87S/fS454oVPYnjblol7suP2vesh7FLToY
	rXSYsuckzt53+p3i3SRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCXm7-0001Ux-Cx; Fri, 13 Mar 2020 00:02:03 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCXlv-0001QZ-L0
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 00:01:53 +0000
Received: by mail-pj1-x1043.google.com with SMTP id y7so3223803pjn.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 12 Mar 2020 17:01:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=rmEnGedJS8sxU6HnCpV+Q7c12k0Ug1fpGwxF+f1yIUU=;
 b=Pl+Pce2CQX2Wi8HakEByaZJ4V1r/N63/wl+7RIrmZoKQhGGn2F42JBBI4IUgM/BOmb
 A9VQ3xP3ckXlPZZmhQYQ04iCw4Mh77vtilJ5/a+JLuWfCRqQVbjbTH+r8p+VoSHRvpiK
 uTYRf5M6Fl03wmZyFwKy/znFMKao215IA4kmM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=rmEnGedJS8sxU6HnCpV+Q7c12k0Ug1fpGwxF+f1yIUU=;
 b=IcLp6pJATxfQ6xzUAlFfci/7Gw/45eqPO+5E9BlmWbAWgns2+yVa9OQCVTatQ7iZRs
 1GPHfd8wsbRTfDOU3s47FQ+D4Z7TpcoISKOCL+RoPbemLiODACUF+ccAoG08C4ACU1rO
 ceTq5G2uT7W1+s7Xvs58H06mqra2P56EMVQ58R/JQXOMgwLQdhzrFRxF685Lsaj8FCJe
 2umoAb3+0JSk0qVVyn3ugi7pr89KzdRLxnAFDYXI0Rqp0LWfBKq0/czlAdyOZD3iC2HB
 h5tcHZm7LldaxD9ikkoDEJdrVpZBziqZmwl8BlU99GgGfUJB2vH8hERPmeSRv+TNNs7a
 K77g==
X-Gm-Message-State: ANhLgQ3BOjkjjpdqqSgonW9ZzZNjzwlQb9BzYkSOs2LhsF3Om2GO1qfK
 BxCAe4pd9icyysiMJRmlzpuB+w==
X-Google-Smtp-Source: ADFU+vsQ94Kp0d98Pbb4MXZarpMHv6ibuFITYGGF7X16YL0Ee3aFcR+8dzYWKYGKsg7cimIUlM5axg==
X-Received: by 2002:a17:902:d684:: with SMTP id
 v4mr10568065ply.112.1584057709967; 
 Thu, 12 Mar 2020 17:01:49 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id d3sm55113197pfn.113.2020.03.12.17.01.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Mar 2020 17:01:49 -0700 (PDT)
Date: Thu, 12 Mar 2020 17:01:47 -0700
From: Kees Cook <keescook@chromium.org>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH v9 13/13] arm64: BTI: Add Kconfig entry for userspace BTI
Message-ID: <202003121700.9260E027@keescook>
References: <20200311192608.40095-1-broonie@kernel.org>
 <20200311192608.40095-14-broonie@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200311192608.40095-14-broonie@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_170151_695607_6679E45E 
X-CRM114-Status: GOOD (  20.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1043 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Catalin Marinas <catalin.marinas@arm.com>, Andrew Jones <drjones@redhat.com>,
 Amit Kachhap <amit.kachhap@arm.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 linux-arch@vger.kernel.org, Marc Zyngier <maz@kernel.org>,
 Eugene Syromiatnikov <esyr@redhat.com>, Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Dave Martin <Dave.Martin@arm.com>, "H . J . Lu " <hjl.tools@gmail.com>,
 Yu-cheng Yu <yu-cheng.yu@intel.com>, Arnd Bergmann <arnd@arndb.de>,
 Jann Horn <jannh@google.com>, Richard Henderson <richard.henderson@linaro.org>,
 Kristina =?utf-8?Q?Mart=C5=A1enko?= <kristina.martsenko@arm.com>,
 Alexander Viro <viro@zeniv.linux.org.uk>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org, Florian Weimer <fweimer@redhat.com>,
 linux-kernel@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 Sudakshina Das <sudi.das@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Mar 11, 2020 at 07:26:08PM +0000, Mark Brown wrote:
> From: Dave Martin <Dave.Martin@arm.com>
> 
> Now that the code for userspace BTI support is in the kernel add the
> Kconfig entry so that it can be built and used.
> 
> [Split out of "arm64: Basic Branch Target Identification support" --
> broonie]
> 
> Signed-off-by: Dave Martin <Dave.Martin@arm.com>

Reviewed-by: Kees Cook <keescook@chromium.org>

-Kees

> Signed-off-by: Mark Brown <broonie@kernel.org>
> ---
>  arch/arm64/Kconfig | 22 ++++++++++++++++++++++
>  1 file changed, 22 insertions(+)
> 
> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> index 8a15bc68dadd..d65d226a77ec 100644
> --- a/arch/arm64/Kconfig
> +++ b/arch/arm64/Kconfig
> @@ -1522,6 +1522,28 @@ endmenu
>  
>  menu "ARMv8.5 architectural features"
>  
> +config ARM64_BTI
> +	bool "Branch Target Identification support"
> +	default y
> +	help
> +	  Branch Target Identification (part of the ARMv8.5 Extensions)
> +	  provides a mechanism to limit the set of locations to which computed
> +	  branch instructions such as BR or BLR can jump.
> +
> +	  To make use of BTI on CPUs that support it, say Y.
> +
> +	  BTI is intended to provide complementary protection to other control
> +	  flow integrity protection mechanisms, such as the Pointer
> +	  authentication mechanism provided as part of the ARMv8.3 Extensions.
> +	  For this reason, it does not make sense to enable this option without
> +	  also enabling support for pointer authentication.  Thus, when
> +	  enabling this option you should also select ARM64_PTR_AUTH=y.
> +
> +	  Userspace binaries must also be specifically compiled to make use of
> +	  this mechanism.  If you say N here or the hardware does not support
> +	  BTI, such binaries can still run, but you get no additional
> +	  enforcement of branch destinations.
> +
>  config ARM64_E0PD
>  	bool "Enable support for E0PD"
>  	default y
> -- 
> 2.20.1
> 

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
