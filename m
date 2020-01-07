Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BECC13211B
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 09:13:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=IlHutpzNd1Mwh6vWkDMQ484aazvEqf0CUrpN8AZxwZU=; b=DXW1mfUs6ZbeQ/Wn+8nW1PUdWQ
	RM470AGo2JipUBjuESHowlTNR5/OrPUkZxbFE03xBN/rjF9kCD+Gf4ZO/8MWlhc2ZlaBhTCjvFiK8
	ih24+w4f7hvFhqQrI6yrj4QvjVaouJm7ynC48IebEjf8YhIsQkSM/KsYSP/GKpE3QJB9VPCV/Zk4C
	TuJ5Gbdpe1OVMjwAsZzAXnwVd4kurBkeCyX1L1+hu5/9VJY/acCvMkKdw+OoYCjG8FkWCGMdxDXHN
	KcuwRn/liZPP13C0ddDUeBtc096wKqfd6O79PwRhhWlZ0tzXF65ZEfn/i9dVba/Cr3TMo96xI5fmS
	djuEXlTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iojzo-0003y7-2o; Tue, 07 Jan 2020 08:13:48 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iojzI-0003nW-Fn
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 08:13:17 +0000
Received: from PC-kkoz.proceq.com (unknown [213.160.61.66])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C846F20848;
 Tue,  7 Jan 2020 08:13:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578384796;
 bh=HtmZmG2lwa9ETbqP7zabD9e9KA9KVJ75XZnfBiQ9TDU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=XHxHobOfx/9twR7bleEOjRm97hwq4ru4O4+Etzt+Jg0qsVGhB4rmufvTl4dkYzBar
 J00ZTuZqRsxRQO1Juwv12oK3HBuJg+dZdyXy5QbIeSMtvW85VJ/jYCg42VzOmxPRrQ
 9R6dfUXjgPW8KDYSDqoSBxLMLcdBezufk90PUDYY=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Wolfram Sang <wsa@the-dreams.de>, Jean Delvare <jdelvare@suse.de>,
 Jarkko Nikula <jarkko.nikula@linux.intel.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, linux-i2c@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/2] i2c: exynos: Update Kconfig documentation
Date: Tue,  7 Jan 2020 09:12:59 +0100
Message-Id: <1578384779-15487-2-git-send-email-krzk@kernel.org>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1578384779-15487-1-git-send-email-krzk@kernel.org>
References: <1578384779-15487-1-git-send-email-krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_001316_542928_AEA9B9BF 
X-CRM114-Status: GOOD (  11.32  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Stephen Rothwell <sfr@canb.auug.org.au>, Greg KH <greg@kroah.com>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Linux Next Mailing List <linux-next@vger.kernel.org>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Update the help text to reflect current support devices:
1. The Exynos high speed I2C driver supports Exynos5 (ARMv7), Exynos5433
   and Exynos7 (both ARMv8) SoCs,
2. The S3C I2C driver supports S3C, S5Pv210 and Exynos{3,4,5} SoCs.

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>

---

Changes since v1:
1. New patch
---
 drivers/i2c/busses/Kconfig | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/i2c/busses/Kconfig b/drivers/i2c/busses/Kconfig
index 132e6f374cd7..43984d5a7fad 100644
--- a/drivers/i2c/busses/Kconfig
+++ b/drivers/i2c/busses/Kconfig
@@ -612,12 +612,12 @@ config I2C_EMEV2
 	  I2C interface on the Renesas Electronics EM/EV family of processors.
 
 config I2C_EXYNOS5
-	tristate "Exynos5 high-speed I2C driver"
+	tristate "Exynos high-speed I2C driver"
 	depends on OF
 	depends on ARCH_EXYNOS || COMPILE_TEST
 	default y if ARCH_EXYNOS
 	help
-	  High-speed I2C controller on Exynos5 based Samsung SoCs.
+	  High-speed I2C controller on Exynos5 and newer Samsung SoCs.
 
 config I2C_GPIO
 	tristate "GPIO-based bitbanging I2C"
@@ -936,11 +936,11 @@ config HAVE_S3C2410_I2C
 	  respective Kconfig file.
 
 config I2C_S3C2410
-	tristate "S3C2410 I2C Driver"
+	tristate "S3C/Exynos I2C Driver"
 	depends on HAVE_S3C2410_I2C || COMPILE_TEST
 	help
 	  Say Y here to include support for I2C controller in the
-	  Samsung SoCs.
+	  Samsung SoCs (S3C, S5Pv210, Exynos).
 
 config I2C_SH7760
 	tristate "Renesas SH7760 I2C Controller"
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
