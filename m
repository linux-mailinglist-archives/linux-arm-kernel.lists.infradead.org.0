Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCDB891856
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 18 Aug 2019 19:29:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZuLlt8bdZD/oZnI1YSaWXoJn4etZY8hK2vgzU5Bpbh0=; b=WPtcY/uD/bJm1A
	Zw+eOuBTDMVi7I+O9+ZImA+8eYsLccZOgWE+J6BjFVTS0TQXSziXSYf/46wckkJdfodjxoK0Ya3gT
	SCJcWwAsg+6s3ZUDeUL1/5WeC2FOG+dYMqTEu2ZuYONgMFS98P2DSqTG2cUQl3EA4e7PQ8PRR+TIp
	rDXFYy7fENH8QjCdXlq7q7OHk0RHQC7FvNwDxx303bq4rz80+P7+8Mj0OSXBC2rNzsEih7hktngWG
	JegCi0Ge5GDvxhx9UjY56jqXaS+kij3rWItuO9vZ3ngiQhICN5/Lc+JLjesdK17oi8hzv3hFCp63C
	NlIzDw2JsNpXMwebX/kA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzOz9-0001YN-On; Sun, 18 Aug 2019 17:28:55 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzOyI-0001QO-Oc
 for linux-arm-kernel@lists.infradead.org; Sun, 18 Aug 2019 17:28:04 +0000
Received: from localhost.localdomain (unknown [194.230.155.124])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A67302146E;
 Sun, 18 Aug 2019 17:27:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566149279;
 bh=iig6Re8PWJsFt/crrOvV4t6QJEhoY/povqVGZtQWCL8=;
 h=From:To:Subject:Date:From;
 b=xkCa3hC33h5bg5KUuIkrzhe1uCPvM7Tl/5rmvlydeZZ5K8asuzIByBwRVGSLc0I75
 XFDFI6xzc/4Dptm6HwBTdxhmviFC7R0LryBCOuDNdp/qnZTJfCiaGTPBC4GA/NYgZ7
 G+btALSxtO5dpm8uO0FF9jEZnumSpanY166oLTG0=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Kukjin Kim <kgene@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Vladimir Zapolskiy <vz@mleia.com>,
 Kamil Konieczny <k.konieczny@partner.samsung.com>,
 Herbert Xu <herbert@gondor.apana.org.au>,
 "David S. Miller" <davem@davemloft.net>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Tomasz Figa <tomasz.figa@gmail.com>, Chanwoo Choi <cw00.choi@samsung.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-crypto@vger.kernel.org, linux-clk@vger.kernel.org
Subject: [PATCH] MAINTAINERS: Extend patterns for Samsung SoC,
 Security Subsystem and clock drivers
Date: Sun, 18 Aug 2019 19:27:50 +0200
Message-Id: <20190818172750.20921-1-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190818_102802_938270_C4B5E291 
X-CRM114-Status: GOOD (  10.62  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Extend the patterns to cover all related files in respective
categories:
1. Samsung Exynos ARM architecture: add soc drivers headers and make
   directory matches consistent,
2. Samsung Security SubSystem driver (crypto): add bindings,
3. Samsung SoC clock drivers: add S3C24xx, S3C64xx and S5Pv210 bindings.

Cc: Kukjin Kim <kgene@kernel.org>
Cc: Vladimir Zapolskiy <vz@mleia.com>
Cc: Kamil Konieczny <k.konieczny@partner.samsung.com>
Cc: Sylwester Nawrocki <s.nawrocki@samsung.com>
Cc: Tomasz Figa <tomasz.figa@gmail.com>
Cc: Chanwoo Choi <cw00.choi@samsung.com>
Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>

---

Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-samsung-soc@vger.kernel.org
Cc: linux-crypto@vger.kernel.org
Cc: linux-clk@vger.kernel.org
---
 MAINTAINERS | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index 420567d1519a..35a4002ac58b 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -2199,8 +2199,9 @@ F:	drivers/*/*s3c24*
 F:	drivers/*/*/*s3c24*
 F:	drivers/*/*s3c64xx*
 F:	drivers/*/*s5pv210*
-F:	drivers/memory/samsung/*
-F:	drivers/soc/samsung/*
+F:	drivers/memory/samsung/
+F:	drivers/soc/samsung/
+F:	include/linux/soc/samsung/
 F:	Documentation/arm/samsung/
 F:	Documentation/devicetree/bindings/arm/samsung/
 F:	Documentation/devicetree/bindings/sram/samsung-sram.txt
@@ -14174,6 +14175,8 @@ M:	Kamil Konieczny <k.konieczny@partner.samsung.com>
 L:	linux-crypto@vger.kernel.org
 L:	linux-samsung-soc@vger.kernel.org
 S:	Maintained
+F:	Documentation/devicetree/bindings/crypto/samsung-slimsss.txt
+F:	Documentation/devicetree/bindings/crypto/samsung-sss.txt
 F:	drivers/crypto/s5p-sss.c
 
 SAMSUNG S5P/EXYNOS4 SOC SERIES CAMERA SUBSYSTEM DRIVERS
@@ -14194,6 +14197,8 @@ T:	git git://git.kernel.org/pub/scm/linux/kernel/git/snawrocki/clk.git
 F:	drivers/clk/samsung/
 F:	include/dt-bindings/clock/exynos*.h
 F:	Documentation/devicetree/bindings/clock/exynos*.txt
+F:	Documentation/devicetree/bindings/clock/samsung,s3c*
+F:	Documentation/devicetree/bindings/clock/samsung,s5p*
 
 SAMSUNG SPI DRIVERS
 M:	Kukjin Kim <kgene@kernel.org>
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
