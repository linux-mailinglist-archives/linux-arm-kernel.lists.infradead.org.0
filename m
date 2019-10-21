Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ADD37DEA48
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 13:00:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=0Pr+0diQhNDpavIxvi0ItZfKT9NMLX9AbWPSOrCRNaA=; b=srt/b7j38MI+W0QUxfRTD2O2WB
	giC0EXrRxdsYn8yZZdg8WsmtPHS2wfHqtkLotun3f7j4xKDnNTDVRQLIBa/eWIrqR9OBXzCL7+oxz
	cCL7o3nYzKJNej0aij6E8GIlGo1SUafww3az3nbwiqJyAWOiXmCk5KptXDGDiuds1Ax7p1wwvZeGO
	IivQZmCXy6OGNX1mIAs1rloDP2MkqsS3JSBfRULnDP3Eve51HZAiO0lbOCp+rPEJDDqZscWl2GRMy
	VZfEK2TYXrlK3RrO9opYgLLVmBvoafs+bnMaNi/VcaxpM/q7lRV0MTYi7zcyd35nnza/UydBwTtVA
	JBmmsKlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMVQ9-0001gH-LI; Mon, 21 Oct 2019 11:00:17 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMVOT-0000Eg-6G
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 10:58:35 +0000
Received: by mail-wm1-x343.google.com with SMTP id r141so2707503wme.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 21 Oct 2019 03:58:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=/WGAQrvHY5TjDUNFg6EjqFOZngCTsCOrFFEohgL8HW8=;
 b=B+XYPSq1urYE2HkEcpY2835/NlXmGMnLkjGbIG1A67Ue4TIGWTiHwFP/CiCW2C5h+T
 h4Cy7j+aP+O4QHAnjFTRRYyVNuY9Dh6GepwO16DNbSg9ZunSaKm2KiwnxR/YZxkMwume
 NnjiEuKgmvF+Dq/UPGVy5kIEYzNAySo86swGeLrolI3Qz1viYRWzQ6KZRM0MNDTUYMpQ
 bmqIfZxg98ZWG+aJ29/Z2AsbhE+1Fzf6S+BVkSKStF9ShV4MWItJp7AHceymb1CxWUxI
 pWOdsLZqoiaxyXUNnc5tGbN18hG0es6wJGt6f1gYZoqqxUFOuAHs6KTLEVxNnmsmJaGp
 FkCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=/WGAQrvHY5TjDUNFg6EjqFOZngCTsCOrFFEohgL8HW8=;
 b=Icl3LSRw9I7z5GN4p1StkE0E8a7L8jDs2AQzAjsY26G+gOVxj/Zg/NKEKjTnx0ehFb
 g5iU7HvO8FNzB4qs4ORTn9K9SlzlDVKhTAUCVS2ydVaO3vJLD/vBe2bHGRUfhYepr6U0
 Iz62MOzAbVMNRjBPyuzW92QCLJIaLExcmgTMn8g8kOicZsRpKQyKneMAoE5J3lqa34Yx
 h8wnR7Tuzh3sYWwuPOBWi5CEJpuFhSapQsxWXvAlzdp+CWvg1M6wKuDPaGrldtYZmZ7q
 XNVTTEnVbXPORhFPFu/Iz2GCSlDEjvg1BaoP1Zg/nT/uslanGfdmIuSI7fCUW/f1nD3L
 T4Ew==
X-Gm-Message-State: APjAAAUhyLbg7ypOjJn3UrEHagV03XSpW7aNtXrgdioVisQ6N60XF906
 7k+BsnY1rqfHbc5VWUVYL0p6iA==
X-Google-Smtp-Source: APXvYqy4ioC1NHywrjClvJ5LC459fxXuH6zKMg0fk8PIDO/Kskdhz3hGWzFcmG6iC/AhBj6iaHvygg==
X-Received: by 2002:a05:600c:2948:: with SMTP id
 n8mr5822833wmd.128.1571655507269; 
 Mon, 21 Oct 2019 03:58:27 -0700 (PDT)
Received: from localhost.localdomain ([95.149.164.99])
 by smtp.gmail.com with ESMTPSA id q22sm12544289wmj.31.2019.10.21.03.58.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Oct 2019 03:58:26 -0700 (PDT)
