Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE3D21955F2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 12:04:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G7qLyHW/OEHvNWp+oeFCKa+bXwJevvZkkdkRE2taneE=; b=i+p7bcVdjW8HlT
	t7zTKdzM4yjfLG3SP+J3jrWwrYVZc46GGVN/1dab/SRV4z0X3qx/BMh4z86QDnG9LzLgB/gapV1W8
	LBLcMUVwO8/d9rOoxkcDlqIGt4otZJANVeFuys4jfQrbVTBLJmfWLSeKgrcwiWEB4IsMn1K7EG924
	bvR9YqAkJaOq5PdtaHEhx/9ab/WyMLAER/71HWRfwQd87uyf7thHkQXCtHI5AsDXXmU+eqd+KmDZC
	kr1eRrv40uUxeEq1QjDg5B+Uq7mWAisAa/nVl6dPNAsDbRJgmU3UsP55jC3DZf+K/WMucTPlEFBIh
	4zx2KG8aEeoNcqmVcVww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHmnB-0001wV-Q8; Fri, 27 Mar 2020 11:04:49 +0000
Received: from mout.kundenserver.de ([212.227.126.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHmmb-0001e5-3V
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Mar 2020 11:04:15 +0000
Received: from mail-qv1-f51.google.com ([209.85.219.51]) by
 mrelayeu.kundenserver.de (mreue012 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1MEC8L-1j7dlP39s5-00ADUA for <linux-arm-kernel@lists.infradead.org>; Fri,
 27 Mar 2020 12:04:10 +0100
Received: by mail-qv1-f51.google.com with SMTP id s18so186987qvn.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 27 Mar 2020 04:04:10 -0700 (PDT)
X-Gm-Message-State: ANhLgQ2L5dAHbO8+Oj7WkiO+ljtE9bUBleYbvRdiF0fZkQD7X0iKbnOW
 qlwZcQC3ieaeb/RM+GykGGknp1wc4gYgjiNU8qI=
X-Google-Smtp-Source: ADFU+vtyyockII/trfpJrMLB986S3gEYej32rRjsVQDaw6dQ7V9ollrz9qYMTluqBJlIbGMlnb8od+yqbzWq3ZzwMSs=
X-Received: by 2002:a0c:9e2f:: with SMTP id p47mr12191129qve.211.1585307049646; 
 Fri, 27 Mar 2020 04:04:09 -0700 (PDT)
MIME-Version: 1.0
References: <20200327095703.93178-1-linus.walleij@linaro.org>
In-Reply-To: <20200327095703.93178-1-linus.walleij@linaro.org>
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 27 Mar 2020 12:03:53 +0100
X-Gmail-Original-Message-ID: <CAK8P3a2_4W9Cyxa8YgZBCkpgsRhp5A9fbXzNEanDPNHdNpuiaQ@mail.gmail.com>
Message-ID: <CAK8P3a2_4W9Cyxa8YgZBCkpgsRhp5A9fbXzNEanDPNHdNpuiaQ@mail.gmail.com>
Subject: Re: [PATCH] ARM: vexpress: Make schedutil governor available
To: Linus Walleij <linus.walleij@linaro.org>
X-Provags-ID: V03:K1:OTlqwo3f0PrU1BXrd3xKFLJ9uz4iRnHbFyYl/OhM7ylo66jeG+t
 X4XEhM+GviKLVHOzzu7EVtcpED7+6vYisUgHJSxlirmPMRptx5MHT7bV6LELnKW3jqf3d5X
 kd8ycWYb6C2a3RDuLGXSqDTCeJlCrGaftSJBbjkRHUCdjhj0g7w5cHanxLQB+hzVkce2Gj7
 vDC+VpExMjLeb5X76QSQA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Cew0vpdjApY=:g5VGkjjwbRcEpJwBisLm/y
 2CWiJtaHLKXJ3i25Ve9kU3kX4ORCF+JlOynAcm5ii4D25ooTP0KDd0/Ho/5tSQMhYBQCslGib
 8xwQPuz+5nPu1NQL5E1dRIH6disTeBYzoqP18gU267uJ4+q/PenZgPt1uOaVg2F8RPtVpXB4x
 zpgU6wnZMPaHqy7XsmDi2aSllMJMRBLb/CS9TvTMIcfu8Jn8YXve1Kf6/TJ/PJVcz8axOJdkw
 NBDg55J8JV8pM2DNfOika3pLqyG3yxtPw/osIb6WEClO0bt29KfEBrUSyLZAjUmgc9QbVH8t9
 3Xb+Ff/ODBjwGoQEayez6/gDMuQgJMISjwgJK/LKzuELmfZHG1WpnNAduxGXHP3A6SIhhFpxv
 cqPbpDV+Im6ecM1f7JPskRyRAFqgbUsdzvZg7sthzXHfRTwC2yssZuuI4Sdj5934KxKxLxV7h
 Hl2fYXiQapq9M3R/bwgY+Vsq7kjFl2OIRG+iIZYShWnFbJ6aAzU20RtF0V32IQ9fzA6av1o2H
 Z8xwnfvw2FYj32YaMWgLYO0tIptlBGkuiSdeFGrSkKZpBgTvV2xQwnOJ5tcJDDHTvGBCZh340
 swOln1MjMs9QqwmdXuJG4NMsWpLiqa9IXdCDqi7KZJWDCFirwsRVecRxYolqDOKZ7HgkZjQXr
 Mb2TMRiDVb2znnzpa5uuRooO7NPz/lYqKgln0+evqn+WSFddbMkBgIO6xp4kGzD1EJdmksKcU
 uEqiXj21Rxsn4Y46+AOYdPsH3qkiPlfXVC7D0Bjb3a/30wimsAsCaiw/szcJExcEvBI1LHEBG
 XicTX+B+HkCkguaM7uJOhgoxdUcbQOZPoY32IXO29zQmT3f/UA=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_040413_538001_845E1563 
X-CRM114-Status: GOOD (  23.58  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.130 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Viresh Kumar <viresh.kumar@linaro.org>, SoC Team <soc@kernel.org>,
 arm-soc <arm@kernel.org>, Sudeep Holla <sudeep.holla@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Mar 27, 2020 at 10:57 AM Linus Walleij <linus.walleij@linaro.org> wrote:
>
> When building the kernel for Versatile Express we need to
> consider that some of these boards are big.LITTLE HMP
> systems.
>
> As can be seen from kernel/sched/topology.c:
>
> "EAS can be used on a root domain if it meets all the following conditions:
>  1. an Energy Model (EM) is available;
>  2. the SD_ASYM_CPUCAPACITY flag is set in the sched_domain hierarchy.
>  3. no SMT is detected.
>  4. the EM complexity is low enough to keep scheduling overheads low;
>  5. schedutil is driving the frequency of all CPUs of the rd;"
>
> This means that at the very least, schedutil needs to be
> available as a scheduling policy for EAS to work on these
> systems. Make this explicit by selecting CPU_FREQ and
> CPU_FREQ_GOV_SCHEDUTIL from the Versatile Express
> machine.
>
> Currently users of the TC2 board (like me) has to figure these
> dependencies out themselves and it is not helpful.
>
> It is still necessary to configure in the schedutil as default
> governor manually to actually get a working b.L system, so this
> just makes the right governor available to b.L systems, it does
> not turn it on by default.
>
> Cc: Vincent Guittot <vincent.guittot@linaro.org>
> Cc: Viresh Kumar <viresh.kumar@linaro.org>
> Cc: Sudeep Holla <sudeep.holla@arm.com>
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>

Hi Linus,

I agree we should make it available by default on platforms that need it
for big.LITTLE, but I don't like the idea of selecting the governor from
a platform Kconfig file, as generally speaking it leads to more problems
when user-visible options are selected like this.

What I could imagine doing however would be to change the cpufreq
selection to use schedutil by default if CONFIG_BIG_LITTLE is set, like:

choice
        prompt "Default CPUFreq governor"
        default CPU_FREQ_DEFAULT_GOV_SCHEDUTIL if BIG_LITTLE
        default CPU_FREQ_DEFAULT_GOV_USERSPACE if ARM_SA1100_CPUFREQ
|| ARM_SA1110_CPUFREQ
        default CPU_FREQ_DEFAULT_GOV_PERFORMANCE
        help
          This option sets which CPUFreq governor shall be loaded at
          startup. If in doubt, select 'performance'.

and then changing CONFIG_BIG_LITTLE to be enabled by default on
any platform that uses that configuration. If CONFIG_BIG_LITTLE is
too overloaded already (I can't tell exactly what this is used for), a new
symbol could be added for what we want here.

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
