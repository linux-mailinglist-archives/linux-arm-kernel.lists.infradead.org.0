Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E30911888EC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 16:18:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Aj/PJ+eeDRtZMTWKS83G7z7Y4uw7mPsyeNAHGIGvMe0=; b=IH2tH+1oWbSF7x
	3+3Bon4lgASJmVSupE58Muu6G66xajKiNxpDZSmaZyUKmgjo5XENQh5XHQg9oot8oyfLS2st+EoqM
	LO+4XMpcKygZAzkDrQ1fW3rKD/9VEjOCuVWTel6UwwUcBF7Vgaf6gsXDIcUx9bpGfnJm+QTq5TpKz
	xUhSe2Q3l0M/54FR1PC3HSZebra4g7wWKR+GewWPdfm2UoBQcVx+EvXF/fsRWNh7aAlCoujqxz0Pg
	mGjeDRcr/xGK95fS0Y/c/C3gX9K7B6L+6Eda68NRX+Rxr99eo3xyeHbJyfVKRDbpltr46bT8HBaTa
	GgVh5jaHfunJyA+MQs9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEDyd-0003eL-9r; Tue, 17 Mar 2020 15:17:55 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEDyT-0003ce-8S
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Mar 2020 15:17:48 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 02HFDMg7001983; Tue, 17 Mar 2020 16:17:23 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=d5sQRupo2d0Z3lLmpiw6V8YqXfIBD+SRKOfZr/LN05s=;
 b=oQf2yh0sQFHlHWV5ubbyg5zahKDDBEUa9PGb87OoEGFjLxN1ZXm5QJFgMW+A9MyKkd0N
 CLii5E61HD5EijvQHcxyAb52AlLYkUcJD6EziRjWvl62qDXGyEHXVy5Pr6/NII5pWC8V
 uywXu2di0pQXapAtL8pVJZg7yz4M21hSaGXlTBkLTvgKvvXB2rTFnleHXs++P6fZA5WZ
 8hFSWOrw7NrsoZcruKm6sUfQU3nSCElRu5bmCC4is6GqvNKrOIZvhrZjdl4pZgO7Oq95
 etouCinWyQAjWvXnaQy1ASFFDJ/QBaptzKVp5vF24pNZ6ZYWUuhb2FMNnkUouHLauO76 AA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2yrqa9s1vm-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 17 Mar 2020 16:17:23 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 9A443100039;
 Tue, 17 Mar 2020 16:17:17 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag5node3.st.com [10.75.127.15])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 880342BC7B0;
 Tue, 17 Mar 2020 16:17:17 +0100 (CET)
Received: from localhost (10.75.127.44) by SFHDAG5NODE3.st.com (10.75.127.15)
 with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Tue, 17 Mar 2020 16:17:16 +0100
From: Christophe Roullier <christophe.roullier@st.com>
To: <davem@davemloft.net>, <robh+dt@kernel.org>, <mark.rutland@arm.com>,
 <mripard@kernel.org>, <martin.blumenstingl@googlemail.com>,
 <alexandru.ardelean@analog.com>, <narmstrong@baylibre.com>,
 <mcoquelin.stm32@gmail.com>, <alexandre.torgue@st.com>
Subject: [PATCHv2 1/2] dt-bindings: net: dwmac: increase 'maxItems' for
 'clocks', 'clock-names' properties
Date: Tue, 17 Mar 2020 16:17:05 +0100
Message-ID: <20200317151706.25810-2-christophe.roullier@st.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200317151706.25810-1-christophe.roullier@st.com>
References: <20200317151706.25810-1-christophe.roullier@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.44]
X-ClientProxiedBy: SFHDAG2NODE2.st.com (10.75.127.5) To SFHDAG5NODE3.st.com
 (10.75.127.15)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.645
 definitions=2020-03-17_06:2020-03-17,
 2020-03-17 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_081745_749117_7187DC81 
X-CRM114-Status: GOOD (  13.09  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, christophe.roullier@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This change is needed for some soc based on snps,dwmac, which have
more than 3 clocks.

Signed-off-by: Christophe Roullier <christophe.roullier@st.com>
---
 Documentation/devicetree/bindings/net/snps,dwmac.yaml | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/net/snps,dwmac.yaml b/Documentation/devicetree/bindings/net/snps,dwmac.yaml
index e08cd4c4d568..439115b7663c 100644
--- a/Documentation/devicetree/bindings/net/snps,dwmac.yaml
+++ b/Documentation/devicetree/bindings/net/snps,dwmac.yaml
@@ -27,6 +27,7 @@ select:
           - snps,dwmac-3.710
           - snps,dwmac-4.00
           - snps,dwmac-4.10a
+          - snps,dwmac-4.20a
           - snps,dwxgmac
           - snps,dwxgmac-2.10
 
@@ -62,6 +63,7 @@ properties:
         - snps,dwmac-3.710
         - snps,dwmac-4.00
         - snps,dwmac-4.10a
+        - snps,dwmac-4.20a
         - snps,dwxgmac
         - snps,dwxgmac-2.10
 
@@ -87,7 +89,8 @@ properties:
 
   clocks:
     minItems: 1
-    maxItems: 3
+    maxItems: 5
+    additionalItems: true
     items:
       - description: GMAC main clock
       - description: Peripheral registers interface clock
@@ -97,6 +100,8 @@ properties:
           clock will be used and this is fine on some platforms.
 
   clock-names:
+    minItems: 1
+    maxItems: 5
     additionalItems: true
     contains:
       enum:
@@ -342,6 +347,7 @@ allOf:
               - allwinner,sun50i-a64-emac
               - snps,dwmac-4.00
               - snps,dwmac-4.10a
+              - snps,dwmac-4.20a
               - snps,dwxgmac
               - snps,dwxgmac-2.10
               - st,spear600-gmac
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
