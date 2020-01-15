Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB0BB13BD86
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 11:36:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rE/gqAV64LYEjZOKQfBR2CYx/NLsmNDQy6JhNS7nG20=; b=mE8Wbn1h9rKSme
	IHHT2zRfx779il9N7a0ulvogvXBJO5VOBCjkM58nnsyy3N9ekw6h9sXUfFaNL4fmLkXTLjaHG4zfz
	pfQD4XYLH5q9W+KFpJ8mUacYUjbdftsyhmNlaYVt8D431iMTS3CCTJ+m/FPOYqxaE2gHdR70h7IOi
	9hfQ/GRgxCnE3ZqTHY3/qIUqBjpHr6+uxO8Eq+3+f0pOQYPNR4y9Cv92KxxwcqfODjrpdq71cp/eK
	a8yMkYE2+v+Nb94tcExyYcYswmlNdpUyvPuXuAlaATmfT5l5GkDhKefYjzaCbXHrbVpACh1f45Cjb
	cVyzwAgwPtdbUhFlr5SQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irg1g-0002ZJ-TB; Wed, 15 Jan 2020 10:35:52 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irg19-0002Jg-9t
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 10:35:23 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 00FAZF0K043346;
 Wed, 15 Jan 2020 04:35:15 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1579084515;
 bh=VT1M5dqtRAnjjucjMwv2H5EWhncw9k8dboUf61IMjoE=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=npl4vycfA7JCn0n8E99cuPs5QBdv88+TH/ba7uJ+Eifrvems4B0YNu/jFEoEfCStc
 hRt8xpfsjlAP6HKn6hO1ztd9wrZPT9ND1ySl9ERLtffieMgVdE7Y4aZa1gCi0ng/1u
 ow0OxV2nea5mApeQnGPAmz6YIGc9KGY/R1nuIMF4=
Received: from DLEE102.ent.ti.com (dlee102.ent.ti.com [157.170.170.32])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 00FAZFkG047141;
 Wed, 15 Jan 2020 04:35:15 -0600
Received: from DLEE111.ent.ti.com (157.170.170.22) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Wed, 15
 Jan 2020 04:35:15 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE111.ent.ti.com
 (157.170.170.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Wed, 15 Jan 2020 04:35:15 -0600
Received: from feketebors.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 00FAZ8vn050211;
 Wed, 15 Jan 2020 04:35:12 -0600
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
To: <ssantosh@kernel.org>, <santosh.shilimkar@oracle.com>, <vkoul@kernel.org>, 
 <robh+dt@kernel.org>
Subject: [PATCH v9 1/2] bindings: soc: ti: add documentation for k3 ringacc
Date: Wed, 15 Jan 2020 12:35:44 +0200
Message-ID: <20200115103545.6363-2-peter.ujfalusi@ti.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200115103545.6363-1-peter.ujfalusi@ti.com>
References: <20200115103545.6363-1-peter.ujfalusi@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_023519_421138_95D8EAC3 
X-CRM114-Status: GOOD (  15.51  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: nm@ti.com, devicetree@vger.kernel.org, grygorii.strashko@ti.com,
 vigneshr@ti.com, lokeshvutla@ti.com, j-keerthy@ti.com, nsekhar@ti.com,
 linux-kernel@vger.kernel.org, t-kristo@ti.com, tony@atomide.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Grygorii Strashko <grygorii.strashko@ti.com>

The Ring Accelerator (RINGACC or RA) provides hardware acceleration to
enable straightforward passing of work between a producer and a consumer.
There is one RINGACC module per NAVSS on TI AM65x and j721e.

This patch introduces RINGACC device tree bindings.

Signed-off-by: Grygorii Strashko <grygorii.strashko@ti.com>
Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>
Reviewed-by: Rob Herring <robh@kernel.org>
Tested-by: Keerthy <j-keerthy@ti.com>
---
 .../devicetree/bindings/soc/ti/k3-ringacc.txt | 59 +++++++++++++++++++
 1 file changed, 59 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/soc/ti/k3-ringacc.txt

diff --git a/Documentation/devicetree/bindings/soc/ti/k3-ringacc.txt b/Documentation/devicetree/bindings/soc/ti/k3-ringacc.txt
new file mode 100644
index 000000000000..59758ccce809
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
+- ti,sci-dev-id	: TI-SCI device id of the ring accelerator
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
