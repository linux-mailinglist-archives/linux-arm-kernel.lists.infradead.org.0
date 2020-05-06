Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CFC61C7805
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 19:34:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=yPWmIYzXQEZkEZ/3ZHPU/rvxOhc0JNQ+mQbABjaWFyA=; b=BIGavjwkiF18wdUDRGfTYiCtP
	lXnxaOMWS7+cNL0ZOYqVc0XKIzEryL5nJMnKPPcR7vQnuPN5wwW1YR5X+kW230cL32ZuRt4v38Edt
	wJPHf4AVaakO/3i8yB+zqeyUQHDclPdPDzPSmQ4bUKI3A3qZPdDEXiZAvEfK7dqD/tf8aLzlGqxxv
	aolbrgGLhB12xTE+CwbUN2fC6ijbmoofmUDGYCq6L+KRWaYjQUxmtNk0YOK8U3HeKkIi+giVFMhw9
	BaTAk8lK4FuZqRKxWuiB8V7LjlItcri+1AL0ztynyat+bp3/4c2w4bmvVVmhxJjUFBernyx9lfR2Y
	JBA0dYSrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWNwF-0007JF-6v; Wed, 06 May 2020 17:34:31 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWNw6-0007IV-Tp
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 17:34:25 +0000
Received: by mail-pl1-x643.google.com with SMTP id s20so787021plp.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 06 May 2020 10:34:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=v5j4S3JEVj0FPIjZ8oxj1MyFeG1ZAskbKGCn2iAsiYc=;
 b=f7hnEas2RuwiW30eTk9Sr6ocUIfaNFrt9EpsP8J9y68iep50a17a2n4POGJTkjLfwC
 3g6JC/2fbDod1d56lq0TSLPPbSnmhoGLN/ULurD//t9cNNtQjHEZumIuton8xNfVTydP
 D61fB9wRz7oGNLtjq6t5N4+GxpnDeL9Li9uqZHo6c5VlABFervrl32YalUuS9BIutyPl
 mLJs9lV06k3jJ6Vk9/UDOeTClyBrph4sfuG941+oaVxADzsySotpIb0N6W9Mli/DdZ5e
 UPxtl7qHf6WnWtW+CDuyNzBc49juGSrdZRs58//GQK9rIMwVjsuTlwYPOr6AeBfB69p8
 O+Dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=v5j4S3JEVj0FPIjZ8oxj1MyFeG1ZAskbKGCn2iAsiYc=;
 b=PcTd1SSp/ZLG7zimV3GjSx+9iJMQZaEhFCV34NHv+TKP9nCpNZNtx7Rl2lzzHaLHJ+
 48r8MK5D1LPQ2t0wGGsxGV1NF5mJiORy7eUTH1s5G8GETZbCM1XR0CyAfNsFHfR/tw1I
 gC2K3rQjCF9DhhupGmRDfWa9S4S9qA/Li5YlH+/jYisyM6jh03/sjWD8xNS7HDzZQ3NE
 5ujyqeJjWZ4GDBAoULUeE3ieM66XLECG936nYxjyUPz+jDK1dP2jnxpjX0WJiu/S+Csl
 oX0sFwxrMEqF4GcFK7CJ/eXnEjO2kQPiGqZpKWleNF0sZNonRXmJgrzCWZaDMusvRhPD
 qdRQ==
X-Gm-Message-State: AGi0PuZa3RfH4xGEwvaqxPOVyclRZepVFmoSDAkjFx40bIpY/bIIx/Qv
 prb9KmO8bVfD7tuKda5oXXljxw==
X-Google-Smtp-Source: APiQypLb+RC6/cMnfZERoKxaxndhqIfrmhAyRJ4+TYtl0zrdOB1QJHeG7mElx357RbHMDcXFPqymJg==
X-Received: by 2002:a17:90a:5289:: with SMTP id
 w9mr10372222pjh.97.1588786460049; 
 Wed, 06 May 2020 10:34:20 -0700 (PDT)
Received: from google.com ([2620:15c:2ce:0:9efe:9f1:9267:2b27])
 by smtp.gmail.com with ESMTPSA id k6sm5207655pju.44.2020.05.06.10.34.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 06 May 2020 10:34:19 -0700 (PDT)
Date: Wed, 6 May 2020 10:34:16 -0700
From: Fangrui Song <maskray@google.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Subject: Re: [PATCH] arm64: disable patchable function entry on big-endian
 clang builds
Message-ID: <20200506173416.hmdp5cgkslunfko7@google.com>
References: <20200505141257.707945-1-arnd@arndb.de>
 <20200505142556.GF82823@C02TD0UTHF1T.local>
 <20200505194243.5bfc6ec6@blackhole>
 <20200506034523.GA564255@ubuntu-s3-xlarge-x86>
 <CAK8P3a24EiEvGAenL0FdgGakmwWi=giReOJuiisnzkgC_SuhZg@mail.gmail.com>
 <20200506153156.GA1213645@ubuntu-s3-xlarge-x86>
 <20200506154556.5fsxzs3vbfwixggd@google.com>
 <CAKwvOdnKn0AZTdaesEqG=uEJXzK+rQK=KJxqDQCFqAMFrPKWkg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKwvOdnKn0AZTdaesEqG=uEJXzK+rQK=KJxqDQCFqAMFrPKWkg@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_103422_984190_4A9B696E 
X-CRM114-Status: GOOD (  12.33  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Amit Daniel Kachhap <amit.kachhap@arm.com>, Will Deacon <will@kernel.org>,
 Ard Biesheuvel <ardb@kernel.org>, Alexandre Ghiti <alex@ghiti.fr>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Marc Zyngier <maz@kernel.org>, AKASHI Takahiro <takahiro.akashi@linaro.org>,
 Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
 Torsten Duwe <duwe@suse.de>, Kristina Martsenko <kristina.martsenko@arm.com>,
 Josh Poimboeuf <jpoimboe@redhat.com>,
 Nathan Chancellor <natechancellor@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Julien Thierry <jthierry@redhat.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Steve Capper <steve.capper@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Torsten Duwe <duwe@lst.de>, Andrew Morton <akpm@linux-foundation.org>,
 Ionela Voinescu <ionela.voinescu@arm.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-05-06, Nick Desaulniers wrote:
>On Wed, May 6, 2020 at 8:46 AM 'Fangrui Song' via Clang Built Linux
><clang-built-linux@googlegroups.com> wrote:
>> Created https://reviews.llvm.org/D79495 to allow the function attribute
>> 'patchable_function_entry' on aarch64_be.
>> I think -fpatchable-function-entry= just works.
>>
>> Note, LLD does not support aarch64_be
>> (https://github.com/ClangBuiltLinux/linux/issues/380).
>
>I've approved the patch. Thanks for the quick fix.  Looks like we
>backported -fpatchable-function-entry= to the clang-10 release, so we
>should cherry pick your fix to the release-10 branch for the clang
>10.1 release.
>
>I'd rather have this fixed on the toolchain side.

+1.

Cherry picked to release/10.x
https://github.com/llvm/llvm-project/commit/98f9f73f6d2367aa8001c4d16de9d3b347febb08
I did not use any endianness-sensitive in the original implementation,
so hopefully this will not run into issues.


The scheduled rc1 of LLVM 10.0.1 will happen on May 18, 2020
(https://lists.llvm.org/pipermail/llvm-dev/2020-April/141128.html)
We should be quick if we want to test it on qemu or real hardware.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
