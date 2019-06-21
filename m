Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B8B94ECC4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 18:00:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J8cLOL4WBhZ62haqjBU0zTtdLYWzXCPZduM4gFgZu6E=; b=XEWMm+8MGfw8wd
	yGb8PQQBqCcR6gC2ysFYU6YeK+KXxyZAenGvnQE6yOraqR2Nz2pvUo0/aPmCBEZs6Le5v7ff5cPZQ
	WdhAGYiAWy8x+ORQMe1E7uXBQWAjPA55+aKugHKJ7lJ+0sJ/nnNtpIFn9YHawm7wGlKmXby22OUbc
	Bc+HneSj/gTjxOfb437D32S3Cgqqtfq6IrXmnEr7K5IkETlpNL5UU0FX9bh0R8Fb8xTJK7/FXdW2q
	0sv/zQLCS+ZY8nrYLoeXtlJ7VX/kMR+SiDM1ziPbFj4smL/LVfmNNXzftB+6PSLqFtEsVAyqjKXu4
	mMM8v9YoqR6Rh02V8zlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heLxU-0006bn-73; Fri, 21 Jun 2019 16:00:12 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heLwO-0005zA-J3
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 15:59:05 +0000
Received: from localhost.localdomain (unknown [194.230.155.186])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1C6B521530;
 Fri, 21 Jun 2019 15:59:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561132744;
 bh=PF+Llwd8yY31nGr5OjUO/cfVQ/SG2UO4HozBGeHxZGg=;
 h=From:To:Subject:Date:In-Reply-To:References:From;
 b=hyuAxBtTWarQtz3irOoFgTFHCK2RoT+/OddNkhYJe5jY/Ad+A5UKWqfWW9Un+I/qN
 kij5k3Qx5D6NOUQw19gwyr3+ulnmLl/2yJ/Z22h84fMswspgqdrKDN36bzQBu6a6fw
 AuIURjCZ/2qYOf2+2efQgoEFEQET9G34H8zrZPaM=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Kukjin Kim <kgene@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Anand Moon <linux.amoon@gmail.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2 4/4] ARM: dts: exynos: Use proper regulator for eMMC memory
 on Arndale Octa
Date: Fri, 21 Jun 2019 17:58:45 +0200
Message-Id: <20190621155845.7079-4-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190621155845.7079-1-krzk@kernel.org>
References: <20190621155845.7079-1-krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_085904_715282_AF99AE43 
X-CRM114-Status: GOOD (  14.16  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

The eMMC memory is supplied by LDO18 (PVDD_EMMC_1V8) and buck10
(PVDD_EMMCF_2V8), not by LDO10. The LDO10 (PVDD_PRE_1V8) supplies
instead VDDP_MMC pin of eMMC host interface and it is already marked as
always on.

This change only properly models the hardware and reflects in usage of
regulators.  There is no functional change because:
1. LDO18 cannot be turned off (e.g. by lack of consumers) because in
   off mode it is controlled by LDO18EN pin, which is pulled up by
   always-on regulator LDO2 (PVDD_APIO_1V8).
2. LDO10 is marked as always on so removing its consumer will not have
   effect.

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>

---

Changes since v1:
1. New patch.
---
 arch/arm/boot/dts/exynos5420-arndale-octa.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/exynos5420-arndale-octa.dts b/arch/arm/boot/dts/exynos5420-arndale-octa.dts
index 3126a6c3f842..ac7f2fa0ba22 100644
--- a/arch/arm/boot/dts/exynos5420-arndale-octa.dts
+++ b/arch/arm/boot/dts/exynos5420-arndale-octa.dts
@@ -780,7 +780,7 @@
 	samsung,dw-mshc-ddr-timing = <0 2>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&sd0_clk &sd0_cmd &sd0_bus1 &sd0_bus4 &sd0_bus8>;
-	vmmc-supply = <&ldo10_reg>;
+	vmmc-supply = <&ldo18_reg>;
 	vqmmc-supply = <&ldo3_reg>;
 	bus-width = <8>;
 	cap-mmc-highspeed;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
