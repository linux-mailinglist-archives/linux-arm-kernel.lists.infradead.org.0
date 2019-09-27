Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DFD89BFC65
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Sep 2019 02:26:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QG4ANfsPR/lH7LToDyoLUFDJEo4MOa2U31nDPmw+pNA=; b=rbbfCqXa2YKVZg
	PYzPP+eJWjxA+Gi/x04n60vMhaGDOaWvYikcw1jHkIGcEyN1eZtRYa3MLus3oFNewOcnbqrWqtJh5
	2gkdlOijLDtA/W6J84kzLpNAWdYxm4j7hZtTs4epJ5YS3cMFtPuoPnSEDiXB6LM9QDQ/9V5DWHp6M
	lmvC9w57f8sXvYwFFNsWr8j5NNwaXut9g758DLTZkaIYfKgMsc/hYUtMMKmxIuwvCqzyqeQnYHaRa
	XMu/WnT/B/JD/Q2Ao8nYS/qpWlDTCsLapNnryTkzvoa6pAUrjxacK6wzrdumkCC+asSiNQDHIJ4Ts
	wBWv7qEdLiE9HhjfAM2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDe5o-0006M6-BP; Fri, 27 Sep 2019 00:26:40 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDe4G-0004Ak-9u
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Sep 2019 00:25:06 +0000
Received: by mail-oi1-f196.google.com with SMTP id 83so3761093oii.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Sep 2019 17:25:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=80wnyFMJy45OToJ2Qn6gUBxEzekXteJX990/5YkKFnw=;
 b=FGt1vYtxnmHB191mUjGjgL7y/wa/EmIYReUby/gRISB7tfiM+eBaEchHmlfjivAzh0
 vFNZ6geKY4RFwgTIcA5ekvL0odzAQwVMCaKFdWOnXwzCGJSS8m2KFhNY/1Krn42wCSKM
 f46JRbqjmAf/HrvLhE2N1cxAZjy1NI4g+JyMo5oHQaYzbWwxq6kUvTjZ9b75KfHyLn6O
 9E11GVvHYRUFX5TW4sPbQjibXNPx185HsPGCJvTcoah7Umf88SENx7LqgL9Es4huh47j
 h62nK9D22GAMkitGBUJ5UlH9veqUnXoA9+yKvsu7vHBW9hNTx+Kwn7ojZZllE4a30XlF
 cG6g==
X-Gm-Message-State: APjAAAWXXknUu6AA79qdOybZMGT5seLVb9GIslJM/X/cgnc+xhN6ODMo
 C72RtrRN0VmNAjJRggfQjQ==
X-Google-Smtp-Source: APXvYqxz/X9nzzW8lZv2efDM6lGTA/yrwcSDDcujHOurhrkdl9XLDCRUqcE4TxLsZ4JMtZCq7n2nhA==
X-Received: by 2002:aca:703:: with SMTP id 3mr4647438oih.118.1569543903216;
 Thu, 26 Sep 2019 17:25:03 -0700 (PDT)
