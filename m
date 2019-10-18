Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB1D7DCC11
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 18:58:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ASl6Zje/K4zF+p2NXTDL7LZ5+VXag20CuCXIpBpWVq8=; b=LhK1mtVtsb6tVK
	tqlZeDFwhFZ/A7ZPVloVhvBv2QIiZ8IHRokp8P9+Raw5uU7Ynf9LEEJOJklNIOUHGeOXywm0a1Jxh
	ToPv14TwKZh0c/vEdPTr2NgJCN+T66VQZkXx3q3Ns/PFzX/1gjZyDXiAdueMqdDMox5WXb/JR4wMt
	1Pj5wdiBPOrqEwL8PHwYRpukv8kgCaSQbB3xaKDwa3lpO3glkv0r7vMSA6RHqHg1YXYxUD8r4s9dg
	DUoPJORMXOIwt99D4Cr0B8nefCeAjjt0MxJNyg0ntw3PkfNqf1rayPBxZhkTl5CxSiRk3MvjIxyya
	D1i55duuBWu9l4+ZQxhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLVaE-0005xX-Ug; Fri, 18 Oct 2019 16:58:34 +0000
Received: from smtprelay0059.hostedemail.com ([216.40.44.59]
 helo=smtprelay.hostedemail.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLVa6-0005wj-O7
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 16:58:28 +0000
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay02.hostedemail.com (Postfix) with ESMTP id 9DF0745B3;
 Fri, 18 Oct 2019 16:58:17 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com,
 :::::::::::::::::::::::::::,
 RULES_HIT:41:355:379:599:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:1981:2194:2199:2393:2559:2562:2828:2897:3138:3139:3140:3141:3142:3352:3622:3865:3867:3868:4321:5007:7903:8660:10004:10400:10848:11026:11232:11658:11914:12043:12048:12297:12438:12679:12740:12760:12895:13069:13148:13230:13311:13357:13439:13848:14659:14721:21080:21212:21451:21611:21627:30054:30070:30091,
 0,
 RBL:47.151.135.224:@perches.com:.lbl8.mailshell.net-62.8.0.100 64.201.201.201,
 CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none, DomainCache:0,
 MSF:not bulk, SPF:fn, MSBL:0, DNSBL:neutral, Custom_rules:0:0:0, LFtime:25,
 LUA_SUMMARY:none
X-HE-Tag: fruit53_8252359efdc20
X-Filterd-Recvd-Size: 2322
Received: from XPS-9350.home (unknown [47.151.135.224])
 (Authenticated sender: joe@perches.com)
 by omf13.hostedemail.com (Postfix) with ESMTPA;
 Fri, 18 Oct 2019 16:58:15 +0000 (UTC)
Message-ID: <8268ba22cccae0dccf5a8d1902bc1409877fbd4e.camel@perches.com>
Subject: Re: [PATCH 06/18] add support for Clang's Shadow Call Stack (SCS)
From: Joe Perches <joe@perches.com>
To: Sami Tolvanen <samitolvanen@google.com>, Will Deacon <will@kernel.org>, 
 Catalin Marinas <catalin.marinas@arm.com>, Steven Rostedt
 <rostedt@goodmis.org>, Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Fri, 18 Oct 2019 09:58:14 -0700
In-Reply-To: <20191018161033.261971-7-samitolvanen@google.com>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191018161033.261971-7-samitolvanen@google.com>
User-Agent: Evolution 3.32.1-2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_095826_852352_F1E4AACE 
X-CRM114-Status: UNSURE (   8.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.40.44.59 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [216.40.44.59 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 kernel-hardening@lists.openwall.com,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com, Laura Abbott <labbott@redhat.com>,
 Dave Martin <Dave.Martin@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 2019-10-18 at 09:10 -0700, Sami Tolvanen wrote:
> This change adds generic support for Clang's Shadow Call Stack, which
> uses a shadow stack to protect return addresses from being overwritten
> by an attacker
[]
> .diff --git a/include/linux/compiler-clang.h b/include/linux/compiler-clang.h
[]
> @@ -42,3 +42,5 @@
>   * compilers, like ICC.
>   */
>  #define barrier() __asm__ __volatile__("" : : : "memory")
> +
> +#define __noscs		__attribute__((no_sanitize("shadow-call-stack")))

trivia:

This should likely use the __ prefix and suffix form:

#define __noscs		__attribute__((__no_sanitize__("shadow-call-stack")))

as should the __no_sanitize_address above this

> diff --git a/include/linux/compiler_types.h b/include/linux/compiler_types.h
[]
> @@ -202,6 +202,10 @@ struct ftrace_likely_data {
>  # define randomized_struct_fields_end
>  #endif
>  
> +#ifndef __noscs
> +# define __noscs
> +#endif
> +
>  #ifndef asm_volatile_goto
>  #define asm_volatile_goto(x...) asm goto(x)
>  #endif



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
