Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8582DEA4D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 13:01:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=8rR++ZHxwTZtkponfrYiwjXHQDJqZw0F5R+4xuFfm2Y=; b=nXqq/IvMNyiuiUgoz2ynRNG1ul
	FHCbL3JRFYUNPls6yHHjjGjKr8TtCDVQT2rOGiWKF+kHgmsSqTywAJu/GRcPRoqGSBNcJaBr0cimu
	n0tinnX8oPDhxjH9PsZTTc9JKu9ifRKN6zXqe8BPQ8pxDeVCuAGdTJtzdNNqwlQOUL5bWW5DfPQ5e
	f8/EOj4zKBnSqHrpQVjnC/J+M7vn5QugSNyXWeNvn9i593b4fHfZmUa5+nhfuJYQVDWGMU6/f9rex
	RXaSZPTM2+trGBsXNGdRx9uY2T0WbHAVEi6KHbMhRFe1criY/F2rXLvaCkypCWYT9mVO9SnHtRHOu
	bf+XS3zg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMVQt-0003fg-QE; Mon, 21 Oct 2019 11:01:03 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMVOU-0000JU-Tt
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 10:58:37 +0000
Received: by mail-wr1-x443.google.com with SMTP id t16so8283271wrr.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 21 Oct 2019 03:58:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=IbXKOY/JOfOJZSRWAViTfLDMweZJVT8cxQjaKThEJUs=;
 b=g2YD/r70AWQyO+VHPtEGhGPosKYW86edskEOwPZfS49Q++wZv6N1rnQKxBatV5B7xd
 0tigIl5sw+dR7G0KTeD1okgY6m2eNO1BfQtAPbZw4m/PLaNZkNEX6VJBCxzrzdufBgrQ
 KC9GA121S5U9QeZlCEDMD1eoEewRJk/MGmRUmVwaFV15KX/KHkJo0g9OAP4d0zqg1pXz
 PFWtICDTNfEC6sKpBZ/k7V5lxnH8DLwG7hV78bsnGqX1+kd2vpdvjil2uYr3vMH6HTpX
 0L0lD0UFh3vgDiGSKDEfDZlRsIt0r1JaB+w+wLd4bZztkTCSb5RfwHoOCWDneAE4+GK5
 PSCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=IbXKOY/JOfOJZSRWAViTfLDMweZJVT8cxQjaKThEJUs=;
 b=DwQXH3+awkRqPSNi7f1jXAXwoWnhlDKJlTXimk3nZkG74/xkgjFYw6MM3fEVBx9rQc
 101TIEp9IPJRQL0T3TgeJFoXZYWj4x6PsqgnLY/RMMLY2gSMRy7M7HAfPCDCIqhyHoqt
 QAq5LrKfpByHlrq8MsCSW9/5WxMy06XVY73EdgGEJncv+z+mQMrD5HY3RIzHoqD4GX6a
 4nv6MPtlDcEBpLy06nHNMEK31Xfq+E50mv/UfP8/4LYbRghHo61xXe0jgeoBKhHZMyFC
 WLkFyvqyQuykHLhcoeh76UNsOh+meaL6++F03XncCng/HIUuu/Ickyugcxrg9LYvh+nU
 +rfg==
X-Gm-Message-State: APjAAAX6c/l4E8208Zqv+1/SRg4gkHrRgBPLqxIk0DKCWvuyD4ibs1Is
 4JsoaY3EoVh7XcFZ0J8Gv2Vxwg==
X-Google-Smtp-Source: APXvYqxkydzOmDDGqQFtasKd08sLyNmCwIpqqRL8Lb7I8W1Rs9wntpsGzzeulad4hu48Ctpn1GIJqA==
X-Received: by 2002:a5d:6a8b:: with SMTP id s11mr12752681wru.394.1571655513309; 
 Mon, 21 Oct 2019 03:58:33 -0700 (PDT)
Received: from localhost.localdomain ([95.149.164.99])
 by smtp.gmail.com with ESMTPSA id q22sm12544289wmj.31.2019.10.21.03.58.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Oct 2019 03:58:32 -0700 (PDT)
From: Lee Jones <lee.jones@linaro.org>
To: daniel.thompson@linaro.org, arnd@arndb.de, broonie@kernel.org,
 linus.walleij@linaro.org
Subject: [PATCH v2 8/9] mfd: mfd-core: Remove usage counting for .{en,
 dis}able() call-backs
