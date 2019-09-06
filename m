Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E93DABFE0
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 20:50:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:
	From:To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Hp2zik2ErpDOnAu2f9Ylovw/0H+83WNdlEROHUfcU24=; b=k5q7RhatMAeTFT
	dZTrbxtxJwFpvVrexCUfYZrSDg3w1Rzdb+iwRa/tPgIVo/aTLqtDpxqlYIJL7T5cDClVWILIk+lym
	RNUevVhgMpE765MyaxEl5TeMyFqEmlZrJnaThOxCp5jbGlXKrQmdWpPpafDyRImwGrqhIwMF3URb4
	ZFLxxI5dq4tG6m2d49XIayxuCDU0ZD1sBv3lhl7Io9yEwMaHm6gAP/WxKnfgNPik2fPdAD7/hlXdT
	SVhrzukuCGuRAHi/6LjTgUX8W8Yukn3n+Ra1mQRnlpJOl85Kob6oJQrorZ+LE8SWCPq2bJQ5qNuY4
	ok8osDAQeSwQYb2+9tBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6JJp-0000T5-0N; Fri, 06 Sep 2019 18:50:49 +0000
Received: from mout.web.de ([212.227.17.11])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6JJf-0000Se-Ri; Fri, 06 Sep 2019 18:50:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1567795811;
 bh=UqJJpMX2wOb8nJEQgeIae0JSk5zfYKvW58Wq5XJ1qiQ=;
 h=X-UI-Sender-Class:To:From:Subject:Cc:Date;
 b=CX/tP+dWPzRY8Vqr2eoAi1vGXpJOa9EWeHObAPRjHrZigpqnsDr9g4ruuiI0WJMbp
 AYxnez13NHKH5DpVr5SHg8UNP11ps2VnOSePeaZm7A5pU0zrqneGinRe7i538joM6x
 XkE6B2gWGlHRlF4A8BdEr4iZl1MTmwGwkct7UPcI=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.1.2] ([93.135.58.4]) by smtp.web.de (mrweb101
 [213.165.67.124]) with ESMTPSA (Nemesis) id 0M4qOX-1iN1v40bkb-00yyDY; Fri, 06
 Sep 2019 20:50:11 +0200
To: linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-amlogic@lists.infradead.org,
 Binghui Wang <wangbinghui@hisilicon.com>, Bjorn Helgaas
 <bhelgaas@google.com>, Jingoo Han <jingoohan1@gmail.com>,
 Kevin Hilman <khilman@baylibre.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 Kukjin Kim <kgene@kernel.org>, Lorenzo Pieralisi
 <lorenzo.pieralisi@arm.com>, Yue Wang <yue.wang@Amlogic.com>,
 Xiaowei Song <songxiaowei@hisilicon.com>
From: Markus Elfring <Markus.Elfring@web.de>
Subject: [PATCH] PCI: dwc: Use PTR_ERR_OR_ZERO() in five functions
Autocrypt: addr=Markus.Elfring@web.de; prefer-encrypt=mutual; keydata=
 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 FEE=
