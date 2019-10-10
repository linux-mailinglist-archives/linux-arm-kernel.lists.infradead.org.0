Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D691ED229E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 10:22:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jvmaOtxsJ1TBJtA5pBPNXspVnP8TJ8kBI1ZE3v4+o/A=; b=OS2mA9mH4pzZ/h
	RqOYXX5p8ySxNwRUbJ5oeOHC6nXQ2VThNzYH3avuJATS8qV0bMTWQb5A23HLQFidoOmPGmjHxIlGi
	4Or6MYYcRnxuq5+9zDJG/xnjaSgcQNFAGRh37M1VK4zrdpNpjNQIvJLwWDQzUEn8n+09Aq+oJeU/a
	5gWNqBkL8T+xgxSw+wUnRIPGkkNBQTf2yitoyYcHdWOqSKxODVHYGIZvWnPfzvn9uouPxodQiNSL6
	qCMxRK5s6KnpQWGpP1lGgrHMHRCobrW0JYh6Ulvvh5togp93PGX4Lml8iWl56furdWRePKG7vs+ZC
	iXY7euxAIfH4WucJt/bQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iITiE-0007JG-6o; Thu, 10 Oct 2019 08:22:18 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIThI-0006Vq-49
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 08:21:23 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x9A8LECl101667;
 Thu, 10 Oct 2019 03:21:14 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1570695674;
 bh=tu0nnpfGzidXSw6/IM0hH5/1VmGSmGFdGSiEQ/tREe8=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=n+ePALqMLDuo0IqsY2eoEQTS4ujCu6x1HIllAvfIx2ZjerFTxA/tCVAiItUS1qUjv
 yFGRQYj+YnG9CrzUJGrhgI4jSCHgcC4ERK84B9DGl1xb69MYUBG2ksnjwiHwxD72Ry
 eyjoygOoyhTx5xsGqdTQNjSj6I3RXkdT9a8XFk6s=
Received: from DFLE115.ent.ti.com (dfle115.ent.ti.com [10.64.6.36])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x9A8LEBn104160
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 10 Oct 2019 03:21:14 -0500
Received: from DFLE105.ent.ti.com (10.64.6.26) by DFLE115.ent.ti.com
 (10.64.6.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Thu, 10
 Oct 2019 03:21:10 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Thu, 10 Oct 2019 03:21:13 -0500
Received: from sokoban.bb.dnainternet.fi (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x9A8LAtB012630;
 Thu, 10 Oct 2019 03:21:12 -0500
From: Tero Kristo <t-kristo@ti.com>
To: <linux-omap@vger.kernel.org>, <tony@atomide.com>
Subject: [PATCH 1/5] ARM: dts: dra7: add PRM nodes
Date: Thu, 10 Oct 2019 11:21:04 +0300
Message-ID: <20191010082108.15448-2-t-kristo@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191010082108.15448-1-t-kristo@ti.com>
References: <20191010082108.15448-1-t-kristo@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_012120_247507_894C2F89 
X-CRM114-Status: GOOD (  12.27  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add PRM nodes for dra7 series of SoCs. These are initially used to
support reset control for some of the nodes, but will be extended
later to add powerdomain control and support for PRCM irqs among
other things.

Signed-off-by: Tero Kristo <t-kristo@ti.com>
---
 arch/arm/boot/dts/dra7.dtsi | 55 +++++++++++++++++++++++++++++++++++++
 1 file changed, 55 insertions(+)

diff --git a/arch/arm/boot/dts/dra7.dtsi b/arch/arm/boot/dts/dra7.dtsi
index 953f0ffce2a9..f4c73cca6354 100644
--- a/arch/arm/boot/dts/dra7.dtsi
+++ b/arch/arm/boot/dts/dra7.dtsi
@@ -763,3 +763,54 @@
 
 #include "dra7-l4.dtsi"
 #include "dra7xx-clocks.dtsi"
+
+&prm {
+	prm_dsp1: prm@400 {
+		compatible = "ti,dra7-prm-inst", "ti,omap-prm-inst";
+		reg = <0x400 0x100>;
+		#reset-cells = <1>;
+	};
+
+	prm_ipu: prm@500 {
+		compatible = "ti,dra7-prm-inst", "ti,omap-prm-inst";
+		reg = <0x500 0x100>;
+		#reset-cells = <1>;
+	};
+
+	prm_core: prm@700 {
+		compatible = "ti,dra7-prm-inst", "ti,omap-prm-inst";
+		reg = <0x700 0x100>;
+		#reset-cells = <1>;
+	};
+
+	prm_iva: prm@f00 {
+		compatible = "ti,dra7-prm-inst", "ti,omap-prm-inst";
+		reg = <0xf00 0x100>;
+	};
+
+	prm_dsp2: prm@1b00 {
+		compatible = "ti,dra7-prm-inst", "ti,omap-prm-inst";
+		reg = <0x1b00 0x40>;
+		#reset-cells = <1>;
+	};
+
+	prm_eve1: prm@1b40 {
+		compatible = "ti,dra7-prm-inst", "ti,omap-prm-inst";
+		reg = <0x1b40 0x40>;
+	};
+
+	prm_eve2: prm@1b80 {
+		compatible = "ti,dra7-prm-inst", "ti,omap-prm-inst";
+		reg = <0x1b80 0x40>;
+	};
+
+	prm_eve3: prm@1bc0 {
+		compatible = "ti,dra7-prm-inst", "ti,omap-prm-inst";
+		reg = <0x1bc0 0x40>;
+	};
+
+	prm_eve4: prm@1c00 {
+		compatible = "ti,dra7-prm-inst", "ti,omap-prm-inst";
+		reg = <0x1c00 0x60>;
+	};
+};
-- 
2.17.1

--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
