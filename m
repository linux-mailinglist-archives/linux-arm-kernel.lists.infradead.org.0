Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22CEB14ED5E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 Jan 2020 14:31:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yNYrGPZ0865gjF0zCwNhnWudBE2GAlmG6wHfAxsAAqQ=; b=sXiR+yHu4NQjKN
	4LED2Ah2ppmgtppByYWsI8S+Q8JlcS6WegQx9X5j8cqgmBVPWNjY5xkwcI4M6avw7UJIQw0xJ9EGQ
	fP9JaldVi6OhZkW2djNdhlkFxTYUmiHriJW0uWEoSzmxkltmegPmYlC/V5yCVkq8GYP0FQDjWXiiC
	hRNgS04jQlQABGd7861yM87273cEUV92pamUQG97IjHgNviOly3HW0YSUwt7P9DD/wQ7t/rMGFW4R
	Hjlhj2ec9lfzHTVhel4X1s+EnOv1v7CLOH2seumKHx1h0Itnzl4Pn02mgULJHeaY3PTMgD3jNB3lc
	xY0SEtDiIvTcwz73e/wQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixWOk-0005eh-So; Fri, 31 Jan 2020 13:31:50 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixWOa-0005eL-0M
 for linux-arm-kernel@lists.infradead.org; Fri, 31 Jan 2020 13:31:41 +0000
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com
 [209.85.167.50])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3F33C20707
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 31 Jan 2020 13:31:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1580477499;
 bh=rGI+UF/ICJd+DA8hslNtVh1f+xovDraNDpFwivdJgEQ=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=lNh1WjFIpIEW9gXqIRSmZJAOjv3O4mh6mGQrDhX5I681cYGAB8HU+xBjBD2rJ1C9Q
 TJXUu70xcUSirXIZgn61heC1YOyaIndk86NtztEiWfuW+VPE4WHR42hV+ivyvdWash
 4JYm9F+/bLF3lWQwcU2T8HrzxncujDFoDpSqLTdg=
Received: by mail-lf1-f50.google.com with SMTP id y19so4866550lfl.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 31 Jan 2020 05:31:39 -0800 (PST)
X-Gm-Message-State: APjAAAVIM9Q8ItX3gllHfDEJdtEc5eKjtprpqOUF3J3Mals1IBq9MXxG
 NtuI5oI3OvU+3FBP/xUGMICUeJBO1LD84KykTEI=
X-Google-Smtp-Source: APXvYqwSbqju6JUksaPdkz/97mfFYOYXw/rc+uN4pEE26ZZoKFaM+ty1mhlgkTYOmglIESjcDg0P8El//QIqqmY+O8o=
X-Received: by 2002:ac2:4472:: with SMTP id y18mr5340968lfl.39.1580477497394; 
 Fri, 31 Jan 2020 05:31:37 -0800 (PST)
MIME-Version: 1.0
References: <20200127215453.15144-1-lukasz.luba@arm.com>
 <CGME20200127215538eucas1p2b8d4886de6f59f6a62257d3d66307c73@eucas1p2.samsung.com>
 <20200127215453.15144-4-lukasz.luba@arm.com>
 <d14546d5-0cd8-c441-c2be-cdeefc8ebb8d@samsung.com>
In-Reply-To: <d14546d5-0cd8-c441-c2be-cdeefc8ebb8d@samsung.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Fri, 31 Jan 2020 14:31:26 +0100
X-Gmail-Original-Message-ID: <CAJKOXPcZCks1SxwBP-vhpsYzpsrV9MQo91QNU2obgAppxfTiyQ@mail.gmail.com>
Message-ID: <CAJKOXPcZCks1SxwBP-vhpsYzpsrV9MQo91QNU2obgAppxfTiyQ@mail.gmail.com>
Subject: Re: [PATCH 3/3] ARM: exynos_defconfig: Enable Energy Model framework
To: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200131_053140_094719_C52C3845 
X-CRM114-Status: GOOD (  19.97  )
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
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 robh+dt@kernel.org, Chanwoo Choi <cw00.choi@samsung.com>,
 myungjoo.ham@samsung.com, kgene@kernel.org, lukasz.luba@arm.com,
 kyungmin.park@samsung.com, dietmar.eggemann@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 31 Jan 2020 at 14:30, Bartlomiej Zolnierkiewicz
<b.zolnierkie@samsung.com> wrote:
>
>
> Hi,
>
> On 1/27/20 10:54 PM, lukasz.luba@arm.com wrote:
> > From: Lukasz Luba <lukasz.luba@arm.com>
> >
> > Enable the Energy Model (EM) brings possibility to use Energy Aware
> > Scheduler (EAS). This compiles the EM but does not enable to run EAS in
> > default. The EAS only works with SchedUtil - a CPUFreq governor which
> > handles direct requests from the scheduler for the frequency change. Thus,
> > to make EAS working in default, the SchedUtil governor should be
> > configured as default CPUFreq governor. Although, the EAS might be enabled
> > in runtime, when the EM is present for CPUs, the SchedUtil is compiled and
> > then set as CPUFreq governor, i.e.:
> >
> > echo schedutil > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor
> > echo schedutil > /sys/devices/system/cpu/cpu4/cpufreq/scaling_governor
> >
> > To check if EAS is ready to work, the read output from the command below
> > should show '1':
> > cat /proc/sys/kernel/sched_energy_aware
> >
> > To disable EAS in runtime simply 'echo 0' to the file above.
> >
> > Some test results, which stress the scheduler on Odroid-XU3:
> > hackbench -l 500 -s 4096
> > With mainline code and with this patch set.
> >
> > The tests have been made with and without CONFIG_PROVE_LOCKING (PL)
> > (which is set to =y in default exynos_defconfig)
> >
> >               |               this patch set                  | mainline
> >               |-----------------------------------------------|---------------
> >               | performance   | SchedUtil     | SchedUtil     | performance
> >               | governor      | governor      | governor      | governor
> >               |               | w/o EAS       | w/ EAS        |
> > ----------------|---------------|---------------|---------------|---------------
> > hackbench w/ PL | 12.7s               | 11.7s         | 12.0s         | 13.0s - 12.2s
> > hackbench w/o PL| 9.2s                | 8.1s          | 8.2s          | 9.2s - 8.4s
>
> Would you happen to have measurements of how much power is
> saved by running hackbench using "SchedUtil governor w/ EAS"
> instead of "SchedUtil governor w/o EAS"?

That's a good point and quite important reason behind enabling (or not) EAS...

Best regards,
Krzysztof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