Message-ID: <95c9dfae-af81-82ad-e989-1fdf5f29808e@web.de>
Date: Fri, 6 Sep 2019 20:50:07 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.0
MIME-Version: 1.0
Content-Language: en-US
X-Provags-ID: V03:K1:xSFzbiFK4dQGPYaCSlx0FWnqB+9gj2GZPQn32Jv99y+bS9jofJO
 QyYNPh1pEfO9S2/4rPuKWf2MYVVSgboDrxZl19spJ9hYOWJu4b51nKTaQLbnZTrD121v8LS
 peODpUvz33geQTpLw/PyiQql2aOuu3dgMoczP0TyLxXi7GfCaHZT45PKF/7NAaJhe+GJZst
 ogSWQ5k5E5yKTrDPOPMTA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:LIOzj7W/iq4=:3mHqx2c/YxIxZeymQYmJou
 h6w9X7Su+y8EDx9zmm4cnR1gFm51dZY06qcImV7wCsKqqKYNZqj00qQHYAqIA1GDUmjxir2sa
 twyBUZ2bBxDsc88wZwyrIPQfH8b5s9tDmiS6IroBv4SQa9OaBaOLgNPjDoY1z9t3lcqqVfQjL
 XM+aqwqIFm9mTcOiT/x3J5kpBfJxd3BJbDgFli1Qs2YJ08+Y6bM5j9I+lNE4AT2K/0a0m8eo3
 v0Dnali+oOec/bJXetjSRV54Uw5KotKZfnvk/8KfuRsY+OBv5b7aLpkA2N0dMJZJZbxD3DQkd
 fwuVNznb4GAH0fMvRqJvg1w4BBszmOBq2LAsL7Uo+Cx1KcncU1JXTBpAgm51VAWyYkHUdfJcU
 EFzRBI3jC1XP/N4NAmtvffJW+/D3XDP+X5n7cVqrGDQ6HxnmDfHKShs2cE0SfeaPZVNZt6Rwd
 qu+MxJrQle34sx3PlRbHVg7+RNlcreqOfWMlAoNcMczSsrKXmldcQkQgoyNAmD805Va56ZTm3
 tJ7d5Lr8wxH6Oh+zooF7m3wIL5sj24/zrtlVtnj0gyOvcvPjuG5nxnntwYe+LWkulIlWIJl1O
 q5f0zGdxkslCz1T6CTPUSZyRvgv9s0LEhnU4eNslMipfVPiDELAK4X4T8cviFWLLyqiN5c00L
 J1NRl5JvRQnVKGGr/tCAFs5kDnWLLxhFsvQ6SHsgR1m2vN6TXm1RYf0RntR/gPOSDzpgngRq/
 UkNCq7CVM+v10oxX+NUjSCaKqF6cvTQom/G7k5UfCS+QZRCAVDSFtdeMVcQExuhHkduG6VNxq
 JRdfOMsCusY9p7lp++WdXPj2Xx79WCvSfnk0stCt599Cb2+XaG0ny6BkjqY28t0iu/mmSgxWZ
 V/oZ+iNXOwKb/9evrfbpzToTDe+19Ocys2x9Jh6KBTzDxyUl09cOBcxpX6nSG8HktwrGglBQs
 tnf6DY1PSxpLOOGTcR/S6rhA7N5okLvzBUEaHL2/po+tpc3oG132GibMK7GUT/MXCWHziGotn
 mKcP+6ZOXo4Pf32dvaVwiSuDRdKM0LQ+Csj9J9hKQRB0JKwO/ORDkpnouYGvsevJhQb8TV+lc
 JYl6Op7TAeWfqUgdBysNdAookyTzp/jB2+ay5x01O1gtv8OMWs41zMk6jYtxBfYXR5ZYL/XGX
 k40ZibuSQWfabTK0kJtg87yzPaCuv4wDcr5HeP+wr36jxH/dVX6p6YaI5jBSut1kDg/9Lz2Al
 NigDGb1C85+tvFznE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_115040_197758_AE660698 
