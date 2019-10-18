Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3000DDC4E1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 14:29:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=NZDmaz0ErsBOtNyYUDnYUFZGSp4Rb06D4G/Ni+t+JbQ=; b=eyJ5/DlI+kbNU1pu9Bh6L0uTNV
	iwzvSarWFd5u72F18GPqo2RYoHDzPxqOIfB9WxoE8ORaUVXySn662p2YpMt5pqNDilVcucm7LuLpN
	xc88OwgY5IRuL0rKn8pGrnJeJ6ZzwNtvochAlmJIHJ8UeWyn61F3doR0wffeH99AijsmoStyvn/da
	y/ijYmmM/3hIaFRPVO9xnVHYoXP4Bj6M/5yaHZ+K5BttLlVjnXvxRc7XYK1sZGCMsfQFTHX9Swl3o
	kwLx0QxAIaobRQpmJTIXImaZw79YqNFeWPVBn2JFolfJRzidMGeuUhEDfw+5Xh38GJnBD19hiQczs
	jQBnmFdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLRNj-0003l0-9k; Fri, 18 Oct 2019 12:29:23 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLRNL-0003bx-UK
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 12:29:01 +0000
Received: by mail-wr1-x444.google.com with SMTP id o28so6064586wro.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 18 Oct 2019 05:28:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=lPeqEV+lINM78OOoyJTygefplPrg9vOEAay6eoGa0zY=;
 b=U5pZ1Wzg42CoBwAgbqVmeQiaHcABrgHwn+lnnzgxyLfwzL15Ktp2HgdFDTgN04RlrC
 IvP0JqEptUYJWWPlVUvXfZD+bgjWjdjhaeGjTxd55fePxURwUU+bB1PxvMZtfLEYLGSg
 DLGLc1LeWcQ4C1m4uBpNstJI1T2l6T4Na0/be5K9E2JXn/vuZYFC70s1nc1Y8NYU1FRw
 UI5ERVAKaTV3L07XCM+pijgqQyvd1yF4WpTmkwj2lfwMyX0QCbv/1BlU5aNY/v/fEAE8
 FTLuaTMEzJIzTdFzj0buvCfccirxXIqLEkWAtGH/qYDy9HHeyA5UDwPiZjxHXHzRJASz
 qhfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=lPeqEV+lINM78OOoyJTygefplPrg9vOEAay6eoGa0zY=;
 b=qSerDi1awXo5wi4khyFz7FC18D70rJ81Se5eeYVoVNdTSWJZSbBLvYB7XlYTeZgcGP
 GdEYjs2cu0Rmh3OPbJQbYTPMjasdBIAbXSw+j6qLs72q4MU0iPN6dmZjrfRyaTysb31a
 FsjiA0V7QImjDDmglV0nRFHyrS76RHT2LeZyImV6DM9wiJ3W26jDNzK2wAnDS2GlalND
 pT86qButnJlCEMuofeiLXAcL1Hl5x+3GzQhuMHqAmOAsfGr6Lj2roIq6+JBPu/QgG0LM
 4qYwG1IFjr9GMHHlilPY8Lr9j4CIbiIXI/ARsLZS2Vs4nxTJkQfc6/lVsPRBhfRFKb3U
 UoOA==
X-Gm-Message-State: APjAAAUBSLZjxm7RjcsoMIB+pwdKBGzkX6TxII7usSmaudszqXc/nR6V
 p0v18YNi40dNq64STl+K9SdkTg==
X-Google-Smtp-Source: APXvYqzL9JbPOSxmM5s3WT+BlmpINnZEIQTPxoKol5TOU+ZCkmlP6yZV4bhu90JCXsNTVDTHWX4e8Q==
X-Received: by 2002:adf:c641:: with SMTP id u1mr7714422wrg.361.1571401738224; 
 Fri, 18 Oct 2019 05:28:58 -0700 (PDT)
Received: from localhost.localdomain ([95.149.164.47])
 by smtp.gmail.com with ESMTPSA id e3sm5033820wme.39.2019.10.18.05.28.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 18 Oct 2019 05:28:57 -0700 (PDT)
From: Lee Jones <lee.jones@linaro.org>
To: broonie@kernel.org, linus.walleij@linaro.org, daniel.thompson@linaro.org,
 arnd@arndb.de
Subject: [PATCH 1/2] mfd: mfd-core: Allocate reference counting memory
 directly to the platform device
