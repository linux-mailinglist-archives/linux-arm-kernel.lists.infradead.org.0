Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18066A20AC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 18:21:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gO7tqidHm3++YEOve0z9Iox16WRdZe9q2QKMkTdDpqY=; b=DN7zITom6UOBHQ
	rRTpKNzWDoIE09VVjbda8wBtbekVlqm2jSu3NbX7mmxHic9JDWYPNx6+wqACa/J56Xo6SQBGHHRyP
	3CCG6BZqI7vCNqIDZlayqdN3HmyJ9ZEKc0BqjKYM7j3CuzvYmCAtNBxYHv0mBHHZrDTynQ+x7lSZ0
	PudHsDMzlXajjTeevrP670ET5xVMXrJr5QSxgrSy2Uj88p6rWEYkTDOZ6ClI1JQkJ24OXu+ZGdVtS
	/vR7qDQ8cLHAuLzP8FVDWjV6K9ftRhOtzOHX0Vabae1uAUPkdbAPsG2M5IMXL3Yv19GEWdFN7vghq
	xWdcABdMzvncDlf37SNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3NAS-0008Sy-CI; Thu, 29 Aug 2019 16:21:00 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3NAB-0008SJ-Li
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 16:20:45 +0000
Received: by mail-pl1-x643.google.com with SMTP id f19so1812956plr.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 29 Aug 2019 09:20:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=E3LStifNgUuLd+VD32Zb5UxmVS77q41aK/xZU55AQsc=;
 b=SyLK87fO1ebVPt2hXv3GQL+Xzd5c8H5Pg5xXjlLWi4ihwftGmSSWTVJSAkg6v4qXPo
 xJeHsl+/+0ZSUriKAqzMWRg1OsqL2byhA4XaXvZXIctLo4OnTJxHgSZ8gx1YYz8TPihb
 Wfb5qrh5jsbzisBe0vir695rN/aRXHCq0k4UI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=E3LStifNgUuLd+VD32Zb5UxmVS77q41aK/xZU55AQsc=;
 b=j8Gt/5OaNIkbPKUJbKrapa+w9mlrwtbbSVtXAUtJYbHv/wcOqgTKUxyl0MstkxtLH/
 Kl6JgH1tt7AbFpaPcbnA+XuOLOlPxSmg00wJdZnQ7LpmzrKj0qDySmASvbGLtIbbnqZQ
 8xw4wMS1HV34JO3Am4+unJQCx2oUwRUkLd8Fcr6+IJBh30KwB7qhhni77sXyrizr5ZOK
 8pOjuxTGeoAaoCMUzDT4nbiOoPHINkaqqvdAwzHd7o5zYm0MM790JCLgAd+xWx42W0bZ
 WOt0qbU3LV1Uu807qq9RUeiXB2iFvsoQfASZTGicmesRPGBuIkPEQp/1NPxX2Gb0LE93
 KrPw==
X-Gm-Message-State: APjAAAUoVVpDQA1bXYoblJk7Z7/qKR3kje6GSjb3IF5BhuZHrIibGO2D
 JAmjrnlAit0VzymKzDqXciZ4rQ==
X-Google-Smtp-Source: APXvYqwleG6EymW65DUzWthhf5rXPA5DDgri7wDXOjOC5MovzTOlHopdNSCr5aARJSPQDlerA0ahAQ==
X-Received: by 2002:a17:902:6687:: with SMTP id
 e7mr10999063plk.211.1567095641909; 
 Thu, 29 Aug 2019 09:20:41 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:75a:3f6e:21d:9374])
 by smtp.gmail.com with ESMTPSA id l31sm3066505pgm.63.2019.08.29.09.20.40
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 29 Aug 2019 09:20:40 -0700 (PDT)
Date: Thu, 29 Aug 2019 09:20:38 -0700
From: Matthias Kaehlcke <mka@chromium.org>
To: Nathan Chancellor <natechancellor@gmail.com>
Subject: Re: [PATCH] ARM: Emit __gnu_mcount_nc when using Clang 10.0.0 or newer
Message-ID: <20190829162038.GC70797@google.com>
References: <20190829062635.45609-1-natechancellor@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190829062635.45609-1-natechancellor@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_092043_737751_E40505F1 
X-CRM114-Status: GOOD (  16.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Arnd Bergmann <arnd@arndb.de>, Nick Desaulniers <ndesaulniers@google.com>,
 Russell King <linux@armlinux.org.uk>, Stefan Agner <stefan@agner.ch>,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 28, 2019 at 11:26:35PM -0700, Nathan Chancellor wrote:
> Currently, multi_v7_defconfig + CONFIG_FUNCTION_TRACER fails to build
> with clang:
> 
> arm-linux-gnueabi-ld: kernel/softirq.o: in function `_local_bh_enable':
> softirq.c:(.text+0x504): undefined reference to `mcount'
> arm-linux-gnueabi-ld: kernel/softirq.o: in function `__local_bh_enable_ip':
> softirq.c:(.text+0x58c): undefined reference to `mcount'
> arm-linux-gnueabi-ld: kernel/softirq.o: in function `do_softirq':
> softirq.c:(.text+0x6c8): undefined reference to `mcount'
> arm-linux-gnueabi-ld: kernel/softirq.o: in function `irq_enter':
> softirq.c:(.text+0x75c): undefined reference to `mcount'
> arm-linux-gnueabi-ld: kernel/softirq.o: in function `irq_exit':
> softirq.c:(.text+0x840): undefined reference to `mcount'
> arm-linux-gnueabi-ld: kernel/softirq.o:softirq.c:(.text+0xa50): more undefined references to `mcount' follow
> 
> clang can emit a working mcount symbol, __gnu_mcount_nc, when
> '-meabi gnu' is passed to it. Until r369147 in LLVM, this was
> broken and caused the kernel not to boot because the calling
> convention was not correct. Now that it is fixed, add this to
> the command line when clang is 10.0.0 or newer so everything
> works properly.
> 
> Link: https://github.com/ClangBuiltLinux/linux/issues/35
> Link: https://bugs.llvm.org/show_bug.cgi?id=33845
> Link: https://github.com/llvm/llvm-project/commit/16fa8b09702378bacfa3d07081afe6b353b99e60
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> ---
>  arch/arm/Makefile | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/arch/arm/Makefile b/arch/arm/Makefile
> index c3624ca6c0bc..7b5a26a866fc 100644
> --- a/arch/arm/Makefile
> +++ b/arch/arm/Makefile
> @@ -112,6 +112,12 @@ ifeq ($(CONFIG_ARM_UNWIND),y)
>  CFLAGS_ABI	+=-funwind-tables
>  endif
>  
> +ifeq ($(CONFIG_CC_IS_CLANG),y)
> +ifeq ($(shell test $(CONFIG_CLANG_VERSION) -ge 100000; echo $$?),0)
> +CFLAGS_ABI	+=-meabi gnu
> +endif
> +endif

Is this also correct/needed when CONFIG_AEABI is not set?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
