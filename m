Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 948281F9425
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 12:00:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F/T+RdItmkGq7B2ZFgAVyY8lI/Ey0XaYCR9bb0zfgO4=; b=agIZquaEd4cyGy
	dUAFjJNLHgjexPYzyJU02L7r7EFUe73ZZNJnVDWCVVschgCn8KbhW+Vyi2m6e96HJXWDegOWWdLTK
	uUGWTpvUtiiwst+obAeKqgg9dBJlqF7P+hv01wDnzsoyQbp2LIahSpY3FQ7xMsZ9oWDMGozWHlHOf
	k6qNVHGRu1SQTNUJR5uUFapSEv8W1V2eMOYfI9PJOuj2CvajpvSsS5c6QfGSAj32fvLj58Pz+tsFG
	0W6Gp+hBYXwrX1g3bawXIYDWVNgnw3XgmXB1n2xsTrBtat4ETP9psJ07Nb+mjCFD7QnBSTY+FkVZ1
	RQXO9cC9DIUW+v962lMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jklug-0002ji-Pa; Mon, 15 Jun 2020 10:00:22 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkluX-0002j3-Fx
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 10:00:15 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0E2A52068E;
 Mon, 15 Jun 2020 10:00:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592215213;
 bh=NclZlsh0JNDPCh7/tgM7lDu27PNeuUCqty414H60fo4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=j97I5KZbz9w21gUAN1DylupVwPgIjeFytHA4gPPAudiRlCwvnhaBcnTrzyVhV1D2Y
 XFel1vN89smdSsfXFsHkK2Jjr5D/tIr/dag7doSecgYiiJJUiJMpUYaXWkpnCLEHlE
 k+IVad79C8U9qrJvICVhkTlseaDwlnHZeXHbISeI=
Date: Mon, 15 Jun 2020 11:00:08 +0100
From: Will Deacon <will@kernel.org>
To: Masahiro Yamada <masahiroy@kernel.org>
Subject: Re: [PATCH 2/2] kconfig: unify cc-option and as-option
Message-ID: <20200615100007.GD2477@willie-the-truck>
References: <20200614144341.1077495-1-masahiroy@kernel.org>
 <20200614144341.1077495-2-masahiroy@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200614144341.1077495-2-masahiroy@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_030013_556912_B2BB2558 
X-CRM114-Status: GOOD (  20.81  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-kbuild@vger.kernel.org,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>,
 Randy Dunlap <rdunlap@infradead.org>,
 Brendan Higgins <brendanhiggins@google.com>, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzk@kernel.org>, Changbin Du <changbin.du@intel.com>,
 Arvind Sankar <nivedita@alum.mit.edu>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Jun 14, 2020 at 11:43:41PM +0900, Masahiro Yamada wrote:
> cc-option and as-option are almost the same; both pass the flag to
> $(CC). The main difference is the cc-option stops before the assemble
> stage (-S option) whereas as-option stops after it (-c option).
> 
> I chose -S because it is slightly faster, but $(cc-option,-gz=zlib)
> returns a wrong result (https://lkml.org/lkml/2020/6/9/1529).
> It has been fixed by a separate patch, but using -c is more robust.
> 
> However, you cannot simply replace -S with -c because the following
> code would break:
> 
>     depends on $(cc-option,-gsplit-dwarf)
> 
> The combination of -c and -gsplit-dwarf does not accept /dev/null as
> output.
> 
>   $ cat /dev/null | gcc -gsplit-dwarf -S -x c - -o /dev/null
>   $ echo $?
>   0
> 
>   $ cat /dev/null | gcc -gsplit-dwarf -c -x c - -o /dev/null
>   objcopy: Warning: '/dev/null' is not an ordinary file
>   $ echo $?
>   1
> 
>   $ cat /dev/null | gcc -gsplit-dwarf -c -x c - -o tmp.o
>   $ echo $?
>   0
> 
> There is another flag that creates an separate file based on the
> object file path:
> 
>   $ cat /dev/null | gcc -ftest-coverage -c -x c - -o /dev/null
>   <stdin>:1: error: cannot open /dev/null.gcno
> 
> So, we cannot use /dev/null to sink the output.
> 
> Align the cc-option implementation with scripts/Kbuild.include.
> 
> With -c option used in cc-option, as-option is unneeded.
> 
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> ---
> 
>  arch/arm64/Kconfig      | 2 +-
>  lib/Kconfig.debug       | 1 -
>  scripts/Kconfig.include | 8 +-------
>  3 files changed, 2 insertions(+), 9 deletions(-)
> 
> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> index 31380da53689..6eb18f45258e 100644
> --- a/arch/arm64/Kconfig
> +++ b/arch/arm64/Kconfig
> @@ -1564,7 +1564,7 @@ config CC_HAS_SIGN_RETURN_ADDRESS
>  	def_bool $(cc-option,-msign-return-address=all)
>  
>  config AS_HAS_PAC
> -	def_bool $(as-option,-Wa$(comma)-march=armv8.3-a)
> +	def_bool $(cc-option,-Wa$(comma)-march=armv8.3-a)

For this arm64 part:

Acked-by: Will Deacon <will@kernel.org>

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