From: Lee Jones <lee.jones@linaro.org>
To: daniel.thompson@linaro.org, arnd@arndb.de, broonie@kernel.org,
 linus.walleij@linaro.org
Subject: [PATCH v2 2/9] mfd: cs5535-mfd: Remove mfd_cell->id hack
Date: Mon, 21 Oct 2019 11:58:15 +0100
Message-Id: <20191021105822.20271-3-lee.jones@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191021105822.20271-1-lee.jones@linaro.org>
References: <20191021105822.20271-1-lee.jones@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_035833_261887_A74366A1 
X-CRM114-Status: GOOD (  13.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
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

The current implementation abuses the platform 'id' mfd_cell member
to index into the correct resources entry.  If we place all cells
into their numbered slots, we can cycle through all the cell entries
and only process the populated ones which avoids this behaviour.

Signed-off-by: Lee Jones <lee.jones@linaro.org>
---
 drivers/mfd/cs5535-mfd.c | 31 +++++++++++++------------------
 1 file changed, 13 insertions(+), 18 deletions(-)

diff --git a/drivers/mfd/cs5535-mfd.c b/drivers/mfd/cs5535-mfd.c
index 2c47afc22d24..9ce6bbcdbda1 100644
--- a/drivers/mfd/cs5535-mfd.c
+++ b/drivers/mfd/cs5535-mfd.c
@@ -62,26 +62,22 @@ static int cs5535_mfd_res_disable(struct platform_device *pdev)
 static struct resource cs5535_mfd_resources[NR_BARS];
 
 static struct mfd_cell cs5535_mfd_cells[] = {
-	{
-		.id = SMB_BAR,
+	[SMB_BAR] = {
 		.name = "cs5535-smb",
 		.num_resources = 1,
 		.resources = &cs5535_mfd_resources[SMB_BAR],
 	},
-	{
-		.id = GPIO_BAR,
+	[GPIO_BAR] = {
 		.name = "cs5535-gpio",
 		.num_resources = 1,
 		.resources = &cs5535_mfd_resources[GPIO_BAR],
 	},
-	{
-		.id = MFGPT_BAR,
+	[MFGPT_BAR] = {
 		.name = "cs5535-mfgpt",
 		.num_resources = 1,
 		.resources = &cs5535_mfd_resources[MFGPT_BAR],
 	},
-	{
-		.id = PMS_BAR,
+	[PMS_BAR] = {
 		.name = "cs5535-pms",
 		.num_resources = 1,
 		.resources = &cs5535_mfd_resources[PMS_BAR],
@@ -89,8 +85,7 @@ static struct mfd_cell cs5535_mfd_cells[] = {
 		.enable = cs5535_mfd_res_enable,
 		.disable = cs5535_mfd_res_disable,
 	},
-	{
-		.id = ACPI_BAR,
+	[ACPI_BAR] = {
 		.name = "cs5535-acpi",
 		.num_resources = 1,
 		.resources = &cs5535_mfd_resources[ACPI_BAR],
@@ -115,16 +110,16 @@ static int cs5535_mfd_probe(struct pci_dev *pdev,
 		return err;
 
 	/* fill in IO range for each cell; subdrivers handle the region */
-	for (i = 0; i < ARRAY_SIZE(cs5535_mfd_cells); i++) {
-		int bar = cs5535_mfd_cells[i].id;
-		struct resource *r = &cs5535_mfd_resources[bar];
+	for (i = 0; i < NR_BARS; i++) {
+		struct mfd_cell *cell = &cs5535_mfd_cells[i];
+		struct resource *r = &cs5535_mfd_resources[i];
 
-		r->flags = IORESOURCE_IO;
-		r->start = pci_resource_start(pdev, bar);
-		r->end = pci_resource_end(pdev, bar);
+		if (cell->num_resources <= 0)
+			continue;
 
-		/* id is used for temporarily storing BAR; unset it now */
-		cs5535_mfd_cells[i].id = 0;
+		r->flags = IORESOURCE_IO;
+		r->start = pci_resource_start(pdev, i);
+		r->end = pci_resource_end(pdev, i);
 	}
 
 	err = mfd_add_devices(&pdev->dev, PLATFORM_DEVID_NONE, cs5535_mfd_cells,
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
