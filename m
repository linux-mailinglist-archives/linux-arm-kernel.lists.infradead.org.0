Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8F601AD8A9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 10:33:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YhTxbhtY9EYiXNsdKpMZGVPHjCSUn+43TdSd32hyXoA=; b=XcOJe24UCtaMB4
	BB/H+4ek2CQwfGZfp3dSEK8ooaZdhDTL5XSQixeL0qfbpx3GXnEsJv+64f/hrF7MySRMn5dIwRLW5
	HaIIsn/Rut6RS6L6NknYvcrUio4Ue048A9IdDoqCazE2922YYIJLSlYDlq16lnzTvcfsMQ5rL4eBS
	VAG5YGj68HqATuQ5pChUdXTolN7vcZoNHdkIfS45y2sg7l4op9RRLqWILt086nDMB9IegSdP7sNZv
	3czXKJCnLF+d+lXQ2skP7zTdKnsfqimO85zz9ct2GJWq4TS6bIc9/OJ44N7oNAF/IbYpDJA5ZAn2K
	csOhe3bKqtZ8gdET7W+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPMRY-0001cc-Iy; Fri, 17 Apr 2020 08:33:48 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPMRN-0001bQ-Op
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 08:33:39 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 03FC22137B;
 Fri, 17 Apr 2020 08:33:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587112417;
 bh=ow4RCTCsHairYh31RKkXUJ67Orlffoz/KgRIiU9/xD0=;
 h=From:To:Cc:Subject:Date:From;
 b=AUYZg2TH0dZxNaOepILkxW+Ra012+kuvwrSXHloeyp4ALuW9GUq7t7hjc8bhCVi4c
 WBWhdY5bBSg/xFSQJxvaF4KuGC1220VTm0NzW4sm3XRWzoAeoaYvbEs9+AG7w+/PCp
 9cVVbvmAJlCdEIR34eUSduigKNatkMPUkXlFgHTc=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jPMRL-00473f-4u; Fri, 17 Apr 2020 09:33:35 +0100
From: Marc Zyngier <maz@kernel.org>
To: linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org
Subject: [PATCH v2 0/6] KVM: arm: vgic fixes for 5.7
Date: Fri, 17 Apr 2020 09:33:13 +0100
Message-Id: <20200417083319.3066217-1-maz@kernel.org>
X-Mailer: git-send-email 2.26.1
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org, yuzenghui@huawei.com,
 eric.auger@redhat.com, Andre.Przywara@arm.com, julien@xen.org,
 james.morse@arm.com, julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_013337_825705_4D811FB5 
X-CRM114-Status: GOOD (  14.34  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Julien Grall <julien@xen.org>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Andre Przywara <Andre.Przywara@arm.com>, Eric Auger <eric.auger@redhat.com>,
 James Morse <james.morse@arm.com>, Zenghui Yu <yuzenghui@huawei.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Here's a few vgic fixes I've been piling on during the merge window,
plus a couple that Zenghui contributed, and which I added to the mix.

The first patch is a silly off-by-one bug in the ACTIVE handling code,
where we miss fail to stop the guest if writing to the first set of
GICv2 SPIs. Oopsie boo.

The second patch improves the handling of the ACTIVE registers, which
we never synchronise on the read side (the distributor state can only
be updated when the vcpu exits). Let's fix it the same way we do it on
the write side (stop-the-world, read, restart). Yes, this is
expensive.

The following two patches deal with an issue where we consider the HW
state of an interrupt when responding to a userspace access. We should
never do this, as the guest shouldn't be running at this stage and if
it is, it is absolutely fine to return random bits to userspace. It
could also be that there is no active guest context at this stage, and
you end up with an Oops, which nobody really enjoys.

The last two patches fix a couple of memory leaks.

Marc Zyngier (4):
  KVM: arm: vgic: Fix limit condition when writing to GICD_I[CS]ACTIVER
  KVM: arm: vgic: Synchronize the whole guest on GIC{D,R}_I{S,C}ACTIVER
    read
  KVM: arm: vgic: Only use the virtual state when userspace accesses
    enable bits
  KVM: arm: vgic-v2: Only use the virtual state when userspace accesses
    pending bits

Zenghui Yu (2):
  KVM: arm64: vgic-v3: Retire all pending LPIs on vcpu destroy
  KVM: arm64: vgic-its: Fix memory leak on the error path of
    vgic_add_lpi()

 virt/kvm/arm/vgic/vgic-init.c    |   6 +
 virt/kvm/arm/vgic/vgic-its.c     |  11 +-
 virt/kvm/arm/vgic/vgic-mmio-v2.c |  16 ++-
 virt/kvm/arm/vgic/vgic-mmio-v3.c |  28 +++--
 virt/kvm/arm/vgic/vgic-mmio.c    | 183 +++++++++++++++++++++++++------
 virt/kvm/arm/vgic/vgic-mmio.h    |  19 ++++
 6 files changed, 207 insertions(+), 56 deletions(-)

-- 
2.26.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
