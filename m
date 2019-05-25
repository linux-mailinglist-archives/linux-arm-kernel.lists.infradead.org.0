Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0253E2A385
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 May 2019 10:58:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NHPeTCintcYvOnvh1fZ2kff2u6oL7LkDRcQF2PYYjcY=; b=Ed6WUX/VuGCibF
	4yJwakRdtjo2w1kHRFHIg5MqjoQWQvLSTNeStBEUvj1uURx8scQe2LKVXgrlwaALXsroJjAbqQfao
	L1L0Ajz/oKf5R0kW5fDCOgsILcKNBwD4ShSIsM6Xtkcqrb4H8dygKIfPbRxjdKvX8VCO8Aw6aj7uM
	pG1MwdllQcrGt6mk4Yzf1cV3mYVxPUJGWURF8aKOnUUKkydIvtLq+JqQ8Oy6vXCI2gsyXI8enoknF
	P7gdWktKny2xICwulx/vCkaLzVDGDNlAvra7BUOtOBdN0BQHfBF7A6rtAyGwPU9WZU616Uu1SpPA4
	hm8jLMty4aUvuv6OQ6Vw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUSVB-0003E5-3S; Sat, 25 May 2019 08:58:05 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUSV3-0003Dc-H6; Sat, 25 May 2019 08:57:59 +0000
Received: by mail-pg1-x542.google.com with SMTP id 33so3382867pgv.9;
 Sat, 25 May 2019 01:57:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=h6CJNeJfwAGepu78xNvsTOU487N30UR9DpFDGMST21U=;
 b=XpCxCnFwOzDp3VcZX1o5V0FlLljMvB1oe0hW1xZcJhnrT6e8amg4l8ewlFYRILf2ZR
 Od7hQYRTsynjfzguryfqVKPWc4eFpdlue+oZxKlWK25hoXHcSBPxtNpPJQCI1xebbImt
 ZB5vM6JDt8PvKwuHa3JcoGSCclB4Qt6iNlE30C37aOO64CjqYsAWKvztCZkkDpAOqZZ1
 H246X7hPwAsxJrmawBRjAPEba/SItvKXWbxngV7CPXJki5JHUbDzmI5MNFteEst0Qbr9
 SRDbiS+CQs423SC8HY+Xjnn0A4XpvHgxALFpFUBM5zLDnlFh00XMoIrK1XLcl9N8wQWn
 ZGTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=h6CJNeJfwAGepu78xNvsTOU487N30UR9DpFDGMST21U=;
 b=jULC9edd6sw6vR6NcTiSgj+qHvG4x+qUCELu5Ev+NJfxGsfKye7wCfrOc5OG8n24Dt
 Mrre4knhgHeHZVFAJ3hvFaByeFdaHXEC6w9x2MmFo1uuugon6xRH9eOcHj3X7GN9c6Sz
 D5c11oky8kerH2a/ywUy2o0xu9czuIjbpXINwjR9V2YOtQDhqKH+sLNfSpioSbu/x5Es
 w91biE2uZk+INizzpHArZoLlxckL7mbsoPImbcxC/7jXByFs67jE0HjfAv6u3d+40y/J
 gB1/WamXxYzG85vJZDyvARNz1XDw/TWrMz5a2gojEA9jHIK0t5v5jKGT/HHp9cRMzDQO
 pAuw==
X-Gm-Message-State: APjAAAVfUoEJwKkYoKq8NP4vtxcljEXZTqHFITjooU5qODi2O+pbp2BO
 btkgQcqL8b3GM1Fo1UcA4SQ=
