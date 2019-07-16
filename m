Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87B566A881
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jul 2019 14:14:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=ceMAPbE5XSHC87DD7CkkqWU8JjDx2vgH5fT3TM+vs5w=; b=pmr
	CQhiItAx4EwE2DNRz+BYoiBKXvhFMW1fYJM3yFTDY/lpWFEn/afOqJJF3KWhjORG41nrtEihjojGf
	jx5OBxJt3snE6G5JP3HZwtXSiqefQZdinokL+8Urni3oB77zFVSnUk8/Ox1GNKrZkE5EoC6sbRxKR
	JewPuHrT5i2q320M352S7Gb9xr3hhvks0ms/xsHYZz+Z0fgB2QiIsZ0o0/qDQpMe9H/CA4Yo5m2BA
	fPTvEgh+5nBvYfjZTWHVIDT+dbdigqmhmZMqAonDHSg7x3vaFYR0WAyMtOHDF3P3aT47pVNieKS8u
	qKt8L3zhqfgpUQpJtWa3koMZMpepVCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnMLl-0005nj-5E; Tue, 16 Jul 2019 12:14:29 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnMLX-0005mz-AQ
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jul 2019 12:14:16 +0000
Received: by mail-lj1-x244.google.com with SMTP id r9so19687453ljg.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jul 2019 05:14:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=semihalf-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id;
 bh=XXA3i8+Nc6F/Ijie1Lvzcra/IzyQeUusqyU7AWZrmic=;
 b=SnzFMNbrCkCgyi7qiZrKJbQD7kxkafz7qVBqXwa3s2K5NaF+UBfriTKd9tB4VhJ2/C
 X5CmnMdMO4afbUKB05GWYgdEu2hM+tjuiIr7G2uAuIrQOC2tEdqOk+10/D3QDanE/C6T
 QPerD+d6kTFgz/IJkGUEzgFxzMoehzvHTDxxG6n8p+TtxH44ugoQVEUd5C9sTKn5SxrU
 BAPxAQMSwDL6snPJgCmidB5UMxr0o/2BuQNQBXkqJJvYRkvLqeWNBhOOqekwj9iqUWQK
 ttOAsgIWYu06QXHZXvYsY9bh0TCNxqKO2Ci9kZ5iopWAMR8Mq1otqVP5xDw32o/DB4Rn
 YrEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=XXA3i8+Nc6F/Ijie1Lvzcra/IzyQeUusqyU7AWZrmic=;
 b=YTEzhqoKj+MRMb4df04YPeCLUSciW6SdclJpQ4QAr1un10//hFvVBSqMPA6akZCMl6
 Rq1I59BXEgPjmNUJF/wXetwYkTDFgG715p5REjnyxY3x8YMQwNpHtbuXkJHwgXuX8v3P
 s9WUrfK3JDr1auiARKW5PCHu3t1J3wxXWP76VQ4DaEQWj8YJXiNsmsgmGSzvAGXE7ICH
 ZBbGbOhqbf4uz7U2+0VO2Eh0BNIuppfLYFp8QpVn/gOaiWft6dmCGnCwkI0eR9RQG1sL
 k3UbvetbD7WhOolwkFRMDxzCSog/Dpp12pQ/nS2zwOYvm04sMVunW7G7znqwTAx4mVFM
 hpAg==
X-Gm-Message-State: APjAAAWuJ5DPvjB5jRXUmxj9IDiO0bGwfAq57Y+vm7+V8cLcOdY7Ufi6
 k2oFOdWo1823ouqVlecbOOU=
X-Google-Smtp-Source: APXvYqz3kEdGglwdQalP8h2GzG09cx7pJtIcmUim+oLC17V/ZWIPIL11UHTy6oMPn8jzp+uogPIkhw==
X-Received: by 2002:a2e:868e:: with SMTP id l14mr16996805lji.16.1563279253437; 
 Tue, 16 Jul 2019 05:14:13 -0700 (PDT)
Received: from gilgamesh.semihalf.com (31-172-191-173.noc.fibertech.net.pl.
 [31.172.191.173])
 by smtp.gmail.com with ESMTPSA id z17sm3702233ljc.37.2019.07.16.05.14.12
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 16 Jul 2019 05:14:12 -0700 (PDT)
From: Grzegorz Jaszczyk <jaz@semihalf.com>
To: thomas.petazzoni@bootlin.com, lorenzo.pieralisi@arm.com,
 bhelgaas@google.com
