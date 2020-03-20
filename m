Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D428C18D6F6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Mar 2020 19:26:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tLTU6Ld4rWML0J3KBJDxtlUHKgcViDKaKOfnhKgXUA8=; b=t/U0P8BZiSbRLe
	A/sbMKrp4ol8SU8pm5tpzTzsP4vgwiT+H03YDJ2j+BUQI9TRsRqGfS6o6iHOFun7eGg8wjkegNH3k
	EJajLbQoiVIKUbt81s6WGzQ3keXXwn8xB2mdeELedbvrEUWgxHisQzB/eE4cHfijyjcA405Vr7kUt
	oKvPw0g4sP4GAsHqTavOPeRoU2KBOyFk6PCOdd5Qo/UWeRRYjiIKeP78hMjIyy5DCdGH3daNXaqj9
	HMmDCiz5cKB9l2WFrgSvhfoiAuoh1v/IIdSCNiws9zVs9nf1rEUnlomHUI8r3h1zJ4J72pWibIskv
	6/eJI04AGD6OXHGyGJKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFMLY-0001A2-CM; Fri, 20 Mar 2020 18:26:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFMJy-0007Fj-Q1
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Mar 2020 18:24:40 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5777D2078B;
 Fri, 20 Mar 2020 18:24:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584728678;
 bh=vuPZljwBteLjDK5eXe0onSQ1DnagyIIgkFOp39/Z3Ew=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=CmPRl/+aHJJ/Sk+vWKTENNuV5fOwYi4zScQgJO6eRt6fGpV61SxzSJFHYddJ5hME8
 +0tKNduozV/rXDtW30k/7GQeuZ6ChCeAwQopXGO3SuS8LBQfxS8Ogy3XSqHjTZcqqF
 ddeEooINsfqn9EyIcIByNdG6zJEjRpw9tbHjFO3U=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jFMJw-00EKAx-KI; Fri, 20 Mar 2020 18:24:36 +0000
From: Marc Zyngier <maz@kernel.org>
To: linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v6 05/23] irqchip/gic-v4.1: Ensure mutual exclusion betwen
 invalidations on the same RD
Date: Fri, 20 Mar 2020 18:23:48 +0000
Message-Id: <20200320182406.23465-6-maz@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200320182406.23465-1-maz@kernel.org>
References: <20200320182406.23465-1-maz@kernel.org>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org,
 linux-kernel@vger.kernel.org, lorenzo.pieralisi@arm.com, jason@lakedaemon.net,
 tglx@linutronix.de, yuzenghui@huawei.com, eric.auger@redhat.com,
 james.morse@arm.com, julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_112438_894209_B17620DB 
X-CRM114-Status: GOOD (  13.38  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Jason Cooper <jason@lakedaemon.net>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Eric Auger <eric.auger@redhat.com>, James Morse <james.morse@arm.com>,
 Zenghui Yu <yuzenghui@huawei.com>, Thomas Gleixner <tglx@linutronix.de>,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The GICv4.1 spec says that it is CONTRAINED UNPREDICTABLE to write to
any of the GICR_INV{LPI,ALL}R registers if GICR_SYNCR.Busy == 1.

To deal with it, we must ensure that only a single invalidation can
happen at a time for a given redistributor. Add a per-RD lock to that
effect and take it around the invalidation/syncr-read to deal with this.

Signed-off-by: Marc Zyngier <maz@kernel.org>
Reviewed-by: Zenghui Yu <yuzenghui@huawei.com>
Reviewed-by: Eric Auger <eric.auger@redhat.com>
Link: https://lore.kernel.org/r/20200304203330.4967-6-maz@kernel.org
---
 drivers/irqchip/irq-gic-v3-its.c   | 6 ++++++
 drivers/irqchip/irq-gic-v3.c       | 1 +
 include/linux/irqchip/arm-gic-v3.h | 1 +
 3 files changed, 8 insertions(+)

diff --git a/drivers/irqchip/irq-gic-v3-its.c b/drivers/irqchip/irq-gic-v3-its.c
index c84370245bea..fc5788584df7 100644
--- a/drivers/irqchip/irq-gic-v3-its.c
+++ b/drivers/irqchip/irq-gic-v3-its.c
@@ -1373,10 +1373,12 @@ static void direct_lpi_inv(struct irq_data *d)
 
 	/* Target the redistributor this LPI is currently routed to */
 	cpu = irq_to_cpuid_lock(d, &flags);
+	raw_spin_lock(&gic_data_rdist_cpu(cpu)->rd_lock);
 	rdbase = per_cpu_ptr(gic_rdists->rdist, cpu)->rd_base;
 	gic_write_lpir(val, rdbase + GICR_INVLPIR);
 
 	wait_for_syncr(rdbase);
+	raw_spin_unlock(&gic_data_rdist_cpu(cpu)->rd_lock);
 	irq_to_cpuid_unlock(d, flags);
 }
 
