Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F9CA348C8
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 15:33:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ruzwBD/tc0DFIkfJP+tJjGZhY6juhGOg+3b7T7Hl/Z4=; b=IcbEMZKCtfxP0u
	PMMTAYlQAtIfV56sbteyb3UlSd2rTyUAyiS1+yrmOJ0z42tf8JrV3MwedAPSXU8kg3F4gMQSBhrV3
	nIFldV2In+y1uMwzhqRk3LQJ55kPaIQ5ofe6jDWlNKnX0ABo2lIFB+rlIQQVhXyUTMX0Rd8PH624W
	rhSuLoBLxauT1w+Vw7K+M4vdP59yP7KYwa9MTl98d9LSJtzdSBF56avXjQWj5C9G/oZW5LDwUm09l
	4slB4NYNlzlM7ZbgQku2UInAiDxhU2RRCXmQEJdj/j0ep++kckZHGvvzpGYkIIMDI2MePggVae9V6
	p79s5/wX4OCs1gGmpC5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY9Yd-00056m-3K; Tue, 04 Jun 2019 13:32:55 +0000
Received: from casper.infradead.org ([85.118.1.10])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY9YT-0004zj-U0; Tue, 04 Jun 2019 13:32:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3n/NPRvTT89PgySVskuNWjndH1F40Ia1pZk9UsW5BCI=; b=K4gJoLIv9Rr3V5TJG8AlvQ0bn
 zs5kqHftkF33LgcaNqf14O1xR5K4WJyyU+VQm+tZVlrnblDdNN2WuXfc126/yz1EjViNSibtvisBF
 UItSWfhFd0Q1rGTMo8X/jLQK2/8RVBW9la2uxGjVQwoF/lnv893tMVOkvrsiuGA/146APEZxR1rdE
 zCiH3PnbXYsBWEFA4+P/JcV0Qj+RbYHVgld0o0/TRueluH7P83vLxBWnQo7JBoDFgfVdlGDTSls1H
 4o7zF6g4o6SMwx1bLd0qye1YYBNM1saNrWKLmUtk//z8lUeh6cf3DnqYbgq2z286EH1W2Xaxp5WsS
 Z+4h6QgeA==;
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY9LX-0004LH-UV; Tue, 04 Jun 2019 13:19:25 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x54DJFGm092289;
 Tue, 4 Jun 2019 08:19:15 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1559654355;
 bh=3n/NPRvTT89PgySVskuNWjndH1F40Ia1pZk9UsW5BCI=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=E53A6REaVamWm7/Cz6dmCEO34zntfqY+qTM/hDMIZMbqGh3TalqDHLs6jlsnj+u0c
 Wrt5Nx87IPIY5dJf6E3Hx4UUAYuTmBq6xcHN+3g3FTNIY2dg0wVHodX9H28VJPBAtR
 3+eyHQw42AIFlskSF3krPhGNuKKrht/wfWVY7cUQ=
Received: from DFLE105.ent.ti.com (dfle105.ent.ti.com [10.64.6.26])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x54DJFPe054834
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 4 Jun 2019 08:19:15 -0500
Received: from DFLE111.ent.ti.com (10.64.6.32) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 4 Jun
 2019 08:19:15 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE111.ent.ti.com
 (10.64.6.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 4 Jun 2019 08:19:15 -0500
Received: from a0393678ub.india.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x54DGdGh098972;
 Tue, 4 Jun 2019 08:19:10 -0500
From: Kishon Vijay Abraham I <kishon@ti.com>
To: Tom Joseph <tjoseph@cadence.com>, Bjorn Helgaas <bhelgaas@google.com>, Rob
 Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Lorenzo
 Pieralisi <lorenzo.pieralisi@arm.com>, Arnd Bergmann <arnd@arndb.de>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>
Subject: [RFC PATCH 27/30] misc: pci_endpoint_test: Add J721E in pci_device_id
 table
Date: Tue, 4 Jun 2019 18:45:13 +0530
Message-ID: <20190604131516.13596-28-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190604131516.13596-1-kishon@ti.com>
References: <20190604131516.13596-1-kishon@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_141924_202086_87B8F098 
X-CRM114-Status: GOOD (  12.24  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-2.5 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, Jingoo Han <jingoohan1@gmail.com>,
 linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-rockchip@lists.infradead.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-omap@vger.kernel.org,
 Frank Rowand <frowand.list@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add J721E in pci_device_id table so that pci-epf-test can be used
for testing PCIe EP in J721E.

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
---
 drivers/misc/pci_endpoint_test.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/misc/pci_endpoint_test.c b/drivers/misc/pci_endpoint_test.c
index 7b015f2a1c6f..98a60f4d45a1 100644
--- a/drivers/misc/pci_endpoint_test.c
+++ b/drivers/misc/pci_endpoint_test.c
@@ -75,6 +75,7 @@
 #define PCI_ENDPOINT_TEST_IRQ_TYPE		0x24
 #define PCI_ENDPOINT_TEST_IRQ_NUMBER		0x28
 
+#define PCI_DEVICE_ID_TI_J721E			0xb00d
 #define PCI_DEVICE_ID_TI_AM654			0xb00c
 
 #define is_am654_pci_dev(pdev)		\
@@ -800,6 +801,11 @@ static const struct pci_endpoint_test_data am654_data = {
 	.irq_type = IRQ_TYPE_MSI,
 };
 
+static const struct pci_endpoint_test_data j721e_data = {
+	.alignment = 256,
+	.irq_type = IRQ_TYPE_MSI,
+};
+
 static const struct pci_device_id pci_endpoint_test_tbl[] = {
 	{ PCI_DEVICE(PCI_VENDOR_ID_TI, PCI_DEVICE_ID_TI_DRA74x) },
 	{ PCI_DEVICE(PCI_VENDOR_ID_TI, PCI_DEVICE_ID_TI_DRA72x) },
@@ -808,6 +814,9 @@ static const struct pci_device_id pci_endpoint_test_tbl[] = {
 	{ PCI_DEVICE(PCI_VENDOR_ID_TI, PCI_DEVICE_ID_TI_AM654),
 	  .driver_data = (kernel_ulong_t)&am654_data
 	},
+	{ PCI_DEVICE(PCI_VENDOR_ID_TI, PCI_DEVICE_ID_TI_J721E),
+	  .driver_data = (kernel_ulong_t)&j721e_data,
+	},
 	{ }
 };
 MODULE_DEVICE_TABLE(pci, pci_endpoint_test_tbl);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
