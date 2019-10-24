Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48BA4E385D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 18:41:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=6WolBFBnr9mH3vY6US9X09M2S0DnmmEX0Wko+qXpjY0=; b=rIQ1DKIYPyqV9tHuVie5ajScJx
	2TKF/lIm3l8ra0wCqu7w4QHLuV5QXt78qHSFsx3b7c/jJ1L9Y68hZgdzYW8N+RIzq3z6Ay9iKJUXG
	8WtP803tFtuXLBNujL4U7CGGg7yq7trMOtirWVQMwucIp4JVcnq8CJ5Ow294eGs1t/DD2ORlC+CLH
	TqSWEIhNp4bfLDiOxTrd3H9dboUOOsU88JCizmPW7XIPLwAnOORVCEv3UllYhVQv0AAUbd6M3FZEV
	kKLLK/o4pG+vWv/bRJjEWNKIuD2Ib89CS02CdDWJvr8nyZ6JLNPI8v0ZYIsWDHg8M3tDoTCEc7Mzx
	N5QKYebA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNgBM-0000k8-D2; Thu, 24 Oct 2019 16:41:52 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNg8N-0005QZ-HE
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 16:38:49 +0000
Received: by mail-wm1-x342.google.com with SMTP id q130so3080839wme.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 24 Oct 2019 09:38:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=upqfwlKhs7k/eSPsq9hKFEHUtdjIYjuhddMxgSfLZuw=;
 b=YUG57ICbMeCHTSax5yfo0FuXvnoLF8kGHiA/buq5WiRaaXKzhaT4hNG7BmqJ0OxYee
 5fxtIZKRLVRQuRTdaycwaRVkENweVVq2bD/Uw4OOt6Yv2Ev/G00NWVHRW9Nupo9Ttsfa
 Q9FVU1MUwg2MjDoHNp+pQ8Xyir6M++uUg4hpoITozf1ll2uvsKKboKHTgDhkMZywcCpk
 UbtJI5SXHKkGVSOMKSh1cMpYWBBjDYH59Mima2mb4h+QTmaErOYG4L/PT9E2UnGDGacY
 wC9sjkF1RCfgHUIjGg4AvCeZR6ZG7hIOwoKWjzXGr1qy7rwDNlB2WTfKfVorBtexRT4a
 UTTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=upqfwlKhs7k/eSPsq9hKFEHUtdjIYjuhddMxgSfLZuw=;
 b=erZT5xAHbLLIbbx2LCevy3D7/we0d3Kbn7DDFKmBotPM4iiSlcuxtfONedOEIsnFPo
 4nf6ME2doGfSJL0RV7Q5OM8+PTimfAV1SyAL4oI7w2UxiHp1mAm3cG3wZLC+1EZ+6TRe
 C6mn5DGk+llqha407dhZhAlsgY8RcSfhnrKxESS91lErQTIpurnafhbdkcJSBl6Q8s22
 b85SGff2ZuvKI+pG/JgLLd8zK6evnReeFvc+DTjDjskAXrm8R/9mpGBN7NWFMM9Yx8PS
 KxVXNNopgtqjHfViQ8OpF0GZ5vE9+qY3RD0nmdUKg4D70Jsqf7ib59Qormnd9c2Zt3XT
 LrDQ==
X-Gm-Message-State: APjAAAWwuckfVyrjl0nZzfzzdQiL033e3nq+GWepyhETC8vdNGlBFqju
 Nq95Z/715DrYcRaRBZIz3j7Yqg==
X-Google-Smtp-Source: APXvYqztrfPz3+bd3wtdfbAFLdkCPcpUkZniESUCD5PQ1uL0APt1zt4cZIHjx9Ca4JICFAfSSSf8YA==
X-Received: by 2002:a05:600c:2295:: with SMTP id
 21mr5459482wmf.106.1571935125915; 
 Thu, 24 Oct 2019 09:38:45 -0700 (PDT)
Received: from localhost.localdomain ([95.149.164.99])
 by smtp.gmail.com with ESMTPSA id 6sm3446175wmd.36.2019.10.24.09.38.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 24 Oct 2019 09:38:45 -0700 (PDT)
From: Lee Jones <lee.jones@linaro.org>
To: daniel.thompson@linaro.org, arnd@arndb.de, broonie@kernel.org,
 linus.walleij@linaro.org
Subject: [PATCH v3 09/10] mfd: mfd-core: Remove usage counting for .{en,
 dis}able() call-backs
Date: Thu, 24 Oct 2019 17:38:31 +0100
Message-Id: <20191024163832.31326-10-lee.jones@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191024163832.31326-1-lee.jones@linaro.org>
References: <20191024163832.31326-1-lee.jones@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_093847_770332_FC44AC75 
X-CRM114-Status: GOOD (  18.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Reviewed-by: Daniel Thompson <daniel.thompson@linaro.org>
---
 drivers/mfd/mfd-core.c   | 57 +++++++---------------------------------
 include/linux/mfd/core.h |  2 --
 2 files changed, 9 insertions(+), 50 deletions(-)

diff --git a/drivers/mfd/mfd-core.c b/drivers/mfd/mfd-core.c
index e38e411ca775..2535dd3605c0 100644
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
 
 	if (!cell->disable) {
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
