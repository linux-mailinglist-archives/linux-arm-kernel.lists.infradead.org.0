Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7541B12F35
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 15:31:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/VXCa+wfdCwiDcJnIsFEhoMlQuLEaJ3n/9CsfGz8P8o=; b=FXjli5oh4HVu+B
	UeLHa7KW44nb2YzsLQ9od9rhGI//Z5WXZ7XWgcc7J/qicw7Awlbko/AfdcuwUZv3iQM8ix+LMyVxK
	Aldl92Xs4b29xY3pemP/IykfnUzn6EaQGZY8VUmlyL1A2yVm0bCqQ6pDFmQcZ8+HKVVzFRCJArCkv
	BECMTmkGpDbmwak+fL9b6iqf/K0avWt4SeZEj3BbNTXC1GKz7ifB6c5r+5UUbTUliTcQYfHzqGDyW
	tVMHV2LOeIhWJNMxskzjxNLeMSO2dh2IAFKYupyQC+rlmRpWUMFVeOZ3eoYg5rxddQKihmgrN3J3T
	ctju88rWY+kP47ibpl8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMYHy-0001cy-3U; Fri, 03 May 2019 13:31:46 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMYHI-0000pd-7m
 for linux-arm-kernel@bombadil.infradead.org; Fri, 03 May 2019 13:31:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=18mkkr+AZHjY1/CxfkS+ECxZvRNJf95f1hjnlyZsNLk=; b=z4h8t/gcPMcNAKB2Ivc9GvbKZ7
 OkM81qQY+l+apAfiyCjiZ1NZFPxE/kGwATsSWQlyn5XIa8XTuMSvrPNSE3xJ/kGXxlHPiv/0snL9+
 fXaKH1R1iZor0JlnteE7jLeGAcBaezMM7rAcXjIxZRoouw7FRAAEId2HZbNyjm/xo0H9opoW4HFPV
 uPchQYeZQbckoVL/voy0WsCcd+BbomFUZBy2itSSln5hn6ilmVbyAvScRS/tr4mPbpQai36ty24mQ
 aGyYicsMqJ2eo5DJpUUn3fMN/itO1nZxJZAiv3qTtdIhJV97x1uAL6aJetFXyv5HLWlwyq6W4UL32
 eRNrm2Jg==;
Received: from foss.arm.com ([217.140.101.70])
 by merlin.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMXb6-0005nk-DI
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 12:47:29 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AFC11165C;
 Fri,  3 May 2019 05:47:27 -0700 (PDT)
Received: from filthy-habits.cambridge.arm.com
 (filthy-habits.cambridge.arm.com [10.1.197.61])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 771713F220;
 Fri,  3 May 2019 05:47:24 -0700 (PDT)
From: Marc Zyngier <marc.zyngier@arm.com>
To: Paolo Bonzini <pbonzini@redhat.com>,
 =?UTF-8?q?Radim=20Kr=C4=8Dm=C3=A1=C5=99?= <rkrcmar@redhat.com>
Subject: [PATCH 47/56] arm64: arm_pmu: Remove unnecessary isb instruction
Date: Fri,  3 May 2019 13:44:18 +0100
Message-Id: <20190503124427.190206-48-marc.zyngier@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190503124427.190206-1-marc.zyngier@arm.com>
References: <20190503124427.190206-1-marc.zyngier@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_084728_550527_B36D2358 
X-CRM114-Status: GOOD (  11.65  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>,
 Peter Maydell <peter.maydell@linaro.org>, Andrew Jones <drjones@redhat.com>,
 kvm@vger.kernel.org, Julien Thierry <julien.thierry@arm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, Will Deacon <will.deacon@arm.com>,
 Christoffer Dall <christoffer.dall@arm.com>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 "zhang . lei" <zhang.lei@jp.fujitsu.com>, Julien Grall <julien.grall@arm.com>,
 kvmarm@lists.cs.columbia.edu, Amit Daniel Kachhap <amit.kachhap@arm.com>,
 Andrew Murray <andrew.murray@arm.com>,
 =?UTF-8?q?Alex=20Benn=C3=A9e?= <alex.bennee@linaro.org>,
 Dave Martin <Dave.Martin@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Andrew Murray <andrew.murray@arm.com>

The armv8pmu_enable_event_counter function issues an isb instruction
after enabling a pair of counters - this doesn't provide any value
and is inconsistent with the armv8pmu_disable_event_counter.

In any case armv8pmu_enable_event_counter is always called with the
PMU stopped. Starting the PMU with armv8pmu_start results in an isb
instruction being issued prior to writing to PMCR_EL0.

Let's remove the unnecessary isb instruction.

Signed-off-by: Andrew Murray <andrew.murray@arm.com>
Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
Acked-by: Mark Rutland <mark.rutland@arm.com>
Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
---
 arch/arm64/kernel/perf_event.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/kernel/perf_event.c b/arch/arm64/kernel/perf_event.c
index 4addb38bc250..cccf4fc86d67 100644
--- a/arch/arm64/kernel/perf_event.c
+++ b/arch/arm64/kernel/perf_event.c
@@ -533,7 +533,6 @@ static inline void armv8pmu_enable_event_counter(struct perf_event *event)
 	armv8pmu_enable_counter(idx);
 	if (armv8pmu_event_is_chained(event))
 		armv8pmu_enable_counter(idx - 1);
-	isb();
 }
 
 static inline int armv8pmu_disable_counter(int idx)
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
