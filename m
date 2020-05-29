Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 158E51E8139
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 17:07:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MUTWVmMqjIetqgxUl6g4zZbWaLyCGFSjFloouXUohk8=; b=sxAT59yn0fvSAt
	ILyUsT/Y3opT5sAJ40SlrHShbid6uazW7fdATOy9XQkqCLd8UHcmlvFAsfKQ0RIQTB8+Lk2fWctiE
	wPjmAZkmS9h6PDzKSz7NAea9hS+cfQLbmHTur7B96Mvs1N1lsilrJAM73l34eorVwsY4qaf9tQaGN
	kyLgayKXfd2C0p7yjOdIlRSG2oxuNYBxqnkh7Eggr5CZQDZ9XRJoVm8y9yY2L9oUHxLGLYinWH5gs
	J1Q/T0/qv7KETi/+vL+QP6wCUEtWBv+dTAmmrRR21ttzmxVM8de28VZYT+TatXMTUVUdai/tKb7DT
	j97Zy4u/p0xSfeyRiE4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jegbN-0006iN-HG; Fri, 29 May 2020 15:07:17 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jegbC-0006hx-Jd
 for linux-arm-kernel@lists.infradead.org; Fri, 29 May 2020 15:07:07 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5B5CA1045;
 Fri, 29 May 2020 08:07:04 -0700 (PDT)
Received: from merodach.members.linode.com (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 89BE03F718;
 Fri, 29 May 2020 08:07:03 -0700 (PDT)
From: James Morse <james.morse@arm.com>
To: kvmarm@lists.cs.columbia.edu,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 0/3] KVM: arm64: aarch32 ACTLR accesses
Date: Fri, 29 May 2020 15:06:53 +0000
Message-Id: <20200529150656.7339-1-james.morse@arm.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_080706_688809_8D787302 
X-CRM114-Status: UNSURE (   9.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Marc Zyngier <maz@kernel.org>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello!

Changes since v1:
 * Patches 2 & 3 have been swapped.
 * Copy access_vm_reg() to swizzle 32bit offets back to 64bit
 * Peek at the encoding to tell ACTLR and ACTLR2 apart...

I didn't pick up the suggestion to remove the ACTLR_EL1 storage from
sys_regs[] as this turns out to break migration. Fixing it would require
a get_user() helper, which has a different prototype to access_actlr(),
would be noisier overall.

~

Patch 1 fixes an issue where the 32bit and 64bit indexes into copro[]
and sys_regs[] are muddled.

Patch 2 adds support for aarch32 accessing the top 32bits of ACTLR_EL1
via ACTLR2. Support for this register is advertised in ID_MMFR4.AC2, which
doesn't get removed by cpufeature. The register is mandatory from v8.2, but
imp-def before then.

Patch 3 stops the sys_regs[] value we use for emulation being save/restored.

I think Patch 1 is stable material, I'm not sure about 2&3.


Thanks,

James Morse (3):
  KVM: arm64: Stop writing aarch32's CSSELR into ACTLR
  KVM: arm64: Add emulation for 32bit guests accessing ACTLR2
  KVM: arm64: Stop save/restoring ACTLR_EL1

 arch/arm64/kvm/hyp/sysreg-sr.c       |  2 --
 arch/arm64/kvm/sys_regs.c            | 12 ++++++++----
 arch/arm64/kvm/sys_regs_generic_v8.c | 10 ++++++++++
 3 files changed, 18 insertions(+), 6 deletions(-)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