Received: from xps15.herring.priv (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.googlemail.com with ESMTPSA id j11sm339866otk.80.2019.09.26.17.25.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Sep 2019 17:25:02 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH 04/11] of/unittest: Add dma-ranges address translation tests
Date: Thu, 26 Sep 2019 19:24:48 -0500
Message-Id: <20190927002455.13169-5-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190927002455.13169-1-robh@kernel.org>
References: <20190927002455.13169-1-robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_172504_393159_BEA5B783 
X-CRM114-Status: GOOD (  19.28  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Florian Fainelli <f.fainelli@gmail.com>, Arnd Bergmann <arnd@arndb.de>,
 Frank Rowand <frowand.list@gmail.com>, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, Marek Vasut <marek.vasut@gmail.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Oza Pawandeep <oza.oza@broadcom.com>, Stefan Wahren <wahrenst@gmx.net>,
 Simon Horman <horms+renesas@verge.net.au>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Robin Murphy <robin.murphy@arm.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The functions for parsing 'dma-ranges' ranges are buggy and fail to
handle several conditions. Add new tests for of_dma_get_range() and
for_each_of_pci_range().

With this test, we get 5 new failures which are fixed in subsequent
commits:

OF: translation of DMA address(0) to CPU address failed node(/testcase-data/address-tests/device@70000000)
FAIL of_unittest_dma_ranges_one():798 of_dma_get_range failed on node /testcase-data/address-tests/device@70000000 rc=-22
OF: translation of DMA address(10000000) to CPU address failed node(/testcase-data/address-tests/bus@80000000/device@1000)
FAIL of_unittest_dma_ranges_one():798 of_dma_get_range failed on node /testcase-data/address-tests/bus@80000000/device@1000 rc=-22
OF: translation of DMA address(0) to CPU address failed node(/testcase-data/address-tests/pci@90000000)
FAIL of_unittest_dma_ranges_one():798 of_dma_get_range failed on node /testcase-data/address-tests/pci@90000000 rc=-22
FAIL of_unittest_pci_dma_ranges():851 for_each_of_pci_range wrong CPU addr (d0000000) on node /testcase-data/address-tests/pci@90000000
FAIL of_unittest_pci_dma_ranges():861 for_each_of_pci_range wrong CPU addr (ffffffffffffffff) on node /testcase-data/address-tests/pci@90000000

Cc: Robin Murphy <robin.murphy@arm.com>
Signed-off-by: Rob Herring <robh@kernel.org>
---
 drivers/of/unittest-data/testcases.dts      |  1 +
 drivers/of/unittest-data/tests-address.dtsi | 48 +++++++++++
 drivers/of/unittest.c                       | 92 +++++++++++++++++++++
 3 files changed, 141 insertions(+)
 create mode 100644 drivers/of/unittest-data/tests-address.dtsi

diff --git a/drivers/of/unittest-data/testcases.dts b/drivers/of/unittest-data/testcases.dts
index 55fe0ee20109..a85b5e1c381a 100644
--- a/drivers/of/unittest-data/testcases.dts
+++ b/drivers/of/unittest-data/testcases.dts
@@ -15,5 +15,6 @@
 #include "tests-phandle.dtsi"
 #include "tests-interrupts.dtsi"
 #include "tests-match.dtsi"
+#include "tests-address.dtsi"
 #include "tests-platform.dtsi"
 #include "tests-overlay.dtsi"
diff --git a/drivers/of/unittest-data/tests-address.dtsi b/drivers/of/unittest-data/tests-address.dtsi
new file mode 100644
index 000000000000..3fe5d3987beb
--- /dev/null
+++ b/drivers/of/unittest-data/tests-address.dtsi
@@ -0,0 +1,48 @@
+// SPDX-License-Identifier: GPL-2.0
+
+/ {
+	#address-cells = <1>;
+	#size-cells = <1>;
+
+	testcase-data {
+		#address-cells = <1>;
+		#size-cells = <1>;
+		ranges;
+
+		address-tests {
+			#address-cells = <1>;
+			#size-cells = <1>;
+			/* ranges here is to make sure we don't use it for
+			 * dma-ranges translation */
+			ranges = <0x70000000 0x70000000 0x40000000>,
+				 <0x00000000 0xd0000000 0x20000000>;
+			dma-ranges = <0x0 0x20000000 0x40000000>;
+
+			device@70000000 {
+				reg = <0x70000000 0x1000>;
+			};
+
+			bus@80000000 {
+				#address-cells = <1>;
+				#size-cells = <1>;
+				ranges = <0x0 0x80000000 0x100000>;
+				dma-ranges = <0x10000000 0x0 0x40000000>;
+
+				device@1000 {
+					reg = <0x1000 0x1000>;
+				};
+			};
+
+			pci@90000000 {
+				device_type = "pci";
+				#address-cells = <3>;
+				#size-cells = <2>;
+				reg = <0x90000000 0x1000>;
+				ranges = <0x42000000 0x0 0x40000000 0x40000000 0x0 0x10000000>;
+				dma-ranges = <0x42000000 0x0 0x80000000 0x00000000 0x0 0x10000000>,
+					     <0x42000000 0x0 0xc0000000 0x20000000 0x0 0x10000000>;
+			};
+
+		};
+	};
+};
diff --git a/drivers/of/unittest.c b/drivers/of/unittest.c
index e6b175370f2e..3969075194c5 100644
--- a/drivers/of/unittest.c
+++ b/drivers/of/unittest.c
@@ -12,6 +12,7 @@
 #include <linux/hashtable.h>
 #include <linux/libfdt.h>
 #include <linux/of.h>
+#include <linux/of_address.h>
 #include <linux/of_fdt.h>
 #include <linux/of_irq.h>
 #include <linux/of_platform.h>
@@ -779,6 +780,95 @@ static void __init of_unittest_changeset(void)
 #endif
 }
 
