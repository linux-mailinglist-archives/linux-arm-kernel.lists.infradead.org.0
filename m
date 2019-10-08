Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DC7FCFE6B
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 18:02:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7Fu87kkcEloV7fHBYioTyR6ksCADs4NJZoJxROsm7Ho=; b=hRUvnagkb4HcI7
	/sZPVOx1yxEjsCQQv62Tf9yFtiotYuIyCkf2TkNUUHuv0UbMiyr8PeG2sCis75pyAQQBfSLyLGVXc
	0ULnFx33cIC7M4imEy+JaffLDTk+DkPBM9SBXzoPDbmyqZvnKAGrd/ZvTjMHSSmW+Md8Ea9AdgVxH
	/VNp8Sy2+e6X3jEXBVfrdMYVVJGPGtsTASWFry9x4MHWCrNRNs7LhL+LJdOGm1rv/7p/qPphw3j3D
	gCzI+pRdFm9GBfzNZgD97v+y52ZxrKSbIuGuIoIfl2ZRsSvJsbb8p/i5gvFgodEbD6jq8APijfzfh
	SMVYVkXohEBYzEpvbN7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHrwQ-0002LL-Lc; Tue, 08 Oct 2019 16:02:26 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHrvw-00027a-VH
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 16:01:59 +0000
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by cheepnis.misterjones.org with esmtpsa
 (TLSv1.2:DHE-RSA-AES128-GCM-SHA256:128) (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1iHrvs-0001rs-DQ; Tue, 08 Oct 2019 18:01:52 +0200
From: Marc Zyngier <maz@kernel.org>
To: linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org
Subject: [PATCH v2 0/5] KVM: arm64: Assorted PMU emulation fixes
Date: Tue,  8 Oct 2019 17:01:23 +0100
Message-Id: <20191008160128.8872-1-maz@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org, will@kernel.org,
 mark.rutland@arm.com, james.morse@arm.com, julien.thierry.kdev@gmail.com,
 suzuki.poulose@arm.com, andrew.murray@arm.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_090157_160352_C147DC91 
X-CRM114-Status: GOOD (  10.34  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, James Morse <james.morse@arm.com>,
 Andrew Murray <andrew.murray@arm.com>, Will Deacon <will@kernel.org>,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

I recently came across a number of PMU emulation bugs, all which can
result in unexpected behaviours in an unsuspecting guest. The first
two patches already have been discussed on the list, but I'm including
them here as part of a slightly longer series.

The third patch is new as of v2, and fixes a bug preventing chained
events from ever being used.

The fourth patch is also new as of v2, and is an arm64 PMU change for
which I clearly don't know what I'm doing. I'd appreciate some
guidance from Will or Mark.

The last patch fixes an issue that has been here from day one, where
we confuse architectural overflow of a counter and perf sampling
period, and uses patch #4 to fix the issue.

I'l planning to send patches 1 through to 3 as fixes shortly, but I
expect the last two patches to require more discussions.

Marc Zyngier (5):
  KVM: arm64: pmu: Fix cycle counter truncation
  arm64: KVM: Handle PMCR_EL0.LC as RES1 on pure AArch64 systems
  KVM: arm64: pmu: Set the CHAINED attribute before creating the
    in-kernel event
  arm64: perf: Add reload-on-overflow capability
  KVM: arm64: pmu: Reset sample period on overflow handling

 arch/arm64/include/asm/perf_event.h |  4 +++
 arch/arm64/kernel/perf_event.c      |  8 ++++-
 arch/arm64/kvm/sys_regs.c           |  4 +++
 virt/kvm/arm/pmu.c                  | 45 +++++++++++++++++++----------
 4 files changed, 45 insertions(+), 16 deletions(-)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
