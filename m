Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A5171D7074
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 07:46:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eRacdbrVvtEiYhKiCcMOAEi6rvfXPJi9SSq7SbU8dOk=; b=beEd/tzKv8xntE
	NPAMtI5KGPbaJasX+AigBxmoOacMCu0DV9Sdtxpu3vzLYIt5S3+wYbG2pvet1gGcJB4nPhKKnrviq
	8LvngXwbgB5tfbdAjzscMdNkrJoxl2h1jv9Vm47Qrt0BiB9ZJ8SzifspH57KL9mVcF1WoKF7Hl0mK
	RwNJIMBbHs5x3GDeyLJIPLook75QSwFohSHr9JNfmA18MkWvnBob9deKJpUibh/YMa2nG9wvATatU
	CIsRWJFTdACx98+w8jBz0WLkE4OFIRo1HY8qe+///02AEkQonBNVQ4BwX6/YKoIx1pFMPOpYM9dg4
	jo+oooS9OMqFUsaGtA5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaYbt-0002mP-M8; Mon, 18 May 2020 05:46:45 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaYbj-0002l9-5L
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 05:46:37 +0000
Received: by mail-lf1-x143.google.com with SMTP id h188so6916402lfd.7
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 17 May 2020 22:46:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ygsoJcQzy2g2jI/Taob7j4UIGHvK7ly0RJpFdbU+Cb4=;
 b=G3b7ywljZcZCAX7nJXBHWye89fgIXWV1Y/Zi9/UIsGwtIZiAQx6o0HUfhuMVoDPo1w
 hLvGWKlDX+XuIqbe3zySiJ9YKptYVBEz7TNH6oKzYopJNoJY37POYt3GcdMgO8U647BS
 sEBMh9Qv3TmZ7Mps0cLu+9qi/HJniKyoE5IT/B1tEfEs9oKHXXAwf2KIN+WWwJwUQyRZ
 KCZakvpO8oHau4eSIUGwLM09uWOlVosi5UtGk/WAqYqOlqII3hyHZRvOFDzXPNdNX+nd
 UoEdzxlsRe9mhcxNjNtn81gNC8rPkwKMYMiPW5cMIMMQ2wdPlVYVDDZ+R7OvN0P2uE7f
 hqYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ygsoJcQzy2g2jI/Taob7j4UIGHvK7ly0RJpFdbU+Cb4=;
 b=Rw1sEpuG1zcFGDiOvpvyF1A0kmN0aVpgwJh+rfvxTU+0boh6E0JGbBfjvdARreX9Xs
 4h+qy3c6IKZie6SnuwbhCQIlHGTBVCdI2BM98TwZgRivQua1mMI6brqRozES5aoU5sbG
 V7EFQ2n7t+5tqTzm/3MZp6LpEHSVnWicf+DRoyfqrbKRkycWL5pOfCmd3CFtUefa2zZL
 HcD2Z+GLQA2Rk93CeqKspotsLLpp4c4nRXdx60ugpfnCwMDG9/vNtfx6owZzm51DSHV0
 xkDCgGMY4yyuEkxZaPwG8xiLaeLAWHxCIh6AKc4p0aGje0zhU2lPlGAndSYhjHDXeb8C
 MImg==
X-Gm-Message-State: AOAM530AETOOJN0dId009ACUPYKT9pKMIhSiPT9Bf9GAq+HTXMnWxbWD
 yQbQ/IkOwbssaVOKRqRe5xA2yKcETUrd38yMPXvliQ==
X-Google-Smtp-Source: ABdhPJyPLjwCY26rBdZ5XvQW0icPtULGRTn1trgI95j9zoosQIx4alkuPwcX0KcurhfvhDLJGNfimNIRIR5n3hOAMXM=
X-Received: by 2002:ac2:4293:: with SMTP id m19mr10444777lfh.204.1589780791774; 
 Sun, 17 May 2020 22:46:31 -0700 (PDT)
MIME-Version: 1.0
References: <20200516124857.75004-1-lecopzer@gmail.com>
In-Reply-To: <20200516124857.75004-1-lecopzer@gmail.com>
From: Sumit Garg <sumit.garg@linaro.org>
Date: Mon, 18 May 2020 11:16:20 +0530
Message-ID: <CAFA6WYNwp+_ENiS8QDao5+RXyt5ofJZyq6c5CKG_d0CNEmBNYg@mail.gmail.com>
Subject: Re: [PATCH 0/3] arm64: perf: Add support for Perf NMI interrupts
To: Lecopzer Chen <lecopzer@gmail.com>, julien.thierry.kdev@gmail.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200517_224635_214962_95DF8976 
X-CRM114-Status: GOOD (  16.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, lecopzer.chen@mediatek.com,
 Will Deacon <will@kernel.org>, alexander.shishkin@linux.intel.com,
 Catalin Marinas <catalin.marinas@arm.com>, yj.chiang@mediatek.com,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, acme@kernel.org,
 Peter Zijlstra <peterz@infradead.org>, mingo@redhat.com,
 linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com,
 namhyung@kernel.org, jolsa@redhat.com,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

+ Julien

Hi Lecopzer,

On Sat, 16 May 2020 at 18:20, Lecopzer Chen <lecopzer@gmail.com> wrote:
>
> These series implement Perf NMI funxtionality and depends on
> Pseudo NMI [1] which has been upstreamed.
>
> In arm64 with GICv3, Pseudo NMI was implemented for NMI-like interruts.
> That can be extended to Perf NMI which is the prerequisite for hard-lockup
> detector which had already a standard interface inside Linux.
>
> Thus the first step we need to implement perf NMI interface and make sure
> it works fine.
>

This is something that is already implemented via Julien's patch-set
[1]. Its v4 has been floating since July, 2019 and I couldn't find any
major blocking comments but not sure why things haven't progressed
further.

Maybe Julien or Arm maintainers can provide updates on existing
patch-set [1] and how we should proceed further with this interesting
feature.

And regarding hard-lockup detection, I have been able to enable it
based on perf NMI events using Julien's perf patch-set [1]. Have a
look at the patch here [2].

[1] https://patchwork.kernel.org/cover/11047407/
[2] http://lists.infradead.org/pipermail/linux-arm-kernel/2020-May/732227.html

-Sumit

> Perf NMI has been test by dd if=/dev/urandom of=/dev/null like the link [2]
> did.
>
> [1] https://lkml.org/lkml/2019/1/31/535
> [2] https://www.linaro.org/blog/debugging-arm-kernels-using-nmifiq
>
>
> Lecopzer Chen (3):
>   arm_pmu: Add support for perf NMI interrupts registration
>   arm64: perf: Support NMI context for perf event ISR
>   arm64: Kconfig: Add support for the Perf NMI
>
>  arch/arm64/Kconfig             | 10 +++++++
>  arch/arm64/kernel/perf_event.c | 36 ++++++++++++++++++------
>  drivers/perf/arm_pmu.c         | 51 ++++++++++++++++++++++++++++++----
>  include/linux/perf/arm_pmu.h   |  6 ++++
>  4 files changed, 88 insertions(+), 15 deletions(-)
>
> --
> 2.25.1
>
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
