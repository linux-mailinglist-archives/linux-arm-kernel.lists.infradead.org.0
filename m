Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0CA8159870
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 19:22:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s6+fjbFxYyCjQgfAfbO2IG6uuVOm4qeSlQXojK0g4hM=; b=iiVR9pfGtfpJuv
	vlt3aZJYUy06qEz/zSc3vkf5mZPDhdT0Cag0eRZBZhFH+4+5XyojM1bGaUnmetBMrEEnSOP+KN3vG
	aM0JhqLid4OC2BunbpKUeAj5i/PiWGrI38CZgaezur9LCaz2E7+tl58nTExowD23AZpuUfIfMi5D9
	Fhf5yudYpKFsP3ibTSNBPaaaJcwTzA+QcpUi6H6J0qVTbWGamJed6oJnTcNt+9oq1AKR+9l4uvZgJ
	gFRfomlVaGAzHfQy3tRiSpYlFGjjfU8aK2L6WFSyELwbi7f1xd6pG27L5HMzK/teDcwZP94EXpdXO
	YYqXEFHVYHzhPRXHq9BA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1aAu-0000k1-1V; Tue, 11 Feb 2020 18:22:20 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1a9Z-0007fu-5h
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 18:20:59 +0000
Received: by mail-pf1-x444.google.com with SMTP id 4so5875507pfz.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Feb 2020 10:20:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=4OgG0hetIsP1V38kbC307zOjczZWs0KOp5Ez5Rl0KME=;
 b=lDSRjevbxM40tz/93zZtEf0l5hvgAJaYkwnSWnpl1y1J058EWn71+v9gGdFqjyE+LM
 1s4OIdw7yTpcWQTOq78Kzb/qRXieUEXKhZD1e2no6c6b8LIKHiCiOhHk5IQ7CvjD+4ZG
 iamdeGk/eC+W3+8zZ3SoHfWNLug+eDxbO22PGJxFXTjmO3FyBy9bpuBT9fAD+SJoPWRy
 swmj5LdJkecykIqqY9Xqa+ITTp8kIdfwQlM67qbKEfKq2cmKZSsVZ+Ghx1T9cJJCeA3s
 sPO8DhjPO+7NsB6lmFx1DVTzfI3s0fn2XPRQlZb5shxgKYa3Qgijkc12NseHBQcRqo+R
 LdDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4OgG0hetIsP1V38kbC307zOjczZWs0KOp5Ez5Rl0KME=;
 b=ifqeUdMltnIbxuV6HMeczI8HVuJtE6fGuppd6WA5di1vP9RLYxZBZwg3fZQmYjuqj/
 4qy0hlFc/dnPMdciLspKAVb0PSYE5EzWoYwLIfmoCsulvSxS4B0eHSBtv9+h8Rwj22ze
 XQyUMgX6eDiE7klpBf1NAn8bokuA/fYdcFc/ZuVZ+DFH6kcrktulz4POtqATKqu6/jRi
 sHtIMXaDLdjhjyohY66HVKVdUJ0iyS/+/WmNFQd+RpXpY6oe5AY8vW99erGZ8L7fPP9M
 yzzyMuQCo1/0vnOjZculJx55rczse7mUzPBoq8kmlFoi7QgNm5nuwMPMc/YA6dy8mWiZ
 iSOA==
X-Gm-Message-State: APjAAAVSSmh3D08I3e1IYxYCEnPWkHuErQgoVH/95uiP/nbDFd1gqNHc
 ERG3Bd2591sw/vLEKYdfGAketPMJuTzgwiF7iMJwFg==
X-Google-Smtp-Source: APXvYqxMvSkOVcfNtGbDzyRqqzjTst6GjcEty8BqJsis9ObxAC/QNdkqDYmzeMZhO0NEe3Lhmu8jwxwDkyO1K6X7SpM=
X-Received: by 2002:a62:1615:: with SMTP id 21mr4402234pfw.84.1581445249952;
 Tue, 11 Feb 2020 10:20:49 -0800 (PST)
MIME-Version: 1.0
References: <20200128021145.36774-1-palmerdabbelt@google.com>
 <20200128021145.36774-2-palmerdabbelt@google.com>
