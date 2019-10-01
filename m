Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1391C3011
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 11:22:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=plCAv7JG++AhGh+HbsO6ooPcR0At9CsD0l8FjVIG+Ck=; b=uOpUvtkaV5U55T
	aDkyUodjeWki1IZO5yKaHidZeQGLUfkyN4NJAN2n+qwnXZmhhOmQ7q5Z2O3xSvlKaPcEnd74qe7pO
	QPb4TV41iEfLCeYVq2KTMsPWm1ae2XIAleHnCvsOs9wGmNHdjrJb0VklpPpxi6/6P5Ggwg5ojYkiy
	8nj1gLtrhlgAgbh45ybWuxY5DGVUCAiwek/em096mT3CFvnwnwqxuUWQQ2q7uIhmN3azHY9f1pX8t
	dbYOaZarlxc+oDILkvwQaDHBZCHg/HFv0HMREQuV/u9kCcgnW7zM3oS4rV5lUPwpp54QAwF6Srutr
	M7iLIQ7sB2foSML+Hx1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFEMG-00058J-GD; Tue, 01 Oct 2019 09:22:12 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFELE-0004A0-Tf
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 09:21:11 +0000
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by cheepnis.misterjones.org with esmtpsa
 (TLSv1.2:DHE-RSA-AES128-GCM-SHA256:128) (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1iFEL5-00019A-0W; Tue, 01 Oct 2019 11:20:59 +0200
From: Marc Zyngier <maz@kernel.org>
To: Paolo Bonzini <pbonzini@redhat.com>,
 =?UTF-8?q?Radim=20Kr=C4=8Dm=C3=A1=C5=99?= <rkrcmar@redhat.com>
Subject: [PATCH 0/4] KVM/arm updates for 5.4-rc2
Date: Tue,  1 Oct 2019 10:20:34 +0100
Message-Id: <20191001092038.17097-1-maz@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: pbonzini@redhat.com, rkrcmar@redhat.com, drjones@redhat.com,
 christoffer.dall@arm.com, yamada.masahiro@socionext.com, yuzenghui@huawei.com,
 james.morse@arm.com, julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com,
 linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_022109_113428_3DF16D47 
X-CRM114-Status: UNSURE (   9.64  )
X-CRM114-Notice: Please train this message.
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
Cc: Andrew Jones <drjones@redhat.com>, kvm@vger.kernel.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Christoffer Dall <christoffer.dall@arm.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org,
 Zenghui Yu <yuzenghui@huawei.com>, kvmarm@lists.cs.columbia.edu,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Paolo, Radim,

Here's the first set of KVM/arm fixes for 5.4. The first three patches
remove a construct which helped us bringing up VHE back in the days,
but which is now more of a confusing historical artefact, better
replaced with static keys that we already have. The last patch fixes
the ftrace include path that so far worked by luck (and has been
addressed in other places in the tree).

Please pull,

       M.

The following changes since commit 92f35b751c71d14250a401246f2c792e3aa5b386:

  KVM: arm/arm64: vgic: Allow more than 256 vcpus for KVM_IRQ_LINE (2019-09-09 12:29:09 +0100)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/kvmarm/kvmarm.git tags/kvmarm-fixes-5.4-1

for you to fetch changes up to aac60f1a867773de9eb164013d89c99f3ea1f009:

  KVM: arm/arm64: vgic: Use the appropriate TRACE_INCLUDE_PATH (2019-09-11 16:36:19 +0100)

----------------------------------------------------------------
KVM/arm fixes for 5.4, take #1

- Remove the now obsolete hyp_alternate_select construct
- Fix the TRACE_INCLUDE_PATH macro in the vgic code

----------------------------------------------------------------
Marc Zyngier (3):
      arm64: KVM: Drop hyp_alternate_select for checking for ARM64_WORKAROUND_834220
      arm64: KVM: Replace hyp_alternate_select with has_vhe()
      arm64: KVM: Kill hyp_alternate_select()

Zenghui Yu (1):
      KVM: arm/arm64: vgic: Use the appropriate TRACE_INCLUDE_PATH

 arch/arm64/include/asm/kvm_hyp.h | 24 ------------------------
 arch/arm64/kvm/hyp/switch.c      | 17 ++---------------
 arch/arm64/kvm/hyp/tlb.c         | 36 ++++++++++++++++++++++--------------
 virt/kvm/arm/vgic/trace.h        |  2 +-
 4 files changed, 25 insertions(+), 54 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