Date: Mon, 21 Oct 2019 11:58:21 +0100
Message-Id: <20191021105822.20271-9-lee.jones@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191021105822.20271-1-lee.jones@linaro.org>
References: <20191021105822.20271-1-lee.jones@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_035835_255701_3C4F1AA4 
X-CRM114-Status: GOOD (  19.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Lee Jones <lee.jones@linaro.org>, baohua@kernel.org, stephan@gerhold.net,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The MFD implementation for reference counting was complex and unnecessary.
There was only one bona fide user which has now been converted to handle
the process in a different way. Any future resource protection, shared
enablement functions should be handed by the parent device, rather than
through the MFD subsystem API.

Signed-off-by: Lee Jones <lee.jones@linaro.org>
---
 drivers/mfd/mfd-core.c   | 57 +++++++---------------------------------
 include/linux/mfd/core.h |  2 --
 2 files changed, 9 insertions(+), 50 deletions(-)

diff --git a/drivers/mfd/mfd-core.c b/drivers/mfd/mfd-core.c
index 90b43b44a15a..5d56015baeeb 100644
--- a/drivers/mfd/mfd-core.c
+++ b/drivers/mfd/mfd-core.c
@@ -26,53 +26,31 @@ static struct device_type mfd_dev_type = {
 int mfd_cell_enable(struct platform_device *pdev)
 {
 	const struct mfd_cell *cell = mfd_get_cell(pdev);
-	int err = 0;
 
 	if (!cell->enable) {
 		dev_dbg(&pdev->dev, "No .enable() call-back registered\n");
 		return 0;
 	}
 
-	/* only call enable hook if the cell wasn't previously enabled */
-	if (atomic_inc_return(cell->usage_count) == 1)
-		err = cell->enable(pdev);
-
-	/* if the enable hook failed, decrement counter to allow retries */
-	if (err)
-		atomic_dec(cell->usage_count);
-
-	return err;
+	return cell->enable(pdev);
 }
 EXPORT_SYMBOL(mfd_cell_enable);
 
 int mfd_cell_disable(struct platform_device *pdev)
 {
 	const struct mfd_cell *cell = mfd_get_cell(pdev);
-	int err = 0;
 
 	if (!cell->enable) {
 		dev_dbg(&pdev->dev, "No .disable() call-back registered\n");
 		return 0;
 	}
 
-	/* only disable if no other clients are using it */
-	if (atomic_dec_return(cell->usage_count) == 0)
-		err = cell->disable(pdev);
-
-	/* if the disable hook failed, increment to allow retries */
-	if (err)
-		atomic_inc(cell->usage_count);
-
-	/* sanity check; did someone call disable too many times? */
-	WARN_ON(atomic_read(cell->usage_count) < 0);
-
-	return err;
+	return cell->disable(pdev);
 }
 EXPORT_SYMBOL(mfd_cell_disable);
 
 static int mfd_platform_add_cell(struct platform_device *pdev,
-				 const struct mfd_cell *cell,
-				 atomic_t *usage_count)
+				 const struct mfd_cell *cell)
 {
 	if (!cell)
 		return 0;
@@ -81,7 +59,6 @@ static int mfd_platform_add_cell(struct platform_device *pdev,
 	if (!pdev->mfd_cell)
 		return -ENOMEM;
 
-	pdev->mfd_cell->usage_count = usage_count;
 	return 0;
 }
 
@@ -144,7 +121,7 @@ static inline void mfd_acpi_add_device(const struct mfd_cell *cell,
 #endif
 
 static int mfd_add_device(struct device *parent, int id,
-			  const struct mfd_cell *cell, atomic_t *usage_count,
+			  const struct mfd_cell *cell,
 			  struct resource *mem_base,
 			  int irq_base, struct irq_domain *domain)
 {
@@ -206,7 +183,7 @@ static int mfd_add_device(struct device *parent, int id,
 			goto fail_alias;
 	}
 
-	ret = mfd_platform_add_cell(pdev, cell, usage_count);
+	ret = mfd_platform_add_cell(pdev, cell);
 	if (ret)
 		goto fail_alias;
 
@@ -296,16 +273,9 @@ int mfd_add_devices(struct device *parent, int id,
 {
 	int i;
 	int ret;
-	atomic_t *cnts;
-
-	/* initialize reference counting for all cells */
-	cnts = kcalloc(n_devs, sizeof(*cnts), GFP_KERNEL);
-	if (!cnts)
-		return -ENOMEM;
 
 	for (i = 0; i < n_devs; i++) {
-		atomic_set(&cnts[i], 0);
-		ret = mfd_add_device(parent, id, cells + i, cnts + i, mem_base,
+		ret = mfd_add_device(parent, id, cells + i, mem_base,
 				     irq_base, domain);
 		if (ret)
 			goto fail;
@@ -316,17 +286,15 @@ int mfd_add_devices(struct device *parent, int id,
 fail:
 	if (i)
 		mfd_remove_devices(parent);
-	else
-		kfree(cnts);
+
 	return ret;
 }
 EXPORT_SYMBOL(mfd_add_devices);
 
-static int mfd_remove_devices_fn(struct device *dev, void *c)
+static int mfd_remove_devices_fn(struct device *dev, void *data)
 {
 	struct platform_device *pdev;
 	const struct mfd_cell *cell;
-	atomic_t **usage_count = c;
 
 	if (dev->type != &mfd_dev_type)
 		return 0;
@@ -337,20 +305,13 @@ static int mfd_remove_devices_fn(struct device *dev, void *c)
 	regulator_bulk_unregister_supply_alias(dev, cell->parent_supplies,
 					       cell->num_parent_supplies);
 
-	/* find the base address of usage_count pointers (for freeing) */
-	if (!*usage_count || (cell->usage_count < *usage_count))
-		*usage_count = cell->usage_count;
-
 	platform_device_unregister(pdev);
 	return 0;
 }
 
 void mfd_remove_devices(struct device *parent)
 {
-	atomic_t *cnts = NULL;
-
-	device_for_each_child_reverse(parent, &cnts, mfd_remove_devices_fn);
-	kfree(cnts);
+	device_for_each_child_reverse(parent, NULL, mfd_remove_devices_fn);
 }
 EXPORT_SYMBOL(mfd_remove_devices);
 
diff --git a/include/linux/mfd/core.h b/include/linux/mfd/core.h
index bd8c0e089164..919f09fb07b7 100644
--- a/include/linux/mfd/core.h
+++ b/include/linux/mfd/core.h
@@ -30,8 +30,6 @@ struct mfd_cell {
 	const char		*name;
 	int			id;
 
-	/* refcounting for multiple drivers to use a single cell */
-	atomic_t		*usage_count;
 	int			(*enable)(struct platform_device *dev);
 	int			(*disable)(struct platform_device *dev);
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