In-Reply-To: <20200128021145.36774-2-palmerdabbelt@google.com>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Tue, 11 Feb 2020 18:20:39 +0000
Message-ID: <CAKwvOdnPu8-0O5kLDY2t=wq1rqWNX7v0CSrRmomPYLA1=BX=GQ@mail.gmail.com>
Subject: Re: [PATCH 1/4] selftests/bpf: Elide a check for LLVM versions that
 can't compile it
To: Palmer Dabbelt <palmerdabbelt@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_102057_280165_32892FF8 
X-CRM114-Status: GOOD (  24.98  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Song Liu <songliubraving@fb.com>, andriin@fb.com,
 Daniel Borkmann <daniel@iogearbox.net>, kernel-team <kernel-team@android.com>,
 Bjorn Topel <bjorn.topel@gmail.com>, Shuah Khan <shuah@kernel.org>,
 Alexei Starovoitov <ast@kernel.org>, LKML <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Network Development <netdev@vger.kernel.org>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>, zlim.lnx@gmail.com,
 Yonghong Song <yhs@fb.com>, bpf@vger.kernel.org, Will Deacon <will@kernel.org>,
 Martin KaFai Lau <kafai@fb.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jan 27, 2020 at 6:14 PM 'Palmer Dabbelt' via Clang Built Linux
<clang-built-linux@googlegroups.com> wrote:
>
> The current stable LLVM BPF backend fails to compile the BPF selftests
> due to a compiler bug.  The bug has been fixed in trunk, but that fix
> hasn't landed in the binary packages I'm using yet (Fedora arm64).
> Without this workaround the tests don't compile for me.
>
> This patch triggers a preprocessor warning on LLVM versions that
> definitely have the bug.  The test may be conservative (ie, I'm not sure
> if 9.1 will have the fix), but it should at least make the current set
> of stable releases work together.

Do older versions of clang still work? Should there be a lower bounds?

>
> See https://reviews.llvm.org/D69438 for more information on the fix.  I
> obtained the workaround from
> https://lore.kernel.org/linux-kselftest/aed8eda7-df20-069b-ea14-f06628984566@gmail.com/T/
>
> Fixes: 20a9ad2e7136 ("selftests/bpf: add CO-RE relocs array tests")
> Signed-off-by: Palmer Dabbelt <palmerdabbelt@google.com>
> ---
>  .../testing/selftests/bpf/progs/test_core_reloc_arrays.c  | 8 ++++++++
>  1 file changed, 8 insertions(+)
>
> diff --git a/tools/testing/selftests/bpf/progs/test_core_reloc_arrays.c b/tools/testing/selftests/bpf/progs/test_core_reloc_arrays.c
> index bf67f0fdf743..c9a3e0585a84 100644
> --- a/tools/testing/selftests/bpf/progs/test_core_reloc_arrays.c
> +++ b/tools/testing/selftests/bpf/progs/test_core_reloc_arrays.c
> @@ -40,15 +40,23 @@ int test_core_arrays(void *ctx)
>         /* in->a[2] */
>         if (BPF_CORE_READ(&out->a2, &in->a[2]))
>                 return 1;
> +#if defined(__clang__) && (__clang_major__ < 10) && (__clang_minor__ < 1)
> +# warning "clang 9.0 SEGVs on multidimensional arrays, see https://reviews.llvm.org/D69438"
> +#else
>         /* in->b[1][2][3] */
>         if (BPF_CORE_READ(&out->b123, &in->b[1][2][3]))
>                 return 1;
> +#endif
>         /* in->c[1].c */
>         if (BPF_CORE_READ(&out->c1c, &in->c[1].c))
>                 return 1;
> +#if defined(__clang__) && (__clang_major__ < 10) && (__clang_minor__ < 1)
> +# warning "clang 9.0 SEGVs on multidimensional arrays, see https://reviews.llvm.org/D69438"
> +#else
>         /* in->d[0][0].d */
>         if (BPF_CORE_READ(&out->d00d, &in->d[0][0].d))
>                 return 1;
> +#endif
>
>         return 0;
>  }
> --
> 2.25.0.341.g760bfbb309-goog
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200128021145.36774-2-palmerdabbelt%40google.com.



-- 
Thanks,
~Nick Desaulniers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
