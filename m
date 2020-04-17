Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BCF861AE0AA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 17:13:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=blVwJs+A4he3uv4f+fQkGA0K9gw2fv88X7+jsGKLLX0=; b=YJJzYjtFrplDM/
	MXVMzCTyfcRTaxw4HrGnTr0dIquwWshDJOleKpMsgZvGUbRMheHxnxS9SRUtZfOaj+bHPZW9bctZv
	jEiCzD+wQFuRnFm35pqjRV00gjWFAIdtB1Td80MfAnIYu2wzyKihXnyZSHZaNON1iP6TrkE+At6dv
	UsY64TfNodcX/viS7gVbT01UmVuP/6KEDKu3UpJmAGytDlvOF4Sq0EpEeWLOp5B76uv2BGSsnLkb6
	0aDqUAfmOwdhfNevQws2SVonjvTp05X2/Qo9sDtXbrds9Tzwjo4KWHBj6CWy/TiPotmfJ+Gv/dvVQ
	w1+ooyl0/7YBhuK/R+2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPSgd-0005uD-J4; Fri, 17 Apr 2020 15:13:47 +0000
Received: from mail-yb1-xb42.google.com ([2607:f8b0:4864:20::b42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPSgU-0005sM-A7
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 15:13:40 +0000
Received: by mail-yb1-xb42.google.com with SMTP id e17so1220042ybq.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 Apr 2020 08:13:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=RtVmmjrP6HO9dhoYxX3s6oFRIAVH6KdXNjgWOgECeoM=;
 b=NjjjSCS8rScnBa/489Zt16Y6KM916Eq1Fnm8cMzBT2SxIqXOY8mnPZ+7qPMwfwITPr
 lz6CS9DVXf4dAFkRTrUVB2jddZfjpU7Qa7qtbg6WurYf++g2PmmK8P53bkX7yMeXoJk2
 xWa/AOS7Ok0Vfe2pmmAYQj1bsdXJ9XJRoZFbTCmNe0HJjO+wK9zZioBqPb1eE6Y5/BsR
 NFiC1pbkfINWBvnEh1fz0VJ/fRWO6ZliXb/7cG9JE0M4pXFm4xBCstV2jbD25uDttrvy
 epVUz+4y/1tevJ40dxkQE/M8cR9xZa+Ajod9wxHRxwWiuD8faV+MWMOgL3JGSOE3XJDI
 8VGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=RtVmmjrP6HO9dhoYxX3s6oFRIAVH6KdXNjgWOgECeoM=;
 b=AAOzUVOLJ3rW5JnsXp/zKLdbEqcMdtiZCQLUN16u9XVG4i7ivLd5Wg4OxM2gx9Z4PR
 e2W5F/59eOvzpBJAviylLXBQ4UCJGz2UuRiOIxoSZ3Rl/Qn/xpBwxdUdLodOqad8v3xT
 6wQP5NxM1AGhjFejPReF0MWlTFMSjPDQajaMFjMtWc3TXDQBe3GCsXFdtUDitLxUsywM
 wjtSh8OWT1a7EBD0Qslg8HFxztXESJVOd0SBpdy4hJOv4k97VqBtxYDfY0lgA5feoG9B
 bfXyl1aLpZY4I/l8LCfjiMbK80kZ7tnSIfsXIl8XY6c9eLLwMnfEV5MoTC4qOg/Zf+fS
 Bvmg==
X-Gm-Message-State: AGi0PuZQ+OsX3kDzm3VtBlGbkRH6vdOAiCe5sXC6VsPQQmv3NW4TyKsf
 FCGZVoEJ6hVng55pD8CM7cRu7QarKD8sA7a0P6RCTg==
X-Google-Smtp-Source: APiQypIdimcl/fK+LqHBMfTOxl3lLnAoIALiISIKuQMaY9pG55zJR5bjJgpyQnKGWfE1VAJwilD9WoZ9wzYei6/Llic=
X-Received: by 2002:a05:6902:505:: with SMTP id
 x5mr6584279ybs.286.1587136411058; 
 Fri, 17 Apr 2020 08:13:31 -0700 (PDT)
MIME-Version: 1.0
References: <1587120084-18990-1-git-send-email-john.garry@huawei.com>
 <1587120084-18990-6-git-send-email-john.garry@huawei.com>
In-Reply-To: <1587120084-18990-6-git-send-email-john.garry@huawei.com>
From: Ian Rogers <irogers@google.com>
Date: Fri, 17 Apr 2020 08:13:19 -0700
Message-ID: <CAP-5=fX0yt73ASQm-XD0Nqj8yNn=UhiaBr9T808ot=66SjSg6w@mail.gmail.com>
Subject: Re: [RFC PATCH v2 05/13] perf vendor events arm64: Add Architected
 events smmuv3-pmcg.json
To: John Garry <john.garry@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_081338_632939_1887E125 
X-CRM114-Status: GOOD (  15.81  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, Andi Kleen <ak@linux.intel.com>,
 qiangqing.zhang@nxp.com, Peter Zijlstra <peterz@infradead.org>,
 will@kernel.org, linuxarm@huawei.com,
 Arnaldo Carvalho de Melo <acme@kernel.org>,
 LKML <linux-kernel@vger.kernel.org>, zhangshaokun@hisilicon.com,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
 Jiri Olsa <jolsa@redhat.com>, Linux ARM <linux-arm-kernel@lists.infradead.org>,
 robin.murphy@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Apr 17, 2020 at 3:45 AM John Garry <john.garry@huawei.com> wrote:
>
> Add JSON for Architected events from [0], Section 10.3 .
>
> [0] https://static.docs.arm.com/ihi0070/a/IHI_0070A_SMMUv3.pdf
>
> Signed-off-by: John Garry <john.garry@huawei.com>
> ---
>  tools/perf/pmu-events/arch/arm64/smmuv3-pmcg.json | 58 +++++++++++++++++++++++
>  tools/perf/pmu-events/jevents.c                   |  2 +
>  2 files changed, 60 insertions(+)
>  create mode 100644 tools/perf/pmu-events/arch/arm64/smmuv3-pmcg.json
>
> diff --git a/tools/perf/pmu-events/arch/arm64/smmuv3-pmcg.json b/tools/perf/pmu-events/arch/arm64/smmuv3-pmcg.json
> new file mode 100644
> index 000000000000..7ceb2b4372fa
> --- /dev/null
> +++ b/tools/perf/pmu-events/arch/arm64/smmuv3-pmcg.json
> @@ -0,0 +1,58 @@
> +[
> +    {
> +        "PublicDescription": "Clock cycles",
> +        "EventCode": "0x00",
> +        "EventName": "smmuv3_pmcg.CYCLES",
> +        "BriefDescription": "Clock cycles"
> +        "Unit": "smmuv3_pmcg",
> +    },
> +    {
> +        "PublicDescription": "Transaction",
> +        "EventCode": "0x01",
> +        "EventName": "smmuv3_pmcg.TRANSACTION",
> +        "BriefDescription": "Transaction"
> +        "Unit": "smmuv3_pmcg",
> +    },
> +    {
> +        "PublicDescription": "TLB miss caused by incomingtransaction or (ATS or non-ATS) translation request",

It looks like a space was missed in "incomingtransaction".

> +        "EventCode": "0x02",
> +        "EventName": "smmuv3_pmcg.TLB_MISS",
> +        "BriefDescription": "TLB miss caused by incomingtransaction or (ATS or non-ATS) translation request"

And here.

Thanks,
Ian

> +        "Unit": "smmuv3_pmcg",
> +    },
> +    {
> +        "PublicDescription": "Configuration cache miss caused by transaction or(ATS or non-ATS)translation request",
> +        "EventCode": "0x03",
> +        "EventName": "smmuv3_pmcg.CONFIG_CACHE_MISS",
> +        "BriefDescription": "Configuration cache miss caused by transaction or(ATS or non-ATS)translation request"
> +        "Unit": "smmuv3_pmcg",
> +    },
> +    {
> +        "PublicDescription": "Translation table walk access",
> +        "EventCode": "0x04",
> +        "EventName": "smmuv3_pmcg.TRANS_TABLE_WALK_ACCESS",
> +        "BriefDescription": "Translation table walk access"
> +        "Unit": "smmuv3_pmcg",
> +    },
> +    {
> +        "PublicDescription": "Configuration structure access",
> +        "EventCode": "0x05",
> +        "EventName": "smmuv3_pmcg.CONFIG_STRUCT_ACCESS",
> +        "BriefDescription": "Configuration structure access"
> +        "Unit": "smmuv3_pmcg",
> +    },
> +    {
> +        "PublicDescription": "PCIe ATS Translation Request received",
> +        "EventCode": "0x06",
> +        "EventName": "smmuv3_pmcg.PCIE_ATS_TRANS_RQ",
> +        "BriefDescription": "PCIe ATS Translation Request received"
> +        "Unit": "smmuv3_pmcg",
> +    },
> +    {
> +        "PublicDescription": "PCIe ATS Translated Transaction passed through SMMU",
> +        "EventCode": "0x07",
> +        "EventName": "smmuv3_pmcg.PCIE_ATS_TRANS_PASSED",
> +        "BriefDescription": "PCIe ATS Translated Transaction passed through SMMU"
> +        "Unit": "smmuv3_pmcg",
> +    }
> +]
> diff --git a/tools/perf/pmu-events/jevents.c b/tools/perf/pmu-events/jevents.c
> index acb6b77bddc0..76a84ec2ffc8 100644
> --- a/tools/perf/pmu-events/jevents.c
> +++ b/tools/perf/pmu-events/jevents.c
> @@ -256,6 +256,8 @@ static struct map {
>         { "hisi_sccl,ddrc", "hisi_sccl,ddrc" },
>         { "hisi_sccl,hha", "hisi_sccl,hha" },
>         { "hisi_sccl,l3c", "hisi_sccl,l3c" },
> +       /* it's not realistic to keep adding these, we need something more scalable ... */
> +       { "smmuv3_pmcg", "smmuv3_pmcg" },
>         { "L3PMC", "amd_l3" },
>         {}
>  };
> --
> 2.16.4
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
