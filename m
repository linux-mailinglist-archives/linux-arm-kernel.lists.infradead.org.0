Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C42F018D26C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Mar 2020 16:10:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WrO0uk64UGHugrfJE+X0creqr6tgl7R9NrPWjO/GG64=; b=j6QPf94DjtLm6n
	WGYDsC7udCk3kuHIVc4K3y/NdX18K6nXXYuq+WX/GEkugiNHq7wyiKGPJUjGN4NfXr3cRUl+5P62p
	hRNrcs0Rr5740tKKGBoiIIYca3u2FRKDyXm8rI7mhwc6zSz21RXqws/9Tl4xgUtNlw7T6MrhBdB/N
	9Eqeo4jp1n9P7ee41cyayiEflh26RvJW3aeWM24AAhJTK/eUYf070mgJKSSPTJg5ZFbZhFFSWqiEr
	a1hxINL5Z3hXYQCwKRfinLWh1dcs0l39DuyWh33ZaEfnQXYL+mn6B3Yg4QLoVX3TkWcJbvSuCEz1e
	das6lGyRJlHCeC/3X/dw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFJHr-0000r4-4h; Fri, 20 Mar 2020 15:10:15 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFJHa-0000qZ-5l
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Mar 2020 15:09:59 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 777F31FB;
 Fri, 20 Mar 2020 08:09:57 -0700 (PDT)
Received: from mbp (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 54EC03F792;
 Fri, 20 Mar 2020 08:09:55 -0700 (PDT)
Date: Fri, 20 Mar 2020 15:09:52 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Subject: Re: [PATCH] arm64: Kconfig: verify binutils support for ARM64_PTR_AUTH
Message-ID: <20200320150952.GD29214@mbp>
References: <1584090304-18043-17-git-send-email-amit.kachhap@arm.com>
 <20200319181951.102662-1-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200319181951.102662-1-ndesaulniers@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_080958_262949_070293F4 
X-CRM114-Status: UNSURE (   9.03  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: mark.rutland@arm.com, keescook@chromium.org, suzuki.poulose@arm.com,
 kristina.martsenko@arm.com, ardb@kernel.org, yamada.masahiro@socionext.com,
 broonie@kernel.org, james.morse@arm.com, clang-built-linux@googlegroups.com,
 ramana.radhakrishnan@arm.com, amit.kachhap@arm.com, vincenzo.frascino@arm.com,
 will@kernel.org, Dave.Martin@arm.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Mar 19, 2020 at 11:19:51AM -0700, Nick Desaulniers wrote:
> Clang relies on GNU as from binutils to assemble the Linux kernel,
> currently. A recent patch to enable the armv8.3-a extension for pointer
> authentication checked for compiler support of the relevant flags.
> Everything works with binutils 2.34+, but for older versions we observe
> assembler errors:
> 
> /tmp/vgettimeofday-36a54b.s: Assembler messages:
> /tmp/vgettimeofday-36a54b.s:40: Error: unknown pseudo-op: `.cfi_negate_ra_state'
> 
> When compiling with Clang, require the assembler to support
> .cfi_negate_ra_state directives, in order to support CONFIG_ARM64_PTR_AUTH.
> 
> Link: https://github.com/ClangBuiltLinux/linux/issues/938
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>

Queued. Thanks.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
