Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C59419F3CD
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 12:46:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=p2n0KfvwjyQD9qh7FiCgNlPGEQHtAzFJoUT9ejClBZA=; b=gyZ
	NNnsY6tHWw4BJky+aIFrVIWJqA64p0mIETecZjgSs1xRnEti3s+GlsbGHp7kuTOW1X0xBidfaWglY
	tTauzMrgWv2W0PIVmFDkwu5dhApHY5pOGI1xKC2bIt/f7JUGj1gh0zd87aiPH462moMlkKOQjZUwx
	JD//cshkYoERtR0X73njrg5ikmDmCGeTWjJAQ03Cc8vQLZ9MuXIK5DlwODTwo3hvQRfgoNpsvxgJr
	Fm32RoLGguEea/BuIfbhwfLO3UefpoESLTJArCmgLNKJx/DLZ+U+LWH6BkU2jrbvv40QNToE83zIG
	DF5o5P2rMIxG9FOTeE5a9d3UrO97rMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLPGm-00040n-GT; Mon, 06 Apr 2020 10:46:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLPGf-00040M-5U
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Apr 2020 10:46:14 +0000
Received: from kozik-lap.mshome.net (unknown [194.230.155.125])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8A5F1206F8;
 Mon,  6 Apr 2020 10:46:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586169972;
 bh=D6gBRmYTc+zgGLpuMuzRFYrYH7t/9Cv2c9BLVW0I8ow=;
 h=From:To:Cc:Subject:Date:From;
 b=Lky6uMxo8GOtvEwgYMihpkD9LH/hRP9Cu73Mr4//sukdV5kERMpAUiMBLp527kAr1
 SCVVZXY3OAMZiLKAzABBf6qHURcCRwtP+Hp/rUPfvKA85LbbzFQsS284bcJBGxtoqQ
 5K1K9Q27SLoFXuR7eiGBrkFZpmAdG2ZLuXfFahMg=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Rob Herring <robh+dt@kernel.org>, Kukjin Kim <kgene@kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: memory-controllers: exynos-srom: Remove unneeded
 type for reg-io-width
Date: Mon,  6 Apr 2020 12:45:54 +0200
Message-Id: <20200406104554.29773-1-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_034613_228585_EAB392B7 
X-CRM114-Status: GOOD (  10.49  )
X-Spam-Score: -5.4 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Hyunki Koo <hyunki00.koo@samsung.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

'reg-io-width' property is an enum so there is no need to specify its
type.

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
---
 .../devicetree/bindings/memory-controllers/exynos-srom.yaml   | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/memory-controllers/exynos-srom.yaml b/Documentation/devicetree/bindings/memory-controllers/exynos-srom.yaml
index cdfe3f7f0ea9..1250087b4ee6 100644
--- a/Documentation/devicetree/bindings/memory-controllers/exynos-srom.yaml
+++ b/Documentation/devicetree/bindings/memory-controllers/exynos-srom.yaml
@@ -51,9 +51,7 @@ patternProperties:
         maxItems: 1
 
       reg-io-width:
-        allOf:
-          - $ref: /schemas/types.yaml#/definitions/uint32
-          - enum: [1, 2]
+        enum: [1, 2]
         description:
           Data width in bytes (1 or 2). If omitted, default of 1 is used.
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
