Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DF5914ED19
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 Jan 2020 14:17:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dNgEsaQmDz+G2trDnbe9+tZRLyh18g11KCKfX1pTI4I=; b=c4scBLa9F+L0OI
	BkUqhLKR85W3XsXBqK8Rz4PxLB2hrLWHiz/CK8WKLLVbUZb5gOdojj6vnQn0Fzv02XE2EKrLutdgY
	FDkckNwMPIW8PQFMPSUNNuPFfabtjWrMx74pJ8dM12QPNJaTdqGT8CBU8/5AZEAaPwoJpsDIwH3dk
	J0Q1q8eVSpte7mQkzacdIAGYoOvLKEX1Ql6APyaAyYkHlmkjCfB+wDio2hP0YiUu9esEgsZnMqEXD
	5lXlFuwRY2tRuwCUaYEAu+CprKh5uj27nLqJmopR/ACzF0NoZyxPop7N9wzNnEfu+B2XprSLeenr+
	xdKmMSbrVcuoUGw0vzwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixWAM-0008VT-Dc; Fri, 31 Jan 2020 13:16:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixWAC-0008V7-HY
 for linux-arm-kernel@lists.infradead.org; Fri, 31 Jan 2020 13:16:49 +0000
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com
 [209.85.208.169])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C40E6215A4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 31 Jan 2020 13:16:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1580476608;
 bh=ggrq9Jgc11j9oBbDNU2WET2SP3MbFbO1y78dajMXLfc=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=REGgpnatP7syvTAN13b3NhETyEXsZVzYCcZ9RyVO+h3jGNo2hxi6rsL2y7DhCXW+P
 mIhffXNpcPqw0cDM8/aAidmUwrV74NLYpT/HbvC/aJ/VMjlj3LVZ3L/dPH/2LouKwL
 gi8QvC5LlnYvhbaq/HyIyjLsGtixlWTnrjD3rFrU=
Received: by mail-lj1-f169.google.com with SMTP id r19so7068190ljg.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 31 Jan 2020 05:16:47 -0800 (PST)
X-Gm-Message-State: APjAAAVFjy6wIUkG6o2QRDCkhB5D5CFHWMdBS8E2MHXLBFZnn4JEl3A+
 KpxzxTyek2Um8tCaxMoMaD37hrUm9J7W4hvIy54=
X-Google-Smtp-Source: APXvYqyHH1mBNjzJnIDT8ozGRMEfl14lXQUHfdq30KTGdoctW1gTxpv8Cq9HZwZufM6lRyIvRwc5SSMGxFrcr40jDYU=
X-Received: by 2002:a2e:9c85:: with SMTP id x5mr6044390lji.50.1580476605934;
 Fri, 31 Jan 2020 05:16:45 -0800 (PST)
MIME-Version: 1.0
References: <20200127215453.15144-1-lukasz.luba@arm.com>
 <20200127215453.15144-4-lukasz.luba@arm.com>
In-Reply-To: <20200127215453.15144-4-lukasz.luba@arm.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Fri, 31 Jan 2020 14:16:34 +0100
X-Gmail-Original-Message-ID: <CAJKOXPeA=_3zPx6Aq3CAUi7JsXr9AigWGWCTNWo_jkm=oVWe_g@mail.gmail.com>
Message-ID: <CAJKOXPeA=_3zPx6Aq3CAUi7JsXr9AigWGWCTNWo_jkm=oVWe_g@mail.gmail.com>
Subject: Re: [PATCH 3/3] ARM: exynos_defconfig: Enable Energy Model framework
To: lukasz.luba@arm.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200131_051648_623648_8B82FDFA 
X-CRM114-Status: GOOD (  19.11  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 linux-pm@vger.kernel.org,
 =?UTF-8?B?QmFydMWCb21pZWogxbtvxYJuaWVya2lld2ljeg==?=
 <b.zolnierkie@samsung.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 robh+dt@kernel.org, Chanwoo Choi <cw00.choi@samsung.com>,
 kyungmin.park@samsung.com, kgene@kernel.org, myungjoo.ham@samsung.com,
 dietmar.eggemann@arm.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 27 Jan 2020 at 22:55, <lukasz.luba@arm.com> wrote:
>
> From: Lukasz Luba <lukasz.luba@arm.com>
>
> Enable the Energy Model (EM) brings possibility to use Energy Aware
> Scheduler (EAS). This compiles the EM but does not enable to run EAS in
> default. The EAS only works with SchedUtil - a CPUFreq governor which
> handles direct requests from the scheduler for the frequency change. Thus,
> to make EAS working in default, the SchedUtil governor should be
> configured as default CPUFreq governor.

Full stop. That's enough of needed explanation of schedutil.

> Although, the EAS might be enabled
> in runtime, when the EM is present for CPUs, the SchedUtil is compiled and
> then set as CPUFreq governor, i.e.:
>
> echo schedutil > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor
> echo schedutil > /sys/devices/system/cpu/cpu4/cpufreq/scaling_governor
>
> To check if EAS is ready to work, the read output from the command below
> should show '1':
> cat /proc/sys/kernel/sched_energy_aware
>
> To disable EAS in runtime simply 'echo 0' to the file above.

Not related to this commit. If you were implemeting here
schedutil/EAS, then it makes sense to post all this. However what's
the point to describe it in every defconfig change?

> Some test results, which stress the scheduler on Odroid-XU3:
> hackbench -l 500 -s 4096
> With mainline code and with this patch set.

Skip the last sentence - duplicated information.

>
> The tests have been made with and without CONFIG_PROVE_LOCKING (PL)
> (which is set to =y in default exynos_defconfig)
>
>                 |               this patch set                  | mainline

The commit will be applied on its own branch so the meaning of "this
patch set" will be lost. Maybe just "before/after"?

>                 |-----------------------------------------------|---------------
>                 | performance   | SchedUtil     | SchedUtil     | performance
>                 | governor      | governor      | governor      | governor
>                 |               | w/o EAS       | w/ EAS        |
> ----------------|---------------|---------------|---------------|---------------
> hackbench w/ PL | 12.7s         | 11.7s         | 12.0s         | 13.0s - 12.2s
> hackbench w/o PL| 9.2s          | 8.1s          | 8.2s          | 9.2s - 8.4s

Why does the performance different before and after this patch?

Mention - lower better (?). Space between number and unit... or better
mention [s] in column title.

And last but not least:
Why this patch is separate from 1/3? I don't get the need of splitting them.

Best regards,
Krzysztof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
