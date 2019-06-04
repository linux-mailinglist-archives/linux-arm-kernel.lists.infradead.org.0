Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87EE43480B
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 15:18:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GkG6q7OsRITeo8RckxbOyCD5dyJ8YuYF+lGHZI8gm3M=; b=Z5NdSem7hw9WyI
	Toih10i1K9D+YM299WrfReX1tRaIecnDz7mXr5UM3o6xSEppACqVMv/CcwwAICPrb4szMCSbPehpM
	egJ3X62KNsDxd+joLfzgNxmU72nzTBhcZltHjVKWuuWgxxLuQOty+dT6MlL1XMIUNwCU69BJKc5Rw
	dMlu8iUWuHlTfSd2S0N1jbX9kJUH+NsmOn00aH9vSO+HumK9N8zs6jbtzLXwLiMLTZvaGb9GLl1Q8
	HVoOAP+KwiLza9PAlLzLaLs9dzCo1cJmbyEEycXDhjAaF3Bz0GBIRX1/ZMFWx9FNKsjhyKPTqpRRB
	4p3XhB7Lc59nZn4fpqog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY9KH-0003Y8-Dg; Tue, 04 Jun 2019 13:18:05 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY9JV-0002ba-56; Tue, 04 Jun 2019 13:17:25 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x54DH7VO082207;
 Tue, 4 Jun 2019 08:17:07 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1559654227;
 bh=e/EjQX9i/htBJzCijizT4bdAgxYEeQVCmIjqYfmHN98=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=A/b5AGKll5b1g3p8YiRGH+nJa/6KNgdYLR+OlRQrOvNzuc6vOJtURGSBfW3vwnG3F
 d9ZIht57qyQqXJMjurt0mTkAb0/JmrxFNNaN75pKycq+VADfJmQfN9tBPgaSZNoRD4
 1nHjUmh2OGtlHs7C4htJEroOPxhCVyZabYLAC4AM=
Received: from DLEE107.ent.ti.com (dlee107.ent.ti.com [157.170.170.37])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x54DH7f6042336
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 4 Jun 2019 08:17:07 -0500
Received: from DLEE101.ent.ti.com (157.170.170.31) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 4 Jun
 2019 08:17:07 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE101.ent.ti.com
 (157.170.170.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 4 Jun 2019 08:17:07 -0500
Received: from a0393678ub.india.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x54DGdGK098972;
 Tue, 4 Jun 2019 08:17:02 -0500
From: Kishon Vijay Abraham I <kishon@ti.com>
To: Tom Joseph <tjoseph@cadence.com>, Bjorn Helgaas <bhelgaas@google.com>, Rob
 Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Lorenzo
 Pieralisi <lorenzo.pieralisi@arm.com>, Arnd Bergmann <arnd@arndb.de>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>
Subject: [RFC PATCH 04/30] dt-bindings: PCI: cadence: Update EP DT bindings
 with TI specific compatible
Date: Tue, 4 Jun 2019 18:44:50 +0530
Message-ID: <20190604131516.13596-5-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190604131516.13596-1-kishon@ti.com>
References: <20190604131516.13596-1-kishon@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_061718_253250_1ED85DCB 
X-CRM114-Status: GOOD (  13.28  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

Update DT bindings for Cadence PCIe Endpoint controller with TI specific
compatible.

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
---
 Documentation/devicetree/bindings/pci/cdns,cdns-pcie-ep.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/pci/cdns,cdns-pcie-ep.txt b/Documentation/devicetree/bindings/pci/cdns,cdns-pcie-ep.txt
index 4a0475e2ba7e..536aa4bf6ce3 100644
--- a/Documentation/devicetree/bindings/pci/cdns,cdns-pcie-ep.txt
+++ b/Documentation/devicetree/bindings/pci/cdns,cdns-pcie-ep.txt
@@ -2,6 +2,7 @@
 
 Required properties:
 - compatible: Should contain "cdns,cdns-pcie-ep" to identify the IP used.
+	      Should contain "ti,j721e-cdns-pcie-ep" for TI platforms.
 - reg: Should contain the controller register base address and AXI interface
   region base address respectively.
 - reg-names: Must be "reg" and "mem" respectively.
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
