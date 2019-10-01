Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15BAEC4405
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 00:50:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=D3WlLesdW+Bs5gas2RbJ8tBF/YKx+39LKpdksxirGMo=; b=ageuQNdvlWJ2645HDWtBXMrTMg
	+EdAAFN+a7IvlLgQz2tDWHBW8l1ULYE7krrKZgvaOs4uKYck47icOZdnr09tQaAB+v94d3xJodLNL
	+PcPeXMJPUZ7UOGRcJUk0ssM0tEiT/I/n3PfOvsq2Gq+H0r1eVE/vPFezSCTJOAYYnD/3DDU1pc9e
	kGUycnIn7TqcLQrP6SpdNE7Z64fM3ovNmTMQQxVcSlhBM6U3aIZ4djZM5wDQoTu8ZV//Oi3OdpFBm
	pfe55BwGIYw7tGekPmEgQg1iq8O0cOuwDj2lhfzjt4q6iovfMH34PrYia//EjrZeO16G6h9hp4pdQ
	F3lk4viQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFQxr-00061b-6n; Tue, 01 Oct 2019 22:49:51 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFQx2-0005Fb-3v; Tue, 01 Oct 2019 22:49:02 +0000
Received: by mail-pf1-x441.google.com with SMTP id q5so9147936pfg.13;
 Tue, 01 Oct 2019 15:48:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=6eYw60uWgiucpq0NsOdQOa275Rmsv5UQrIaWUqume84=;
 b=BndzLWYU3N0x4HupmZ04OhEWkaWRJjUwzb40jDKKddfi6Kj+aGjXSenJuPtrADlMpR
 AqKgvnuhBgO9GfuhkqjiJgNIBnXhYuK/Tf5ZFEqC6XUq1GgR7nxs61CBirFAmLoDHk2U
 iKjKMgh++1Bsh+iwebY/mMfG4B+o+EoaHCNhuX6PVzou5G+mEuxgBy3RE7+2lLdcQCY6
 DJUne1NRpmhA0RNd1gQM0dQUgyNp3y4NsxwHKY98MKjH1VyWRy2f3MENfrZnvARcvKry
 /cIpLUAAY1FCy6ZOoe0kRhEqbFphGs8+lAQcLtjQ37VB//s6iBO92Is8av4wopfvx96z
 tSWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=6eYw60uWgiucpq0NsOdQOa275Rmsv5UQrIaWUqume84=;
 b=K7/1nH79PXsuIiAXzKOZyG4UxGRquQ/n5mclRJQMnzll1dSZnUErqMxOQkmIAXjdjt
 isLySs7LIT+GsehlQheljD+QfiszAn/mbowCNP8Csgr0m988VSrxmBQO7XcnefCXqrC1
 RGqIFeWVN8S0UWnck8lsBlpRgqMZayyY10PC4r3SuyCNR+afoyX7I/b5zIBymc1tbuIJ
 8cgi5mUugJ5nJNipLS1UBtJpWMs4KA9zwNnrbk5nBnkfp43r0xIpJB8rI2NTYnhGLO+t
 8WyWGhuVdpMvl+aXaPRBb2ysYpnm5iYNm1r9hBiQSA/QN+3wOtLs9hienpp+fgvBk3jf
 P2Yw==
X-Gm-Message-State: APjAAAWbMQuNRD4XVn9EuPlh6J18/KRG6qhLeujJmGKWUGqPc+mE3Cvw
 WxUl7o+oo5/tPeOjfd9MOCA=
X-Google-Smtp-Source: APXvYqztuMn8by8WrfkDSgfAbRBAuNf4fTFiNyfi8g3wBSmKTIuh1Wkid7GbwPKuMueG659hiJVUig==
X-Received: by 2002:a65:49c5:: with SMTP id t5mr233139pgs.373.1569970139174;
 Tue, 01 Oct 2019 15:48:59 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id c128sm20913506pfc.166.2019.10.01.15.48.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 01 Oct 2019 15:48:58 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 3/7] irqchip/irq-bcm2835: Add support for 7211 interrupt
 controller
