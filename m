Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C957E82AE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 08:47:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W7BE0Bxe/JAEXsbn/Kowoh/MujwJv7Uxjv6ueb9kO6g=; b=JDVUIljbKWsih5
	wj35LwnEFQDLfFAr6UW89j0J0dwppS/0eMQQFYHK5PEwpVsKIafFDAD1Sq2HkDJBSmDHZUvSpJICx
	YlSG0u65bfoI/Yv6maogcssXJWM2+bd25OaRsaKnjJSfq1KtYu630w++UM25PTGYB2Ys/5Zv5LJ3c
	JZeDYhtm1UI3GwEdfLx6l2OZFnds4/Kw7kJ1kUkFC2WNkrmufTVRSWRpaocgPigcD4wWXVWEsEupT
	s0ZkzgLyGdPWjicBp6CftF7A/QbnMgSvtLRfPZAvV2B4ckN0ynvsFxwDYwKiniRkA0VsN+UzjIHV3
	k/xuEWRDaBoPhe31Oyeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPMDq-0004Cs-EP; Tue, 29 Oct 2019 07:47:22 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPMDe-0004Bw-3V
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 07:47:10 +0000
Received: by mail-wm1-x343.google.com with SMTP id w9so1271844wmm.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 29 Oct 2019 00:47:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=QL/t4s8oYyoEwjRvdWwn1+QXeN2oYFTHoVrFWP/brZc=;
 b=LyqeUSga6k71OeNBPvq+4QehX6Y8Ls6aPEN7SbV01MeUAl2yuW/kMBBMiXOqRf1Mw8
 atxzwUfggK4xFAVXM56mnRmXWvdqIbP5WaMng2GM6onoKwcQgi96aTWv0ReK0/8cYYZX
 7Up+UbiMgTR+0dDale5j+LabelruOC9Cl1hjhL7/E7Hr7o+jbcIpAYFE5mjJtU5mlu7+
 F/YiS0Zz7M1My2dSS45Nxr+RqwzJ9SOnBOEWpUAOmMHiN2QG2g/c5npaFbC4QN7h4gkk
 A6xyFPHdS3DdDp9OTgqrgXbf5gdjeYk4TVtqNVm/7K3DbgqXPjwIiWLT1Hfw/NKmw8Cc
 pQcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QL/t4s8oYyoEwjRvdWwn1+QXeN2oYFTHoVrFWP/brZc=;
 b=DA8fp0v9fgMySSFIa3F8aQFE2v59QdR6JfmD7shnFA47v8yilBNkffPL7Rx1s7KU1E
 5awTU2LvsebKx9PP+5+Ml260Hz8emf+XEgYEs7HJJTuYevx/nEW5iFgJNk1ftHGz8qkf
 hHn/WZl4F9g0nhbMgVgUx9B1uB2JmnR1hEjUPBPA2JskSD+sZfO2n04mh3M8i+46oEvz
 bHZzqjtDUqyTJIJOvEnTi8lWb1Y7UCw4rcCBuGDTh6VtVxb4GIYrog/knwGTgf3XyDhN
 c+prDIcnj8t47EM7dm0GufCcWnDRuBwox+qaELQm6EZD2/uYWtWcUJdutOVRmUGRoYlt
 GCmQ==
X-Gm-Message-State: APjAAAU2m6GE0PWpq6SDIFQcMvMe+pkFiLak2cIVuwI35S8LHKaKzGhe
 Agvf/BazEhbA3nwrLMIOjgq9qRowbZUD6l2uoUMLBw==
X-Google-Smtp-Source: APXvYqwu+5kNM2vsauI6RJYqxigG/JZTD84blgv9rKnBvwKkfn+X4kP0j+KgIxfY/to+sAtOuw95AbutLfqR2x5m6ZM=
X-Received: by 2002:a7b:c925:: with SMTP id h5mr2413014wml.61.1572335228112;
 Tue, 29 Oct 2019 00:47:08 -0700 (PDT)
MIME-Version: 1.0
References: <20191029060432.1208859-1-bjorn.andersson@linaro.org>
In-Reply-To: <20191029060432.1208859-1-bjorn.andersson@linaro.org>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Tue, 29 Oct 2019 08:46:56 +0100
Message-ID: <CAKv+Gu--4h4gup97XkBz2P5SMXyOay5e5OoE1RYsnodyx==CfQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: cpufeature: Enable Qualcomm erratas
To: Bjorn Andersson <bjorn.andersson@linaro.org>, Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_004710_161368_118FE368 
X-CRM114-Status: GOOD (  18.18  )
X-Spam-Note: SpamAssassin invocation failed
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 stable <stable@vger.kernel.org>, Mark Brown <broonie@kernel.org>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 29 Oct 2019 at 07:04, Bjorn Andersson
<bjorn.andersson@linaro.org> wrote:
>
> With the introduction of 'cce360b54ce6 ("arm64: capabilities: Filter the
> entries based on a given mask")' the Qualcomm erratas are no long
> applied.
>
> The result of not applying errata 1003 is that MSM8996 runs into various
> RCU stalls and fails to boot most of the times.
>
> Give both 1003 and 1009 a "type" to ensure they are not filtered out in
> update_cpu_capabilities().
>
> Fixes: cce360b54ce6 ("arm64: capabilities: Filter the entries based on a given mask")
> Cc: stable@vger.kernel.org
> Reported-by: Mark Brown <broonie@kernel.org>
> Suggested-by: Will Deacon <will@kernel.org>
> Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>

FYI the offending commit is now queued up for 4.14 as well.

> ---
>  arch/arm64/kernel/cpu_errata.c | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/arch/arm64/kernel/cpu_errata.c b/arch/arm64/kernel/cpu_errata.c
> index df9465120e2f..cdd8df033536 100644
> --- a/arch/arm64/kernel/cpu_errata.c
> +++ b/arch/arm64/kernel/cpu_errata.c
> @@ -780,6 +780,7 @@ const struct arm64_cpu_capabilities arm64_errata[] = {
>         {
>                 .desc = "Qualcomm Technologies Falkor/Kryo erratum 1003",
>                 .capability = ARM64_WORKAROUND_QCOM_FALKOR_E1003,
> +               .type = ARM64_CPUCAP_SCOPE_LOCAL_CPU,
>                 .matches = cpucap_multi_entry_cap_matches,
>                 .match_list = qcom_erratum_1003_list,
>         },
> @@ -788,6 +789,7 @@ const struct arm64_cpu_capabilities arm64_errata[] = {
>         {
>                 .desc = "Qualcomm erratum 1009, ARM erratum 1286807",
>                 .capability = ARM64_WORKAROUND_REPEAT_TLBI,
> +               .type = ARM64_CPUCAP_SCOPE_LOCAL_CPU,
>                 ERRATA_MIDR_RANGE_LIST(arm64_repeat_tlbi_cpus),
>         },
>  #endif
> --
> 2.23.0
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
