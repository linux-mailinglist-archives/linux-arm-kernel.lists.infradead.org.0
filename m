Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74FACA36A1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 14:19:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9wXv8MDBJdpnihz7T+VCh/Xs6AF/CEKJSfEQTMi9+yU=; b=tbMGrqAD0Tt8QL
	mG+VTtdkDpNn187xBpu7pMskgDk3n26urGAYNNASzmI+3BSNfI2Z+ysEOltMsgn7VFKLix2V7LGsF
	3C7TQutaI7IRUrC1eiipIAhCT1TMorTs0INTCbIpbI+PjNuyADA70rY/TbBw0GQyGqP+gaLK1WQLp
	gQXjms4GygYjjjgG8fAbOI7u43aA6QgmAHvdGBiolSJyuzNnWbatqLACgGc7wnEH7h1hP0o27l4tL
	MVGqmE4tcjpTumvehiaH5jR5I4uHQ458p14A3TGwSsJ3GiKtb2LL+eNwKSfzwU2F0I1Kh6UClCjip
	bS1DPqO5m0M+pLWPwI2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3frj-00083X-C8; Fri, 30 Aug 2019 12:18:55 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3frM-0007vZ-5y
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 12:18:33 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x7UCITBk119927;
 Fri, 30 Aug 2019 07:18:29 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1567167509;
 bh=4/vn3nShvBSwpELcXgs5bhAcnH64+34+9f0PSBWUDWs=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=vKCpcIAyEkJESMs644fWa33gtNE9MfFDoF9MN72X2e80u9A+0N6TBt/Nz2jy0fS8h
 FEEYYXwF90TVyG/UruM97wB+se4jErIjGkcjKTcT+WTwjU74rlr4OTlE5O2SYjn+eB
 HOKyn4Go4TODtyRrtNnL2Oy9bH2ZlCZcMd6hQq3k=
Received: from DFLE113.ent.ti.com (dfle113.ent.ti.com [10.64.6.34])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x7UCITeG016147
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 30 Aug 2019 07:18:29 -0500
Received: from DFLE104.ent.ti.com (10.64.6.25) by DFLE113.ent.ti.com
 (10.64.6.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Fri, 30
 Aug 2019 07:18:29 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Fri, 30 Aug 2019 07:18:29 -0500
Received: from sokoban.bb.dnainternet.fi (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x7UCIP6H083824;
 Fri, 30 Aug 2019 07:18:27 -0500
From: Tero Kristo <t-kristo@ti.com>
To: <ssantosh@kernel.org>, <linux-omap@vger.kernel.org>, <tony@atomide.com>,
 <s-anna@ti.com>, <p.zabel@pengutronix.de>
Subject: [PATCHv3 01/10] dt-bindings: omap: add new binding for PRM instances
Date: Fri, 30 Aug 2019 15:18:07 +0300
Message-ID: <20190830121816.30034-2-t-kristo@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190830121816.30034-1-t-kristo@ti.com>
References: <20190830121816.30034-1-t-kristo@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_051832_302743_BCE0EB2C 
X-CRM114-Status: GOOD (  11.36  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add new binding for OMAP PRM (Power and Reset Manager) instances. Each
of these will act as a power domain controller and potentially as a reset
provider.

Signed-off-by: Tero Kristo <t-kristo@ti.com>
---
 .../devicetree/bindings/arm/omap/prm-inst.txt | 31 +++++++++++++++++++
 1 file changed, 31 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/arm/omap/prm-inst.txt

diff --git a/Documentation/devicetree/bindings/arm/omap/prm-inst.txt b/Documentation/devicetree/bindings/arm/omap/prm-inst.txt
new file mode 100644
index 000000000000..7c7527c37734
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/omap/prm-inst.txt
@@ -0,0 +1,31 @@
+OMAP PRM instance bindings
+
+Power and Reset Manager is an IP block on OMAP family of devices which
+handle the power domains and their current state, and provide reset
+handling for the domains and/or separate IP blocks under the power domain
+hierarchy.
+
+Required properties:
+- compatible:	Must be one of:
+		"ti,am3-prm-inst"
+		"ti,am4-prm-inst"
+		"ti,omap4-prm-inst"
+		"ti,omap5-prm-inst"
+		"ti,dra7-prm-inst"
+- reg:		Contains PRM instance register address range
+		(base address and length)
+
+Optional properties:
+- #reset-cells:	Should be 1 if the PRM instance in question supports resets.
+- clocks:	Associated clocks for the reset signals if any. Certain reset
+		signals can't be toggled properly without functional clock
+		being active for them.
+
+Example:
+
+prm_dsp2: prm@1b00 {
+	compatible = "ti,dra7-prm-inst";
+	reg = <0x1b00 0x40>;
+	#reset-cells = <1>;
+	clocks = <&dsp2_clkctrl DRA7_DSP2_MMU0_DSP2_CLKCTRL 0>;
+};
-- 
2.17.1

--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