Date: Tue,  1 Oct 2019 15:48:38 -0700
Message-Id: <20191001224842.9382-4-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191001224842.9382-1-f.fainelli@gmail.com>
References: <20191001224842.9382-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_154900_171535_C8692BDD 
X-CRM114-Status: GOOD (  18.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Florian Fainelli <f.fainelli@gmail.com>,
 Jason Cooper <jason@lakedaemon.net>, Scott Branden <sbranden@broadcom.com>,
 Marc Zyngier <maz@kernel.org>, Eric Anholt <eric@anholt.net>,
 Rob Herring <robh+dt@kernel.org>,
 "maintainer:BROADCOM BCM281XX/BCM11XXX/BCM216XX ARM ARCHITE..."
 <bcm-kernel-feedback-list@broadcom.com>, Stefan Wahren <wahrenst@gmx.net>,
 Ray Jui <rjui@broadcom.com>, Thomas Gleixner <tglx@linutronix.de>,
 "moderated list:BROADCOM BCM2835 ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 "moderated list:BROADCOM BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

BCM7211 has a number of similarities with BCM2836, except the register
offsets are different and the bank bits are also different, account for
all of these differences.

Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 drivers/irqchip/irq-bcm2835.c | 86 +++++++++++++++++++++++++++++------
 1 file changed, 72 insertions(+), 14 deletions(-)

diff --git a/drivers/irqchip/irq-bcm2835.c b/drivers/irqchip/irq-bcm2835.c
index 418245d31921..55afc3487723 100644
--- a/drivers/irqchip/irq-bcm2835.c
+++ b/drivers/irqchip/irq-bcm2835.c
@@ -57,19 +57,34 @@
 #define SHORTCUT_SHIFT		10
 #define BANK1_HWIRQ		BIT(8)
 #define BANK2_HWIRQ		BIT(9)
+#define BANK1_HWIRQ_BCM7211	BIT(24)
+#define BANK2_HWIRQ_BCM7211	BIT(25)
 #define BANK0_VALID_MASK	(BANK0_HWIRQ_MASK | BANK1_HWIRQ | BANK2_HWIRQ \
 					| SHORTCUT1_MASK | SHORTCUT2_MASK)
+#define BANK0_VALID_MASK_BCM7211 (BANK0_HWIRQ_MASK | BANK1_HWIRQ_BCM7211 | \
+				  BANK2_HWIRQ_BCM7211 | SHORTCUT1_MASK | \
+				  SHORTCUT2_MASK)
 
 #define REG_FIQ_CONTROL		0x0c
 
 #define NR_BANKS		3
 #define IRQS_PER_BANK		32
 
+enum armctrl_type {
+	ARMCTRL_BCM2835 = 0,
+	ARMCTRL_BCM2836,
+	ARMCTRL_BCM7211
+};
+
 static const int reg_pending[] __initconst = { 0x00, 0x04, 0x08 };
 static const int reg_enable[] __initconst = { 0x18, 0x10, 0x14 };
 static const int reg_disable[] __initconst = { 0x24, 0x1c, 0x20 };
 static const int bank_irqs[] __initconst = { 8, 32, 32 };
 
