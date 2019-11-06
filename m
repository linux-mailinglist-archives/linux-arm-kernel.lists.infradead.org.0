Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FB9CF1320
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 11:00:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y3hjw7b1ifUIbvqBjXBmDY+D/QkVEkNtwtb6SvQKBAs=; b=FTbyHKvCPURKal
	XRZ27EzX7fM263qXZaNiLf/7FEAO2HxG7Vfbp+jNmYE0K09P80TkTYaRVAG+XYNkjhtwo6scm8Ufu
	bcDZyiHNZ5dd/pCvgFYYTA6+dB9HOXqPCQ0cjF3VUlA7pokOZE3guVIFS36WAB0fD/beOMq92BCvN
	jmCCfmkLGCgpdyrkWa52Ov5BBE1znWuXWkQqDViGjhcIQP+BasaPXC2vbP2ycGC8UlkPN+RtACMwc
	/vkA8G6x3h0bz5r1jyAhKEwXWP6fLS7nED1zsbWwitdSw2NaXovB8nNiVMzL5lBzGICuphod1k64l
	5Ky2JFGscvOpxehQvQLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSI6r-0004p7-G4; Wed, 06 Nov 2019 10:00:17 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSI6e-00045d-UT; Wed, 06 Nov 2019 10:00:06 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 3F6C4B3EA;
 Wed,  6 Nov 2019 10:00:02 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: catalin.marinas@arm.com, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Eric Anholt <eric@anholt.net>, Stefan Wahren <wahrenst@gmx.net>
Subject: [PATCH v2 1/2] ARM: dts: bcm2711: force CMA into first GB of memory
Date: Wed,  6 Nov 2019 10:59:44 +0100
Message-Id: <20191106095945.22933-2-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191106095945.22933-1-nsaenzjulienne@suse.de>
References: <20191106095945.22933-1-nsaenzjulienne@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_020005_137858_94B063D6 
X-CRM114-Status: GOOD (  12.90  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

arm64 places the CMA in ZONE_DMA32, which is not good enough for the
Raspberry Pi 4 since it contains peripherals that can only address the
first GB of memory. Explicitly place the CMA into that area.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>

---

Changes since v1:
  - Move into bcm2711.dtsi

 arch/arm/boot/dts/bcm2711.dtsi | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/arch/arm/boot/dts/bcm2711.dtsi b/arch/arm/boot/dts/bcm2711.dtsi
index 1f3acd3363ea..6000a01652fa 100644
--- a/arch/arm/boot/dts/bcm2711.dtsi
+++ b/arch/arm/boot/dts/bcm2711.dtsi
@@ -12,6 +12,26 @@
 
 	interrupt-parent = <&gicv2>;
 
+	reserved-memory {
+		#address-cells = <2>;
+		#size-cells = <1>;
+		ranges;
+
+		/*
+		 * arm64 reserves the CMA by default somewhere in ZONE_DMA32,
+		 * that's not good enough for the Raspberry Pi 4 as some
+		 * devices can only address the lower 1G of memory (ZONE_DMA).
+		 */
+		linux,cma {
+			compatible = "shared-dma-pool";
+			size = <0x2000000>; /* 32MB */
+			alloc-ranges = <0x0 0x00000000 0x40000000>;
+			reusable;
+			linux,cma-default;
+		};
+	};
+
+
 	soc {
 		/*
 		 * Defined ranges:
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
