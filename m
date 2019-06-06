Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E0933723E
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 12:58:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=oHL9tEdMySE7sxUblVDB80+OFzqSI1nyOHebHiRVJ+w=; b=rvv
	Tjq0FoA0rLVXZEuDL0LaGc0JU6DhPQhCvt0+tqfT9vK03pU36MyPfI/7Hi2uNHgfPKhQmE4lln/VR
	VEYpXnhqbnL0q+FsTP3/TYnI9bm5snxfpsNuEDG5F/DTEYx1F9Bo4AbkMHY7rmBLMH7fVDehGOAue
	8Q/0VCwxiHaOTPJLlOzB+eiS8WlhoXq08UIt/67v9x4T+SjtrWlJ7Cr0wSsfh2UG90Do4/DIHlSv1
	VCymcJW0Dwmi8fRBHDebLHDeYL73ayFLUtoP4DCzO+VMNQdy+eWnfwU33OHVFB5DfBSkWwimMfu1k
	HNEsN0r/nAfTtdpwJMHPrjxln52eNUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYq6B-0003Eo-OV; Thu, 06 Jun 2019 10:58:23 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYq64-0003Du-3e
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 10:58:17 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9BCF4A78;
 Thu,  6 Jun 2019 03:58:15 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 8108F3F690;
 Thu,  6 Jun 2019 03:58:14 -0700 (PDT)
From: Dave Martin <Dave.Martin@arm.com>
To: kvmarm@lists.cs.columbia.edu
Subject: [PATCH 0/2] KVM: arm/arm64: vgic: A couple of memory leak fixes
Date: Thu,  6 Jun 2019 11:58:06 +0100
Message-Id: <1559818688-20638-1-git-send-email-Dave.Martin@arm.com>
X-Mailer: git-send-email 2.1.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_035816_153760_F3E0AF9C 
X-CRM114-Status: GOOD (  10.88  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Marc Zyngier <marc.zyngier@arm.com>,
 Andre Przywara <andre.przywara@arm.com>,
 Christoffer Dall <christoffer.dall@arm.com>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

While using kmemleak to verify that the KVM SVE series wasn't
contributing any new memory leaks, I hit a couple of existing leaks to
do with vGIC irqs and the vGIC ITS that appear to have been there for
a while.

See the individual patches for details.

I'm not familiar with the affected code, so I may have overlooked
something.

Tested with qemu on ThunderX2.

Dave Martin (2):
  KVM: arm/arm64: vgic: Fix kvm_device leak in vgic_its_destroy
  KVM: arm/arm64: vgic: Fix irq refcount leak in kvm_vgic_set_owner()

 virt/kvm/arm/vgic/vgic-its.c | 1 +
 virt/kvm/arm/vgic/vgic.c     | 1 +
 2 files changed, 2 insertions(+)

-- 
2.1.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