Subject: [PATCH v2] PCI: pci-bridge-emul: fix big-endian support
Date: Tue, 16 Jul 2019 14:13:46 +0200
Message-Id: <1563279226-30804-1-git-send-email-jaz@semihalf.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_051415_360372_E70D234B 
X-CRM114-Status: GOOD (  12.35  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-pci@vger.kernel.org, mw@semihalf.com,
 linux-arm-kernel@lists.infradead.org, Grzegorz Jaszczyk <jaz@semihalf.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Perform conversion to little-endian before every write to configuration
space and converse back to cpu endianness during read. Additionally
initialise every not-byte wide fields of config space with proper
cpu_to_le* macro.

This is required since the structure describing config space of emulated
bridge assumes little-endian convention.

Signed-off-by: Grzegorz Jaszczyk <jaz@semihalf.com>
---
v1->v2
- use __le32 and __le16 for config fields
- add missing cpu_to_le16 for pcie_conf.cap assignment
- use __le32 for cfgspace pointer
Issues with endianness were detected by Sparse tool recommended by Russell King.

 drivers/pci/pci-bridge-emul.c | 25 +++++++-------
 drivers/pci/pci-bridge-emul.h | 78 +++++++++++++++++++++----------------------
 2 files changed, 52 insertions(+), 51 deletions(-)

diff --git a/drivers/pci/pci-bridge-emul.c b/drivers/pci/pci-bridge-emul.c
index 83fb077..cfae566 100644
--- a/drivers/pci/pci-bridge-emul.c
+++ b/drivers/pci/pci-bridge-emul.c
@@ -270,10 +270,10 @@ const static struct pci_bridge_reg_behavior pcie_cap_regs_behavior[] = {
 int pci_bridge_emul_init(struct pci_bridge_emul *bridge,
 			 unsigned int flags)
 {
-	bridge->conf.class_revision |= PCI_CLASS_BRIDGE_PCI << 16;
+	bridge->conf.class_revision |= cpu_to_le32(PCI_CLASS_BRIDGE_PCI << 16);
 	bridge->conf.header_type = PCI_HEADER_TYPE_BRIDGE;
 	bridge->conf.cache_line_size = 0x10;
-	bridge->conf.status = PCI_STATUS_CAP_LIST;
+	bridge->conf.status = cpu_to_le16(PCI_STATUS_CAP_LIST);
 	bridge->pci_regs_behavior = kmemdup(pci_regs_behavior,
 					    sizeof(pci_regs_behavior),
 					    GFP_KERNEL);
@@ -284,8 +284,9 @@ int pci_bridge_emul_init(struct pci_bridge_emul *bridge,
 		bridge->conf.capabilities_pointer = PCI_CAP_PCIE_START;
 		bridge->pcie_conf.cap_id = PCI_CAP_ID_EXP;
 		/* Set PCIe v2, root port, slot support */
-		bridge->pcie_conf.cap = PCI_EXP_TYPE_ROOT_PORT << 4 | 2 |
-			PCI_EXP_FLAGS_SLOT;
+		bridge->pcie_conf.cap =
+			cpu_to_le16(PCI_EXP_TYPE_ROOT_PORT << 4 | 2 |
+				    PCI_EXP_FLAGS_SLOT);
 		bridge->pcie_cap_regs_behavior =
 			kmemdup(pcie_cap_regs_behavior,
 				sizeof(pcie_cap_regs_behavior),
@@ -327,7 +328,7 @@ int pci_bridge_emul_conf_read(struct pci_bridge_emul *bridge, int where,
 	int reg = where & ~3;
 	pci_bridge_emul_read_status_t (*read_op)(struct pci_bridge_emul *bridge,
 						 int reg, u32 *value);
-	u32 *cfgspace;
+	__le32 *cfgspace;
 	const struct pci_bridge_reg_behavior *behavior;
 
 	if (bridge->has_pcie && reg >= PCI_CAP_PCIE_END) {
@@ -343,11 +344,11 @@ int pci_bridge_emul_conf_read(struct pci_bridge_emul *bridge, int where,
 	if (bridge->has_pcie && reg >= PCI_CAP_PCIE_START) {
 		reg -= PCI_CAP_PCIE_START;
 		read_op = bridge->ops->read_pcie;
-		cfgspace = (u32 *) &bridge->pcie_conf;
+		cfgspace = (__le32 *) &bridge->pcie_conf;
 		behavior = bridge->pcie_cap_regs_behavior;
 	} else {
 		read_op = bridge->ops->read_base;
-		cfgspace = (u32 *) &bridge->conf;
+		cfgspace = (__le32 *) &bridge->conf;
 		behavior = bridge->pci_regs_behavior;
 	}
 
@@ -357,7 +358,7 @@ int pci_bridge_emul_conf_read(struct pci_bridge_emul *bridge, int where,
 		ret = PCI_BRIDGE_EMUL_NOT_HANDLED;
 
 	if (ret == PCI_BRIDGE_EMUL_NOT_HANDLED)
-		*value = cfgspace[reg / 4];
+		*value = le32_to_cpu(cfgspace[reg / 4]);
 
 	/*
 	 * Make sure we never return any reserved bit with a value
@@ -387,7 +388,7 @@ int pci_bridge_emul_conf_write(struct pci_bridge_emul *bridge, int where,
 	int mask, ret, old, new, shift;
 	void (*write_op)(struct pci_bridge_emul *bridge, int reg,
 			 u32 old, u32 new, u32 mask);
-	u32 *cfgspace;
+	__le32 *cfgspace;
 	const struct pci_bridge_reg_behavior *behavior;
 
 	if (bridge->has_pcie && reg >= PCI_CAP_PCIE_END)
@@ -414,11 +415,11 @@ int pci_bridge_emul_conf_write(struct pci_bridge_emul *bridge, int where,
 	if (bridge->has_pcie && reg >= PCI_CAP_PCIE_START) {
 		reg -= PCI_CAP_PCIE_START;
 		write_op = bridge->ops->write_pcie;
-		cfgspace = (u32 *) &bridge->pcie_conf;
+		cfgspace = (__le32 *) &bridge->pcie_conf;
 		behavior = bridge->pcie_cap_regs_behavior;
 	} else {
 		write_op = bridge->ops->write_base;
-		cfgspace = (u32 *) &bridge->conf;
+		cfgspace = (__le32 *) &bridge->conf;
 		behavior = bridge->pci_regs_behavior;
 	}
 
@@ -431,7 +432,7 @@ int pci_bridge_emul_conf_write(struct pci_bridge_emul *bridge, int where,
 	/* Clear the W1C bits */
 	new &= ~((value << shift) & (behavior[reg / 4].w1c & mask));
 
-	cfgspace[reg / 4] = new;
+	cfgspace[reg / 4] = cpu_to_le32(new);
 
 	if (write_op)
 		write_op(bridge, reg, old, new, mask);
diff --git a/drivers/pci/pci-bridge-emul.h b/drivers/pci/pci-bridge-emul.h
index e65b1b7..b318830 100644
--- a/drivers/pci/pci-bridge-emul.h
+++ b/drivers/pci/pci-bridge-emul.h
@@ -6,65 +6,65 @@
 
 /* PCI configuration space of a PCI-to-PCI bridge. */
 struct pci_bridge_emul_conf {
-	u16 vendor;
-	u16 device;
-	u16 command;
-	u16 status;
-	u32 class_revision;
+	__le16 vendor;
+	__le16 device;
+	__le16 command;
+	__le16 status;
+	__le32 class_revision;
 	u8 cache_line_size;
 	u8 latency_timer;
 	u8 header_type;
 	u8 bist;
-	u32 bar[2];
+	__le32 bar[2];
 	u8 primary_bus;
 	u8 secondary_bus;
 	u8 subordinate_bus;
 	u8 secondary_latency_timer;
 	u8 iobase;
 	u8 iolimit;
-	u16 secondary_status;
-	u16 membase;
-	u16 memlimit;
-	u16 pref_mem_base;
-	u16 pref_mem_limit;
-	u32 prefbaseupper;
-	u32 preflimitupper;
-	u16 iobaseupper;
-	u16 iolimitupper;
+	__le16 secondary_status;
+	__le16 membase;
+	__le16 memlimit;
+	__le16 pref_mem_base;
+	__le16 pref_mem_limit;
+	__le32 prefbaseupper;
+	__le32 preflimitupper;
+	__le16 iobaseupper;
+	__le16 iolimitupper;
 	u8 capabilities_pointer;
 	u8 reserve[3];
-	u32 romaddr;
+	__le32 romaddr;
 	u8 intline;
 	u8 intpin;
-	u16 bridgectrl;
+	__le16 bridgectrl;
 };
 
 /* PCI configuration space of the PCIe capabilities */
 struct pci_bridge_emul_pcie_conf {
 	u8 cap_id;
 	u8 next;
-	u16 cap;
-	u32 devcap;
-	u16 devctl;
-	u16 devsta;
-	u32 lnkcap;
-	u16 lnkctl;
-	u16 lnksta;
-	u32 slotcap;
-	u16 slotctl;
-	u16 slotsta;
-	u16 rootctl;
-	u16 rsvd;
-	u32 rootsta;
-	u32 devcap2;
-	u16 devctl2;
-	u16 devsta2;
-	u32 lnkcap2;
-	u16 lnkctl2;
-	u16 lnksta2;
-	u32 slotcap2;
-	u16 slotctl2;
-	u16 slotsta2;
+	__le16 cap;
+	__le32 devcap;
+	__le16 devctl;
+	__le16 devsta;
+	__le32 lnkcap;
+	__le16 lnkctl;
+	__le16 lnksta;
+	__le32 slotcap;
+	__le16 slotctl;
+	__le16 slotsta;
+	__le16 rootctl;
+	__le16 rsvd;
+	__le32 rootsta;
+	__le32 devcap2;
+	__le16 devctl2;
+	__le16 devsta2;
+	__le32 lnkcap2;
+	__le16 lnkctl2;
+	__le16 lnksta2;
+	__le32 slotcap2;
+	__le16 slotctl2;
+	__le16 slotsta2;
 };
 
 struct pci_bridge_emul;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
