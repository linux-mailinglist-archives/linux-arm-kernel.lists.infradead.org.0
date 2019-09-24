Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CFF5BD1AF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 20:16:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YJMymCVeP8V6UTKycu4LNo4kKs/6jZKiigJcf7jkoyA=; b=YC0jS8wtvF3PWV
	QqRYnUShhd/mpuB/8zKBcheMy+gz9gcQ482OW7tFt30PZHK/g9ixGh4VbO6sg2zOxkZc8iZwZX1Qq
	2wKae73/5FG4I3fmo2Au2f+XZ0RXAExH9kzRFiITkETvD3j2ke4So2Q+C1oaZtV10/Wx+SnMGVl/e
	/TjETcObfsqZDwQE7k1zHZFJT01rIhwvhjmxU7VhkKq7uW2duBA711fYpCY38BTwP2LDRnTXnL0PZ
	6Dqd7Yapmm12FBp7mzz2DK+dgjcKw0gJtFt0RJm6rOLyH+3CCuxRZxC0ezYq10Ji6vpT8bBlR3R1P
	0NZPYwxRqADLvajfAg0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCpMj-0006gQ-2x; Tue, 24 Sep 2019 18:16:45 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCpJ8-0003Aw-Im
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Sep 2019 18:13:03 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 4A5C4ABBD;
 Tue, 24 Sep 2019 18:13:01 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: robh+dt@kernel.org, devicetree@vger.kernel.org, frowand.list@gmail.com,
 linux-arm-kernel@lists.infradead.org, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 dmaengine@vger.kernel.org, etnaviv@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, xen-devel@lists.xenproject.org,
 linux-tegra@vger.kernel.org, linux-media@vger.kernel.org,
 linux-pci@vger.kernel.org, Shawn Guo <shawnguo@kernel.org>,
 Li Yang <leoyang.li@nxp.com>
Subject: [PATCH 08/11] dts: arm64: layerscape: add dma-ranges property to pcie
 nodes
Date: Tue, 24 Sep 2019 20:12:39 +0200
Message-Id: <20190924181244.7159-9-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190924181244.7159-1-nsaenzjulienne@suse.de>
References: <20190924181244.7159-1-nsaenzjulienne@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_111302_807165_A93F8B08 
X-CRM114-Status: UNSURE (   7.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, f.fainelli@gmail.com,
 mbrugger@suse.com, wahrenst@gmx.net, james.quinlan@broadcom.com,
 robin.murphy@arm.com, Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The bus behind the board's PCIe core has DMA addressing limitations. Add
an empty 'dma-ranges' property on all PCIe bus descriptions to inform
the OF core that a translation is due further down the line.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---

 arch/arm64/boot/dts/freescale/fsl-ls208xa.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/fsl-ls208xa.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls208xa.dtsi
index fd6036b7865c..2c41cfc66bb9 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls208xa.dtsi
+++ b/arch/arm64/boot/dts/freescale/fsl-ls208xa.dtsi
@@ -640,6 +640,7 @@
 			#size-cells = <2>;
 			device_type = "pci";
 			dma-coherent;
+			dma-ranges;
 			num-viewport = <6>;
 			bus-range = <0x0 0xff>;
 			msi-parent = <&its>;
@@ -661,6 +662,7 @@
 			#size-cells = <2>;
 			device_type = "pci";
 			dma-coherent;
+			dma-ranges;
 			num-viewport = <6>;
 			bus-range = <0x0 0xff>;
 			msi-parent = <&its>;
@@ -682,6 +684,7 @@
 			#size-cells = <2>;
 			device_type = "pci";
 			dma-coherent;
+			dma-ranges;
 			num-viewport = <256>;
 			bus-range = <0x0 0xff>;
 			msi-parent = <&its>;
@@ -703,6 +706,7 @@
 			#size-cells = <2>;
 			device_type = "pci";
 			dma-coherent;
+			dma-ranges;
 			num-viewport = <6>;
 			bus-range = <0x0 0xff>;
 			msi-parent = <&its>;
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
