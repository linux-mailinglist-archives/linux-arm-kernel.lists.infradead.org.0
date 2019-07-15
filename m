Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7D0868FC0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jul 2019 16:16:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=2AFTNhfPaf5lvnilUY5mhmG1bvoxUUcz/wj5jyVFkqA=; b=AiU
	+O8k/jKwp5ZvbFIeBLjoMBXRAt1bMM/YmbhTQnp1tsYwm9tRZi73ChTvQKrSihibR05t+UV0D1W9x
	tOh/TyD4t7mWB0iApxKmJySNGhTqBslvmwWli/u5Tgasj+F3ypMjXdyin2J+bmcjUJr3YubX0ukyL
	HXyTdwAddmZGtg5iwAuWdPGr45WW7yYw9TWsLe/ADKHnl8AxPK8gUfmaRj0AQH+McaSY6TGvCb3Or
	QDC90ANaonlLQBQtCs9gEZb0xTMWwUq702Nq9I7rq56UwWUtc7qH7TOeL8UwvTrxkYqO/F4jY67gK
	yiPKwUIjRvYJO0PO38bjty9lRLmQraA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn1mV-0002WB-TY; Mon, 15 Jul 2019 14:16:44 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn1mI-0002Vf-7f
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jul 2019 14:16:31 +0000
Received: by mail-lj1-x242.google.com with SMTP id z28so16439797ljn.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jul 2019 07:16:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=semihalf-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id;
 bh=BYAFHd9zlAtd2xa3XOWV/zbnzstq1j4lmXv20sPh5gI=;
 b=LMQu+p91juO6CZOWACtq1a1WcxgHhNX7LYgPmvbjGCspegMU2wt9p7nF3vw5BosayV
 tI9PmUBUDq+lGUu/vyk7EEM7OZFBTHRUimWyyW59gvt4Hs9fBrMXeB5+4pWN1iUl+0CM
 8E/AauZkhnIExpCfk8ovMTPTS0hqZFOgqF9GyUM4Hwgeau4u8YS5KeamPZFFiTz+l9IS
 5EyuVEk0dMU/g5khI/cR1ubRiuUBwpa0IAYw150zoqDEz7B7Pyvbf+U7+iCyJAVjOKM9
 yqtS2Y7kdrYl7RL/J7xy/P4MbSo3GYPcrIrOlvvladmdchyj+rwS/qqrBgboOR/Yfmuj
 h8LQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=BYAFHd9zlAtd2xa3XOWV/zbnzstq1j4lmXv20sPh5gI=;
 b=sFzyzyunZgXkZZnITw9EAUQV9lMadIgrSpD5dhl3Q+VWRLPLjBSuK9eA37sH7jT801
 +ikWiUbAw91H3IHcAALXDoiQbI85QSb3fWepc9dV/AkdfxSKoy5/LKRLPNopKKMVpsBb
 IJ+UVffuhSzjLPN4MckxhIHFOJLPfV+ynVYJBmco4jr3/90Mfneh+k+3Z6hmaSx/O+np
 XD3CNb0uE7EAsSzWR/vIOv15U7nXCEdyYlHhQPd/6aUfLqtjcPBNgGFTn6jIal1Gs9UC
 cfvu7hVTBUYeC3fERWL9URBPJ+11VTQdgqfd/s/48pzu0TJImnZS2tFdPx6GNaMczKce
 yxdA==
X-Gm-Message-State: APjAAAWkq0hp2u0M/3SeabyYWuPjr3WoY1s4slMAiNbWhsScFSzt+yuQ
 jFSByD7q6cJWbCIJxY2aCD8=
X-Google-Smtp-Source: APXvYqy4dHpaZqJ4j++0qnAClEnt0wUAzLFJ4oyjt+DIoyObdoUl+ndR7VU8InxgTIe0wG1zSTJcWQ==
X-Received: by 2002:a2e:9c85:: with SMTP id x5mr14279928lji.139.1563200188039; 
 Mon, 15 Jul 2019 07:16:28 -0700 (PDT)
Received: from gilgamesh.semihalf.com (31-172-191-173.noc.fibertech.net.pl.
 [31.172.191.173])
 by smtp.gmail.com with ESMTPSA id o17sm3190612ljg.71.2019.07.15.07.16.27
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 15 Jul 2019 07:16:27 -0700 (PDT)
From: Grzegorz Jaszczyk <jaz@semihalf.com>
To: thomas.petazzoni@bootlin.com, lorenzo.pieralisi@arm.com,
 bhelgaas@google.com
Subject: [PATCH] PCI: pci-bridge-emul: fix big-endian support
Date: Mon, 15 Jul 2019 16:16:17 +0200
Message-Id: <1563200177-8380-1-git-send-email-jaz@semihalf.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_071630_273625_95E68565 
X-CRM114-Status: GOOD (  11.36  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
 drivers/pci/pci-bridge-emul.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/pci/pci-bridge-emul.c b/drivers/pci/pci-bridge-emul.c
index 83fb077..d1235d2 100644
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
@@ -357,7 +357,7 @@ int pci_bridge_emul_conf_read(struct pci_bridge_emul *bridge, int where,
 		ret = PCI_BRIDGE_EMUL_NOT_HANDLED;
 
 	if (ret == PCI_BRIDGE_EMUL_NOT_HANDLED)
-		*value = cfgspace[reg / 4];
+		*value = le32_to_cpu(cfgspace[reg / 4]);
 
 	/*
 	 * Make sure we never return any reserved bit with a value
@@ -431,7 +431,7 @@ int pci_bridge_emul_conf_write(struct pci_bridge_emul *bridge, int where,
 	/* Clear the W1C bits */
 	new &= ~((value << shift) & (behavior[reg / 4].w1c & mask));
 
-	cfgspace[reg / 4] = new;
+	cfgspace[reg / 4] = cpu_to_le32(new);
 
 	if (write_op)
 		write_op(bridge, reg, old, new, mask);
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
