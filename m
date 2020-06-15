Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9015B1F8F78
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 09:25:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S7THn2pUFQCknJ6JQ/NSd1bOiIaqU1sPdRNWZ2pmn4g=; b=a+K7JiM7sSsrDt
	/vQo+nLGfbR76nktdCdAktpZOEFtEiqyCWf8KnioTb5ksw5gPamiBPzoef9cuuO1pHtOaDE6ED1ai
	d3nSKuGR6zcpslKvQ+EtwXD+ubjeLxUKPg3OH7GQqpGcXJGZ1zpETdfxURk5e905S8FWQCV0OzKsK
	ReMCFFYRSbwQW5b09J8KEH6EDHeDGamG/SDUPbUFKpda7fKUWV1EZMZ2HypCd5Yuy3jrePQypqkOP
	IlquMzWUFXQ0bYzIDhqXwoUBX1+GJsS4PhCFUTjE2EUW5hbyzek+jqjiBdl8+aNbioU+SueXnVEL5
	GT6Ar6xiCLMXUQgxrR0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkjVC-0007rZ-GF; Mon, 15 Jun 2020 07:25:54 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkjUU-0006Nx-Sa
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 07:25:15 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 05F7F3bj124758;
 Mon, 15 Jun 2020 02:15:03 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1592205303;
 bh=2Ex8zWOQ9MvwkFDcxGmCY4L/ueAkXeZ/a+kFsegWaiI=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=gujfhFrjLRpEfPpt/58QnxpyQspfXAwObTMhdWPmIPNnIlzq1NB3rTmjoGyXqdpZt
 wSlbEGH9FiifZJFa97T5VM+OBc724T4JtcB7LWauGB9fEQ46kFWcs0Swy+gsapxF+7
 20lTRyZX17hTDd0e0N3tH4H9o6tuK+mMjvHE/HDw=
Received: from DFLE103.ent.ti.com (dfle103.ent.ti.com [10.64.6.24])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 05F7F2Pb004010
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 15 Jun 2020 02:15:03 -0500
Received: from DFLE101.ent.ti.com (10.64.6.22) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Mon, 15
 Jun 2020 02:15:02 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE101.ent.ti.com
 (10.64.6.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Mon, 15 Jun 2020 02:15:02 -0500
Received: from sokoban.bb.dnainternet.fi (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 05F7Exr7062159;
 Mon, 15 Jun 2020 02:15:01 -0500
From: Tero Kristo <t-kristo@ti.com>
To: <herbert@gondor.apana.org.au>, <davem@davemloft.net>,
 <linux-crypto@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>
Subject: [PATCHv4 1/7] dt-bindings: crypto: Add TI SA2UL crypto accelerator
 documentation
Date: Mon, 15 Jun 2020 10:14:46 +0300
Message-ID: <20200615071452.25141-2-t-kristo@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200615071452.25141-1-t-kristo@ti.com>
References: <20200615071452.25141-1-t-kristo@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_002511_119403_5200DB0A 
X-CRM114-Status: GOOD (  11.52  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: j-keerthy@ti.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Keerthy <j-keerthy@ti.com>

The Security Accelerator Ultra Lite (SA2UL) subsystem provides hardware
cryptographic acceleration for the following use cases:

* Encryption and authentication for secure boot
* Encryption and authentication of content in applications
  requiring DRM (digital rights management) and
  content/asset protection

SA2UL provides support for number of different cryptographic algorithms
including SHA1, SHA256, SHA512, AES, 3DES, and various combinations of
the previous for AEAD use.

Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Keerthy <j-keerthy@ti.com>
[t-kristo@ti.com: converted documentation to yaml]
Signed-off-by: Tero Kristo <t-kristo@ti.com>
---
 .../devicetree/bindings/crypto/ti,sa2ul.yaml  | 76 +++++++++++++++++++
 1 file changed, 76 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/crypto/ti,sa2ul.yaml

diff --git a/Documentation/devicetree/bindings/crypto/ti,sa2ul.yaml b/Documentation/devicetree/bindings/crypto/ti,sa2ul.yaml
new file mode 100644
index 000000000000..85ef69ffebed
--- /dev/null
+++ b/Documentation/devicetree/bindings/crypto/ti,sa2ul.yaml
@@ -0,0 +1,76 @@
+# SPDX-License-Identifier: (GPL-2.0-only or BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/crypto/ti,sa2ul.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: K3 SoC SA2UL crypto module
+
+maintainers:
+  - Tero Kristo <t-kristo@ti.com>
+
+properties:
+  compatible:
+    enum:
+      - ti,j721e-sa2ul
+      - ti,am654-sa2ul
+
+  reg:
+    maxItems: 1
+
+  power-domains:
+    maxItems: 1
+
+  dmas:
+    items:
+      - description: TX DMA Channel
+      - description: RX DMA Channel #1
+      - description: RX DMA Channel #2
+
+  dma-names:
+    items:
+      - const: tx
+      - const: rx1
+      - const: rx2
+
+  dma-coherent: true
+
+  "#address-cells":
+    const: 2
+
+  "#size-cells":
+    const: 2
+
+  ranges:
+    description:
+      Address translation for the possible RNG child node for SA2UL
+
+patternProperties:
+  "^rng@[a-f0-9]+$":
+    type: object
+    description:
+      Child RNG node for SA2UL
+
+required:
+  - compatible
+  - reg
+  - power-domains
+  - dmas
+  - dma-names
+  - dma-coherent
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/soc/ti,sci_pm_domain.h>
+
+    main_crypto: crypto@4e00000 {
+        compatible = "ti,j721-sa2ul";
+        reg = <0x0 0x4e00000 0x0 0x1200>;
+        power-domains = <&k3_pds 264 TI_SCI_PD_EXCLUSIVE>;
+        dmas = <&main_udmap 0xc000>, <&main_udmap 0x4000>,
+               <&main_udmap 0x4001>;
+        dma-names = "tx", "rx1", "rx2";
+        dma-coherent;
+    };
-- 
2.17.1

--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
