Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C5F933ECC
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 08:09:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fWE5SGC0UtOXOeuyAWoVOGoFxZLBmGqzXCeQMAhCS98=; b=Nw75jbmt5aFQXv
	dbV0ioSqpysVlvFzFgMRyuL5VkHdwP8Vd/qqm6lRCKPF9IKn+aMXI13QC+m5DoCx141BtxAtt/BPQ
	94swRFyS1mabMHLqm1p13fvZFtM2SKvNd/DLoDL3b4wCfTY+RecxUUidtoZBHF9xmYkYfgLiKN62A
	P7PVjEAbpHgzVAsaeUdLKx7DJNmKm0UFuoXLAFORliDPRUnwHxPYoc96Z7QVmXsXubBxywHiE2w4K
	ustkQhbvoomCXY+9MS68x4RqoLXDSXXohHsx78KL3ik13dCalmQcyDH3GVp7ok1/AXTZaifomMugM
	7L+v0V1mGwwZmJpyWLdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY2dR-0000KJ-0O; Tue, 04 Jun 2019 06:09:25 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY2d9-0000BK-Fw
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 06:09:08 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x54692kN109750;
 Tue, 4 Jun 2019 01:09:02 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1559628542;
 bh=PrQgR1tyd+6Tb+EW5dqTCe61J5++hd7LMPqAUwhVVN0=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=zAq2LP01fKzHRmxsvoK3KRJOnMFHHtSqjS3WhGUKU6YBdyyGETJJumAnmbahazrjr
 PbhzBBbrIa7Vw0ZikfBVtwdMbgyaK6E9gObKHVAl8CEQm5GtBNdMoiPje6QFOyzE4k
 MDsx7N8L1xH5jFTqpJXUmr+nxtdWwH3NgJ8D3/kQ=
Received: from DFLE113.ent.ti.com (dfle113.ent.ti.com [10.64.6.34])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x54692Hu034820
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 4 Jun 2019 01:09:02 -0500
Received: from DFLE101.ent.ti.com (10.64.6.22) by DFLE113.ent.ti.com
 (10.64.6.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 4 Jun
 2019 01:09:01 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE101.ent.ti.com
 (10.64.6.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 4 Jun 2019 01:09:01 -0500
Received: from a0230074-OptiPlex-7010.india.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id x5468pZ0049516;
 Tue, 4 Jun 2019 01:08:58 -0500
From: Faiz Abbas <faiz_abbas@ti.com>
To: <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
 <linux-mmc@vger.kernel.org>
Subject: [PATCH 1/4] dt-bindings: mmc: sdhci-am654: Document bindings for the
 host controllers on TI's J721E devices.
Date: Tue, 4 Jun 2019 11:39:11 +0530
Message-ID: <20190604060914.10886-2-faiz_abbas@ti.com>
X-Mailer: git-send-email 2.19.2
In-Reply-To: <20190604060914.10886-1-faiz_abbas@ti.com>
References: <20190604060914.10886-1-faiz_abbas@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_230907_635884_B39A238D 
X-CRM114-Status: GOOD (  11.73  )
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
Cc: nm@ti.com, ulf.hansson@linaro.org, robh+dt@kernel.org, nsekhar@ti.com,
 adrian.hunter@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add binding documentation for mmc host controllers present on TI's J721E
SOC. The 4 bit IP on J721E doesn't have a phy DLL so make DLL related
properties as optional for that compatible. Also add an optional
strobe-sel property used for HS400 speed mode.

Signed-off-by: Faiz Abbas <faiz_abbas@ti.com>
---
 Documentation/devicetree/bindings/mmc/sdhci-am654.txt | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/mmc/sdhci-am654.txt b/Documentation/devicetree/bindings/mmc/sdhci-am654.txt
index 15dbbbace27e..50e87df47971 100644
--- a/Documentation/devicetree/bindings/mmc/sdhci-am654.txt
+++ b/Documentation/devicetree/bindings/mmc/sdhci-am654.txt
@@ -8,7 +8,10 @@ Only deviations are documented here.
   [3] Documentation/devicetree/bindings/interrupt-controller/interrupts.txt
 
 Required Properties:
-	- compatible: should be "ti,am654-sdhci-5.1"
+	- compatible: should be one of:
+			"ti,am654-sdhci-5.1": SDHCI on AM654 device.
+			"ti,j721e-sdhci-8bit": 8 bit SDHCI on J721E device.
+			"ti,j721e-sdhci-4bit": 4 bit SDHCI on J721E device.
 	- reg: Must be two entries.
 		- The first should be the sdhci register space
 		- The second should the subsystem/phy register space
@@ -16,9 +19,13 @@ Required Properties:
 	- clock-names: Tuple including "clk_xin" and "clk_ahb"
 	- interrupts: Interrupt specifiers
 	- ti,otap-del-sel: Output Tap Delay select
+
+Optional Properties (Required for ti,am654-sdhci-5.1 and ti,j721e-sdhci-8bit):
 	- ti,trm-icp: DLL trim select
 	- ti,driver-strength-ohm: driver strength in ohms.
 				  Valid values are 33, 40, 50, 66 and 100 ohms.
+Optional Properties:
+	- ti,strobe-sel: strobe select delay for HS400 speed mode. Default value: 0x0.
 
 Example:
 
-- 
2.19.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
