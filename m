Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8139F1C5794
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 15:56:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=mdZLQ5KlJ1eMVAhrpFmuGFmxsV7xiVxfPGzxCyC9dXw=; b=ijG
	FFOjfhrD0RO8FyiXOTo9BxI2SwSaGR4kSN7H7sVp1orGkOEUvkEE9WdbK++0TiF1aBbYMbA4m7Y42
	JwxBqT6E4f0KAAXY8blY/tzGkcFPj5GI7DMrTshLV1VR3E2BxlyOJZXwjgaNJDMhUU/EtlaXmWi8I
	0dVeXwgbsO7v6LMilf/wH4kkLS6FmpnktxJtUo/0KB1LSNJtoU+j/Qlrt9bcPyY1x2ALjQxjskXXb
	phbT9u+9aB4L4EKeAe4E8iaNs4Ejk5CmNo0yz+YOnvVQDY92O5Ezv8D2wF2fzdNuk5JzjSFo4kWQD
	4hPBqBzSzAvbtke5PlC3jBg3U8eUs5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVy3J-0005Yo-NJ; Tue, 05 May 2020 13:56:05 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVy3D-0005YG-Q3
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 13:56:01 +0000
Received: by mail-pj1-x1041.google.com with SMTP id t40so1103132pjb.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 May 2020 06:55:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=DYoV4g+eBtUMQiWGeiHqcByOOgkJemjo7RNmxRSrxEU=;
 b=RXHFNjbEfNN2/RlW1Hul1jwbxxG2m59QspzJlL0uZadHZCe7vTBfRFMqgL28fkluis
 4HNC/CsUdbtnzQfr5FTpjcvJJ+rv6WYK+lUGRIUeT4nf/6K+hIExT9LqIIroo8ZJLwvO
 ARnvblBicwU+0VfADtPkEF9RwlVm0Jq5qVa0aHKGs5JZrsrUaRACs3+CJ6ea/BDtrVIP
 cjG9rmEYTcUQjM0Ui/CCl/pEuFG6l7xDSTpcKDTBfjirK6OVzKS+lvrqiCt8Rzw0HiNA
 rgVmx6HMgEHnu7e9qRFlgI+zJqT49/usJD/ZKlIMA2YF99X/Yz3KVltk9MBNnTtZPPos
 5GOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=DYoV4g+eBtUMQiWGeiHqcByOOgkJemjo7RNmxRSrxEU=;
 b=eatxY1kMBz0lfYcja6Xp+63vzP133geOPe9Hjb0B3/5NQdXcKgWzOSIOxO8KzOfHns
 lJSm/ES0sVXLgYwZsaraeKJjsNBptKRcqOTqSts4lPT7S5iUxCfhWK7tgWw3+PJs0Dfy
 c/doFp+h1T34QYB8ozHv0iANXH3MLsGe+MhfQF8EH835o5KO2eRxnrgjLaOkm2W4Dig1
 r14DAaHGnJwx/VTLJ7K/ixGM70WfYNoG8pG7V3NVT63eagqfdwhpqOTIiOu6aYnzZqwW
 vWzOzNYXA0VQtgaCqcMRxngF6hXjY5u3vBh/QXv6YsQC03a888yj758MkEa4frHkAweK
 0maQ==
X-Gm-Message-State: AGi0PuYKCD44T7/pNZzATm6V/R0WQkKPPP1bC0Jera8sUzTUBY1m3VTp
 lPR4DEhd60e6cVZ/yLR0qAsH2Q==
X-Google-Smtp-Source: APiQypK8A+s0fLvlIkTj9fiCvSROntMoJtckKK/YWvVvyq1ctUdfysHnkou/Uk3gNoYgVsDCI5hF2g==
X-Received: by 2002:a17:902:a706:: with SMTP id
 w6mr2987753plq.173.1588686958545; 
 Tue, 05 May 2020 06:55:58 -0700 (PDT)
Received: from localhost ([2400:8904::f03c:91ff:fe8a:bbe4])
 by smtp.gmail.com with ESMTPSA id ie17sm2136120pjb.19.2020.05.05.06.55.57
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 05 May 2020 06:55:58 -0700 (PDT)
From: Leo Yan <leo.yan@linaro.org>
To: Peter Zijlstra <peterz@infradead.org>, Will Deacon <will@kernel.org>,
 Marc Zyngier <maz@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Ingo Molnar <mingo@redhat.com>, Arnaldo Carvalho de Melo <acme@kernel.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Jiri Olsa <jolsa@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Thomas Gleixner <tglx@linutronix.de>, Allison Randal <allison@lohutok.net>,
 Alexios Zavras <alexios.zavras@intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Kate Stewart <kstewart@linuxfoundation.org>,
 Enrico Weigelt <info@metux.net>,
 "Ahmed S. Darwish" <a.darwish@linutronix.de>,
 Paul Cercueil <paul@crapouillou.net>,
 "Ben Dooks (Codethink)" <ben.dooks@codethink.co.uk>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 0/3] arm64: perf_event: Fix time offset prior to epoch
Date: Tue,  5 May 2020 21:55:41 +0800
Message-Id: <20200505135544.6003-1-leo.yan@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_065559_875387_60605716 
X-CRM114-Status: GOOD (  11.95  )
X-Spam-Score: 3.4 (+++)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (3.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [2400:8904:0:0:f03c:91ff:fe8a:bbe4 listed in] [zen.spamhaus.org]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1041 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Leo Yan <leo.yan@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch set is to fix time offset prior to epoch for Arm arch timer.
This series is mainly following on suggestions on LKML [1].

To acheive the accurate time offset for a clock source prior to epoch,
patch 01 adds a new variant sched_clock_register_epoch() which allows to
output an extra argument for time offset prior to sched clock's
registration.

Patch 02 is to add handling for time offset in Arm arch timer driver, As
Will Deacon suggested to "disable the perf userpage if sched_clock
changes clocksource too" [2], after thinking about this suggestion, the
race condition doesn't exist between sched_clock's registration and perf
userpage.  The reason is sched_clock's registration is finished in
system's initialisation phase and at this point it has no chance to use
any userpage by Perf tool.  For this reason let's keep the code simple
and don't acquire all Perf events' seqlock during sched_clock's
registration.

Patch 03 is simply to pass time offset from arch timer driver
(clocksource driver) to perf event.

[1] https://lkml.org/lkml/2020/3/20/199
[2] https://lkml.org/lkml/2020/5/1/906

Changes from v1:
- Added patch 01 to retrieve more accurate offset when sched clock
  registration;
- Added patch 02 to handle time offset in arch timer driver.

Leo Yan (3):
  time/sched_clock: Add new variant sched_clock_register_epoch()
  clocksource/drivers/arm_arch_timer: Handle time offset prior to epoch
  arm64: perf_event: Fix time_offset for arch timer

 arch/arm64/kernel/perf_event.c       |  8 ++++++--
 drivers/clocksource/arm_arch_timer.c | 10 +++++++++-
 include/clocksource/arm_arch_timer.h |  6 ++++++
 include/linux/sched_clock.h          | 10 ++++++++++
 kernel/time/sched_clock.c            | 13 ++++++++++++-
 5 files changed, 43 insertions(+), 4 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
