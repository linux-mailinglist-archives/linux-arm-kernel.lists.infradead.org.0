Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFDA05ED20
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 22:03:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7P1J1k/7JMw5YfwxZ8fkq4wVYfhUr2HBVXfDLryKgRg=; b=uTJf8LuSMwoSVG
	GdnEWCvEaeOL9jNTwuVSytNvhIXnhV6cBEbhsva+blttS33HcOs5PDDz/0MQTcsvEaH/Kg574o6CC
	AP5oOrdu7tRKIjdws+3HNheL/u2qfaPO/9ISe+sHCiyL/hkFXDbzkNEvn48naM4+Vg56EBmTtMpzi
	i8BIb+yZtVmgFBaP6orh6+4/cbrIs3g7PUex9JLKNnSowfvR3pkaK/N04qBiTFdM1LtAc6zWEeNpc
	Tfz1lQUgu4ozh8Kg1TVMsjMMt46R8+uTaZauDJGwKB8a8NSli+2MDmdJj7S/MAsQ0aCX0nxgCZ5M9
	QERcWfeiUGSALh2MBKyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hilTK-00028K-EZ; Wed, 03 Jul 2019 20:03:18 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hilT8-00026Z-PN
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jul 2019 20:03:08 +0000
Received: by mail-io1-xd41.google.com with SMTP id i10so7732832iol.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 03 Jul 2019 13:03:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=UKh+fnCjeVqcQm0IwUHZUc5vltmZ8E0kqz9Ok6uJVI4=;
 b=EIIpKwYigj//ohw/Hx/d7USCLYQ6Yz7CE5EleU+SyrJULC2Fj/eLP/4fOYzc89xM75
 8ifdTZ2G88o7ItmphKYgUPbJB+abRou6TKyNi7KyE+2xJEXze5Lp4Z9e5BNv8RchqzQ9
 wEdy6vOTEm2EaFnEJxAfuww3pGtAweWtCXg3SkK4hTV3xFwZeQr3Sc/G5MBsWKrFSkLm
 xjrb1E3oqGmHMNVHWVZ8gxN3WOr6b/PsqLUhI9snTyH8Z9pnjPntS9aFwjJ6i6+P01xf
 iR1aDSllthbZYMqBxEdAPvCd592QwZ1nwWYrXyD1vmy2zvCAJODbOW4U/7pkPL5ePznv
 OK5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=UKh+fnCjeVqcQm0IwUHZUc5vltmZ8E0kqz9Ok6uJVI4=;
 b=RfoSGXRw0hofNZ5lWD/TqYoATACu188au7KEU6EsJnWG2n/AOuX6DsQTCQzxOCLG8a
 OwkIYlXibXQH9GxUtfExr0a58NhextNMv4CoYQ8Yx8afskadnH8U032fYjJH5jJHqz8v
 eW1Hdtaf5rqDEDIKq6HDsTarmpi5tjVzuBoL4RgQBvcET1hO0SwRIL88KkcFC5qFL4Dt
 YcQgyn+tGWbvlCpLISk0FaL0RYcCc2fngU8q76GIT8j5vJ89kY96qQ69PsJ9OiQNJ5cC
 vQ5KzzENdiu5TtU8vXm0twbsHNUQ/+LL7qEsQhaqHF6V94G3+96yDKbgCJvDao79MGhc
 viIQ==
X-Gm-Message-State: APjAAAUSLFwFjJVnZWyfzmkMtUxDVe502C8n+3No2QdWggX8fCQVe9Gt
 tsGLNbgrMNPfDwhwRl+4IecYZdlzHjQFprOwmJadIux1IXk=
X-Google-Smtp-Source: APXvYqwoE6c94VoRDisMNtWzyjcFI4tXdYpggqbejcxRg98CE8mWN8SWLgyCum0KXlMbwrRNVk/eX+bCnISJDGHcvbo=
X-Received: by 2002:a02:7642:: with SMTP id z63mr31807037jab.36.1562184183245; 
 Wed, 03 Jul 2019 13:03:03 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1561659046.git.saiprakash.ranjan@codeaurora.org>
 <2afedb941294af7ba0658496b4aca3759a4e43ff.1561659046.git.saiprakash.ranjan@codeaurora.org>