X-CRM114-Status: UNSURE (   9.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.11 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (markus.elfring[at]web.de)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: YueHaibing <yuehaibing@huawei.com>, zhong jiang <zhongjiang@huawei.com>,
 kernel-janitors@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Markus Elfring <elfring@users.sourceforge.net>
Date: Fri, 6 Sep 2019 20:40:06 +0200

Simplify these function implementations by using a known function.

Generated by: scripts/coccinelle/api/ptr_ret.cocci

Signed-off-by: Markus Elfring <elfring@users.sourceforge.net>
---
 drivers/pci/controller/dwc/pci-exynos.c |  5 +----
 drivers/pci/controller/dwc/pci-meson.c  | 10 ++--------
 drivers/pci/controller/dwc/pcie-kirin.c | 10 ++--------
 3 files changed, 5 insertions(+), 20 deletions(-)

diff --git a/drivers/pci/controller/dwc/pci-exynos.c b/drivers/pci/controller/dwc/pci-exynos.c
index cee5f2f590e2..b6ab1cc5d895 100644
--- a/drivers/pci/controller/dwc/pci-exynos.c
+++ b/drivers/pci/controller/dwc/pci-exynos.c
@@ -92,10 +92,7 @@ static int exynos5440_pcie_get_mem_resources(struct platform_device *pdev,

 	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 	ep->mem_res->elbi_base = devm_ioremap_resource(dev, res);
-	if (IS_ERR(ep->mem_res->elbi_base))
-		return PTR_ERR(ep->mem_res->elbi_base);
-
-	return 0;
+	return PTR_ERR_OR_ZERO(ep->mem_res->elbi_base);
 }

 static int exynos5440_pcie_get_clk_resources(struct exynos_pcie *ep)
diff --git a/drivers/pci/controller/dwc/pci-meson.c b/drivers/pci/controller/dwc/pci-meson.c
index e35e9eaa50ee..713059918002 100644
--- a/drivers/pci/controller/dwc/pci-meson.c
+++ b/drivers/pci/controller/dwc/pci-meson.c
@@ -182,10 +182,7 @@ static int meson_pcie_get_mems(struct platform_device *pdev,

 	/* Meson SoC has two PCI controllers use same phy register*/
 	mp->mem_res.phy_base = meson_pcie_get_mem_shared(pdev, mp, "phy");
-	if (IS_ERR(mp->mem_res.phy_base))
-		return PTR_ERR(mp->mem_res.phy_base);
-
-	return 0;
+	return PTR_ERR_OR_ZERO(mp->mem_res.phy_base);
 }

 static void meson_pcie_power_on(struct meson_pcie *mp)
@@ -259,10 +256,7 @@ static int meson_pcie_probe_clocks(struct meson_pcie *mp)
 		return PTR_ERR(res->general_clk);

 	res->clk = meson_pcie_probe_clock(dev, "pcie", 0);
-	if (IS_ERR(res->clk))
-		return PTR_ERR(res->clk);
-
-	return 0;
+	return PTR_ERR_OR_ZERO(res->clk);
 }

 static inline void meson_elb_writel(struct meson_pcie *mp, u32 val, u32 reg)
diff --git a/drivers/pci/controller/dwc/pcie-kirin.c b/drivers/pci/controller/dwc/pcie-kirin.c
index c19617a912bd..75b1f1dde747 100644
--- a/drivers/pci/controller/dwc/pcie-kirin.c
+++ b/drivers/pci/controller/dwc/pcie-kirin.c
@@ -138,10 +138,7 @@ static long kirin_pcie_get_clk(struct kirin_pcie *kirin_pcie,
 		return PTR_ERR(kirin_pcie->apb_sys_clk);

 	kirin_pcie->pcie_aclk = devm_clk_get(dev, "pcie_aclk");
-	if (IS_ERR(kirin_pcie->pcie_aclk))
-		return PTR_ERR(kirin_pcie->pcie_aclk);
-
-	return 0;
+	return PTR_ERR_OR_ZERO(kirin_pcie->pcie_aclk);
 }

 static long kirin_pcie_get_resource(struct kirin_pcie *kirin_pcie,
@@ -174,10 +171,7 @@ static long kirin_pcie_get_resource(struct kirin_pcie *kirin_pcie,

 	kirin_pcie->sysctrl =
 		syscon_regmap_lookup_by_compatible("hisilicon,hi3660-sctrl");
-	if (IS_ERR(kirin_pcie->sysctrl))
-		return PTR_ERR(kirin_pcie->sysctrl);
-
-	return 0;
+	return PTR_ERR_OR_ZERO(kirin_pcie->sysctrl);
 }

 static int kirin_pcie_phy_init(struct kirin_pcie *kirin_pcie)
--
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