+static void __init of_unittest_dma_ranges_one(const char *path,
+		u64 expect_dma_addr, u64 expect_paddr, u64 expect_size)
+{
+	struct device_node *np;
+	u64 dma_addr, paddr, size;
+	int rc;
+
+	np = of_find_node_by_path(path);
+	if (!np) {
+		pr_err("missing testcase data\n");
+		return;
+	}
+
+	rc = of_dma_get_range(np, &dma_addr, &paddr, &size);
+
+	unittest(!rc, "of_dma_get_range failed on node %pOF rc=%i\n", np, rc);
+	if (!rc) {
+		unittest(size == expect_size,
+			 "of_dma_get_range wrong size on node %pOF size=%llx\n", np, size);
+		unittest(paddr == expect_paddr,
+			 "of_dma_get_range wrong phys addr (%llx) on node %pOF", paddr, np);
+		unittest(dma_addr == expect_dma_addr,
+			 "of_dma_get_range wrong DMA addr (%llx) on node %pOF", dma_addr, np);
+	}
+	of_node_put(np);
+}
+
+static void __init of_unittest_parse_dma_ranges(void)
+{
+	of_unittest_dma_ranges_one("/testcase-data/address-tests/device@70000000",
+		0x0, 0x20000000, 0x40000000);
+	of_unittest_dma_ranges_one("/testcase-data/address-tests/bus@80000000/device@1000",
+		0x10000000, 0x20000000, 0x40000000);
+	of_unittest_dma_ranges_one("/testcase-data/address-tests/pci@90000000",
+		0x80000000, 0x20000000, 0x10000000);
+}
+
+static void __init of_unittest_pci_dma_ranges(void)
+{
+	struct device_node *np;
+	struct of_pci_range range;
+	struct of_pci_range_parser parser;
+	int i = 0;
+
+	if (!IS_ENABLED(CONFIG_PCI))
+		return;
+
+	np = of_find_node_by_path("/testcase-data/address-tests/pci@90000000");
+	if (!np) {
+		pr_err("missing testcase data\n");
+		return;
+	}
+
+	if (of_pci_dma_range_parser_init(&parser, np)) {
+		pr_err("missing dma-ranges property\n");
+		return;
+	}
+
+	/*
+	 * Get the dma-ranges from the device tree
+	 */
+	for_each_of_pci_range(&parser, &range) {
+		if (!i) {
+			unittest(range.size == 0x10000000,
+				 "for_each_of_pci_range wrong size on node %pOF size=%llx\n",
+				 np, range.size);
+			unittest(range.cpu_addr == 0x20000000,
+				 "for_each_of_pci_range wrong CPU addr (%llx) on node %pOF",
+				 range.cpu_addr, np);
+			unittest(range.pci_addr == 0x80000000,
+				 "for_each_of_pci_range wrong DMA addr (%llx) on node %pOF",
+				 range.pci_addr, np);
+		} else {
+			unittest(range.size == 0x10000000,
+				 "for_each_of_pci_range wrong size on node %pOF size=%llx\n",
+				 np, range.size);
+			unittest(range.cpu_addr == 0x40000000,
+				 "for_each_of_pci_range wrong CPU addr (%llx) on node %pOF",
+				 range.cpu_addr, np);
+			unittest(range.pci_addr == 0xc0000000,
+				 "for_each_of_pci_range wrong DMA addr (%llx) on node %pOF",
+				 range.pci_addr, np);
+		}
+		i++;
+	}
+
+	of_node_put(np);
+}
+
 static void __init of_unittest_parse_interrupts(void)
 {
 	struct device_node *np;
@@ -2552,6 +2642,8 @@ static int __init of_unittest(void)
 	of_unittest_changeset();
 	of_unittest_parse_interrupts();
 	of_unittest_parse_interrupts_extended();
+	of_unittest_parse_dma_ranges();
+	of_unittest_pci_dma_ranges();
 	of_unittest_match_node();
 	of_unittest_platform_populate();
 	of_unittest_overlay();
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
