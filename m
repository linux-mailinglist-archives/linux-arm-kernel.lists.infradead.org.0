Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DC331CADFE
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 May 2020 15:07:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VefJQWPy1ebu1YkF9aXTuKrblvrtmnSpz1E4iL4sMDY=; b=JbyGDFJExzdrkj
	wA4BP0byRubc0xPcgWPF3hVH2FoJJsw+PTKbATrDlWrVSK65frr789ROttxkoQYNdoN5GOHDVzAEN
	JMQ1ciHTWG1nGXx9ac9LUprDaGFirVhfV1JHZJY6eQlkYEFiVhTZfxtdYnr3GcWKYnUUUqfFCwfUA
	j3k2/MragRLeIav8fUT6MqkFgD3bvgnEVWy4yU0s4aVnj96qGKpoKwLvWhsYJLE7LFoxF4ZfzT9Jc
	JMbXYg08TiP0AX7uAgxMfHu/Ul1zCCcICQw6Xk1+FAHsXN8HJUctfEAQmW7JGanP+Y3OruH0GkDWv
	kIqAVsXCu0WBUdZDp0Cw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jX2ie-0001ZR-Va; Fri, 08 May 2020 13:07:13 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jX2iV-0001Wa-Gc
 for linux-arm-kernel@lists.infradead.org; Fri, 08 May 2020 13:07:05 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 048D6oHY082815;
 Fri, 8 May 2020 08:06:50 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1588943210;
 bh=7TFi8DenwabYdupg92PMqRYeyZT1ttnchvOUlGfcwpc=;
 h=From:To:CC:Subject:Date;
 b=TqL3Pzp733fAQrOCIkHz80JSjfKlDiEM2UFYAzUyw3GGabhU9P2Gm4C7KS/giVKuo
 u29bGztq86zQOohltHNcW/FbJr2dKt7knj3L8yg5owuuj2URSasgEVXdu2eSSX52YS
 SlACno9Jma6W7hZhBnfHcspidkek4id/gYuveUMM=
Received: from DFLE103.ent.ti.com (dfle103.ent.ti.com [10.64.6.24])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 048D6oGH000444;
 Fri, 8 May 2020 08:06:50 -0500
Received: from DFLE100.ent.ti.com (10.64.6.21) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Fri, 8 May
 2020 08:06:50 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Fri, 8 May 2020 08:06:50 -0500
Received: from a0393678ub.india.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 048D6kYk018673;
 Fri, 8 May 2020 08:06:47 -0500
From: Kishon Vijay Abraham I <kishon@ti.com>
To: Bjorn Helgaas <bhelgaas@google.com>, Rob Herring <robh+dt@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Robin Murphy
 <robin.murphy@arm.com>, Tom Joseph <tjoseph@cadence.com>
Subject: [PATCH v3 0/4] PCI: cadence: Deprecate inbound/outbound specific
 bindings
Date: Fri, 8 May 2020 18:36:42 +0530
Message-ID: <20200508130646.23939-1-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200508_060703_654780_880976A5 
X-CRM114-Status: GOOD (  13.06  )
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

This series is a result of comments given by Rob Herring @ [1].
Patch series changes the DT bindings and makes the corresponding driver
changes.

Changes from v2:
1) Changed the order of patches (no solid reason. Just save some
rebasing effort for me)
2) Added Acked-by Tom and Rob except for the dma-ranges patch
3) Re-worked dma-ranges patch for it do decode multiple dma-ranges
   and configure BAR0, BAR1 and NO_BAR instead of just NO_BAR [2].

Changes from v1:
1) Added Reviewed-by: Rob Herring <robh@kernel.org> for dt-binding patch
2) Fixed nitpick comments from Bjorn Helgaas
3) Added a patch to read 32-bit Vendor ID/Device ID property from DT

[1] -> http://lore.kernel.org/r/20200219202700.GA21908@bogus
[2] -> http://lore.kernel.org/r/eb1ffcb3-264f-5174-1f25-b5b2d3269840@ti.com

Kishon Vijay Abraham I (4):
  dt-bindings: PCI: cadence: Deprecate inbound/outbound specific
    bindings
  PCI: cadence: Remove "cdns,max-outbound-regions" DT property
  PCI: cadence: Fix to read 32-bit Vendor ID/Device ID property from DT
  PCI: cadence: Use "dma-ranges" instead of "cdns,no-bar-match-nbits"
    property

 .../bindings/pci/cdns,cdns-pcie-ep.yaml       |   2 +-
 .../bindings/pci/cdns,cdns-pcie-host.yaml     |   3 +-
 .../devicetree/bindings/pci/cdns-pcie-ep.yaml |  25 +++
 .../bindings/pci/cdns-pcie-host.yaml          |  10 ++
 .../devicetree/bindings/pci/cdns-pcie.yaml    |   8 -
 .../controller/cadence/pcie-cadence-host.c    | 151 +++++++++++++++---
 drivers/pci/controller/cadence/pcie-cadence.h |  23 ++-
 7 files changed, 182 insertions(+), 40 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/pci/cdns-pcie-ep.yaml

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