@@ -3662,9 +3664,11 @@ static void its_vpe_send_inv(struct irq_data *d)
 		void __iomem *rdbase;
 
 		/* Target the redistributor this VPE is currently known on */
+		raw_spin_lock(&gic_data_rdist_cpu(vpe->col_idx)->rd_lock);
 		rdbase = per_cpu_ptr(gic_rdists->rdist, vpe->col_idx)->rd_base;
 		gic_write_lpir(d->parent_data->hwirq, rdbase + GICR_INVLPIR);
 		wait_for_syncr(rdbase);
+		raw_spin_unlock(&gic_data_rdist_cpu(vpe->col_idx)->rd_lock);
 	} else {
 		its_vpe_send_cmd(vpe, its_send_inv);
 	}
@@ -3825,10 +3829,12 @@ static void its_vpe_4_1_invall(struct its_vpe *vpe)
 	val |= FIELD_PREP(GICR_INVALLR_VPEID, vpe->vpe_id);
 
 	/* Target the redistributor this vPE is currently known on */
+	raw_spin_lock(&gic_data_rdist_cpu(vpe->col_idx)->rd_lock);
 	rdbase = per_cpu_ptr(gic_rdists->rdist, vpe->col_idx)->rd_base;
 	gic_write_lpir(val, rdbase + GICR_INVALLR);
 
 	wait_for_syncr(rdbase);
+	raw_spin_unlock(&gic_data_rdist_cpu(vpe->col_idx)->rd_lock);
 }
 
 static int its_vpe_4_1_set_vcpu_affinity(struct irq_data *d, void *vcpu_info)
diff --git a/drivers/irqchip/irq-gic-v3.c b/drivers/irqchip/irq-gic-v3.c
index b6b0f86584d6..0f716c2647fd 100644
--- a/drivers/irqchip/irq-gic-v3.c
+++ b/drivers/irqchip/irq-gic-v3.c
@@ -834,6 +834,7 @@ static int __gic_populate_rdist(struct redist_region *region, void __iomem *ptr)
 	typer = gic_read_typer(ptr + GICR_TYPER);
 	if ((typer >> 32) == aff) {
 		u64 offset = ptr - region->redist_base;
+		raw_spin_lock_init(&gic_data_rdist()->rd_lock);
 		gic_data_rdist_rd_base() = ptr;
 		gic_data_rdist()->phys_base = region->phys_base + offset;
 
diff --git a/include/linux/irqchip/arm-gic-v3.h b/include/linux/irqchip/arm-gic-v3.h
index c29a02678a6f..b28acfa71f82 100644
--- a/include/linux/irqchip/arm-gic-v3.h
+++ b/include/linux/irqchip/arm-gic-v3.h
@@ -652,6 +652,7 @@
 
 struct rdists {
 	struct {
+		raw_spinlock_t	rd_lock;
 		void __iomem	*rd_base;
 		struct page	*pend_page;
 		phys_addr_t	phys_base;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
