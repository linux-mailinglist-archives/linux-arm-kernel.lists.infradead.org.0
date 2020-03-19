Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73B2618BE1E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 18:34:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rFyP9pZ2DWBzPucOpSL/jR3vlIeXonget++3HX8yg1s=; b=L9EL5JVQiffKaM
	67UK+xfNU2zLBghMiDeWSRSCauhLKRpYFrTQBbyJnV/v6KEEWWLEj7jA0KGMqjsHMt9hzA8mANTc+
	rYxdyIBvsOiXWjnl+so9zuvZ3s3zHCNPuDtxAdsuwB6sgI6RDaodyamdSwjpn7AV+GeuFvh9+Gfks
	JonBUg9N7JYVILu0n2f5TG1kIkV2V2/ZSNkO5BBvMACVAKAiKtapIv9WyI8/4qqOV4ZE5Hd9S1/pM
	bGhkntp3ZBTA8YyzZGbOzwIII5GVwnUQ58skstmelWcvWuJI9ZMFldhEEX2fW146eVx0R0H/v5Iuj
	0JLdXmoOoFQdws569smQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEz3u-0004BI-I4; Thu, 19 Mar 2020 17:34:30 +0000
Received: from outils.crapouillou.net ([89.234.176.41] helo=crapouillou.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEz3m-0004Ad-Ha
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Mar 2020 17:34:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=crapouillou.net;
 s=mail; t=1584639256; h=from:from:sender:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-transfer-encoding:content-transfer-encoding:
 in-reply-to:references; bh=qBlsxGpLBmHdOo3Pa/1eH5Uy1dwLHM/CfGO4+DeCi34=;
 b=Je4GKa+UuAr1MbxiDVpmiT2wk+aWvGzt4ExoMFYoO2sWeqmko1aBiLsA2E2CcpolZCP2aA
 6iaaF/ClCzWu0zh0e95nvEwehbXr1sBtTF7+/FPr5HchUKqNKfYm780nW4nc9VWOEQ7l8f
 AY7VdGxEhqFkZ2RhGi7b45mov+ZZK40=
From: Paul Cercueil <paul@crapouillou.net>
To: Kukjin Kim <kgene@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v3 1/2] dt-bindings: arm/samsung: Add compatible string for
 the Galaxy S2
Date: Thu, 19 Mar 2020 18:34:10 +0100
Message-Id: <20200319173411.20607-1-paul@crapouillou.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_103422_838472_A654506C 
X-CRM114-Status: UNSURE (   8.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Stenkin Evgeniy <stenkinevgeniy@gmail.com>,
 linux-samsung-soc@vger.kernel.org, Jonas Heinrich <onny@project-insanity.org>,
 linux-kernel@vger.kernel.org, Paul Cercueil <paul@crapouillou.net>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add compatible string for the Samsung Galaxy S2 (i9100 version), which
is an Exynos 4210 based device.

Signed-off-by: Paul Cercueil <paul@crapouillou.net>
Reviewed-by: Krzysztof Kozlowski <krzk@kernel.org>
---

Notes:
    v2: Move compatible string so that the list is sorted in alphabetical order
    
    v3: No change

 .../devicetree/bindings/arm/samsung/samsung-boards.yaml          | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/samsung/samsung-boards.yaml b/Documentation/devicetree/bindings/arm/samsung/samsung-boards.yaml
index 63acd57c4799..eb92f9eefaba 100644
--- a/Documentation/devicetree/bindings/arm/samsung/samsung-boards.yaml
+++ b/Documentation/devicetree/bindings/arm/samsung/samsung-boards.yaml
@@ -52,6 +52,7 @@ properties:
         items:
           - enum:
               - insignal,origen                 # Insignal Origen
+              - samsung,i9100                   # Samsung Galaxy S2 (GT-I9100)
               - samsung,smdkv310                # Samsung SMDKV310 eval
               - samsung,trats                   # Samsung Tizen Reference
               - samsung,universal_c210          # Samsung C210
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
