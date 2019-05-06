Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44CB0149A6
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 May 2019 14:35:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8xJETD4xphr0Vb9kCXrSJRlsPccFIcZmYIEDMTi/UlA=; b=OcKjQ1kBnOvln9
	lzmPACh9eCGF2EBspwa9padMaFcnv1JUFAtPZEqmfcT6uzDAWNR2SM9PLfG8dKtUuldnhQiXWCOg2
	L6RSH7KVHxrV0nJA6JoCzC7R827LA1eg71W81AhntoNiMLlgSr6ZQrOHls7h2XTnBJx0ajkR6Ckdd
	Qhz9MjY0H6O724hou76vtCa/FLwHF74yY04eC9M5ipnTnNmWn3boN8pdD40j4CEmfy4zajJIMsCFA
	7iMiQ8QGjzUtAGfLJw6cew/7RcgI6zyc1Crdp0RCI+V9chWmzjLsiXuDKNPKW8waTL0TZvMwDxjwT
	WwgULjocILBqcU/L+/Og==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNcq6-0007LW-Kq; Mon, 06 May 2019 12:35:26 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNcpm-0006cd-TX
 for linux-arm-kernel@lists.infradead.org; Mon, 06 May 2019 12:35:09 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x46CZ2sO058381;
 Mon, 6 May 2019 07:35:02 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1557146102;
 bh=GpP5OJnC1vUI88M5KQpucPLxJvzjC5ZH8+aBBrYhIWc=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=ee0gR8vr22TFOPpT9budlF53oCdsQpl/aLACMXYam4dWAy5TOQRRkys8E15cTF9HC
 5mKa9TbAkv1PlSDyiRi+ArCUCQsrK1fhlGp/uivz0KFCS8yHRhEEAKyefxdM5hcjJy
 wh5C8wkFj5s2jWB8qLuRTI0XmT+v6zKTwZezDoRY=
Received: from DLEE112.ent.ti.com (dlee112.ent.ti.com [157.170.170.23])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x46CZ1jK034333
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 6 May 2019 07:35:02 -0500
Received: from DLEE113.ent.ti.com (157.170.170.24) by DLEE112.ent.ti.com
 (157.170.170.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Mon, 6 May
 2019 07:35:00 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Mon, 6 May 2019 07:35:00 -0500
Received: from feketebors.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x46CYpU8110286;
 Mon, 6 May 2019 07:34:58 -0500
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
To: <vkoul@kernel.org>, <robh+dt@kernel.org>, <nm@ti.com>,
 <ssantosh@kernel.org>
Subject: [PATCH 02/16] bindings: soc: ti: add documentation for k3 ringacc
Date: Mon, 6 May 2019 15:34:42 +0300
Message-ID: <20190506123456.6777-3-peter.ujfalusi@ti.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190506123456.6777-1-peter.ujfalusi@ti.com>
References: <20190506123456.6777-1-peter.ujfalusi@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_053507_075479_0EC9831C 
X-CRM114-Status: GOOD (  15.31  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, grygorii.strashko@ti.com, lokeshvutla@ti.com,
 linux-kernel@vger.kernel.org, t-kristo@ti.com, tony@atomide.com,
 dmaengine@vger.kernel.org, dan.j.williams@intel.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Grygorii Strashko <grygorii.strashko@ti.com>

The Ring Accelerator (RINGACC or RA) provides hardware acceleration to
enable straightforward passing of work between a producer and a consumer.
There is one RINGACC module per NAVSS on TI AM65x SoCs.

This patch introduces RINGACC device tree bindings.

Signed-off-by: Grygorii Strashko <grygorii.strashko@ti.com>
---
 .../devicetree/bindings/soc/ti/k3-ringacc.txt | 59 +++++++++++++++++++
 1 file changed, 59 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/soc/ti/k3-ringacc.txt

diff --git a/Documentation/devicetree/bindings/soc/ti/k3-ringacc.txt b/Documentation/devicetree/bindings/soc/ti/k3-ringacc.txt
new file mode 100644
index 000000000000..86954cf4fa99
--- /dev/null
+++ b/Documentation/devicetree/bindings/soc/ti/k3-ringacc.txt
@@ -0,0 +1,59 @@
+* Texas Instruments K3 NavigatorSS Ring Accelerator
+
+The Ring Accelerator (RA) is a machine which converts read/write accesses
+from/to a constant address into corresponding read/write accesses from/to a
+circular data structure in memory. The RA eliminates the need for each DMA
+controller which needs to access ring elements from having to know the current
+state of the ring (base address, current offset). The DMA controller
+performs a read or write access to a specific address range (which maps to the
+source interface on the RA) and the RA replaces the address for the transaction
+with a new address which corresponds to the head or tail element of the ring
+(head for reads, tail for writes).
+
+The Ring Accelerator is a hardware module that is responsible for accelerating
+management of the packet queues. The K3 SoCs can have more than one RA instances
+
+Required properties:
+- compatible	: Must be "ti,am654-navss-ringacc";
+- reg		: Should contain register location and length of the following
+		  named register regions.
+- reg-names	: should be
+		  "rt" - The RA Ring Real-time Control/Status Registers
+		  "fifos" - The RA Queues Registers
+		  "proxy_gcfg" - The RA Proxy Global Config Registers
+		  "proxy_target" - The RA Proxy Datapath Registers
+- ti,num-rings	: Number of rings supported by RA
+- ti,sci-rm-range-gp-rings : TI-SCI RM subtype for GP ring range
+- ti,sci	: phandle on TI-SCI compatible System controller node
+- ti,sci-dev-id	: TI-SCI device id
+- msi-parent	: phandle for "ti,sci-inta" interrupt controller
+
+Optional properties:
+ -- ti,dma-ring-reset-quirk : enable ringacc / udma ring state interoperability
+		  issue software w/a
+
+Example:
+
+ringacc: ringacc@3c000000 {
+	compatible = "ti,am654-navss-ringacc";
+	reg =	<0x0 0x3c000000 0x0 0x400000>,
+		<0x0 0x38000000 0x0 0x400000>,
+		<0x0 0x31120000 0x0 0x100>,
+		<0x0 0x33000000 0x0 0x40000>;
+	reg-names = "rt", "fifos",
+		    "proxy_gcfg", "proxy_target";
+	ti,num-rings = <818>;
+	ti,sci-rm-range-gp-rings = <0x2>; /* GP ring range */
+	ti,dma-ring-reset-quirk;
+	ti,sci = <&dmsc>;
+	ti,sci-dev-id = <187>;
+	msi-parent = <&inta_main_udmass>;
+};
+
+client:
+
+dma_ipx: dma_ipx@<addr> {
+	...
+	ti,ringacc = <&ringacc>;
+	...
+}
-- 
Peter

Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
