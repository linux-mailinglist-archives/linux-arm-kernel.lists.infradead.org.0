Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57174348D1
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 15:33:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZpDk3KFi7yL/qLjhimLUczfcDqo1UYhovcQQ8b+/7bA=; b=OP67B+n05KZpW4
	kWKGWc8xOWz4jV+w2FkJ/3ZeYSeieYJXMgFEHepB74+h3S9kYqZo6K+xfhsJQTa53AsBiQmUTJKK9
	KOKuBK0NROk042+Gf3fq2bojvTnQg55PJ0bAGTXc9aiQjcSmnvSQQ6o067UCqwzGoAHUyidaAQcEA
	0p/a3mJ50/Un65a82D0ZZA5kou8lahl5SJRFfZHmsp/Lk8e0SBeBXnWTB3biezcFSqn0I3o6sqxR5
	sHPQNNz7hjrXtXhtexUjKt4+60upuEsrVIMhLbZyJSxVydnBHC39D0NUB16RKQ4Y/Yh3cZ2OnJBXc
	WgvwS/v1+H9hs54fqbXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY9ZF-00061K-U7; Tue, 04 Jun 2019 13:33:33 +0000
Received: from casper.infradead.org ([85.118.1.10])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY9YX-0004oD-SC; Tue, 04 Jun 2019 13:32:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=A1e4i3JXTGF5KqEnqJblhBzQo0a5PhT1C6gt15QrFqM=; b=dFSOv2d9OeltRzgqBSmxGVFSi
 Q0MzARetKdZ3gWmhCgAkWX+ci6TnB9zNqlg32xEnH0Qz0JRzDh6psvkxlL2HWdNZfCoFwMkFArKHd
 sCMu3+2RB6H1yeGMxm6HgmYMEBRiHtrGl2CT382XnDsZ5pQZJKBntqgoCwznA4XuKysL+rDQXBo2U
 31LmvlU+XAc8JZ8tC10fq20vHEOmvgf13aopG8dJA2pY6niaLBm2x9zVXkl9mQhH3eK3oDZQi+Igf
 zO1jfhPUMde0hv8mNq6I4I6z24Iv0GVcvj/dBTTvXErQDXo7O7RGeyc/LV1Gr0q9A61yGq8VG40vd
 RHB37y8gg==;
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY9L7-0004Gs-5n; Tue, 04 Jun 2019 13:18:59 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x54DIlQV028229;
 Tue, 4 Jun 2019 08:18:47 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1559654327;
 bh=A1e4i3JXTGF5KqEnqJblhBzQo0a5PhT1C6gt15QrFqM=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=KEFWasOiIKb8vqmQe82XGw9RwsDQAOM9j+AmROXwTFSQODUVNDgZrKFM+Q/wYkfMN
 aMC5++WST/g4Y/LAl7colTxb5MX0VeH4+/ldbUS/mhwYKUyU5HP1URDqe4+t4tDPtq
 dNFjjWVS5DmERnQ2PcM0zlqNkK1cQ9GO/J6xrTz8=
Received: from DFLE101.ent.ti.com (dfle101.ent.ti.com [10.64.6.22])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x54DIlLx009840
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 4 Jun 2019 08:18:47 -0500
Received: from DFLE113.ent.ti.com (10.64.6.34) by DFLE101.ent.ti.com
 (10.64.6.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 4 Jun
 2019 08:18:47 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE113.ent.ti.com
 (10.64.6.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 4 Jun 2019 08:18:47 -0500
Received: from a0393678ub.india.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x54DGdGc098972;
 Tue, 4 Jun 2019 08:18:42 -0500
From: Kishon Vijay Abraham I <kishon@ti.com>
To: Tom Joseph <tjoseph@cadence.com>, Bjorn Helgaas <bhelgaas@google.com>, Rob
 Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Lorenzo
 Pieralisi <lorenzo.pieralisi@arm.com>, Arnd Bergmann <arnd@arndb.de>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>
Subject: [RFC PATCH 22/30] PCI: cadence: Configure pci_epc_features to align
 BAR addresses to 256 Bytes
Date: Tue, 4 Jun 2019 18:45:08 +0530
Message-ID: <20190604131516.13596-23-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190604131516.13596-1-kishon@ti.com>
References: <20190604131516.13596-1-kishon@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_141857_448969_47465C6A 
X-CRM114-Status: GOOD (  10.99  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-2.5 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
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

Cadence PCIe controller has BITS[7:0] of the Inbound Address
Translation Units AXI address reserved for special purpose. In order to
accommodate this constraint, BAR addresses should be aligned to 256 Byte
addresses. Configure pci_epc_features to align BAR addresses to 256
Bytes here.

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
---
 drivers/pci/controller/pcie-cadence-ep.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/pci/controller/pcie-cadence-ep.c b/drivers/pci/controller/pcie-cadence-ep.c
index 3dc1a896c1e6..25638af7c668 100644
--- a/drivers/pci/controller/pcie-cadence-ep.c
+++ b/drivers/pci/controller/pcie-cadence-ep.c
@@ -484,6 +484,7 @@ static const struct pci_epc_features cdns_pcie_epc_features = {
 	.linkup_notifier = false,
 	.msi_capable = true,
 	.msix_capable = false,
+	.align = 256,
 };
 
 static const struct pci_epc_features cdns_pcie_epc_vf_features = {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
