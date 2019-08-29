Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC44AA1311
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 09:57:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:
	Subject:To:From:Date:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u4ecuuD3/4qXZpEgEWUU+U2eHdkuuhkv2+/r8DsmdZY=; b=XEywoJSGji3YHT
	AmTlNZuCvk/5DsCjc48nSGdOtpKavKfzl2sxIFvIYvM7JUZUSxmEbGF1ER02FUmva+976776OG4k3
	MMcKQPDi43JUoxx3abbjd9LVCNYetapEF7egTeoZpUsjn0SbDo0+nbDT65tzkh98Ro52o/3OxlL3p
	dGP51tykgRnCAvvxFui7rkqy0uXalRcmuyfs1CqKEyIVMRpdLFx2fUMm7syDTszz30tYTlIf3jrCz
	hogo6/KRphhct/ZuDZfH223EteB+y6RU21ZgW2gkz0mPE8YOovNF3fd/8WcwQMNUTCkHpeHZaCq+f
	SAw/QRVjEHADvATUKU4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3FJA-0004Uk-3W; Thu, 29 Aug 2019 07:57:28 +0000
Received: from mail.kmu-office.ch ([2a02:418:6a02::a2])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3FIx-0004U0-HE
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 07:57:17 +0000
Received: from webmail.kmu-office.ch (unknown [IPv6:2a02:418:6a02::a3])
 by mail.kmu-office.ch (Postfix) with ESMTPSA id 5BBF95C061A;
 Thu, 29 Aug 2019 09:57:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=agner.ch; s=dkim;
 t=1567065430;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=z8mT125lg2u4srukuCuOIjTA/fSrbJ4+/sfujlxob84=;
 b=VK1CIOcB1OD/huRZhcJJs7rGkMfngWojEwTyYxRkZBs998yEtvOfwwRz1yi1MVI8hBPZPd
 gXsfuV4XFGLjWcEXKdsIIJIkXsTlIiLHfX+Sbqdb3ErBs3rMCK0qrqY65QKkQ4GQnm4DtX
 Unb+CFRUfzjOj4Yrg44luRuLTzZCbgU=
MIME-Version: 1.0
Date: Thu, 29 Aug 2019 09:57:10 +0200
From: Stefan Agner <stefan@agner.ch>
To: Nathan Chancellor <natechancellor@gmail.com>
Subject: Re: [PATCH] ARM: Emit __gnu_mcount_nc when using Clang 10.0.0 or newer
In-Reply-To: <20190829062635.45609-1-natechancellor@gmail.com>
References: <20190829062635.45609-1-natechancellor@gmail.com>
Message-ID: <f82b89b8b3d1db04dc083643bd25c1f1@agner.ch>
X-Sender: stefan@agner.ch
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_005715_723100_CCF31014 
X-CRM114-Status: GOOD (  15.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Arnd Bergmann <arnd@arndb.de>, Nick Desaulniers <ndesaulniers@google.com>,
 Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com, Matthias Kaehlcke <mka@chromium.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-08-29 08:26, Nathan Chancellor wrote:
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
> arm-linux-gnueabi-ld: kernel/softirq.o:softirq.c:(.text+0xa50): more
> undefined references to `mcount' follow
> 
> clang can emit a working mcount symbol, __gnu_mcount_nc, when
> '-meabi gnu' is passed to it. Until r369147 in LLVM, this was
> broken and caused the kernel not to boot because the calling
> convention was not correct. Now that it is fixed, add this to
> the command line when clang is 10.0.0 or newer so everything
> works properly.

Cool, finally function tracing with Clang :-)

> 
> Link: https://github.com/ClangBuiltLinux/linux/issues/35
> Link: https://bugs.llvm.org/show_bug.cgi?id=33845
> Link:
> https://github.com/llvm/llvm-project/commit/16fa8b09702378bacfa3d07081afe6b353b99e60
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>

Reviewed-by: Stefan Agner <stefan@agner.ch>

--
Stefan

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
> +
>  # Accept old syntax despite ".syntax unified"
>  AFLAGS_NOWARN	:=$(call as-option,-Wa$(comma)-mno-warn-deprecated,-Wa$(comma)-W)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
