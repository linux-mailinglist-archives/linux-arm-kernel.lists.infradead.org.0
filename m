Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D84786A877
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jul 2019 14:12:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=luv6Trp2vqp/vw/Qwx9flWlpQnejgmwxwqtlYaLP75c=; b=si4
	Uzec6uNptOvnKT1Dnma1O5AZlsPHoK38dpPLLZpjw8467brGD6ssiduJ1dO7S9kg0TsUTfXCPzwtu
	z6xUepnFtC8H7Qtv6tvPTQRFv8kUSaXFcN4VpykHRxgzuuydtQC5TfT/heX5Vv4vEJKREdVs37dNX
	S1CbKgCN//Z4QulkAMhF426HVEM9/a35qsnYtQjgymlCfTOAIzgrpTw8i/0Z9oFc5kGQE3Ti0SoG0
	JTLaj7/4O2u/+cc0O88Heo467Dn9M4Gk3UWsPRJcTKuBD6jfY0yHQR2mZyD3moCwpLq99bVBwGy8q
	i0FX73hlYYFIoqjh70xDOEmkhM7PUlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnMK3-0005RQ-UC; Tue, 16 Jul 2019 12:12:44 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnMJp-0005Qo-Oq
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jul 2019 12:12:31 +0000
Received: by mail-lj1-x243.google.com with SMTP id h10so19698013ljg.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jul 2019 05:12:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=semihalf-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id;
 bh=WpX1xHyb2syB7DhAC+5bjPw/GOH9wgJliuRiFw0hY0I=;
 b=NetrjaIoumh15csBDlGHraxCNdt3b6E2HGD5UhZ1c28OE0ThHFFMydi0hkj0v/IsuY
 8UGcqISsrRh2DIMxe4CF+66Gv+CcYpG/8xXdHYzEbYGsTKMWwb6gVHALk5MmNYU2kN+J
 npiTwyiCvO+uOmfn/ZDo5sk9iXuIO6fpf0DiJfu7Gc1znSCkUXN+gh+u0ykfz8SJScYi
 ev5DM+8E16XqNqmPyN7cUgVffAyAI+KjDoHTvNky1NzcVmQVrEJQUcrT9XXtEFNeVAgp
 7OIz/Kggk4/sKXc5EQ6EM8TvXwNzpOBIjK47GEKB8zVxfoRBTDZZUsDfbwLvKRYyuQDA
 Llrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=WpX1xHyb2syB7DhAC+5bjPw/GOH9wgJliuRiFw0hY0I=;
 b=o+3FQgIhYuZi6yhTatKEKzCGoN6sVTEdWghcqpHDnA5M+VxGFw16niTqMXX5mt0gBW
 +kuY4c3ZyhKceozGDMl5geDE4czW03qoPn4WNiuJKWldM1XwALNsIITBIbqd0v+G55i/
 bDdDQkJXlno8sAG/X/hZNRTvLyKaDPBLCUwKre2lrooJ2kttthyPG7LtBnsP74jyPbv8
 Yy7yc3SnQ2bvOYLK/rI5XQySqxyE2vmSarGN3j8KoLMgR1Au1O5YoEfF1qIUxEVF3/cn
 +uDS1kLB3vZbyOfVUaw/HPHZuwu15v2kcC/lksiNilHWfbqczzLAYI0Egd7u8gN7aKzI
 3oXg==
X-Gm-Message-State: APjAAAWpOeKJ3vlWFBc7PTEkdWlhR/VqC3nw8aEkYRY0H6lJHMhwfH5T
 oK4Kw6dYLy3SJSOhdW6tWDU=
X-Google-Smtp-Source: APXvYqxov8YbEH2Hj9OzytkWvkGe2wlhpFV9vYKxEBbvxMM3XkxRsv0rw+hl9A7CntUiKeWWdfwCxQ==
X-Received: by 2002:a2e:870f:: with SMTP id m15mr17402763lji.223.1563279145175; 
 Tue, 16 Jul 2019 05:12:25 -0700 (PDT)
Received: from gilgamesh.semihalf.com (31-172-191-173.noc.fibertech.net.pl.
 [31.172.191.173])
 by smtp.gmail.com with ESMTPSA id u9sm2818724lfb.38.2019.07.16.05.12.24
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 16 Jul 2019 05:12:24 -0700 (PDT)
From: Grzegorz Jaszczyk <jaz@semihalf.com>
To: thomas.petazzoni@bootlin.com, lorenzo.pieralisi@arm.com,
 bhelgaas@google.com
Subject: [PATCH v2] PCI: aardvark: fix big endian support
Date: Tue, 16 Jul 2019 14:12:07 +0200
Message-Id: <1563279127-30678-1-git-send-email-jaz@semihalf.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_051229_809832_C1786615 
X-CRM114-Status: GOOD (  10.79  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
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

Initialise every not-byte wide fields of emulated pci bridge config
space with proper cpu_to_le* macro. This is required since the structure
describing config space of emulated bridge assumes little-endian
convention.

Signed-off-by: Grzegorz Jaszczyk <jaz@semihalf.com>
---
v1->v2
- add missing cpu_to_le32 for class_revison assignment (issues found by
Thomas Petazzoni and also detected by Sparse tool).

 drivers/pci/controller/pci-aardvark.c | 12 +++++++-----
 1 file changed, 7 insertions(+), 5 deletions(-)

diff --git a/drivers/pci/controller/pci-aardvark.c b/drivers/pci/controller/pci-aardvark.c
index 134e030..178e92f 100644
--- a/drivers/pci/controller/pci-aardvark.c
+++ b/drivers/pci/controller/pci-aardvark.c
@@ -479,18 +479,20 @@ static void advk_sw_pci_bridge_init(struct advk_pcie *pcie)
 {
 	struct pci_bridge_emul *bridge = &pcie->bridge;
 
-	bridge->conf.vendor = advk_readl(pcie, PCIE_CORE_DEV_ID_REG) & 0xffff;
-	bridge->conf.device = advk_readl(pcie, PCIE_CORE_DEV_ID_REG) >> 16;
+	bridge->conf.vendor =
+		cpu_to_le16(advk_readl(pcie, PCIE_CORE_DEV_ID_REG) & 0xffff);
+	bridge->conf.device =
+		cpu_to_le16(advk_readl(pcie, PCIE_CORE_DEV_ID_REG) >> 16);
 	bridge->conf.class_revision =
-		advk_readl(pcie, PCIE_CORE_DEV_REV_REG) & 0xff;
+		cpu_to_le32(advk_readl(pcie, PCIE_CORE_DEV_REV_REG) & 0xff);
 
 	/* Support 32 bits I/O addressing */
 	bridge->conf.iobase = PCI_IO_RANGE_TYPE_32;
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
