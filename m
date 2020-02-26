Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87F03170AC2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 22:45:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ScYGzcOrFnSQyJuDNvxoJRyoG6wy/vVsQM91Lc6rROE=; b=SBjxTTO5hKoI8d
	noPAPKay4/dUfrAoWhhEHLvLQckyF+2S6RiKjm0dwnqOZXJgwhoq/bZLL5/4rEFRJHb5/x8I/AAXW
	QlV2uTmaRDq4UQUbZXynlFfOcgH1v9LsxIrIZdyrQhgVbiqgI+NRfzEgqJ0qhJIC7VNPs3xxPuxRt
	/T8N/CgRX13NwA+tQWYrgjIAKa0y6KJh/TsflzQVpyFPPGq8G+/0SpZBbWR4HYt16tmCEqeKlsCWt
	pn+WZjwohpoj5+37KRTyD7FayMs2kPVcyLvaVGWXthL745Poml+uuIJ89/SJ1yB9udGgfTMcIllP5
	L9I8Gt4iccPdjM6N8+zQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j74Ua-0005h3-LS; Wed, 26 Feb 2020 21:45:20 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j74UH-0004zj-H4
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 21:45:06 +0000
Received: by mail-pg1-x541.google.com with SMTP id z12so311704pgl.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Feb 2020 13:45:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=LEOG45oBzsk4VkXLaube4iedb24/mnkHl/uPB4eNLko=;
 b=S7QwoillPymvmUXhSvQ9XeY6dt1lsnuG9Gixb/80AnLRzal3BKqeXehLhN8GeIopi7
 mHIWOeTf7r00dNMZbOY0wy/VeWQM2D1PWjaWm6VqnRhDTJ5RtWMC6V4WiBuONgAurgwS
 e6aKokF7WWW6DX6t/rtidzSu6L5+xiuBi/ihA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=LEOG45oBzsk4VkXLaube4iedb24/mnkHl/uPB4eNLko=;
 b=AhvhxVM+m/glHPEzl/va62NpTWqVcSMSHzFvEpY7FMPra4u86khqz3LxhTkJ411+kL
 +yJ3mQMY5M1QBXAi5t1mysqDACvwsdgrWN6RBPWuqVanztdbIeZqSp5QQAvnp0TNJmwL
 6dhO3Taz2zfIgfx0kQWxeA0RXN9y9GSAwV40KqIt1bN/ndBXylZS3gXDFiq5fjqHCNLT
 SXc7pP5l1C+YCV9Doyf3dx6e3C+1QWKIge505SK0xdzGfNkLNNp7X17PfBafOjlDPQww
 TZ9O4NRLqW+rE9GywEyHNL19m4g/pPbEqsuk1AT2mlWnvy2QDKSh3+kX80wgd+6XixkF
 Sv/Q==
X-Gm-Message-State: APjAAAV5VINEesrrvSe1JPPAITnnT1GY9/m0OThLvtHryTRJECo0eh4Z
 0x+Z7RfT5JWZFXgXBEJkBUbeyw==
X-Google-Smtp-Source: APXvYqzAYJxED0DZuNTQH/pPVYk94YN0FwPubJNZYwjzdTSrs2Ri1O5oY0aDkBqS9krAjOJx6fGojA==
X-Received: by 2002:a63:3004:: with SMTP id w4mr854365pgw.164.1582753500965;
 Wed, 26 Feb 2020 13:45:00 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id z16sm4066910pff.125.2020.02.26.13.44.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 26 Feb 2020 13:45:00 -0800 (PST)
Date: Wed, 26 Feb 2020 13:44:59 -0800
From: Kees Cook <keescook@chromium.org>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH v7 00/11] arm64: Branch Target Identification support
Message-ID: <202002261343.3B2ECE90@keescook>
References: <20200226155714.43937-1-broonie@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200226155714.43937-1-broonie@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_134501_603251_1CB9722C 
X-CRM114-Status: GOOD (  11.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Catalin Marinas <catalin.marinas@arm.com>, Andrew Jones <drjones@redhat.com>,
 Amit Kachhap <amit.kachhap@arm.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 linux-arch@vger.kernel.org, Marc Zyngier <maz@kernel.org>,
 Eugene Syromiatnikov <esyr@redhat.com>, Szabolcs Nagy <szabolcs.nagy@arm.com>,
 "H . J . Lu " <hjl.tools@gmail.com>, Yu-cheng Yu <yu-cheng.yu@intel.com>,
 Arnd Bergmann <arnd@arndb.de>, Jann Horn <jannh@google.com>,
 Richard Henderson <richard.henderson@linaro.org>,
 Kristina =?utf-8?Q?Mart=C5=A1enko?= <kristina.martsenko@arm.com>,
 Alexander Viro <viro@zeniv.linux.org.uk>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org, Florian Weimer <fweimer@redhat.com>,
 linux-kernel@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 Sudakshina Das <sudi.das@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Feb 26, 2020 at 03:57:03PM +0000, Mark Brown wrote:
> This patch series implements support for ARMv8.5-A Branch Target
> Identification (BTI), which is a control flow integrity protection
> feature introduced as part of the ARMv8.5-A extensions.
> 
> Changes:
> 
> v7:
>  - Rebase onto v5.6-rc3.
>  - Move comment about keeping NT_GNU_PROPERTY_TYPE_0 internal into first
>    patch.
>  - Add an explicit check for system_supports_bti() when parsing BTI ELF
>    property for improved robustness.

Looks good. I sent a few more Reviewed-bys where I could. Who is
expected to pick this up? Catalin? Will?

I'm excited to have both the ELF parser and BTI landed. :)

-Kees

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
