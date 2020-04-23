Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E94641B5FA5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 17:40:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UxMs6IZsqc6wZTRHQJ7Y4iBlE2jFwZn+r2mH7Lvw+bQ=; b=TE1Ee1heJJ5KTd
	lbGS5fV1iU42owbo6RPIHJcd+yRrHDImgi6c9WJSrSmxxW69v1mFFXu+8UgV5NLHWaJpVFlR6owSv
	d4c9PwMkLuqCotpUKiUeptoilr7mCbQAzBBeMzcqoDpsmZWbvxSmykuB65ykbnSNLxElYaT9Zs14B
	Hbkq3s524FOxgFj7Y2TKU0hKG97HPJFdGbli4xPcOI10sMOfVj0+H/3G+4sFVdHcyAGpMS19rPPTs
	8Rdjby9D6X20mrH0NHOUOTdwrUxv2kG9ly1sljcI4Vd5hjtj/jWzxyzoPRF5BOOIVnFpgyEuirTQe
	+DMRxoSqMns2knfxpAGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRdy3-0006KW-Nl; Thu, 23 Apr 2020 15:40:47 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRdxo-0006IZ-06
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Apr 2020 15:40:33 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8D9902075A;
 Thu, 23 Apr 2020 15:40:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587656431;
 bh=MzR7Ksg3zN//9VOBpsR8Z+gdJA8z+zcljbVAhZW0Gyc=;
 h=From:To:Cc:Subject:Date:From;
 b=mTU6YpolqaV19yyRc48VQLOC1Jqjzcdyj5HPnQpEz0AYioRan12wH3QPWszCwvuce
 T0l2slm7G+McCqfFgf9SBPzsxti3Kaq0ecuYpmeKeXTSVgmi72EDQ/F7tl9VySE+dv
 FgLrdRgrbi37eP5GL/JHmTk7euKnZ4BuGhYCns+I=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jRdxl-005oPM-Sh; Thu, 23 Apr 2020 16:40:30 +0100
From: Marc Zyngier <maz@kernel.org>
To: Paolo Bonzini <pbonzini@redhat.com>
Subject: [GIT PULL] KVM/arm fixes for 5.7, take #1
Date: Thu, 23 Apr 2020 16:40:01 +0100
Message-Id: <20200423154009.4113562-1-maz@kernel.org>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: pbonzini@redhat.com, alexandru.elisei@arm.com,
 andre.przywara@arm.com, christoffer.dall@arm.com, julien@xen.org,
 yuzenghui@huawei.com, james.morse@arm.com, julien.thierry.kdev@gmail.com,
 suzuki.poulose@arm.com, kvm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_084032_088336_900674BF 
X-CRM114-Status: GOOD (  13.42  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Julien Grall <julien@xen.org>, kvm@vger.kernel.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 =?UTF-8?q?Andr=C3=A9=20Przywara?= <andre.przywara@arm.com>,
 Christoffer Dall <christoffer.dall@arm.com>, James Morse <james.morse@arm.com>,
 linux-arm-kernel@lists.infradead.org, Zenghui Yu <yuzenghui@huawei.com>,
 Alexandru Elisei <alexandru.elisei@arm.com>, kvmarm@lists.cs.columbia.edu,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Paolo,

Here is a bunch of fixes for the next -rc, focusing on the PSCI
implementation (spec conformance), and the usual vGIC patches
(preventing userspace from messing with the HW state and plugging a
couple of memory leaks).

Please pull,

	M.

The following changes since commit 8f3d9f354286745c751374f5f1fcafee6b3f3136:

  Linux 5.7-rc1 (2020-04-12 12:35:55 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/kvmarm/kvmarm.git tags/kvmarm-fixes-5.7-1

for you to fetch changes up to 446c0768f5509793a0e527a439d4866b24707b0e:

  Merge branch 'kvm-arm64/vgic-fixes-5.7' into kvmarm-master/master (2020-04-23 16:27:33 +0100)

----------------------------------------------------------------
KVM/arm fixes for Linux 5.7, take #1

- Prevent the userspace API from interacting directly with the HW
  stage of the virtual GIC
- Fix a couple of vGIC memory leaks
- Tighten the rules around the use of the 32bit PSCI functions
  for 64bit guest, as well as the opposite situation (matches the
  specification)

----------------------------------------------------------------
Marc Zyngier (8):
      KVM: arm: vgic: Fix limit condition when writing to GICD_I[CS]ACTIVER
      KVM: arm64: PSCI: Narrow input registers when using 32bit functions
      KVM: arm64: PSCI: Forbid 64bit functions for 32bit guests
      KVM: arm: vgic: Synchronize the whole guest on GIC{D,R}_I{S,C}ACTIVER read
      KVM: arm: vgic: Only use the virtual state when userspace accesses enable bits
      KVM: arm: vgic-v2: Only use the virtual state when userspace accesses pending bits
      Merge branch 'kvm-arm64/psci-fixes-5.7' into kvmarm-master/master
      Merge branch 'kvm-arm64/vgic-fixes-5.7' into kvmarm-master/master

Zenghui Yu (2):
      KVM: arm64: vgic-v3: Retire all pending LPIs on vcpu destroy
      KVM: arm64: vgic-its: Fix memory leak on the error path of vgic_add_lpi()

 virt/kvm/arm/psci.c              |  40 +++++++
 virt/kvm/arm/vgic/vgic-init.c    |  10 +-
 virt/kvm/arm/vgic/vgic-its.c     |  11 +-
 virt/kvm/arm/vgic/vgic-mmio-v2.c |  16 +--
 virt/kvm/arm/vgic/vgic-mmio-v3.c |  28 ++---
 virt/kvm/arm/vgic/vgic-mmio.c    | 228 +++++++++++++++++++++++++++++----------
 virt/kvm/arm/vgic/vgic-mmio.h    |  19 ++++
 7 files changed, 272 insertions(+), 80 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
