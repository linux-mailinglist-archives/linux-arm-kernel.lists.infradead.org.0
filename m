Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B03CBB0E1F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Sep 2019 13:41:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ve65kqTCU7aztFg/3By/4aeZntPWwCPaQ9hW8tZU1U0=; b=VJZ2XOx+mlzmSk
	+cLEnYjtC7UvVvhTJT3o/xZWXqVAOdvzbp5ZoP+y9EDr5X7egWpX7g7bT/bsKF/vNR1iQi5sjsC3C
	nXzVm1pBHOKS96oB7ujz/3ylMGBWFWm5mMjSZ2tbaccaBQL1gmdgvS7xAYsTWX93gN2L1qb5F8KFy
	60ZnEOlDO7sgQG9NSi2pkjB1Dap3q/tMWMCxxaRPK5BibtBcV1bH2ztLYZ8Gjko2mNlQNL+FiOeux
	UrlI1c3oDWnG9FG0t2T219u+5b5HkeLbGTM7ejsZ69Vxputt/z+FqDFroslPTB9S30ORMIolxKX/h
	UU7D+B4vS7DS5LoJtDcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8NTD-0006JX-LJ; Thu, 12 Sep 2019 11:41:03 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8NRp-000461-2T
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Sep 2019 11:39:38 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x8CBdPbD125282;
 Thu, 12 Sep 2019 06:39:25 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1568288365;
 bh=oQxDXztiLLCcC6n0PYFQficOreSIf5synk8KoO4IaU0=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=ybZlpbY6DvSrOtRNXOFwn8qVbTWd7Hci76yIEzhPOeHdapm5nBBK7F/PHXkfWrll2
 Lh6utvPhf2uUNTGzAiBiQ3J74+Ce5yKNmXyYak9W/n2fWJEPusTCqz2Kr0/YguHqwD
 WDl9S9sMWcB5Y794CWPt9hRwxjsWs5uXmTs0MeWQ=
Received: from DLEE113.ent.ti.com (dlee113.ent.ti.com [157.170.170.24])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x8CBdPhD050703
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 12 Sep 2019 06:39:25 -0500
Received: from DLEE110.ent.ti.com (157.170.170.21) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Thu, 12
 Sep 2019 06:39:25 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE110.ent.ti.com
 (157.170.170.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Thu, 12 Sep 2019 06:39:25 -0500
Received: from sokoban.bb.dnainternet.fi (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x8CBdKcq120606;
 Thu, 12 Sep 2019 06:39:23 -0500
From: Tero Kristo <t-kristo@ti.com>
To: <linux-omap@vger.kernel.org>, <ssantosh@kernel.org>,
 <p.zabel@pengutronix.de>, <robh+dt@kernel.org>, <tony@atomide.com>,
 <s-anna@ti.com>
Subject: [PATCHv5 01/10] dt-bindings: omap: add new binding for PRM instances
Date: Thu, 12 Sep 2019 14:39:07 +0300
Message-ID: <20190912113916.20093-2-t-kristo@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190912113916.20093-1-t-kristo@ti.com>
References: <20190912113916.20093-1-t-kristo@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_043937_295285_90CC4DFF 
X-CRM114-Status: GOOD (  11.01  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
v5: - dropped the clocks property as the dependency towards clocks was
      removed
    - changed the name of the node to be power-controller

 .../devicetree/bindings/arm/omap/prm-inst.txt | 28 +++++++++++++++++++
 1 file changed, 28 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/arm/omap/prm-inst.txt

diff --git a/Documentation/devicetree/bindings/arm/omap/prm-inst.txt b/Documentation/devicetree/bindings/arm/omap/prm-inst.txt
new file mode 100644
index 000000000000..942f7aac3b00
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/omap/prm-inst.txt
@@ -0,0 +1,27 @@
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
+
+Example:
+
+prm_dsp2: power-controller@1b00 {
+	compatible = "ti,dra7-prm-inst";
+	reg = <0x1b00 0x40>;
+	#reset-cells = <1>;
+};
-- 
2.17.1

--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
