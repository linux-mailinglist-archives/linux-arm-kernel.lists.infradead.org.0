Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27D6D78BBB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 14:26:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ruehqQrnOHqyI2mnlF7Xa7kpGN2hoZKa160B4Z/0css=; b=rfCqmiNPE5UU43
	ZcdoAn6jctDdJ6MAILCVuwl+VPiZYAZu4GDupJ+rLQclUBzgJ0aFFn+WTWzDOc1dJ/RXs/KLaVcLc
	IZDajgDEInXIWdpxcya8YzZG6hV0IOAqsY/7TGWg4BsOsrPteTllN16wSR8yz/LF11owiQ0VZRMcp
	Jw6VcKiP2ZLwc3LkwLrlLO6i2vAtyIbhSEe/2tV54KpckfWycrtCwomuEaxbI6eRJZzXGIQYsxL8c
	ORelMsD/+WkOCUAsVtRSsFoOAyVZBPsTrcf3USOmi/1UqAJpNlp0yXqkMIuC1YX15P1WPpD+PKEqd
	xPP2qU92TEoiYEeM+AiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs4jC-0005Yz-0s; Mon, 29 Jul 2019 12:26:10 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs4ir-0005Pb-B5
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 12:25:50 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x6TCPjoi003810;
 Mon, 29 Jul 2019 07:25:45 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1564403145;
 bh=PJa/9Tax5yKl1i4fRIcPDAyXEBQwswyCKJo1mCCoLUU=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=upE5Vxg+9kPGkd2QPRFNj6o+6rmFXqYwss0wxxWbEc5MTOerMKzXB0184AedYwB7A
 DmvC3RZ8tpdcbxnulgvaMUzHIqUwxTvKPvIT6pcs6G5D8W2ze6c3oUYgJfcrAYCy3i
 okjYBG42e3rKDPqXARNZF60kAfrmy+/fBuQ4S8H8=
Received: from DFLE106.ent.ti.com (dfle106.ent.ti.com [10.64.6.27])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x6TCPjlm089992
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 29 Jul 2019 07:25:45 -0500
Received: from DFLE107.ent.ti.com (10.64.6.28) by DFLE106.ent.ti.com
 (10.64.6.27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Mon, 29
 Jul 2019 07:25:45 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE107.ent.ti.com
 (10.64.6.28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Mon, 29 Jul 2019 07:25:45 -0500
Received: from uda0131933.india.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x6TCPbCE085709;
 Mon, 29 Jul 2019 07:25:43 -0500
From: Lokesh Vutla <lokeshvutla@ti.com>
To: Nishanth Menon <nm@ti.com>, Tero Kristo <t-kristo@ti.com>, Santosh
 Shilimkar <ssantosh@kernel.org>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v5 2/3] dt-bindings: ti_sci_pm_domains: Add support for
 exclusive and shared access
Date: Mon, 29 Jul 2019 17:54:52 +0530
Message-ID: <20190729122453.32252-3-lokeshvutla@ti.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190729122453.32252-1-lokeshvutla@ti.com>
References: <20190729122453.32252-1-lokeshvutla@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_052549_462032_8EA6E995 
X-CRM114-Status: GOOD (  15.75  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Lokesh Vutla <lokeshvutla@ti.com>,
 Device Tree Mailing List <devicetree@vger.kernel.org>,
 Sekhar Nori <nsekhar@ti.com>,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

TISCI protocol supports for enabling the device either with exclusive
permissions for the requesting host or with sharing across the hosts.
There are certain devices which are exclusive to Linux context and
there are certain devices that are shared across different host contexts.
So add support for getting this information from DT by increasing
the power-domain cells to 2.

Acked-by: Tero Kristo <t-kristo@ti.com>
Acked-by: Rob Herring <robh@kernel.org>
Reviewed-by: Nishanth Menon <nm@ti.com>
Signed-off-by: Lokesh Vutla <lokeshvutla@ti.com>
---
 .../devicetree/bindings/soc/ti/sci-pm-domain.txt      | 11 +++++++++--
 MAINTAINERS                                           |  1 +
 include/dt-bindings/soc/ti,sci_pm_domain.h            |  9 +++++++++
 3 files changed, 19 insertions(+), 2 deletions(-)
 create mode 100644 include/dt-bindings/soc/ti,sci_pm_domain.h

diff --git a/Documentation/devicetree/bindings/soc/ti/sci-pm-domain.txt b/Documentation/devicetree/bindings/soc/ti/sci-pm-domain.txt
index f7b00a7c0f68..f541d1f776a2 100644
--- a/Documentation/devicetree/bindings/soc/ti/sci-pm-domain.txt
+++ b/Documentation/devicetree/bindings/soc/ti/sci-pm-domain.txt
@@ -19,8 +19,15 @@ child of the pmmc node.
 Required Properties:
 --------------------
 - compatible: should be "ti,sci-pm-domain"
-- #power-domain-cells: Must be 1 so that an id can be provided in each
-		       device node.
+- #power-domain-cells: Can be one of the following:
+			1: Containing the device id of each node
+			2: First entry should be device id
+			   Second entry should be one of the floowing:
+			   TI_SCI_PD_EXCLUSIVE: To allow device to be
+						exclusively controlled by
+						the requesting hosts.
+			   TI_SCI_PD_SHARED: To allow device to be shared
+					     by multiple hosts.
 
 Example (K2G):
 -------------
diff --git a/MAINTAINERS b/MAINTAINERS
index 6426db5198f0..fe7406427023 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -15853,6 +15853,7 @@ F:	drivers/firmware/ti_sci*
 F:	include/linux/soc/ti/ti_sci_protocol.h
 F:	Documentation/devicetree/bindings/soc/ti/sci-pm-domain.txt
 F:	drivers/soc/ti/ti_sci_pm_domains.c
+F:	include/dt-bindings/soc/ti,sci_pm_domain.h
 F:	Documentation/devicetree/bindings/reset/ti,sci-reset.txt
 F:	Documentation/devicetree/bindings/clock/ti,sci-clk.txt
 F:	drivers/clk/keystone/sci-clk.c
diff --git a/include/dt-bindings/soc/ti,sci_pm_domain.h b/include/dt-bindings/soc/ti,sci_pm_domain.h
new file mode 100644
index 000000000000..8f2a7360b65e
--- /dev/null
+++ b/include/dt-bindings/soc/ti,sci_pm_domain.h
@@ -0,0 +1,9 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+
+#ifndef __DT_BINDINGS_TI_SCI_PM_DOMAIN_H
+#define __DT_BINDINGS_TI_SCI_PM_DOMAIN_H
+
+#define TI_SCI_PD_EXCLUSIVE	1
+#define TI_SCI_PD_SHARED	0
+
+#endif /* __DT_BINDINGS_TI_SCI_PM_DOMAIN_H */
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