Date: Fri, 18 Oct 2019 13:26:46 +0100
Message-Id: <20191018122647.3849-2-lee.jones@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191018122647.3849-1-lee.jones@linaro.org>
References: <20191018122647.3849-1-lee.jones@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_052859_973665_8243F635 
X-CRM114-Status: GOOD (  18.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

MFD provides reference counting (for the 2 consumers who actually use it!)
via mfd_cell's 'usage_count' member.  However, since MFD cells become
read-only (const), MFD needs to allocate writable memory and assign it to
'usage_count' before first registration.  It currently does this by
allocating enough memory for all requested child devices (yes, even disabled
ones - but we'll get to that) and assigning the base pointer plus sub-device
index to each device in the cell.

The difficulty comes when trying to free that memory.  During the removal of
the parent device, MFD unregisters each child device, keeping a tally on the
lowest memory location pointed to by a child device's 'usage_count'.  Once
all of the children are unregistered, the lowest memory location must be the
base address of the previously allocated array, right?

Well yes, until we try to honour the disabling of devices via Device Tree
for instance.  If the first child device in the provided batch is disabled,
simply skipping registration (and consequentially deregistration) will mean
that the first device's 'usage_count' pointer will not be accounted for when
attempting to find the base.  In which case, MFD will assume the first non-
disabled 'usage_count' pointer is the base and subsequently attempt to
erroneously free it.

We can avoid all of this hoop jumping by simply allocating memory to each
single child device before it is considered read-only.  We can then free
it on a per-device basis during deregistration.

Signed-off-by: Lee Jones <lee.jones@linaro.org>
---
 drivers/mfd/mfd-core.c | 42 ++++++++++++++++++------------------------
 1 file changed, 18 insertions(+), 24 deletions(-)

diff --git a/drivers/mfd/mfd-core.c b/drivers/mfd/mfd-core.c
index 23276a80e3b4..eafdadd58e8b 100644
--- a/drivers/mfd/mfd-core.c
+++ b/drivers/mfd/mfd-core.c
@@ -61,9 +61,10 @@ int mfd_cell_disable(struct platform_device *pdev)
 EXPORT_SYMBOL(mfd_cell_disable);
 
 static int mfd_platform_add_cell(struct platform_device *pdev,
-				 const struct mfd_cell *cell,
-				 atomic_t *usage_count)
+				 const struct mfd_cell *cell)
 {
+	atomic_t *usage_count;
+
 	if (!cell)
 		return 0;
 
@@ -71,7 +72,14 @@ static int mfd_platform_add_cell(struct platform_device *pdev,
 	if (!pdev->mfd_cell)
 		return -ENOMEM;
 
+	usage_count = kcalloc(1, sizeof(*usage_count), GFP_KERNEL);
+	if (!usage_count) {
+		kfree(pdev->mfd_cell);
+		return -ENOMEM;
+	}
+
 	pdev->mfd_cell->usage_count = usage_count;
+
 	return 0;
 }
 
@@ -134,7 +142,7 @@ static inline void mfd_acpi_add_device(const struct mfd_cell *cell,
 #endif
 
 static int mfd_add_device(struct device *parent, int id,
-			  const struct mfd_cell *cell, atomic_t *usage_count,
+			  const struct mfd_cell *cell,
 			  struct resource *mem_base,
 			  int irq_base, struct irq_domain *domain)
 {
@@ -196,7 +204,7 @@ static int mfd_add_device(struct device *parent, int id,
 			goto fail_alias;
 	}
 
-	ret = mfd_platform_add_cell(pdev, cell, usage_count);
+	ret = mfd_platform_add_cell(pdev, cell);
 	if (ret)
 		goto fail_alias;
 
@@ -286,16 +294,9 @@ int mfd_add_devices(struct device *parent, int id,
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
@@ -306,17 +307,15 @@ int mfd_add_devices(struct device *parent, int id,
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
@@ -327,9 +326,7 @@ static int mfd_remove_devices_fn(struct device *dev, void *c)
 	regulator_bulk_unregister_supply_alias(dev, cell->parent_supplies,
 					       cell->num_parent_supplies);
 
-	/* find the base address of usage_count pointers (for freeing) */
-	if (!*usage_count || (cell->usage_count < *usage_count))
-		*usage_count = cell->usage_count;
+	kfree(cell->usage_count);
 
 	platform_device_unregister(pdev);
 	return 0;
@@ -337,10 +334,7 @@ static int mfd_remove_devices_fn(struct device *dev, void *c)
 
 void mfd_remove_devices(struct device *parent)
 {
-	atomic_t *cnts = NULL;
-
-	device_for_each_child_reverse(parent, &cnts, mfd_remove_devices_fn);
-	kfree(cnts);
+	device_for_each_child_reverse(parent, NULL, mfd_remove_devices_fn);
 }
 EXPORT_SYMBOL(mfd_remove_devices);
 
@@ -404,7 +398,7 @@ int mfd_clone_cell(const char *cell, const char **clones, size_t n_clones)
 		cell_entry.name = clones[i];
 		/* don't give up if a single call fails; just report error */
 		if (mfd_add_device(pdev->dev.parent, -1, &cell_entry,
-				   cell_entry.usage_count, NULL, 0, NULL))
+				   NULL, 0, NULL))
 			dev_err(dev, "failed to create platform device '%s'\n",
 					clones[i]);
 	}
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
