Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CBB51F9A6E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 16:37:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=151bhQfQoZe13HR0W4WzpuflOp7MVrEZ6SkzfHN/DZE=; b=DWugORxU1jzExF
	/20AfBE9ZKoOyXR04EEi/9GMYI0ylE/HjymVOAEUHLBNzrJKbbkXVv9cop91ee5hdVgn7E65ENZSa
	oYdvBC5zLcqdBUIdgc/oe1+wopOP0WvS3v+wrpuDWFyvCerEIWcIMxV591Fp1mP/bQTuIWvOLv1cb
	wJ2nycJMpYskgIXHhmmZzjWSPO1XWmVf3ye775vPvaLC0wJXgibdaWJqUi3f/I7GUi2FUPRThb3Qt
	umfqdjHp5MS81nNT3GZ22Nkg9wxhRALgqdWMuWlhvyn4yNURXncp09p9PhcRPXoFtpbe8C5iVYs7f
	4TtMhj+LRP3UL+J5QQxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkqEM-0005En-20; Mon, 15 Jun 2020 14:36:58 +0000
Received: from mail-wm1-f65.google.com ([209.85.128.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkqEA-0005B8-0W
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 14:36:47 +0000
Received: by mail-wm1-f65.google.com with SMTP id y20so15078909wmi.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jun 2020 07:36:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=1oVZReBihh/2w/Hjb/suSeJF0mPNv8Xvn3F75KV0POM=;
 b=b/6G/RPLM8fo8EjjEwNoiqK5fiTPKomnop2wNmINKAO+WpTwZh5rbyuOv8CzjhZFe8
 z3tQTacNM/7prnt4je9V71Wq8rNrIDmHP2NCpgL9aqbU4tGHN2GHcyB0PUABTxSRblE2
 huyiBmuXRkwJcCzJ0OGJjaSnSYn/BcKjqh2CexptrXyM5mcgsYj7ZQ1u8rNqmFyfkD+B
 8ek6tC3XkGpCrO29ZfQXBJl6AJ566e7LxAlfoKII2yHj0+MQovAx5cXrx9cE8JikL2Z3
 Hm3fHcNCngIL79tujpY3bTFI2ojeIV7mtZGv6UxFc3sFi+yal1+cXi+xUAt5zFNUHYh5
 8Hzw==
X-Gm-Message-State: AOAM530fLmA9PEzLrODOPiCShY5NzLnMVBLd1SETjSmhY/WB4VZJczyR
 JbWlnrpz0q9vO5n+5nMbBLd10+Pp8/Ln4XIBQarw4A==
X-Google-Smtp-Source: ABdhPJzFiNgt1I2cFJ+GEPD1EI0msEDvU3oAzTMSrCo1Vr+Qd56X1AEGf4EwSdKQmThDOpZEGXbZfhaLaAPrVm0TDyY=
X-Received: by 2002:a7b:cf2c:: with SMTP id m12mr13414496wmg.70.1592231803562; 
 Mon, 15 Jun 2020 07:36:43 -0700 (PDT)
MIME-Version: 1.0
References: <1592214046-32385-1-git-send-email-john.garry@huawei.com>
 <1592214046-32385-3-git-send-email-john.garry@huawei.com>
In-Reply-To: <1592214046-32385-3-git-send-email-john.garry@huawei.com>
From: Namhyung Kim <namhyung@kernel.org>
Date: Mon, 15 Jun 2020 23:36:32 +0900
Message-ID: <CAM9d7ciyOmzxUZ4dGJ12607rTnCCdNBbuQtv1gEmUe0FQJxELA@mail.gmail.com>
Subject: Re: [PATCH 2/2] perf pmu: Improve CPU core PMU HW event list ordering
To: John Garry <john.garry@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_073646_080966_E0001FC2 
X-CRM114-Status: GOOD (  12.80  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.65 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.65 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [namhyung[at]gmail.com]
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

On Mon, Jun 15, 2020 at 6:45 PM John Garry <john.garry@huawei.com> wrote:
> diff --git a/tools/perf/util/pmu.c b/tools/perf/util/pmu.c
> index a375364537cd..e9a4a6961263 100644
> --- a/tools/perf/util/pmu.c
> +++ b/tools/perf/util/pmu.c
> @@ -1400,6 +1400,7 @@ struct sevent {
>         char *pmu;
>         char *metric_expr;
>         char *metric_name;
> +       int is_cpu;
>  };
>
>  static int cmp_sevent(const void *a, const void *b)
> @@ -1416,6 +1417,12 @@ static int cmp_sevent(const void *a, const void *b)
>                 if (n)
>                         return n;
>         }
> +
> +       if (as->is_cpu && !bs->is_cpu)
> +               return -1;
> +       else if (!as->is_cpu && bs->is_cpu)
> +               return 1;
> +

This can be:

        if (as->is_cpu != bs->is_cpu)
                return bs->is_cpu - as->is_cpu;

Thanks
Namhyung


>         return strcmp(as->name, bs->name);
>  }
>
> @@ -1507,6 +1514,7 @@ void print_pmu_events(const char *event_glob, bool name_only, bool quiet_flag,
>                         aliases[j].pmu = pmu->name;
>                         aliases[j].metric_expr = alias->metric_expr;
>                         aliases[j].metric_name = alias->metric_name;
> +                       aliases[j].is_cpu = is_cpu;
>                         j++;
>                 }
>                 if (pmu->selectable &&
> --
> 2.26.2
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
