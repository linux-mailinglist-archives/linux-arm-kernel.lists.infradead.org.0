Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82E8F8E8AA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 11:57:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=6nm3x/kEE0ywJzJbRwxxEAO8up0+4fvOO2rVc59jZzs=; b=rEk
	s/EX1tVPLHTimAYJuxcp570V6L1c7NNjvGy253P2QgJIdY4PEA4cs8TlFmLsmelmI8c8hsmkTcqyI
	PkjoZPEV0oeNxdhbE8F9nAd3p24u0tZfUy+t+FZwlhnk3TvQqWx3vp9uM8RzqDuEmdP2kSew6X0C9
	ii725uUQD34U4yqs7TZr/wpsxIrRjR0PF+ntSfEc6GerDj+6MWR1j417TLpMOrtoWXZBPbxikvDmb
	O/UsKZRG3qhLOigzlbsi/he7xuTy7GB/wl7Yj3e76BVgvq+BPWsKYg7FIK6m02/mmp9EAHaloEmVk
	ACFxJG/1ZMawA6ImeCswX1rJPEPzqiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyCV5-00026G-Qc; Thu, 15 Aug 2019 09:56:56 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hyCUq-00025N-57
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 09:56:41 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B5B4F28;
 Thu, 15 Aug 2019 02:56:35 -0700 (PDT)
Received: from e121566-lin.cambridge.arm.com (e121566-lin.cambridge.arm.com
 [10.1.196.217])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 5F25D3F706;
 Thu, 15 Aug 2019 02:56:34 -0700 (PDT)
From: Alexandru Elisei <alexandru.elisei@arm.com>
To: linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org
Subject: [PATCH] KVM: arm/arm64: vgic: Make function comments match function
 declarations
Date: Thu, 15 Aug 2019 10:56:22 +0100
Message-Id: <1565862982-9787-1-git-send-email-alexandru.elisei@arm.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_025640_245792_BD1E86E5 
X-CRM114-Status: GOOD (  10.76  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: suzuki.poulose@arm.com, maz@kernel.org, eric.auger@redhat.com,
 julien.grall@arm.com, james.morse@arm.com, andre.przywara@arm.com,
 julien.thierry.kdev@gmail.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Since commit 503a62862e8f ("KVM: arm/arm64: vgic: Rely on the GIC driver to
parse the firmware tables"), the vgic_v{2,3}_probe functions stopped using
a DT node. Commit 909777324588 ("KVM: arm/arm64: vgic-new: vgic_init:
implement kvm_vgic_hyp_init") changed the functions again, and now they
require exactly one argument, a struct gic_kvm_info populated by the GIC
driver. Unfortunately the comments regressed and state that a DT node is
used instead. Change the function comments to reflect the current
prototypes.

Signed-off-by: Alexandru Elisei <alexandru.elisei@arm.com>
---
 virt/kvm/arm/vgic/vgic-v2.c | 7 ++++---
 virt/kvm/arm/vgic/vgic-v3.c | 7 ++++---
 2 files changed, 8 insertions(+), 6 deletions(-)

diff --git a/virt/kvm/arm/vgic/vgic-v2.c b/virt/kvm/arm/vgic/vgic-v2.c
index 96aab77d0471..27b1ddf71aa0 100644
--- a/virt/kvm/arm/vgic/vgic-v2.c
+++ b/virt/kvm/arm/vgic/vgic-v2.c
@@ -354,10 +354,11 @@ int vgic_v2_map_resources(struct kvm *kvm)
 DEFINE_STATIC_KEY_FALSE(vgic_v2_cpuif_trap);
 
 /**
- * vgic_v2_probe - probe for a GICv2 compatible interrupt controller in DT
- * @node:	pointer to the DT node
+ * vgic_v2_probe - probe for a VGICv2 compatible interrupt controller
+ * @info:	pointer to the GIC description
  *
- * Returns 0 if a GICv2 has been found, returns an error code otherwise
+ * Returns 0 if the VGICv2 has been probed successfully, returns an error code
+ * otherwise
  */
 int vgic_v2_probe(const struct gic_kvm_info *info)
 {
diff --git a/virt/kvm/arm/vgic/vgic-v3.c b/virt/kvm/arm/vgic/vgic-v3.c
index 0c653a1e5215..4874f3266bea 100644
--- a/virt/kvm/arm/vgic/vgic-v3.c
+++ b/virt/kvm/arm/vgic/vgic-v3.c
@@ -570,10 +570,11 @@ static int __init early_gicv4_enable(char *buf)
 early_param("kvm-arm.vgic_v4_enable", early_gicv4_enable);
 
 /**
- * vgic_v3_probe - probe for a GICv3 compatible interrupt controller in DT
- * @node:	pointer to the DT node
+ * vgic_v3_probe - probe for a VGICv3 compatible interrupt controller
+ * @info:	pointer to the GIC description
  *
- * Returns 0 if a GICv3 has been found, returns an error code otherwise
+ * Returns 0 if the VGICv3 has been probed successfully, returns an error code
+ * otherwise
  */
 int vgic_v3_probe(const struct gic_kvm_info *info)
 {
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
