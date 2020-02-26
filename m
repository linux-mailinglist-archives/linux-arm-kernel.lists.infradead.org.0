Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90BE91704A6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 17:43:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IEVo5hd/m9H36mjc9BiK13oNURi2wafw3FXDT1zUMfM=; b=DOjp2pAJ/NJwrx
	dmOGEergFdJrz9kXcbssAXDJrWektKyh3W+YtPPFXhvzgDV2sCxU5kLfmsA51mswIxYPDwWCu1reW
	/lsnqkJV45ul0NA6e/MS956tW8EFPNO02b8ZT6h0CQRxzbXADYB4P6GpohznpbM0jSFQwhmZnmeMt
	qK7VIptBdH8khUBMIpH59y2GWo5sJAjaYNHOjJcpd3n8Ms5iONyCHdUQTS3EpiBuOR3KTTOTSwnmL
	yQ64oh/OFQg4d7PWW70hpd/zp2nZD76nqrqVtnmJ9deWtxnPF3ftlZO5K3FgeqOIHZTS2eO2EQwTV
	3VUnkIgNfsp4mPOd5Dvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6zm9-0005Cv-30; Wed, 26 Feb 2020 16:43:09 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6zlV-0004pJ-Ed
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 16:42:30 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 199864B2;
 Wed, 26 Feb 2020 08:42:29 -0800 (PST)
Received: from e113632-lin.cambridge.arm.com (e113632-lin.cambridge.arm.com
 [10.1.194.46])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 87CF13F819;
 Wed, 26 Feb 2020 08:42:27 -0800 (PST)
From: Valentin Schneider <valentin.schneider@arm.com>
To: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/2] arm64: defconfig: enable CONFIG_SCHED_SMT
Date: Wed, 26 Feb 2020 16:41:18 +0000
Message-Id: <20200226164118.6405-3-valentin.schneider@arm.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20200226164118.6405-1-valentin.schneider@arm.com>
References: <20200226164118.6405-1-valentin.schneider@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_084229_576977_74E3E0B8 
X-CRM114-Status: GOOD (  11.61  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, qperret@google.com,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, morten.rasmussen@arm.com,
 Will Deacon <will@kernel.org>, Ingo Molnar <mingo@kernel.org>,
 Dietmar Eggemann <dietmar.eggemann@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The (CFS) scheduler has some extra logic catering to systems with SMT, but
that logic won't be compiled in unless the above config is set.

Note that the SMT-centric codepaths are gated by the sched_smt_present
static key, and the SMT sched_domains will only survive if the platform has
SMT. As such, the only impact on !SMT platforms should be a slightly
bigger kernel - no behavioural change.

Distro kernels already enable it, which makes sense since there already are
things like ThunderX2 out in the wild. Enable it for the defconfig.

Some deltas
===========

FWIW my ELF symbol table diff looks something like this:

  NAME                                BEFORE    AFTER     DELTA
  update_sd_lb_stats.constprop.135    0         1864      +1864
  find_idlest_group.isra.115          0         1808      +1808
  update_numa_stats.isra.121          0         628       +628
  select_task_rq_fair                 3236      3732      +496
  compute_energy.isra.112             0         420       +420
  score_nearby_nodes.part.120         0         380       +380
  __update_idle_core                  0         232       +232
  nohz_balance_exit_idle.part.127     0         216       +216
  sched_slice.isra.99                 0         172       +172
  update_load_avg.part.107            0         116       +116
  wakeup_preempt_entity.isra.101      0         92        +92
  sched_cpu_activate                  340       396       +56
  pick_next_task_idle                 8         56        +48
  sched_cpu_deactivate                252       292       +40
  show_smt_active                     44        80        +36
  cpu_smt_mask                        0         28        +28
  set_next_task_idle                  4         32        +28
  task_numa_work                      680       692       +12
  cpu_smt_flags                       0         8         +8
  enqueue_task_fair                   2608      2612      +4
  wakeup_preempt_entity.isra.104      92        0         -92
  update_load_avg                     1028      932       -96
  task_numa_migrate                   1824      1728      -96
  sched_slice.isra.102                172       0         -172
  nohz_balance_exit_idle.part.130     216       0         -216
  task_numa_find_cpu                  2116      1868      -248
  score_nearby_nodes.part.123         380       0         -380
  compute_energy.isra.115             420       0         -420
  update_numa_stats.isra.124          472       0         -472
  find_idlest_group.isra.118          1808      0         -1808
  update_sd_lb_stats.constprop.138    1864      0         -1864
  ------------------------------------------------------------------
  DELTA SUM                                               +820

As for the sched_domains, this is on a hikey960:

before:
  $ cat /proc/sys/kernel/sched_domain/cpu*/domain*/name | sort | uniq
  DIE
  MC

after:
  $ cat /proc/sys/kernel/sched_domain/cpu*/domain*/name | sort | uniq
  DIE
  MC

Signed-off-by: Valentin Schneider <valentin.schneider@arm.com>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 905109f6814f..3e75007f6592 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -62,6 +62,7 @@ CONFIG_ARCH_ZX=y
 CONFIG_ARCH_ZYNQMP=y
 CONFIG_ARM64_VA_BITS_48=y
 CONFIG_SCHED_MC=y
+CONFIG_SCHED_SMT=y
 CONFIG_NUMA=y
 CONFIG_SECCOMP=y
 CONFIG_KEXEC=y
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