X-Google-Smtp-Source: APXvYqwBnOPc5MegctYdFcVCQeHguaHsZC8pE6zpPcNGND4G4MHfDDnpxIIuEAeIgwwHpyIswt2CqA==
X-Received: by 2002:a62:1483:: with SMTP id 125mr89353590pfu.137.1558774676547; 
 Sat, 25 May 2019 01:57:56 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.92.73])
 by smtp.gmail.com with ESMTPSA id y13sm6946808pfb.143.2019.05.25.01.57.50
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 25 May 2019 01:57:55 -0700 (PDT)
Date: Sat, 25 May 2019 14:27:48 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: ingoo Han <jingoohan1@gmail.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Kukjin Kim <kgene@kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Yue Wang <yue.wang@Amlogic.com>,
 Kevin Hilman <khilman@baylibre.com>,
 Xiaowei Song <songxiaowei@hisilicon.com>,
 Binghui Wang <wangbinghui@hisilicon.com>,
 Stanimir Varbanov <svarbanov@mm-sol.com>, Andy Gross <agross@kernel.org>,
 David Brown <david.brown@linaro.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>, linux-pci@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 linux-tegra@vger.kernel.org
Subject: [PATCH] drivers/pci/controller: fix warning PTR_ERR_OR_ZERO can be
 used
