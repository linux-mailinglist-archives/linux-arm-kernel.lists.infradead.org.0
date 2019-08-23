Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FA419B2A1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 16:55:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=wgWCeWjllTwqiJA/5EZyXXb2lhRS8nB0Dr55HzTJWoo=; b=UWJXHtjljEEWyMHMZXV4GJSbXf
	MtOyCZkDXlkaOtOP5vzLuYrE03Ubi4xN9r5HgAkmrnih8VH6Ozsh6yVC9EzI1N7ZTAzoa7sVk34G1
	1LhfmNcaooW8oabZRCaaGwDsO+zN5500TY/7Kj2MOSPCxQ9bWBW2/fm9jWSGI4AzUULhN5gITLO+a
	3/fhNvineIeaQGkXC0R4yJ7gVrv7hKwjgLHBa9RdNK8NTVY5hnJG/IgEXJJw78SdE1aSGMljMhZ8h
	Xl9aaPMz4RcFP6Z5F4HYuVabXXpGkzZchNWDSkQoWvn1KEu/8x1Tu9qgFwgScStr+0Nm1PqRTZYrq
	1YGA371w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1AyE-0002NR-Mu; Fri, 23 Aug 2019 14:55:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1AxX-00020P-QS
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 14:54:40 +0000
Received: from localhost.localdomain (unknown [194.230.147.11])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DD6C02339D;
 Fri, 23 Aug 2019 14:54:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566572075;
 bh=nkFSF4OdOPKE92SyyY1opddYzqI9ZCG7QHMbp2W9PuM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=AnoRE8VnwWjru6srM3QiLQcSfz+FzGuu+q6QqI1T8dGTLA8Dy353T1Tx/mip+dWb6
 JDVD0z7NHFRVIQGfI6O3I+L17VOQ026wU8kLa5xUdfADyEZwoHMf0F7hjYHsu+nj6I
 ZJshruDGEcDdKTBiDO15su6xCHEvSQT/80GiwStM=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, Jonathan Cameron <jic23@kernel.org>,
 Hartmut Knaack <knaack.h@gmx.de>, Lars-Peter Clausen <lars@metafoo.de>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
 Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 =?UTF-8?q?Pawe=C5=82=20Chmiel?= <pawel.mikolaj.chmiel@gmail.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-iio@vger.kernel.org, linux-rtc@vger.kernel.org
Subject: [RFC 3/9] dt-bindings: arm: samsung: Document missing Exynos7 boards
 bindings
Date: Fri, 23 Aug 2019 16:53:50 +0200
Message-Id: <20190823145356.6341-3-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190823145356.6341-1-krzk@kernel.org>
References: <20190823145356.6341-1-krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_075435_907464_06924EA3 
X-CRM114-Status: GOOD (  10.88  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Olof Johansson <olof@lixom.net>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Tomasz Figa <tomasz.figa@gmail.com>, Arnd Bergmann <arnd@arndb.de>,
 notify@kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add missing documentation of ARMv8 Samsung Exynos7 SoC based boards
bindings.

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
---
 .../devicetree/bindings/arm/samsung/samsung-boards.yaml     | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/samsung/samsung-boards.yaml b/Documentation/devicetree/bindings/arm/samsung/samsung-boards.yaml
index f8da3b5fb374..c640191c5d73 100644
--- a/Documentation/devicetree/bindings/arm/samsung/samsung-boards.yaml
+++ b/Documentation/devicetree/bindings/arm/samsung/samsung-boards.yaml
@@ -174,6 +174,12 @@ properties:
               - samsung,tm2e                    # Samsung TM2E
           - const: samsung,exynos5433
 
+      - description: Exynos7 based boards
+        items:
+          - enum:
+              - samsung,exynos7-espresso        # Samsung Exynos7 Espresso
+          - const: samsung,exynos7
+
   firmware:
     type: object
     description:
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
