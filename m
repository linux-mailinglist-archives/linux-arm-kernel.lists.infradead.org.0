Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31F0F18A16B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 18:20:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xRQwLonzAQMyThqZlM51+KRXm6A1Pd/u6Fe9rntpMqs=; b=d2npsut4relr3F
	nN+2Eg+uQvxwqw7ggYGJB0R8YHKvtFSq5cHuxIfpJK0trGKxmil5/PxlEmpyFBgwy/6KxWbu+ZL/N
	q/klwMaka67LcqDDy7/lbHGqEqcQCEiKNKOmQqxGCrp5NISRh/S8P8Wz4EcjUXIWrR0lgu1FfG6ot
	wr+97ElxHkPQRENYzBB6jcBYT/e+pF+Z0BQaSU694MAeW85Ry8WZUEKn7BDfnKzQhwwEaHdChOMze
	BDYSzbiuS7B8aLHbQVwpGMRG/fkOl913fMRby5itUkYc4+mXgeReddsdT+yBucem8Sq0+FuuvgRYc
	B/ul73ZtejXbCVW1k8Qw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEcMx-0005B9-TS; Wed, 18 Mar 2020 17:20:39 +0000
Received: from mail-pg1-x52c.google.com ([2607:f8b0:4864:20::52c])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEcMq-0005Ab-0T
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Mar 2020 17:20:33 +0000
Received: by mail-pg1-x52c.google.com with SMTP id m5so14056674pgg.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Mar 2020 10:20:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=a8siDjA6N2mtx4ZkPWR/K9I1ePUFYNh7LhevbLLcqX0=;
 b=tA+gq65/aPsj7zR2lI/INUHrRQlXqrIHPh+d8RRwvRaiIOo8pOGAwwYKcMXw1XSWmJ
 mhv99baROaH38A8S5BV+Kr9ygvxkG320aq0TiG2LhNgM1BmxPyB20XQqXAmYCHe+LMGZ
 igFv91JZV8RxlkdGZaG+YMQkBg/pJvmZzIE7ASli7tAdcX4g+amEtADGThMFYzNgJiuG
 m+flKp0np7UjvQYShV55wmrhncXQLqsh4s0sfpihN15IYJGAwoJah9QyO+IcICwCe/zB
 fhhMeL3JmoXdJI7cz8StMORAYJbLnVtl37ttjU9QgGhSqSmefuhWX9VZ5MLDBrM/pNZb
 Q5hQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=a8siDjA6N2mtx4ZkPWR/K9I1ePUFYNh7LhevbLLcqX0=;
 b=E8LWwWohjl8w92ALy+83cwcxKixxBwpKiw/GwPq/OqPTGIi3cdikOfmSGY4vASrEcA
 A8xTQxAAXMcXFf6zyVt9xdOvlaioZJpCESozf5Yqla1+7PBz1JKgSJcnUsMKXIg7Mokg
 OCu43yQWItU7vFYmA10/Kol40pRFfcYBFKWwwd++E1mMi2uohBxajzcxw+n4yJiRgBvj
 7iHLLqZpalYQ/6fVHJSahy+DDlIlhcl/ms0wGyRWZZBIWkU0zKEvhoNcCgiDm7dDDJXr
 YaK0cFLNOWqulDpz2I3YGIxoWE95fPhBt8DTWncP7xFznYscMAYm6/owB/n6rGKjBrbb
 70AA==
X-Gm-Message-State: ANhLgQ1YTGxsK/Ur9XlRZTPiHGpTiAXYPmTJOlcffV0vG8RpaRVcHxrU
 sEGIcyoXXlNkKLgpBf2+LB91e7Pswe8dvFCn6oruiA==
X-Google-Smtp-Source: ADFU+vux05sGuMyE5gT7P2ucWJ3fRtVrNgl8EN8CtcEWnuyGqMENf2FzdzCgkcF2JXZEGT0eIk9DWEz/K16sWIRf+mM=
X-Received: by 2002:aa7:87ca:: with SMTP id i10mr5373709pfo.169.1584552030475; 
 Wed, 18 Mar 2020 10:20:30 -0700 (PDT)
