Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EC231C10AD
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 May 2020 12:12:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=g0dmKKkN/OXiHoDmmVeZsbdTh0e8AAhbfr0U0IIOrog=; b=l8ecRo2Dw+Z2b5
	APMHumkIyJXspqYnnIZGR94YnguR/y3rnSlVBcI5HZBVREhCE2SCntF7WtUNiWmwcTqsDBKYecdtS
	whDeGhjDeNHnw+FQwpuHvj4+55aQzgqMQ79MVg4LlOFVpVRV/uj1aj+1Y1dQxKhlI6iG847rKcScJ
	avpm568YkW/ryZYwU0DIssd8tDWlPg/RtgxahZQA7cX+Zx5mwBBB3R7s43HeKbEB4kXZsxTJKc4Av
	gbwxVVbCVXINXTyEfAIfA1EMYE8kBFkIbTQ5WUyoX8v1btZxtG5R7H9HIGYxyKIgHT6sTJJvwjCP2
	kYntUmEKnAyW72qiAMpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUSeb-0004JY-9D; Fri, 01 May 2020 10:12:21 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUSeT-0004Hu-NZ
 for linux-arm-kernel@lists.infradead.org; Fri, 01 May 2020 10:12:15 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CC8272071C;
 Fri,  1 May 2020 10:12:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588327932;
 bh=MklRYqz2k5cgg9fDxl/d5X5Bx725+ZQ/Ik6viwGxla4=;
 h=From:To:Cc:Subject:Date:From;
 b=X1YhUQCCR6e8QRgIEHrOJrY2OLaP82i20DIb+Jk+ZKCeEwwvw3Zpb0ro3VcUTEhw4
 gaaZNfih7lrLfPOWi2d/T3xjcde6aAizPmXuK+c1j7yME1SY2dNkQt0+ZatzQuPJ+W
 LFZ0qpF5NDxuEBSFW5mNfRKLlY02LLeFJT5i58ac=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jUSeR-008J3K-7D; Fri, 01 May 2020 11:12:11 +0100
From: Marc Zyngier <maz@kernel.org>
To: Paolo Bonzini <pbonzini@redhat.com>
Subject: [GIT PULL] KVM/arm fixes for 5.7, take #2
Date: Fri,  1 May 2020 11:12:00 +0100
Message-Id: <20200501101204.364798-1-maz@kernel.org>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: pbonzini@redhat.com, drjones@redhat.com, maskray@google.com,
 mark.rutland@arm.com, ndesaulniers@google.com, will@kernel.org,
 yuzenghui@huawei.com, james.morse@arm.com, julien.thierry.kdev@gmail.com,
 suzuki.poulose@arm.com, kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_031213_808941_2483F355 
X-CRM114-Status: GOOD (  12.98  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Andrew Jones <drjones@redhat.com>,
 kvm@vger.kernel.org, Fangrui Song <maskray@google.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Nick Desaulniers <ndesaulniers@google.com>, James Morse <james.morse@arm.com>,
 linux-arm-kernel@lists.infradead.org, Zenghui Yu <yuzenghui@huawei.com>,
 Will Deacon <will@kernel.org>, kvmarm@lists.cs.columbia.edu,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Paolo,

This is the second batch of KVM/arm fixes for 5.7. A compilation fix,
a GICv4.1 fix, plus a couple of sanity checks (SP_EL0 save/restore,
and the sanitising of AArch32 registers).

Note that the pull request I sent a week ago[1] is still valid, and
that this new series is built on top of the previous one.

Please pull,

	M.

[1] https://lore.kernel.org/kvm/20200423154009.4113562-1-maz@kernel.org/

The following changes since commit 446c0768f5509793a0e527a439d4866b24707b0e:

  Merge branch 'kvm-arm64/vgic-fixes-5.7' into kvmarm-master/master (2020-04-23 16:27:33 +0100)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/kvmarm/kvmarm.git tags/kvmarm-fixes-5.7-2

for you to fetch changes up to 0225fd5e0a6a32af7af0aefac45c8ebf19dc5183:

  KVM: arm64: Fix 32bit PC wrap-around (2020-05-01 09:51:08 +0100)

----------------------------------------------------------------
KVM/arm fixes for Linux 5.7, take #2

- Fix compilation with Clang
- Correctly initialize GICv4.1 in the absence of a virtual ITS
- Move SP_EL0 save/restore to the guest entry/exit code
- Handle PC wrap around on 32bit guests, and narrow all 32bit
  registers on userspace access

----------------------------------------------------------------
Fangrui Song (1):
      KVM: arm64: Delete duplicated label in invalid_vector

Marc Zyngier (3):
      KVM: arm64: Save/restore sp_el0 as part of __guest_enter
      KVM: arm64: vgic-v4: Initialize GICv4.1 even in the absence of a virtual ITS
      KVM: arm64: Fix 32bit PC wrap-around

 arch/arm64/kvm/guest.c           |  7 +++++++
 arch/arm64/kvm/hyp/entry.S       | 23 +++++++++++++++++++++++
 arch/arm64/kvm/hyp/hyp-entry.S   |  1 -
 arch/arm64/kvm/hyp/sysreg-sr.c   | 17 +++--------------
 virt/kvm/arm/hyp/aarch32.c       |  8 ++++++--
 virt/kvm/arm/vgic/vgic-init.c    |  9 ++++++++-
 virt/kvm/arm/vgic/vgic-mmio-v3.c |  3 ++-
 7 files changed, 49 insertions(+), 19 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
