Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D76168F98
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jul 2019 16:16:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=3D8o5fhnqPqHYXu0AvOWghVdcZ8uxZF3+026NQzuTfM=; b=Yib
	NmcKyV52J7i3qwBG+dx7n6KFh/SDBhKsLvZPXFk1kUQIzWyvUk6YHBnWr8EnXZ980xuVXoZ4CfuFI
	Whg22/PcVmJnUnLyGliOqyeUOkbXLmg4u5zRpvQVuZyhSlNNzdVYlTSJw0FUtgqAvgRdtm9Vxh3pE
	JEOwygfvdWnlmneA6nXC3A62F/ZvpbRP5OWZxLXuRjp0bd2hJvSoHz52gmNIS2hqMZIbY405kmfv3
	EqTpuV3aKmuw2U4Z+yNj65gcQnvBEJfa3Q7U8qh4U3wzdpTJFAPEdcvJfZi334A7nW7PUd/S9XFZr
	TSfKubuYZDaT0ZDwIps4afcNExFmBXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn1lq-00029u-26; Mon, 15 Jul 2019 14:16:02 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn1lc-000294-Qu
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jul 2019 14:15:50 +0000
Received: by mail-lj1-x243.google.com with SMTP id h10so16400266ljg.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jul 2019 07:15:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=semihalf-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id;
 bh=W+qk5OnSKLZ1W0b2CWtyeg4mP08iNsbFE5IgLVqWcUc=;
 b=j0SfsQte78cK9hbAhj79vvGVSTrc2dngg0iU0JoRrc0iQM7bJk0AuWcFbNsoTZZz2q
 BB8rEZwcXgja1dD0KLstxyqZasNSJ+SSgzghdlDewpRKkiCSuuX2gwLRm0sWFCeAsTzy
 jKj0AJnb++vzbJnm7TbBXpI6Hdz+WIp25loiYjRYZ1cApyX0TUSs8UT9M6uenIz3hLbk
 d6xMqdygpWwh4AdjVYhXgmEsWCsb/rmf+Gfmn7qAPBMoKL0cm6cn+8Rq+Rune2ED0/vD
 gsGlv/BvnazEnQzkBSB9yDyW7Wv9JyZW4fWoR4teb2JnBHWKTPGYQ7tjLHN/0bBvG/FZ
 wRVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=W+qk5OnSKLZ1W0b2CWtyeg4mP08iNsbFE5IgLVqWcUc=;
 b=rgT1976EGY+C8IHqlkeFi9+JD2yXseW35pl18FQ7HZxDpm1H4Uy4/65mtvYlpF65Li
 U0p/rOMWJ//klzSQECerUwqRUouIICklDY732uvixuFU7kYDBjapCxCmiCIX2pv3aOzA
 Bjlcm73adpPFu2DRncvq1l+u6YzImJIWhcwGKspzDsRVqdPIqyNLKJRJDHCn2QqZh5cB
 qb/yJFNHzxVgCNqVT3alHlpfB9mgyPgCYAJuBou+MHImL3VJrjBQ+8Nc13vmSHImItP5
 EGhd1jtV4PfTs5QBIHkrkKVXpa6nrCNKtKzdwJoBbOAH66SnMuAvOa1qSV3FPRQwo7p6
 7G8Q==
X-Gm-Message-State: APjAAAX1RI3YEg1f6PCQFEQSMKlK7CeP0NF2IhFv2NEVy6N5wMAHt0JC
 YnS/peg0G2RRJEJy0mlVDmk=
X-Google-Smtp-Source: APXvYqzAfg0cKEaU6tGImHXKQpAH3vstfYCt2zgZXZGOBqeH+wJYNSJDV9XiP5gQt1Al6Ut9gQXbTQ==
X-Received: by 2002:a2e:3c1a:: with SMTP id j26mr14271444lja.230.1563200146300; 
 Mon, 15 Jul 2019 07:15:46 -0700 (PDT)
Received: from gilgamesh.semihalf.com (31-172-191-173.noc.fibertech.net.pl.
 [31.172.191.173])
 by smtp.gmail.com with ESMTPSA id s20sm2326646lfb.95.2019.07.15.07.15.45
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 15 Jul 2019 07:15:45 -0700 (PDT)
From: Grzegorz Jaszczyk <jaz@semihalf.com>
To: thomas.petazzoni@bootlin.com, lorenzo.pieralisi@arm.com,
 bhelgaas@google.com
Subject: [PATCH] PCI: aardvark: fix big endian support
Date: Mon, 15 Jul 2019 16:15:22 +0200
Message-Id: <1563200122-8323-1-git-send-email-jaz@semihalf.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_071549_015585_AED9984A 
X-CRM114-Status: GOOD (  11.68  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
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

Initialise every not-byte wide fields of emulated pci bridge config
space with proper cpu_to_le* macro. This is required since the structure
describing config space of emulated bridge assumes little-endian
convention.

Signed-off-by: Grzegorz Jaszczyk <jaz@semihalf.com>
---
 drivers/pci/controller/pci-aardvark.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/pci/controller/pci-aardvark.c b/drivers/pci/controller/pci-aardvark.c
index 134e030..06a12749 100644
--- a/drivers/pci/controller/pci-aardvark.c
+++ b/drivers/pci/controller/pci-aardvark.c
@@ -479,8 +479,10 @@ static void advk_sw_pci_bridge_init(struct advk_pcie *pcie)
 {
 	struct pci_bridge_emul *bridge = &pcie->bridge;
 
-	bridge->conf.vendor = advk_readl(pcie, PCIE_CORE_DEV_ID_REG) & 0xffff;
-	bridge->conf.device = advk_readl(pcie, PCIE_CORE_DEV_ID_REG) >> 16;
+	bridge->conf.vendor =
+		cpu_to_le16(advk_readl(pcie, PCIE_CORE_DEV_ID_REG) & 0xffff);
+	bridge->conf.device =
+		cpu_to_le16(advk_readl(pcie, PCIE_CORE_DEV_ID_REG) >> 16);
 	bridge->conf.class_revision =
 		advk_readl(pcie, PCIE_CORE_DEV_REV_REG) & 0xff;
 
@@ -489,8 +491,8 @@ static void advk_sw_pci_bridge_init(struct advk_pcie *pcie)
 	bridge->conf.iolimit = PCI_IO_RANGE_TYPE_32;
 
 	/* Support 64 bits memory pref */
-	bridge->conf.pref_mem_base = PCI_PREF_RANGE_TYPE_64;
-	bridge->conf.pref_mem_limit = PCI_PREF_RANGE_TYPE_64;
+	bridge->conf.pref_mem_base = cpu_to_le16(PCI_PREF_RANGE_TYPE_64);
+	bridge->conf.pref_mem_limit = cpu_to_le16(PCI_PREF_RANGE_TYPE_64);
 
 	/* Support interrupt A for MSI feature */
 	bridge->conf.intpin = PCIE_CORE_INT_A_ASSERT_ENABLE;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
