Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F2DF13AC17
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 15:17:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9XQvlQsjppMRzXz2EzE23+eZt2ASF9aAif6K5Siqfl4=; b=Z4h1/f+38mjWKh
	FkR30UJBcCiRQ2W8cZXIzw8X4u5/kD/mTa5rLP3hBFahAt6u+0NoRtJi7PrKTx0oNPejtkTH61nQZ
	BWyY0Cbp0vdN/q7OsliZQfVFrUqEunGtqM4SsMxyZH310qyPZmHxge+r+LavDxZXFbHwcrJ/ZzgvL
	uPQh5knoF4M+XY2OTJYwr0ihlYl7bzuXemwc1SwyMemcEYunPpCpjsKfkLGwtlz6y8TV6j8Ogfcfi
	/Gij9e6BaoRLTZjpyWMxEkKqaVqyc1SRE6uDLdEd6TFJagZx9vlwbhjbPpCe1JjizRvGQ4cz42RKf
	a4xkTch0On+W2msBGtvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irN0m-0000f9-8c; Tue, 14 Jan 2020 14:17:40 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irN0G-0000Hx-8V
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 14:17:12 +0000
Received: from localhost.localdomain
 (aaubervilliers-681-1-7-206.w90-88.abo.wanadoo.fr [90.88.129.206])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 56EB92468B;
 Tue, 14 Jan 2020 14:17:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579011428;
 bh=aXlNmzU3c4DebfOZqxQIuf2kGpmEOcf7xtmQHre7OJk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=y283MTURx/bz6qeJVYlyRxufy4OQzwRT+/RKaZbTkKKPRx9KkNxYxa38ldJI0MKTo
 PhpPPic7On2n9h6QQ9BLKYRT/QN22QiLOMPlfe3cz/ABncAt3LpdvnQjdQ8vGtIQ6W
 BwiFPQdK6rxTp6N2ALcE9tN9FEp57I+DthIxGnt4=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/2] tpm: tis: add support for MMIO TPM on SynQuacer
Date: Tue, 14 Jan 2020 15:16:47 +0100
Message-Id: <20200114141647.109347-3-ardb@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200114141647.109347-1-ardb@kernel.org>
References: <20200114141647.109347-1-ardb@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_061708_339697_11CC9FD5 
X-CRM114-Status: GOOD (  12.90  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, peterhuewe@gmx.de,
 jarkko.sakkinen@linux.intel.com, jgg@ziepe.ca, masahisa.kojima@linaro.org,
 linux-integrity@vger.kernel.org, Ard Biesheuvel <ardb@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When fitted, the SynQuacer platform exposes its SPI TPM via a MMIO
window that is backed by the SPI command sequencer in the SPI bus
controller. This arrangement has the limitation that only byte size
accesses are supported, and so we'll need to provide a separate set
of read and write accessors that take this into account.

Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
---
 drivers/char/tpm/tpm_tis.c | 50 +++++++++++++++++++-
 1 file changed, 48 insertions(+), 2 deletions(-)

diff --git a/drivers/char/tpm/tpm_tis.c b/drivers/char/tpm/tpm_tis.c
index e7df342a317d..2466295fcfe8 100644
--- a/drivers/char/tpm/tpm_tis.c
+++ b/drivers/char/tpm/tpm_tis.c
@@ -32,6 +32,7 @@
 
 struct tpm_info {
 	struct resource res;
+	const struct tpm_tis_phy_ops *ops;
 	/* irq > 0 means: use irq $irq;
 	 * irq = 0 means: autoprobe for an irq;
 	 * irq = -1 means: no irq support
@@ -186,6 +187,48 @@ static const struct tpm_tis_phy_ops tpm_tcg = {
 	.write32 = tpm_tcg_write32,
 };
 
+static int tpm_tcg_read16_bw(struct tpm_tis_data *data, u32 addr, u16 *result)
+{
+	struct tpm_tis_tcg_phy *phy = to_tpm_tis_tcg_phy(data);
+
+	*result = (ioread8(phy->iobase + addr)) |
+		  (ioread8(phy->iobase + addr + 1) << 8);
+
+	return 0;
+}
+
+static int tpm_tcg_read32_bw(struct tpm_tis_data *data, u32 addr, u32 *result)
+{
+	struct tpm_tis_tcg_phy *phy = to_tpm_tis_tcg_phy(data);
+
+	*result = (ioread8(phy->iobase + addr)) |
+		  (ioread8(phy->iobase + addr + 1) << 8) |
+		  (ioread8(phy->iobase + addr + 2) << 16) |
+		  (ioread8(phy->iobase + addr + 3) << 24);
+
+	return 0;
+}
+
+static int tpm_tcg_write32_bw(struct tpm_tis_data *data, u32 addr, u32 value)
+{
+	struct tpm_tis_tcg_phy *phy = to_tpm_tis_tcg_phy(data);
+
+	iowrite8(value, phy->iobase + addr);
+	iowrite8(value >> 8, phy->iobase + addr + 1);
+	iowrite8(value >> 16, phy->iobase + addr + 2);
+	iowrite8(value >> 24, phy->iobase + addr + 3);
+
+	return 0;
+}
+
+static const struct tpm_tis_phy_ops tpm_tcg_bw = {
+	.read_bytes	= tpm_tcg_read_bytes,
+	.write_bytes	= tpm_tcg_write_bytes,
+	.read16		= tpm_tcg_read16_bw,
+	.read32		= tpm_tcg_read32_bw,
+	.write32	= tpm_tcg_write32_bw,
+};
+
 static int tpm_tis_init(struct device *dev, struct tpm_info *tpm_info)
 {
 	struct tpm_tis_tcg_phy *phy;
@@ -210,7 +253,7 @@ static int tpm_tis_init(struct device *dev, struct tpm_info *tpm_info)
 	if (itpm || is_itpm(ACPI_COMPANION(dev)))
 		phy->priv.flags |= TPM_TIS_ITPM_WORKAROUND;
 
-	return tpm_tis_core_init(dev, &phy->priv, irq, &tpm_tcg,
+	return tpm_tis_core_init(dev, &phy->priv, irq, tpm_info->ops,
 				 ACPI_HANDLE(dev));
 }
 
@@ -219,7 +262,7 @@ static SIMPLE_DEV_PM_OPS(tpm_tis_pm, tpm_pm_suspend, tpm_tis_resume);
 static int tpm_tis_pnp_init(struct pnp_dev *pnp_dev,
 			    const struct pnp_device_id *pnp_id)
 {
-	struct tpm_info tpm_info = {};
+	struct tpm_info tpm_info = { .ops = &tpm_tcg };
 	struct resource *res;
 
 	res = pnp_get_resource(pnp_dev, IORESOURCE_MEM, 0);
@@ -295,6 +338,8 @@ static int tpm_tis_plat_probe(struct platform_device *pdev)
 			tpm_info.irq = 0;
 	}
 
+	tpm_info.ops = of_device_get_match_data(&pdev->dev) ?: &tpm_tcg;
+
 	return tpm_tis_init(&pdev->dev, &tpm_info);
 }
 
@@ -311,6 +356,7 @@ static int tpm_tis_plat_remove(struct platform_device *pdev)
 #ifdef CONFIG_OF
 static const struct of_device_id tis_of_platform_match[] = {
 	{.compatible = "tcg,tpm-tis-mmio"},
+	{.compatible = "socionext,synquacer-tpm-mmio", .data = &tpm_tcg_bw},
 	{},
 };
 MODULE_DEVICE_TABLE(of, tis_of_platform_match);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