MIME-Version: 1.0
References: <1110874677.10558.1584545625391.JavaMail.javamailuser@localhost>
In-Reply-To: <1110874677.10558.1584545625391.JavaMail.javamailuser@localhost>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Wed, 18 Mar 2020 10:20:19 -0700
Message-ID: <CAKwvOd=BDUXvBKT+k=BOcBL1QarTNp8b0OTHfkTKGoHR-h4K4w@mail.gmail.com>
Subject: Re: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-master-aarch64-next-allnoconfig
 - Build # 10 - Successful!
To: clang-built-linux <clang-built-linux@googlegroups.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_102032_077892_0D7895B9 
X-CRM114-Status: GOOD (  14.71  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:52c listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: TCWG Validation <tcwg-validation@linaro.org>,
 CI Notify <ci_notify@linaro.org>, Arnd Bergmann <arnd@linaro.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Maxim Kuvyrkov <maxim.kuvyrkov@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Looks like Will and Catalin have fixes:
https://lore.kernel.org/linux-arm-kernel/20200318082830.GA31312@willie-the-truck/

On Wed, Mar 18, 2020 at 8:33 AM <ci_notify@linaro.org> wrote:
>
> Could not identify regression in *linux* in CI configuration tcwg_kernel/llvm-master-aarch64-next-allnoconfig.  See 'Bisect log' in the links below for bisection details.
>
> First few build errors in logs:
> 00:00:30 ./include/linux/elf.h:79:19: error: redefinition of 'arch_parse_elf_property'
> 00:00:30 make[1]: *** [arch/arm64/kernel/asm-offsets.s] Error 1
> 00:00:30 make: *** [prepare0] Error 2
> Configuration details:
> rr[llvm_url]="https://github.com/llvm/llvm-project.git"
> rr[linux_url]="https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git"
> rr[linux_branch]="ec947d0be5f959fff44d59161401515a98a837f3"
>
> Results regressed to (for bad == 47780d7892b77e922bbe19b5dea99cde06b2f0e5)
> # reset_artifacts:
> -10
> # build_llvm:
> -1
> # linux_n_obj:
> 23
>
> from (for baseline_rev == ac309e7744bee222df6de0122facaf2d9706fa70)
> # reset_artifacts:
> -10
> # build_llvm:
> -1
> # linux_n_obj:
> 445
>
> Artifacts of bad build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-next-allnoconfig/10/artifact/artifacts/build-47780d7892b77e922bbe19b5dea99cde06b2f0e5/
> Artifacts of baseline_rev build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-next-allnoconfig/10/artifact/artifacts/build-ac309e7744bee222df6de0122facaf2d9706fa70/
> Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-next-allnoconfig/10/
>
> Reproduce builds:
> <cut>
> mkdir investigate-linux-47780d7892b77e922bbe19b5dea99cde06b2f0e5
> cd investigate-linux-47780d7892b77e922bbe19b5dea99cde06b2f0e5
>
> git clone https://git.linaro.org/toolchain/jenkins-scripts
>
> mkdir -p artifacts/manifests
> curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-next-allnoconfig/10/artifact/artifacts/manifests/build-baseline.sh
> curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-next-allnoconfig/10/artifact/artifacts/manifests/build-parameters.sh
> curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-next-allnoconfig/10/artifact/artifacts/test.sh
> chmod +x artifacts/test.sh
>
> # Reproduce the baseline build (build all pre-requisites)
> ./jenkins-scripts/tcwg_kernel-build.sh @@ artifacts/manifests/build-baseline.sh
>
> cd linux
>
> # Reproduce bad build
> git checkout --detach 47780d7892b77e922bbe19b5dea99cde06b2f0e5
> ../artifacts/test.sh
>
> # Reproduce baseline_rev build
> git checkout --detach ac309e7744bee222df6de0122facaf2d9706fa70
> ../artifacts/test.sh
>
> cd ..
> </cut>
>
> History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-master-aarch64-next-allnoconfig
>
> Artifacts: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-next-allnoconfig/10/artifact/artifacts/
> Build log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-next-allnoconfig/10/consoleText
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1110874677.10558.1584545625391.JavaMail.javamailuser%40localhost.



-- 
Thanks,
~Nick Desaulniers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
