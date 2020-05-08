Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BF5C1CAE03
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 May 2020 15:08:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uo4SQZz539i4fEQYHztjdEFWbmVRv+/X208R2SARdQM=; b=pBI0rW1YfSjj6n
	gbJSM7OzGOHbBy2CIbK/iJKbRYvW7gXECDnPODHLS7rXVKWSllaJ5biMNmSd3B/aG/SAbtb+L6aL6
	Nc9HkEpSx/JfqcNBhhm2yXz97BE7ZM4IT1q7HLeBfI0UEFc0tjAhrDGg8JxsDJNFRjruIudOePV8B
	aVlNDZa1G/xxN4XeAlt/jLQFKC7Rk5yBUQ4YhLNqmLqzb6EgN8XBZsa5vjo6VIoJKRMwzsxjGd3RW
	iURKYPH/HsZfnj1Zg7YOodyMCFOA0H7fAV15RyKKFVBTLzSyEU7QTBwrIE0wFs4OwwqPl2UPS7eRq
	O4Jqw8VADsZMJVnE9Vjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jX2jo-0002Oc-QL; Fri, 08 May 2020 13:08:24 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jX2ia-0001a7-3e
 for linux-arm-kernel@lists.infradead.org; Fri, 08 May 2020 13:07:09 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 048D70F9024868;
 Fri, 8 May 2020 08:07:00 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1588943220;
 bh=9OzK3cQ79vBtHjYhXF7SZZ/2/l/Kv3M5T/+KgLUKvlA=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=L577MJo6qayHav2G4S58GJbhUHozlXmfu5TOzzGjtYSV3s9EDMKaVl+5ib9LgzJd8
 MQxIXWavf6SgoYrb778kQuGriJH9PolZ+1YJ65Gs4p86Fux3wFko0FiVDPJD2yu2Up
 lzctd0+DSbq4o1xgEpXNguVaSKexgUPpX/x8woXY=
Received: from DFLE103.ent.ti.com (dfle103.ent.ti.com [10.64.6.24])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 048D70E4007596
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 8 May 2020 08:07:00 -0500
Received: from DFLE115.ent.ti.com (10.64.6.36) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Fri, 8 May
 2020 08:07:00 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE115.ent.ti.com
 (10.64.6.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Fri, 8 May 2020 08:07:00 -0500
Received: from a0393678ub.india.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 048D6kYn018673;
 Fri, 8 May 2020 08:06:57 -0500
From: Kishon Vijay Abraham I <kishon@ti.com>
To: Bjorn Helgaas <bhelgaas@google.com>, Rob Herring <robh+dt@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Robin Murphy
 <robin.murphy@arm.com>, Tom Joseph <tjoseph@cadence.com>
Subject: [PATCH v3 3/4] PCI: cadence: Fix to read 32-bit Vendor ID/Device ID
 property from DT
Date: Fri, 8 May 2020 18:36:45 +0530
Message-ID: <20200508130646.23939-4-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200508130646.23939-1-kishon@ti.com>
References: <20200508130646.23939-1-kishon@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200508_060708_256493_A9831EA7 
X-CRM114-Status: GOOD (  13.93  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
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

The PCI Bus Binding specification (IEEE Std 1275-1994 Revision 2.1 [1])
defines both Vendor ID and Device ID to be 32-bits. Fix
pcie-cadence-host.c driver to read 32-bit Vendor ID and Device ID
properties from device tree.

[1] -> https://www.devicetree.org/open-firmware/bindings/pci/pci2_1.pdf

Acked-by: Rob Herring <robh@kernel.org>
Acked-by: Tom Joseph <tjoseph@cadence.com>
Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
---
 drivers/pci/controller/cadence/pcie-cadence-host.c | 4 ++--
 drivers/pci/controller/cadence/pcie-cadence.h      | 4 ++--
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/pci/controller/cadence/pcie-cadence-host.c b/drivers/pci/controller/cadence/pcie-cadence-host.c
index 079692aa4da1..6ecebb79057a 100644
--- a/drivers/pci/controller/cadence/pcie-cadence-host.c
+++ b/drivers/pci/controller/cadence/pcie-cadence-host.c
@@ -243,10 +243,10 @@ int cdns_pcie_host_setup(struct cdns_pcie_rc *rc)
 	of_property_read_u32(np, "cdns,no-bar-match-nbits", &rc->no_bar_nbits);
 
 	rc->vendor_id = 0xffff;
-	of_property_read_u16(np, "vendor-id", &rc->vendor_id);
+	of_property_read_u32(np, "vendor-id", &rc->vendor_id);
 
 	rc->device_id = 0xffff;
-	of_property_read_u16(np, "device-id", &rc->device_id);
+	of_property_read_u32(np, "device-id", &rc->device_id);
 
 	res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "reg");
 	pcie->reg_base = devm_ioremap_resource(dev, res);
diff --git a/drivers/pci/controller/cadence/pcie-cadence.h b/drivers/pci/controller/cadence/pcie-cadence.h
index cf1afd85c2f5..f349f5828a58 100644
--- a/drivers/pci/controller/cadence/pcie-cadence.h
+++ b/drivers/pci/controller/cadence/pcie-cadence.h
@@ -277,8 +277,8 @@ struct cdns_pcie_rc {
 	struct resource		*bus_range;
 	void __iomem		*cfg_base;
 	u32			no_bar_nbits;
-	u16			vendor_id;
-	u16			device_id;
+	u32			vendor_id;
+	u32			device_id;
 };
 
 /**
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