+static const int reg_pending_bcm7211[] __initconst = { 0x08, 0x00, 0x04 };
+static const int reg_enable_bcm7211[] __initconst = { 0x18, 0x10, 0x14 };
+static const int reg_disable_bcm7211[] __initconst = { 0x28, 0x20, 0x24 };
+
 static const int shortcuts[] = {
 	7, 9, 10, 18, 19,		/* Bank 1 */
 	21, 22, 23, 24, 25, 30		/* Bank 2 */
@@ -87,6 +102,7 @@ static struct armctrl_ic intc __read_mostly;
 static void __exception_irq_entry bcm2835_handle_irq(
 	struct pt_regs *regs);
 static void bcm2836_chained_handle_irq(struct irq_desc *desc);
+static void bcm7211_chained_handle_irq(struct irq_desc *desc);
 
 static void armctrl_mask_irq(struct irq_data *d)
 {
@@ -131,11 +147,14 @@ static const struct irq_domain_ops armctrl_ops = {
 
 static int __init armctrl_of_init(struct device_node *node,
 				  struct device_node *parent,
-				  bool is_2836)
+				  enum armctrl_type type)
 {
 	void __iomem *base;
 	int irq, b, i;
 
+	if (type > ARMCTRL_BCM7211)
+		return -EINVAL;
+
 	base = of_iomap(node, 0);
 	if (!base)
 		panic("%pOF: unable to map IC registers\n", node);
@@ -146,9 +165,19 @@ static int __init armctrl_of_init(struct device_node *node,
 		panic("%pOF: unable to create IRQ domain\n", node);
 
 	for (b = 0; b < NR_BANKS; b++) {
-		intc.pending[b] = base + reg_pending[b];
-		intc.enable[b] = base + reg_enable[b];
-		intc.disable[b] = base + reg_disable[b];
+		if (type <= ARMCTRL_BCM2836) {
+			intc.pending[b] = base + reg_pending[b];
+			intc.enable[b] = base + reg_enable[b];
+			intc.disable[b] = base + reg_disable[b];
+		} else {
+			intc.pending[b] = base + reg_pending_bcm7211[b];
+			intc.enable[b] = base + reg_enable_bcm7211[b];
+			intc.disable[b] = base + reg_disable_bcm7211[b];
+		}
+
+		if (type == ARMCTRL_BCM7211)
+			armctrl_chip.flags |= IRQCHIP_MASK_ON_SUSPEND |
+					      IRQCHIP_SKIP_SET_WAKE;
 
 		for (i = 0; i < bank_irqs[b]; i++) {
 			irq = irq_create_mapping(intc.domain, MAKE_HWIRQ(b, i));
@@ -159,14 +188,19 @@ static int __init armctrl_of_init(struct device_node *node,
 		}
 	}
 
-	if (is_2836) {
+	if (type >= ARMCTRL_BCM2836) {
 		int parent_irq = irq_of_parse_and_map(node, 0);
 
 		if (!parent_irq) {
 			panic("%pOF: unable to get parent interrupt.\n",
 			      node);
 		}
-		irq_set_chained_handler(parent_irq, bcm2836_chained_handle_irq);
+		if (type == ARMCTRL_BCM2836)
+			irq_set_chained_handler(parent_irq,
+						bcm2836_chained_handle_irq);
+		else
+			irq_set_chained_handler(parent_irq,
+						bcm7211_chained_handle_irq);
 	} else {
 		set_handle_irq(bcm2835_handle_irq);
 	}
@@ -177,13 +211,19 @@ static int __init armctrl_of_init(struct device_node *node,
 static int __init bcm2835_armctrl_of_init(struct device_node *node,
 					  struct device_node *parent)
 {
-	return armctrl_of_init(node, parent, false);
+	return armctrl_of_init(node, parent, ARMCTRL_BCM2835);
 }
 
 static int __init bcm2836_armctrl_of_init(struct device_node *node,
 					  struct device_node *parent)
 {
-	return armctrl_of_init(node, parent, true);
+	return armctrl_of_init(node, parent, ARMCTRL_BCM2836);
+}
+
+static int __init bcm7211_armctrl_of_init(struct device_node *node,
+					  struct device_node *parent)
+{
+	return armctrl_of_init(node, parent, ARMCTRL_BCM7211);
 }
 
 
@@ -205,9 +245,11 @@ static u32 armctrl_translate_shortcut(int bank, u32 stat)
 	return MAKE_HWIRQ(bank, shortcuts[ffs(stat >> SHORTCUT_SHIFT) - 1]);
 }
 
-static u32 get_next_armctrl_hwirq(void)
+static u32 get_next_armctrl_hwirq(u32 valid_mask,
+				  u32 bank1_mask,
+				  u32 bank2_mask)
 {
-	u32 stat = readl_relaxed(intc.pending[0]) & BANK0_VALID_MASK;
+	u32 stat = readl_relaxed(intc.pending[0]) & valid_mask;
 
 	if (stat == 0)
 		return ~0;
@@ -217,9 +259,9 @@ static u32 get_next_armctrl_hwirq(void)
 		return armctrl_translate_shortcut(1, stat & SHORTCUT1_MASK);
 	else if (stat & SHORTCUT2_MASK)
 		return armctrl_translate_shortcut(2, stat & SHORTCUT2_MASK);
-	else if (stat & BANK1_HWIRQ)
+	else if (stat & bank1_mask)
 		return armctrl_translate_bank(1);
-	else if (stat & BANK2_HWIRQ)
+	else if (stat & bank2_mask)
 		return armctrl_translate_bank(2);
 	else
 		BUG();
@@ -230,7 +272,9 @@ static void __exception_irq_entry bcm2835_handle_irq(
 {
 	u32 hwirq;
 
-	while ((hwirq = get_next_armctrl_hwirq()) != ~0)
+	while ((hwirq = get_next_armctrl_hwirq(BANK0_VALID_MASK,
+					       BANK1_HWIRQ,
+					       BANK2_HWIRQ)) != ~0)
 		handle_domain_irq(intc.domain, hwirq, regs);
 }
 
@@ -238,7 +282,19 @@ static void bcm2836_chained_handle_irq(struct irq_desc *desc)
 {
 	u32 hwirq;
 
-	while ((hwirq = get_next_armctrl_hwirq()) != ~0)
+	while ((hwirq = get_next_armctrl_hwirq(BANK0_VALID_MASK,
+					       BANK1_HWIRQ,
+					       BANK2_HWIRQ)) != ~0)
+		generic_handle_irq(irq_linear_revmap(intc.domain, hwirq));
+}
+
+static void bcm7211_chained_handle_irq(struct irq_desc *desc)
+{
+	u32 hwirq;
+
+	while ((hwirq = get_next_armctrl_hwirq(BANK0_VALID_MASK_BCM7211,
+					       BANK1_HWIRQ_BCM7211,
+					       BANK2_HWIRQ_BCM7211)) != ~0)
 		generic_handle_irq(irq_linear_revmap(intc.domain, hwirq));
 }
 
@@ -246,3 +302,5 @@ IRQCHIP_DECLARE(bcm2835_armctrl_ic, "brcm,bcm2835-armctrl-ic",
 		bcm2835_armctrl_of_init);
 IRQCHIP_DECLARE(bcm2836_armctrl_ic, "brcm,bcm2836-armctrl-ic",
 		bcm2836_armctrl_of_init);
+IRQCHIP_DECLARE(bcm7211_armctrl_ic, "brcm,bcm7211-armctrl-ic",
+		bcm7211_armctrl_of_init);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