In-Reply-To: <2afedb941294af7ba0658496b4aca3759a4e43ff.1561659046.git.saiprakash.ranjan@codeaurora.org>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Wed, 3 Jul 2019 14:02:52 -0600
Message-ID: <CANLsYkxvh+qUDvqG45o7qh61Noq=a=BJ4-p68ipdzxYt6n5bNA@mail.gmail.com>
Subject: Re: [PATCHv5 1/2] dt-bindings: coresight: Change CPU phandle to
 required property
To: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_130306_829363_0D0D1C68 
X-CRM114-Status: GOOD (  20.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 T_PDS_NO_HELO_DNS      High profile HELO but no A record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Rajendra Nayak <rnayak@codeaurora.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 David Brown <david.brown@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Sibi Sankar <sibis@codeaurora.org>, Vivek Gautam <vivek.gautam@codeaurora.org>,
 Leo Yan <leo.yan@linaro.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Greg,

On Thu, 27 Jun 2019 at 12:15, Sai Prakash Ranjan
<saiprakash.ranjan@codeaurora.org> wrote:
>
> Do not assume the affinity to CPU0 if cpu phandle is omitted.
> Update the DT binding rules to reflect the same by changing it
> to a required property.
>
> Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
> Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>

I'm all good with this patch - can you pick this up for the coming
merge window?  If not I'll simply keep it in my tree for 5.4.

Tested-by: Mathieu Poirier <mathieu.poirier@linaro.org>
Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>

> ---
>  .../devicetree/bindings/arm/coresight-cpu-debug.txt       | 4 ++--
>  Documentation/devicetree/bindings/arm/coresight.txt       | 8 +++++---
>  2 files changed, 7 insertions(+), 5 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/arm/coresight-cpu-debug.txt b/Documentation/devicetree/bindings/arm/coresight-cpu-debug.txt
> index 298291211ea4..f1de3247c1b7 100644
> --- a/Documentation/devicetree/bindings/arm/coresight-cpu-debug.txt
> +++ b/Documentation/devicetree/bindings/arm/coresight-cpu-debug.txt
> @@ -26,8 +26,8 @@ Required properties:
>                 processor core is clocked by the internal CPU clock, so it
>                 is enabled with CPU clock by default.
>
> -- cpu : the CPU phandle the debug module is affined to. When omitted
> -       the module is considered to belong to CPU0.
> +- cpu : the CPU phandle the debug module is affined to. Do not assume it
> +        to default to CPU0 if omitted.
>
>  Optional properties:
>
> diff --git a/Documentation/devicetree/bindings/arm/coresight.txt b/Documentation/devicetree/bindings/arm/coresight.txt
> index 8a88ddebc1a2..fcc3bacfd8bc 100644
> --- a/Documentation/devicetree/bindings/arm/coresight.txt
> +++ b/Documentation/devicetree/bindings/arm/coresight.txt
> @@ -59,6 +59,11 @@ its hardware characteristcs.
>
>         * port or ports: see "Graph bindings for Coresight" below.
>
> +* Additional required property for Embedded Trace Macrocell (version 3.x and
> +  version 4.x):
> +       * cpu: the cpu phandle this ETM/PTM is affined to. Do not
> +         assume it to default to CPU0 if omitted.
> +
>  * Additional required properties for System Trace Macrocells (STM):
>         * reg: along with the physical base address and length of the register
>           set as described above, another entry is required to describe the
> @@ -87,9 +92,6 @@ its hardware characteristcs.
>         * arm,cp14: must be present if the system accesses ETM/PTM management
>           registers via co-processor 14.
>
> -       * cpu: the cpu phandle this ETM/PTM is affined to. When omitted the
> -         source is considered to belong to CPU0.
> -
>  * Optional property for TMC:
>
>         * arm,buffer-size: size of contiguous buffer space for TMC ETR
> --
> QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member
> of Code Aurora Forum, hosted by The Linux Foundation
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
