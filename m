Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EFD917C75D
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 21:54:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=AmvyM+4hM5LopAN7PL9hUAjizUuwsQVTViKhMLCTcTw=; b=YV5CV70XvFZAPq
	SRcIIsGCOJx8DdMYYs9rvGnk5ujzKLlk5Merv/exTdA9SpwJie36GLLEp7Orl8zgtEbMYVeHMt+JU
	lGVFvLL6Y0NUHP61MzVJnLbtV3k5cQXnUcc390oZZV3YlfVHpiGxhaq6MOmTopad6v15Y5bdGGDJC
	8b+HU2CpbzOwhgYS0irvNjV9BJK5Mlq+XbRIpcZ/uyydIhoisi6nHUT3i9PjYxiQPZLsdd4sseqP8
	CQ1HVSu9fTlYM6bRnMo3WdLAN1tAgfYPNB5AyQGi2830VGMq0a3pYtZ859O2aCAEDgIhVkpTaaXIL
	T69UFZgvNaqUB5kirKKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAJzO-00041C-BU; Fri, 06 Mar 2020 20:54:34 +0000
Received: from ssl.serverraum.org ([2a01:4f8:151:8464::1:2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAJzE-0003zv-93
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 20:54:26 +0000
Received: from apollo.fritz.box (unknown
 [IPv6:2a02:810c:c200:2e91:6257:18ff:fec4:ca34])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-384) server-signature RSA-PSS (2048 bits) server-digest
 SHA256) (No client certificate requested)
 by ssl.serverraum.org (Postfix) with ESMTPSA id A22C223E5A;
 Fri,  6 Mar 2020 21:54:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walle.cc;
 s=mail2016061301; t=1583528060;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=VtE01cIb9Gn/hXGSjdQ6xRPyGzVnT85+CchIdODSGAw=;
 b=KN9dLTqLSM0CMDJogGdougKGwBd3nLcY8y5x3eCrp/1f/EBDzjgjjIVCx70SBE+BemU7X6
 7GsEO2ayBw6j7BuMA+qEZPLxMIOuKj0IKP5/kLrq/Z5vKYoZjuEJnLHFU1QCZVYWWXSBVS
 Gjon35N8nTDOM/PKslwr4J83LtQRzgg=
From: Michael Walle <michael@walle.cc>
To: dmaengine@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/2] dt-bindings: dma: fsl-edma: fix ls1028a-edma compatible
Date: Fri,  6 Mar 2020 21:54:02 +0100
Message-Id: <20200306205403.29881-1-michael@walle.cc>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Spamd-Bar: ++++++
X-Spam-Level: ******
X-Rspamd-Server: web
X-Spam-Status: Yes, score=6.40
X-Spam-Score: 6.40
X-Rspamd-Queue-Id: A22C223E5A
X-Spamd-Result: default: False [6.40 / 15.00]; FROM_HAS_DN(0.00)[];
 TO_DN_SOME(0.00)[]; R_MISSING_CHARSET(2.50)[];
 TO_MATCH_ENVRCPT_ALL(0.00)[]; TAGGED_RCPT(0.00)[dt];
 MIME_GOOD(-0.10)[text/plain]; BROKEN_CONTENT_TYPE(1.50)[];
 NEURAL_SPAM(0.00)[0.549]; DKIM_SIGNED(0.00)[];
 RCPT_COUNT_SEVEN(0.00)[11]; MID_CONTAINS_FROM(1.00)[];
 RCVD_COUNT_ZERO(0.00)[0]; FROM_EQ_ENVFROM(0.00)[];
 MIME_TRACE(0.00)[0:+];
 ASN(0.00)[asn:31334, ipnet:2a02:810c:8000::/33, country:DE];
 SUSPICIOUS_RECIPS(1.50)[]
X-Spam: Yes
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_125424_476383_C73D3068 
X-CRM114-Status: GOOD (  11.13  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a01:4f8:151:8464:0:0:1:2 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Peng Ma <peng.ma@nxp.com>,
 Michael Walle <michael@walle.cc>, Li Yang <leoyang.li@nxp.com>,
 Vinod Koul <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The bootloader will fix up the IOMMU entries only on nodes with the
compatible "fsl,vf610-edma". Thus make this compatible string mandatory
for the ls1028a-edma.

While at it, fix the "fsl,fsl," typo.

Signed-off-by: Michael Walle <michael@walle.cc>
Fixes: d8c1bdb5288d ("dt-bindings: dma: fsl-edma: add new fsl,fsl,ls1028a-edma")
---
 Documentation/devicetree/bindings/dma/fsl-edma.txt | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/dma/fsl-edma.txt b/Documentation/devicetree/bindings/dma/fsl-edma.txt
index e77b08ebcd06..ee1754739b4b 100644
--- a/Documentation/devicetree/bindings/dma/fsl-edma.txt
+++ b/Documentation/devicetree/bindings/dma/fsl-edma.txt
@@ -10,7 +10,8 @@ Required properties:
 - compatible :
 	- "fsl,vf610-edma" for eDMA used similar to that on Vybrid vf610 SoC
 	- "fsl,imx7ulp-edma" for eDMA2 used similar to that on i.mx7ulp
-	- "fsl,fsl,ls1028a-edma" for eDMA used similar to that on Vybrid vf610 SoC
+	- "fsl,ls1028a-edma" followed by "fsl,vf610-edma" for eDMA used on the
+	  LS1028A SoC.
 - reg : Specifies base physical address(s) and size of the eDMA registers.
 	The 1st region is eDMA control register's address and size.
 	The 2nd and the 3rd regions are programmable channel multiplexing
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
