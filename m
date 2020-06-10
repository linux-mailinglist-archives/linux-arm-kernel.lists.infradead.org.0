Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97BDC1F5351
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 13:34:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QnOyqzs0UHMzBs+iFxzwplFo4P/kyX3F7St+19MZ9I0=; b=LD4cwpTayUerMa
	qhqiNSZSgeeh+SDrywH0Ys+7x6hWRqjg90tqh5gQb9rb/djgh2dkJkdHhieyofcXairX3r8beiwbO
	GMlRtBaOmJLpOwEibCqQEazZ1rXpuNVDTyRAVOuz3qfR5qnoM2LBr+EGnEk5FjALHVZAk1fKgpUff
	0AxP4nGC92kWUG5NiXzpX/+O2LEw/OsJndVXI1W5I0h5ggjhqDqEyA11f/LHJu81MDE3jddcQn8Sx
	pV8jZZEWW20OKxiZ5tnF1gAGpJi9pD0FNptCjurELtEBd1cIjdwUdg9WwNxZx+UjZEJxT5X4OUeJ7
	WGWEPPRPY6xLoUStjO6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiyzv-0006kE-Sq; Wed, 10 Jun 2020 11:34:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiyzo-0006iu-Dy
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 11:34:17 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B0BCA20734;
 Wed, 10 Jun 2020 11:34:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591788855;
 bh=9N6nffWe0REroh98cZzvRnmfrffUIT7lJJ7yMkeQ6uI=;
 h=From:To:Cc:Subject:Date:From;
 b=Ksvks8e29KLnHD9le872+c+3SUvatPHr3scAMz190kRFvyApeml9YWHh8o+yITFcD
 Mj8bsnfTJ1Vtcu0R5MHp396KaIIEEQ11lRB+vXVJj0rIdF/qd77dIO2NIfDLl5PFao
 YoBbsMa+nMUOr7bfYEkscw/tyWNN//u47xzi+XXM=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jiyzm-001lrp-8M; Wed, 10 Jun 2020 12:34:14 +0100
From: Marc Zyngier <maz@kernel.org>
To: kvm@vger.kernel.org, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 0/4] kvm: arm64: Pointer Authentication handling fixes
Date: Wed, 10 Jun 2020 12:34:02 +0100
Message-Id: <20200610113406.1493170-1-maz@kernel.org>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: kvm@vger.kernel.org, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org, james.morse@arm.com,
 julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com, will@kernel.org,
 catalin.marinas@arm.com, mark.rutland@arm.com, ascull@google.com,
 kernel-team@android.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_043416_490492_31AE5E83 
X-CRM114-Status: GOOD (  12.45  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, kernel-team@android.com,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, James Morse <james.morse@arm.com>,
 Andrew Scull <ascull@google.com>, Will Deacon <will@kernel.org>,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

I recently discovered that the Pointer Authentication (PtrAuth)
handling code in KVM is busted, and has been for a while. The main
issue is that the we save the host's keys from a preemptible
context. Things will go wrong at some point.

In order to address this, the first patch move the saving of the
host's keys to vcpu_load(). It is done eagerly, which is a bore, but
is at least safe. This is definitely stable material.

The following patch is adding an optimisatioe: we handle key saving
and HCR massaging as a fixup, much like the FPSIMD code.

Subsequent patch cleans up our HYP per-CPU accessor and make it sparse
friendly, asthe last patch makes heavy use of it by killing the
per-vcpu backpointer to the physical CPU context, avoiding the first
bug altogether.

This has been very lightly tested on a model. Unless someone shouts, I
plan to send this as part of the pending set of fixes.

* From v1:
  - Dropped the misbehaving guest handling patch
  - Added the two cleanup patches to the series (previously posted separately)

Marc Zyngier (4):
  KVM: arm64: Save the host's PtrAuth keys in non-preemptible context
  KVM: arm64: Handle PtrAuth traps early
  KVM: arm64: Stop sparse from moaning at __hyp_this_cpu_ptr
  KVM: arm64: Remove host_cpu_context member from vcpu structure

 arch/arm64/include/asm/kvm_asm.h     | 13 ++++--
 arch/arm64/include/asm/kvm_emulate.h |  6 ---
 arch/arm64/include/asm/kvm_host.h    |  3 --
 arch/arm64/kvm/arm.c                 |  6 +--
 arch/arm64/kvm/handle_exit.c         | 32 ++------------
 arch/arm64/kvm/hyp/debug-sr.c        |  4 +-
 arch/arm64/kvm/hyp/switch.c          | 65 +++++++++++++++++++++++++++-
 arch/arm64/kvm/hyp/sysreg-sr.c       |  6 ++-
 arch/arm64/kvm/pmu.c                 |  8 +---
 arch/arm64/kvm/sys_regs.c            | 13 +++---
 10 files changed, 91 insertions(+), 65 deletions(-)

-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
