Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 639D91F9A67
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 16:36:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HFVydXVFghBJhKn7hdAmAViqKMP2DkoRO1AE3ZgyEzg=; b=PnrFr2CIkphtpD
	98VWqyIJthCowiqPrWq9Dza2cC17rNu0htrJe7rKA3wN3EUiIz9O7XZh5e65+Ct/H5qR7Gluk5SlZ
	HI8z5fj54NmtkiSHe/yNXmSECejZRnUmFc3YnSNj2H5wnPv+CRMKsa1zJiesCPYuHkRaLWsejpxF0
	PPmu4nePvBw1tOZCG1v9q2Qr6ooq94E3XAJi1Kv62Hk8yXeNHRBr+djcin6aM8Zjgr8KYXgIqUQyp
	EdUYkvV+cZTYT6zFerLm50I3pc6mTvMBAhqJ9CVRKLRYdIoZuYMRFdE2mMUkeIyddsG6AOYviiHbZ
	dAyeNbTpzOZgFWmq6Kww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkqDp-0004lb-NA; Mon, 15 Jun 2020 14:36:25 +0000
Received: from mail-wm1-f66.google.com ([209.85.128.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkqDh-0004l5-Ud
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 14:36:19 +0000
Received: by mail-wm1-f66.google.com with SMTP id c71so14871070wmd.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jun 2020 07:36:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=XkwaeOSmKJDGIXga8arphfOh1iPYQb+mZR0bLebBBbo=;
 b=t+ymQ3uFIqaYFpsdInx51ALM2lGqn3NpsE12E4K4Io7fdKcxAPgew+ePNW01P/cGhT
 U6jsSFcZ/hpta0AVYZbrQdlEB0u5DJGFERsO+ueXtwQIeIqcoorB3EXa9T2Hs6+LcR9n
 r2jz36ovgSCj0cjB90q+F1MSDQAwVyjnhY3ckzuEAky7/TJoDibvnfL715+TB3R/AKOw
 innOePlJX6XQb1nltwfdIkHXzuwbqPoryOY2KCU39YPfm0mTb8Q7uORo5bWyLEPFcZy0
 d5JLkD6n0xpFY+PFBTbaDVBX9Pg60di/lqd97kkpHov+gaDsE3dV0T4j9beHW4oUof/J
 38Cg==
X-Gm-Message-State: AOAM530p3OEsCvMYfNU8E5soW7BcpjChQRnOxCTma3iihBvxRQWMg0mk
 yras0D0tJQnpX+AP66w8MvjkU5JJI9NhNt0Qu7I=
X-Google-Smtp-Source: ABdhPJz1KnxZlRe/DlSHR3s1eKGMHRn31cvBT4BQ9lo5wPG75U5ws387MQhwer7SpZz7g4E9Prvz+P3oOYmgwqf8QKI=
X-Received: by 2002:a1c:4105:: with SMTP id o5mr13234073wma.168.1592231775481; 
 Mon, 15 Jun 2020 07:36:15 -0700 (PDT)
MIME-Version: 1.0
References: <1592214046-32385-1-git-send-email-john.garry@huawei.com>
 <1592214046-32385-2-git-send-email-john.garry@huawei.com>
In-Reply-To: <1592214046-32385-2-git-send-email-john.garry@huawei.com>
From: Namhyung Kim <namhyung@kernel.org>
Date: Mon, 15 Jun 2020 23:36:04 +0900
Message-ID: <CAM9d7ciRXyEBz+o6Xw1qsEyiTG2SMqmux_8c69Stn0ut69WAZw@mail.gmail.com>
Subject: Re: [PATCH 1/2] perf pmu: List kernel supplied event aliases for arm64
To: John Garry <john.garry@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_073617_985226_543FC6C4 
X-CRM114-Status: GOOD (  16.48  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.66 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [namhyung[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.66 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Mark Rutland <mark.rutland@arm.com>, Ian Rogers <irogers@google.com>,
 Andi Kleen <ak@linux.intel.com>, Peter Zijlstra <peterz@infradead.org>,
 will@kernel.org, linuxarm@huawei.com,
 Arnaldo Carvalho de Melo <acme@kernel.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, Jiri Olsa <jolsa@redhat.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

On Mon, Jun 15, 2020 at 6:45 PM John Garry <john.garry@huawei.com> wrote:
>
> In commit dc098b35b56f ("perf list: List kernel supplied event aliases"),
> the aliases for events are supplied in addition to CPU event in perf list.
>
> This relies on the name of the core PMU being "cpu", which is not the case
> for arm64, so arm64 has always missed this. Use generic is_pmu_core()
> helper which takes account of arm64 to make this feature work for arm64
> (and possibly other archs).
>
> Sample, before:
>   armv8_pmuv3_0/br_mis_pred/          [Kernel PMU event]
> after:
>   br_mis_pred OR armv8_pmuv3_0/br_mis_pred/          [Kernel PMU event]
>
> Signed-off-by: John Garry <john.garry@huawei.com>

Acked-by: Namhyung Kim <namhyung@kernel.org>

Thanks
Namhyung


> ---
>  tools/perf/util/pmu.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/tools/perf/util/pmu.c b/tools/perf/util/pmu.c
> index 93fe72a9dc0b..a375364537cd 100644
> --- a/tools/perf/util/pmu.c
> +++ b/tools/perf/util/pmu.c
> @@ -1475,7 +1475,7 @@ void print_pmu_events(const char *event_glob, bool name_only, bool quiet_flag,
>                 list_for_each_entry(alias, &pmu->aliases, list) {
>                         char *name = alias->desc ? alias->name :
>                                 format_alias(buf, sizeof(buf), pmu, alias);
> -                       bool is_cpu = !strcmp(pmu->name, "cpu");
> +                       bool is_cpu = is_pmu_core(pmu->name);
>
>                         if (alias->deprecated && !deprecated)
>                                 continue;
> --
> 2.26.2
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
