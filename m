Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 590B25D491
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jul 2019 18:47:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/1Y7Pr2mdT/MbWLlYK48lRSg9LZA2EJgAjPXFNICDDU=; b=pr/BZHsgLCPhWN
	5KcIup6lHKY7NFJAU9NifPCxM2fBmQIXCeyRyJp5p8A9RfdHpAJ8LZ8/LlFn+BejaMQc3Cr+RMvqa
	cZAyJ8urSy3r/Wlfi/Ud9k/jyMqLp0eK2NMj5mRddCtNlF77lm3KxGfRKnowmU0vOlIig6nzDNuCZ
	8OD5lUzTxrqzJZS8DtRJTQ5a7gOaD7DkbuhJFWczvNpZaNh8NLLigLDSOVlqP5X6IlCD7qV2UWCoA
	J2G9/UEfX1EgHJeV8WX9aCvW2k5O/1Xr872PZMfOE+ZE6cc4wTftpcf6/az1KpxfeH9UO33PnobPn
	pdKMJY3LcMmFwq0VzQmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiLwF-0006eU-NB; Tue, 02 Jul 2019 16:47:27 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiLw4-0006cA-3V
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jul 2019 16:47:17 +0000
Received: by mail-pg1-x541.google.com with SMTP id m4so7967581pgk.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 02 Jul 2019 09:47:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=joelfernandes.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=AwqtYCgoVgMFd7zLHFhWGcqejisGWIssWVV7qBN5clA=;
 b=fzB5MVLqWtyuS6TrHWjeVZWCRt7xTFDG2hc/XyaXBc42/GpMFNc0clWc7wyZC3/x9k
 lKWMANDwnbugpxtIihI9PPsv7PZU6CAqFs74AAgSzug0hb03S3WTAXUqkf6OA2TLqj/F
 lAVi3uicaXPR015jxEg0o8Lz9CCKLPKG65XS0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=AwqtYCgoVgMFd7zLHFhWGcqejisGWIssWVV7qBN5clA=;
 b=t+MNb0ZtqKYoFwE2bNKYEnGrO7usbircvGXpmjeoSiQiP8mcAaDFLlq2cB5S5EmF0j
 DSk9uGsAaCyz+ibcBxvzkGM/CGXzx2Itdur1od6aOS4erPcUZD+RcqXDaYTyVmZyJXFw
 r1hxWDGbAJRlDbRxknjE/bcriRgAljJT/egkkXAoc8AQTS9xKEDz9rWOhKRHdtVP8dle
 fYIfIYA8M/rSfdHGQSnqYLzCOP/SkMAc8dKaNxPnmDrGawRgJReyD5l07UjAbIdYc99I
 sJgLy6sOQnF1+zqkO1JIXuArQWUdcEmX2WCl4/8hIUKyjXsayrb81uZa4LhEb11hTXtr
 vZlA==
X-Gm-Message-State: APjAAAU9H9oSEP56VIIUY8p9FH9aogtqS4BVqpVgEMi7ntbVSkad8dVW
 Roh7RdA1CosIxz6lBWY2FM6SXddQyRw=
X-Google-Smtp-Source: APXvYqzQ8uHzZ6YNkTzdPuzkj3M5yMySr4CirEds9hca/3caI4D9NArfxglQSOD3nsK4x9A5ZVXEgQ==
X-Received: by 2002:a63:bd0a:: with SMTP id a10mr17207509pgf.55.1562086034555; 
 Tue, 02 Jul 2019 09:47:14 -0700 (PDT)
Received: from localhost ([2620:15c:6:12:9c46:e0da:efbf:69cc])
 by smtp.gmail.com with ESMTPSA id q1sm20178917pfg.84.2019.07.02.09.47.13
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 02 Jul 2019 09:47:13 -0700 (PDT)
Date: Tue, 2 Jul 2019 12:47:12 -0400
From: Joel Fernandes <joel@joelfernandes.org>
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Subject: Re: [PATCH 7/7] kbuild: compile-test kernel headers to ensure they
 are self-contained
Message-ID: <20190702164712.GA98338@google.com>
References: <20190701005845.12475-1-yamada.masahiro@socionext.com>
 <20190701005845.12475-8-yamada.masahiro@socionext.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190701005845.12475-8-yamada.masahiro@socionext.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_094716_192952_8F019F67 
X-CRM114-Status: GOOD (  18.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Song Liu <songliubraving@fb.com>,
 Jakub Kicinski <jakub.kicinski@netronome.com>,
 Alexei Starovoitov <ast@kernel.org>, Sam Ravnborg <sam@ravnborg.org>,
 Kees Cook <keescook@chromium.org>, xdp-newbies@vger.kernel.org,
 Daniel Borkmann <daniel@iogearbox.net>, Anton Vorontsov <anton@enomsg.org>,
 John Fastabend <john.fastabend@gmail.com>, Yonghong Song <yhs@fb.com>,
 Jesper Dangaard Brouer <hawk@kernel.org>, linux-kbuild@vger.kernel.org,
 Michal Marek <michal.lkml@markovi.net>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Tony Luck <tony.luck@intel.com>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Martin KaFai Lau <kafai@fb.com>, Colin Cross <ccross@android.com>,
 bpf@vger.kernel.org, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 01, 2019 at 09:58:45AM +0900, Masahiro Yamada wrote:
> The headers in include/ are globally used in the kernel source tree
> to provide common APIs. They are included from external modules, too.
> 
> It will be useful to make as many headers self-contained as possible
> so that we do not have to rely on a specific include order.
> 
> There are more than 4000 headers in include/. In my rough analysis,
> 70% of them are already self-contained. With efforts, most of them
> can be self-contained.
> 
> For now, we must exclude more than 1000 headers just because they
> cannot be compiled as standalone units. I added them to header-test-.
> The blacklist was mostly generated by a script, so the reason of the
> breakage should be checked later.
> 
> Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
> Tested-by: Jani Nikula <jani.nikula@intel.com>
> ---
> 
> Changes in v4:
>   - Fix vmlinux build error
>   - Exclude more headers for sparc
> 
> Changes in v3:
>   - Exclude more headers
>    (Tested for allnoconfig + CONFIG_HEADER_TEST=y)
> 
> Changes in v2:
>   - Add everything to test coverage, and exclude broken ones
>   - Rename 'Makefile' to 'Kbuild'
>   - Add CONFIG_KERNEL_HEADER_TEST option
> 
>  Makefile       |    1 +
>  include/Kbuild | 1253 ++++++++++++++++++++++++++++++++++++++++++++++++
>  init/Kconfig   |   11 +
>  3 files changed, 1265 insertions(+)
>  create mode 100644 include/Kbuild
[snip
> diff --git a/init/Kconfig b/init/Kconfig
> index 74192de8ada6..e2e99544da8d 100644
> --- a/init/Kconfig
> +++ b/init/Kconfig
> @@ -108,6 +108,17 @@ config HEADER_TEST
>  	  If you are a developer or tester and want to ensure the requested
>  	  headers are self-contained, say Y here. Otherwise, choose N.
>  
> +config KERNEL_HEADER_TEST
> +	bool "Compile test kernel headers"
> +	depends on HEADER_TEST
> +	help
> +	  Headers in include/ are used to build external moduls.

Nit:
							 modules.

Otherwise lgtm, thanks for the cc.

Reviewed-by: Joel Fernandes (Google) <joel@joelfernandes.org>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
