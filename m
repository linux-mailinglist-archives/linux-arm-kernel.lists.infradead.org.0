Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E08B91CAE02
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 May 2020 15:08:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aOjjKl+aM7/2WYkw7rGgajArhnhjw6t6eSsLMdVoq/o=; b=IhDBx1hcjVugzZ
	6GE9zxMDwofuf5eiVJmdbVwyOC6sPzPD/txNUfLrGuzlH67zUJ2VzJz7/Q20HBlrwiMOpnV+w9dNk
	JnwLbotpq+iu3odDjRYRVPEHAJoh1gZOApFGyyMhSx69hQxMyxOG2YeHRiufIp4mmrbHhM+VPD2Gy
	Vy8TRAC8Ct4mdO6iy23R7WVtFMEQPtf7Vf6mG561YsJCAeOwi3H3W5gGuRP8mXxpQEnAKMzwstaTf
	N4+OCiY+Kseo3iliUK+QZy9ySFhCMrDaykSNilYYGaEVbfxxLmJisMHCtXAJbmpqx+psosEGvvky3
	kTpwdh03iVCBSd9GfJ3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jX2ja-00026g-En; Fri, 08 May 2020 13:08:10 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jX2iW-0001YU-6c
 for linux-arm-kernel@lists.infradead.org; Fri, 08 May 2020 13:07:06 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 048D6vGc082832;
 Fri, 8 May 2020 08:06:57 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1588943217;
 bh=u2mvYMRrFerGW2wl1QCxHV1orEWryyhjOCrVBc6sKOU=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=eSNLHz0dvEr0b+XTqR5qDNsGIzQyLZUHNm6KXPiFykSXesosekROV+VgLL1MagaGv
 PHU7HCVEkPXC4gad6dZ6Ywcl1btVQfnzWCaOebLpMmWxGlx8uhHjF2lIp0s2/4GPEQ
 nSVyVzEV9Av4hql+iViHeadY3rcKR0iKZ4SWku48=
Received: from DLEE103.ent.ti.com (dlee103.ent.ti.com [157.170.170.33])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 048D6v38103741
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 8 May 2020 08:06:57 -0500
Received: from DLEE101.ent.ti.com (157.170.170.31) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Fri, 8 May
 2020 08:06:56 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE101.ent.ti.com
 (157.170.170.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Fri, 8 May 2020 08:06:56 -0500
Received: from a0393678ub.india.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 048D6kYm018673;
 Fri, 8 May 2020 08:06:54 -0500
From: Kishon Vijay Abraham I <kishon@ti.com>
To: Bjorn Helgaas <bhelgaas@google.com>, Rob Herring <robh+dt@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Robin Murphy
 <robin.murphy@arm.com>, Tom Joseph <tjoseph@cadence.com>
Subject: [PATCH v3 2/4] PCI: cadence: Remove "cdns,
 max-outbound-regions" DT property
Date: Fri, 8 May 2020 18:36:44 +0530
Message-ID: <20200508130646.23939-3-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200508130646.23939-1-kishon@ti.com>
References: <20200508130646.23939-1-kishon@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200508_060704_321682_F06C6C80 
X-CRM114-Status: GOOD (  13.35  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-pci@vger.kernel.org, kishon@ti.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

"cdns,max-outbound-regions" device tree property provides the
maximum number of outbound regions supported by the Host PCIe
controller. However the outbound regions are configured based
on what is populated in the "ranges" DT property.

Avoid using two properties for configuring outbound regions and
use only "ranges" property instead.

Acked-by: Rob Herring <robh@kernel.org>
Acked-by: Tom Joseph <tjoseph@cadence.com>
Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
---
 drivers/pci/controller/cadence/pcie-cadence-host.c | 6 ------
 drivers/pci/controller/cadence/pcie-cadence.h      | 2 --
 2 files changed, 8 deletions(-)

diff --git a/drivers/pci/controller/cadence/pcie-cadence-host.c b/drivers/pci/controller/cadence/pcie-cadence-host.c
index 597b61e6cc4b..079692aa4da1 100644
--- a/drivers/pci/controller/cadence/pcie-cadence-host.c
+++ b/drivers/pci/controller/cadence/pcie-cadence-host.c
@@ -146,9 +146,6 @@ static int cdns_pcie_host_init_address_translation(struct cdns_pcie_rc *rc)
 	for_each_of_pci_range(&parser, &range) {
 		bool is_io;
 
-		if (r >= rc->max_regions)
-			break;
-
 		if ((range.flags & IORESOURCE_TYPE_BITS) == IORESOURCE_MEM)
 			is_io = false;
 		else if ((range.flags & IORESOURCE_TYPE_BITS) == IORESOURCE_IO)
@@ -242,9 +239,6 @@ int cdns_pcie_host_setup(struct cdns_pcie_rc *rc)
 	pcie = &rc->pcie;
 	pcie->is_rc = true;
 
-	rc->max_regions = 32;
-	of_property_read_u32(np, "cdns,max-outbound-regions", &rc->max_regions);
-
 	rc->no_bar_nbits = 32;
 	of_property_read_u32(np, "cdns,no-bar-match-nbits", &rc->no_bar_nbits);
 
diff --git a/drivers/pci/controller/cadence/pcie-cadence.h b/drivers/pci/controller/cadence/pcie-cadence.h
index ecb159dba6f6..cf1afd85c2f5 100644
--- a/drivers/pci/controller/cadence/pcie-cadence.h
+++ b/drivers/pci/controller/cadence/pcie-cadence.h
@@ -266,7 +266,6 @@ struct cdns_pcie {
  * @bus_range: first/last buses behind the PCIe host controller
  * @cfg_base: IO mapped window to access the PCI configuration space of a
  *            single function at a time
- * @max_regions: maximum number of regions supported by the hardware
  * @no_bar_nbits: Number of bits to keep for inbound (PCIe -> CPU) address
  *                translation (nbits sets into the "no BAR match" register)
  * @vendor_id: PCI vendor ID
@@ -277,7 +276,6 @@ struct cdns_pcie_rc {
 	struct resource		*cfg_res;
 	struct resource		*bus_range;
 	void __iomem		*cfg_base;
-	u32			max_regions;
 	u32			no_bar_nbits;
 	u16			vendor_id;
 	u16			device_id;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
