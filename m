Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EF1519D89E
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 16:05:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Aj/PJ+eeDRtZMTWKS83G7z7Y4uw7mPsyeNAHGIGvMe0=; b=bJP3kh0UWOQkr0
	LxH1vyhVE4bRyeFozSlpde9VHf6Ku7246SU0LfRSX7PukQc/oIobTWvhEAobau+NgJ5cKCWcAtEH2
	+qnhhAmIModxAEDwNU0l7T6wSzIJ0Ccyn6N+gI5ifoOtuUNZ+KvEFiPq09wfxQhfwExft4Hscqlch
	tk+SUjVO3VwWe9iZVKcRPCoo0S9sTk52Zd1oeAR944KKhY0lM3R2LxZhlW6k8DAtgYQ9YcJflh7IU
	1M6qDAcsD87pivk5mdAypwQK1Tg0ynkLVaxw98yjIpVMONKwsvdyntS1nYwmlp3owMgn0RciJj4cI
	eXuBBW5se0sKZYY++k4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKMwo-0007lc-JU; Fri, 03 Apr 2020 14:05:26 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKMwO-0005A5-FY
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Apr 2020 14:05:02 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 033E3FWH030927; Fri, 3 Apr 2020 16:04:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=d5sQRupo2d0Z3lLmpiw6V8YqXfIBD+SRKOfZr/LN05s=;
 b=b2V3zAA6TR8Xtrxt8UsOhHB3PjxKPuxSbd52b6XhXhxbEt7UK/YXpJ1e12ySxfVE0Ntv
 Kvl7MM8vG2nWI1IRp6zPmLJDC2HXLAGvSThy5EVUUPzx+I3506Nv/vCZYOjJMCJHeJS2
 RUCXEbJ47nHhTSw4YjLgX0hSWszg8PdsIgtVGaT1poGpoSGCIMAksuzNslhJPNT9xH3Z
 ngElsLstHKOw7PszDrsFtQUcjVN3yuDiY9PUc5dIG/vVdaQVWHHjXat1XhirAR1dmQ0h
 IKxzqbANYMG+QZJjv2e6chOkDR+WWDF0PdhVsZjeMnNikFyrReBJDgqoeMVFswIcx38z jw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 302y54bpn8-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 03 Apr 2020 16:04:39 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id D6B1610002A;
 Fri,  3 Apr 2020 16:04:38 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag5node3.st.com [10.75.127.15])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 175042B3A7E;
 Fri,  3 Apr 2020 16:04:38 +0200 (CEST)
Received: from localhost (10.75.127.46) by SFHDAG5NODE3.st.com (10.75.127.15)
 with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Fri, 3 Apr 2020 16:04:36 +0200
From: Christophe Roullier <christophe.roullier@st.com>
To: <davem@davemloft.net>, <robh+dt@kernel.org>, <mark.rutland@arm.com>,
 <mripard@kernel.org>, <martin.blumenstingl@googlemail.com>,
 <alexandru.ardelean@analog.com>, <narmstrong@baylibre.com>,
 <mcoquelin.stm32@gmail.com>, <alexandre.torgue@st.com>
Subject: [PATCH V2 1/2] dt-bindings: net: dwmac: increase 'maxItems' for
 'clocks', 'clock-names' properties
Date: Fri, 3 Apr 2020 16:04:14 +0200
Message-ID: <20200403140415.29641-2-christophe.roullier@st.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200403140415.29641-1-christophe.roullier@st.com>
References: <20200403140415.29641-1-christophe.roullier@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.46]
X-ClientProxiedBy: SFHDAG2NODE2.st.com (10.75.127.5) To SFHDAG5NODE3.st.com
 (10.75.127.15)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.676
 definitions=2020-04-03_11:2020-04-03,
 2020-04-03 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_070500_833708_0504EDB6 
X-CRM114-Status: GOOD (  13.95  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