Message-ID: <20190525085748.GA10926@hari-Inspiron-1545>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190525_015757_598419_6122A3A7 
X-CRM114-Status: GOOD (  10.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (hariprasad.kelam[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

fix below warnings reported by coccichek

/drivers/pci/controller/pci-tegra.c:1132:1-3: WARNING: PTR_ERR_OR_ZERO
can be used
./drivers/pci/controller/dwc/pcie-qcom.c:703:1-3: WARNING:
PTR_ERR_OR_ZERO can be used
./drivers/pci/controller/dwc/pci-meson.c:185:1-3: WARNING:
PTR_ERR_OR_ZERO can be used
./drivers/pci/controller/dwc/pci-meson.c:262:1-3: WARNING:
PTR_ERR_OR_ZERO can be used
./drivers/pci/controller/dwc/pcie-kirin.c:141:1-3: WARNING:
PTR_ERR_OR_ZERO can be used
./drivers/pci/controller/dwc/pcie-kirin.c:177:1-3: WARNING:
PTR_ERR_OR_ZERO can be used
./drivers/pci/controller/dwc/pci-exynos.c:95:1-3: WARNING:
PTR_ERR_OR_ZERO can be used

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
---
 drivers/pci/controller/dwc/pci-exynos.c | 4 +---
 drivers/pci/controller/dwc/pci-meson.c  | 8 ++------
 drivers/pci/controller/dwc/pcie-kirin.c | 8 ++------
 drivers/pci/controller/dwc/pcie-qcom.c  | 4 +---
 drivers/pci/controller/pci-tegra.c      | 4 +---
 5 files changed, 7 insertions(+), 21 deletions(-)

diff --git a/drivers/pci/controller/dwc/pci-exynos.c b/drivers/pci/controller/dwc/pci-exynos.c
index cee5f2f..b0b4849 100644
--- a/drivers/pci/controller/dwc/pci-exynos.c
+++ b/drivers/pci/controller/dwc/pci-exynos.c
@@ -92,10 +92,8 @@ static int exynos5440_pcie_get_mem_resources(struct platform_device *pdev,
 
 	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 	ep->mem_res->elbi_base = devm_ioremap_resource(dev, res);
-	if (IS_ERR(ep->mem_res->elbi_base))
-		return PTR_ERR(ep->mem_res->elbi_base);
 
-	return 0;
+	return PTR_ERR_OR_ZERO(ep->mem_res->elbi_base);
 }
 
 static int exynos5440_pcie_get_clk_resources(struct exynos_pcie *ep)
diff --git a/drivers/pci/controller/dwc/pci-meson.c b/drivers/pci/controller/dwc/pci-meson.c
index e35e9ea..1ca78c2 100644
--- a/drivers/pci/controller/dwc/pci-meson.c
+++ b/drivers/pci/controller/dwc/pci-meson.c
@@ -182,10 +182,8 @@ static int meson_pcie_get_mems(struct platform_device *pdev,
 
 	/* Meson SoC has two PCI controllers use same phy register*/
 	mp->mem_res.phy_base = meson_pcie_get_mem_shared(pdev, mp, "phy");
-	if (IS_ERR(mp->mem_res.phy_base))
-		return PTR_ERR(mp->mem_res.phy_base);
 
-	return 0;
+	return PTR_ERR_OR_ZERO(mp->mem_res.phy_base);
 }
 
 static void meson_pcie_power_on(struct meson_pcie *mp)
@@ -259,10 +257,8 @@ static int meson_pcie_probe_clocks(struct meson_pcie *mp)
 		return PTR_ERR(res->general_clk);
 
 	res->clk = meson_pcie_probe_clock(dev, "pcie", 0);
-	if (IS_ERR(res->clk))
-		return PTR_ERR(res->clk);
 
-	return 0;
+	return PTR_ERR_OR_ZERO(res->clk);
 }
 
 static inline void meson_elb_writel(struct meson_pcie *mp, u32 val, u32 reg)
diff --git a/drivers/pci/controller/dwc/pcie-kirin.c b/drivers/pci/controller/dwc/pcie-kirin.c
index 9b59929..87cfdb4 100644
--- a/drivers/pci/controller/dwc/pcie-kirin.c
+++ b/drivers/pci/controller/dwc/pcie-kirin.c
@@ -138,10 +138,8 @@ static long kirin_pcie_get_clk(struct kirin_pcie *kirin_pcie,
 		return PTR_ERR(kirin_pcie->apb_sys_clk);
 
 	kirin_pcie->pcie_aclk = devm_clk_get(dev, "pcie_aclk");
-	if (IS_ERR(kirin_pcie->pcie_aclk))
-		return PTR_ERR(kirin_pcie->pcie_aclk);
 
-	return 0;
+	return PTR_ERR_OR_ZERO(kirin_pcie->pcie_aclk);
 }
 
 static long kirin_pcie_get_resource(struct kirin_pcie *kirin_pcie,
@@ -174,10 +172,8 @@ static long kirin_pcie_get_resource(struct kirin_pcie *kirin_pcie,
 
 	kirin_pcie->sysctrl =
 		syscon_regmap_lookup_by_compatible("hisilicon,hi3660-sctrl");
-	if (IS_ERR(kirin_pcie->sysctrl))
-		return PTR_ERR(kirin_pcie->sysctrl);
 
-	return 0;
+	return PTR_ERR_OR_ZERO(kirin_pcie->sysctrl);
 }
 
 static int kirin_pcie_phy_init(struct kirin_pcie *kirin_pcie)
diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
index 0ed235d..6c421e6 100644
--- a/drivers/pci/controller/dwc/pcie-qcom.c
+++ b/drivers/pci/controller/dwc/pcie-qcom.c
@@ -700,10 +700,8 @@ static int qcom_pcie_get_resources_2_4_0(struct qcom_pcie *pcie)
 		return PTR_ERR(res->ahb_reset);
 
 	res->phy_ahb_reset = devm_reset_control_get_exclusive(dev, "phy_ahb");
-	if (IS_ERR(res->phy_ahb_reset))
-		return PTR_ERR(res->phy_ahb_reset);
 
-	return 0;
+	return PTR_ERR_OR_ZERO(res->phy_ahb_reset);
 }
 
 static void qcom_pcie_deinit_2_4_0(struct qcom_pcie *pcie)
diff --git a/drivers/pci/controller/pci-tegra.c b/drivers/pci/controller/pci-tegra.c
index 464ba25..3cd5069 100644
--- a/drivers/pci/controller/pci-tegra.c
+++ b/drivers/pci/controller/pci-tegra.c
@@ -1129,10 +1129,8 @@ static int tegra_pcie_resets_get(struct tegra_pcie *pcie)
 		return PTR_ERR(pcie->afi_rst);
 
 	pcie->pcie_xrst = devm_reset_control_get_exclusive(dev, "pcie_x");
-	if (IS_ERR(pcie->pcie_xrst))
-		return PTR_ERR(pcie->pcie_xrst);
 
-	return 0;
+	return PTR_ERR_OR_ZERO(pcie->pcie_xrst);
 }
 
 static int tegra_pcie_phys_get_legacy(struct tegra_pcie *pcie)
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
