Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74EE81DDE34
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 05:39:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qEFjN7dYkvsa1ZP9nC+0yV0XC6qL6GMPatYL4xlzkVY=; b=F0nWJvCRfGrZMJ
	+b9rkteKxGugYhzSiqIufXniHzXBwHHb2DMYSsM0PTUaMX0/ATLr4dChQN8h67MgmyNNngJitHNY3
	8CBs5MNgHXWUbM01Y7LWSewxjrWak+/jnVYV4aaHWE1TqOc4dbgCSJRCW3EJSFqHrYU1fr3rNicY+
	2FF/SUdpt2dsT58aMewNP7bvHoMO114j6OTXS50ISCOZaZhy4Vr4emH+vlzDvAkeYYzS4mLxnzO/Q
	b5839FY6wDz0CO5U5JT0/ym1M0Evb060W3gSAGVOoKbvispErYH4Uw0qIblt4K7YiELJEkRFKPPxM
	b83lSf/JK7X19Xp8MTLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbyWn-0000or-BH; Fri, 22 May 2020 03:39:21 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbyUg-0007ot-6j
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 03:37:11 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 04M3b1sF023706;
 Thu, 21 May 2020 22:37:01 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1590118621;
 bh=gZlWENmGvofq+Xo+h9S1xDtvJZ+Ww2fpcJ9iY3aMylA=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=SK94ZY+nsRb1gLgCmed3Pjcf1e+ynclgfixI08/WAw+D7GJXwTtgRZXmV7BoAan/V
 /jotGBC/5U1kw1UQ9CeB/mo9wy5NadA4EMZPCHeusmq36SxYj3oYy0pchZV0zq+GLJ
 5jhfY+Fp04KByd/26XaB/b+onqvK9m6gg+Fe1YX8=
Received: from DLEE104.ent.ti.com (dlee104.ent.ti.com [157.170.170.34])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 04M3b1X1117660
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 21 May 2020 22:37:01 -0500
Received: from DLEE115.ent.ti.com (157.170.170.26) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 21
 May 2020 22:37:00 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE115.ent.ti.com
 (157.170.170.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 21 May 2020 22:37:00 -0500
Received: from a0393678ub.india.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 04M3aYc2062596;
 Thu, 21 May 2020 22:36:57 -0500
From: Kishon Vijay Abraham I <kishon@ti.com>
To: Tom Joseph <tjoseph@cadence.com>, Lorenzo Pieralisi
 <lorenzo.pieralisi@arm.com>, Rob Herring <robh@kernel.org>, Bjorn Helgaas
 <bhelgaas@google.com>
Subject: [PATCH v5 06/14] dt-bindings: PCI: cadence: Remove "mem" from reg
 binding
Date: Fri, 22 May 2020 09:06:23 +0530
Message-ID: <20200522033631.32574-7-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200522033631.32574-1-kishon@ti.com>
References: <20200522033631.32574-1-kishon@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_203710_336433_79359685 
X-CRM114-Status: GOOD (  14.03  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-omap@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

"mem" is not a memory resource and it overlaps with PCIe config space
and memory region. Removve "mem" from reg binding.

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
---
 .../devicetree/bindings/pci/cdns,cdns-pcie-host.yaml      | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/pci/cdns,cdns-pcie-host.yaml b/Documentation/devicetree/bindings/pci/cdns,cdns-pcie-host.yaml
index 84a8f095d031..6d67067843bf 100644
--- a/Documentation/devicetree/bindings/pci/cdns,cdns-pcie-host.yaml
+++ b/Documentation/devicetree/bindings/pci/cdns,cdns-pcie-host.yaml
@@ -18,13 +18,12 @@ properties:
     const: cdns,cdns-pcie-host
 
   reg:
-    maxItems: 3
+    maxItems: 2
 
   reg-names:
     items:
       - const: reg
       - const: cfg
-      - const: mem
 
   msi-parent: true
 
@@ -49,9 +48,8 @@ examples:
             device-id = <0x0200>;
 
             reg = <0x0 0xfb000000  0x0 0x01000000>,
-                  <0x0 0x41000000  0x0 0x00001000>,
-                  <0x0 0x40000000  0x0 0x04000000>;
-            reg-names = "reg", "cfg", "mem";
+                  <0x0 0x41000000  0x0 0x00001000>;
+            reg-names = "reg", "cfg";
 
             ranges = <0x02000000 0x0 0x42000000  0x0 0x42000000  0x0 0x1000000>,
                      <0x01000000 0x0 0x43000000  0x0 0x43000000  0x0 0x0010000>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
