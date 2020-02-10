Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6CCC157D05
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 15:04:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=v4W/aTPM8ZBorCsW2axVbsnCEKo1GPxik+2cYO5SBO4=; b=Xzg
	0ED5NFktuJnlLJ+sZEm1UE3KMiYxzjIoMdwqvo1YSVUQykCcoLkxbHSWpmK+2UWLVxUx/IaH2aswy
	Qt4+A1EwEAE9l7p4W6z/q9kKLpws3Nzd7f2fjorXa3JmUCzZas1RetmH2YEzolbUQQ1mgBckwPYkT
	V2/n/PnpJzZ4P+DpvjLAyNQhO7QTPLzR5x7HyL/ON0GaVAwDII6FMqsA/SnkZifzNCHDUOGVR5sMj
	dX+KOsnt084hlv8oIzcb/WL8O8R7gkeFjc9/JGqWZVVOCGgmY0rv9Ko3Koi3zaN+lfy0NV4cSEF1h
	gwdAQdVu4vqPqFaBs6/6efK+7RzK40A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j19fz-0007YG-E7; Mon, 10 Feb 2020 14:04:39 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j19ft-0007Xw-3x
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 14:04:34 +0000
Received: from PC-kkoz.proceq.com (unknown [213.160.61.66])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 31925206D6;
 Mon, 10 Feb 2020 14:04:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581343472;
 bh=7fRbMVB8UtpzAcwDa2C7GH4fqkKZBT/U7iNhVYXR1BE=;
 h=From:To:Cc:Subject:Date:From;
 b=tdLgfvi+MwEhD3EQ+OniSWgk5rxOMfpVefeowW9T4nkdFrXEhdP6oXDnqCoBEBuYx
 ObgGrQX7aD137yvFDvLp/DvlFnPPR41dotnWtS4p66QYZc61/ci3ujJXjRHqXebhvT
 PYQIRQ1cI6OMpIXLdo/ewczjp9CCuYx9d6Oj11n8=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Kukjin Kim <kgene@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: usb: exynos-usb: Document clock names for DWC3
 bindings
Date: Mon, 10 Feb 2020 15:04:16 +0100
Message-Id: <1581343456-18900-1-git-send-email-krzk@kernel.org>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_060433_180575_17F721C7 
X-CRM114-Status: GOOD (  11.62  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Felipe Balbi <balbi@kernel.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Exynos DWC3 driver expects certain clock names, depending on used
compatible.  Document this explicitly in the bindings.

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
---
 Documentation/devicetree/bindings/usb/exynos-usb.txt | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/usb/exynos-usb.txt b/Documentation/devicetree/bindings/usb/exynos-usb.txt
index 66c394f9e11f..6aae1544f240 100644
--- a/Documentation/devicetree/bindings/usb/exynos-usb.txt
+++ b/Documentation/devicetree/bindings/usb/exynos-usb.txt
@@ -78,7 +78,14 @@ Required properties:
  - ranges: allows valid 1:1 translation between child's address space and
 	   parent's address space
  - clocks: Clock IDs array as required by the controller.
- - clock-names: names of clocks correseponding to IDs in the clock property
+ - clock-names: Names of clocks corresponding to IDs in the clock property.
+                Following clock names shall be provided for different
+                compatibles:
+                 - samsung,exynos5250-dwusb3: "usbdrd30",
+                 - samsung,exynos5433-dwusb3: "aclk", "susp_clk", "pipe_pclk",
+                                              "phyclk",
+                 - samsung,exynos7-dwusb3: "usbdrd30", "usbdrd30_susp_clk",
+                                           "usbdrd30_axius_clk"
  - vdd10-supply: 1.0V powr supply
  - vdd33-supply: 3.0V/3.3V power supply
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
