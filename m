Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C35ADC58A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 14:57:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=o/YPXg04DRe4tSeknJq6EKxwO5L9B7k9ODUh7euOOUc=; b=DI3Tr5RTPxxdpCVdd9EWMTv2yo
	SLwsNeQBct+IlUNyGbmu+17dGrakBDWVM4zlmrXpbHojQ3kpWbSMSGbUJWjMip8QhMkU4rfpvaKEI
	nssbSiCqHwK1L76s0Rkyfu0qkXqdRwoH3w72XZdFLPjL7jJv8RQH/J9ubXqghD+3mpwpFu26VEBGA
	oPcnJYmWS8LFes0y4OC+dvTnnnw1Ze/Qvu/uiC58RbhxJgh9xsrLnkGuUsTEXe3/KLGY1OM2eXHcX
	yrBkGF5iJXY65wFWuxtPwSzoK8C53VYNLmUDSVSv6tp/XdY4MCdXTMG1hnQs5fqz7IUb60REj3DhG
	ppD/g46Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLRoZ-0008Nu-0y; Fri, 18 Oct 2019 12:57:07 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLRnj-0007wQ-HN
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 12:56:17 +0000
Received: by mail-wm1-x344.google.com with SMTP id b24so6003382wmj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 18 Oct 2019 05:56:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=tA6TKsBMxQLUjSU3fzXg4jKW0/ylO7bO362kG6mzlHw=;
 b=SGq9PI4daFfcszjMKf2wYtPHwldGY0somzhl6xsa50sVxELUnAfL1hBRF6DH65q8e+
 ejb63GlrWXNL/FqxGKP+fBm7jeh1Xxm3kB66e+SmLAN+BX6OlCaLM69RkdnszMpvJ4ua
 NdH4/2Qmt6LOZutddI2mB4sg7QT6L42JVh97GK7baN2XK5Hrikafro5EnAFfm9ldTAdq
 pYA+68ajMbp7se1ubtErRWe6dlKVnwiiVatdOzyhewkYYqz3nYhszY/g0lVNv1CBQp7r
 88R6F4ZTnbr6TLNCeplZ9/nRPFa7M5jMKG+i5UOJpzDRzv6M1AgqLIKuOgb65MS9Q3v0
 6rCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=tA6TKsBMxQLUjSU3fzXg4jKW0/ylO7bO362kG6mzlHw=;
 b=p7UCrKM5dIPSRXQskIpHZoyfHAmn9mezAjRvfXbMJIDuEPVjGqHX8QESBvKXlv+XY8
 j1YMCFiSXURvKOa93DM4jFve7EODGH8mWwtQPEeDpEW9bWI8OdqB/d3CozZKlkJyr3Eb
 9cIPxceyLua8tpWATQxiQMJXIf0uSOzK3rPwoEClyw64BoBAe2shpdVoQ8AzKFCSZJ8D
 Kc/dZ6db2zXF+PZN27cbiWtOIfTYZcuc2pW4aA3lrVF1VHW8C65ho8I7hhaTtj+g/mZR
 qQWtvSDc46CRr7NSk+HkCyvXfl9pESedMVCvthvgfnNnIA/kwNHRVs+Vh+EU6ohDAHTV
 upDw==
X-Gm-Message-State: APjAAAUR0i06/06EGe4UaoB0H3QqmgFgWYTP0STWVOpOMfB+oUp/sHoW
 kW1faIuXTD8zVtS4WkPc/haqzA==
X-Google-Smtp-Source: APXvYqwp46K8H2YQKmb4g7tbkrXHvSEqRlsPgEVRW9eieKGVBHP4e+KFUDwUxLyeujyMKqy4+WUygQ==
X-Received: by 2002:a05:600c:23cf:: with SMTP id
 p15mr3532014wmb.1.1571403372638; 
 Fri, 18 Oct 2019 05:56:12 -0700 (PDT)
Received: from localhost.localdomain ([95.149.164.47])
 by smtp.gmail.com with ESMTPSA id q14sm6058491wre.27.2019.10.18.05.56.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 18 Oct 2019 05:56:12 -0700 (PDT)
From: Lee Jones <lee.jones@linaro.org>
To: broonie@kernel.org, linus.walleij@linaro.org, daniel.thompson@linaro.org,
 arnd@arndb.de
Subject: [PATCH 2/4] mfd: cs5535-mfd: Remove mfd_cell->id hack
Date: Fri, 18 Oct 2019 13:56:06 +0100
Message-Id: <20191018125608.5362-3-lee.jones@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191018125608.5362-1-lee.jones@linaro.org>
References: <20191018125608.5362-1-lee.jones@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_055615_605544_6ACFC4F6 
X-CRM114-Status: GOOD (  13.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
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
Cc: Lee Jones <lee.jones@linaro.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, dilinger@queued.net
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
index 2c47afc22d24..b01e5bb4ed03 100644
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
+		if (!cell)
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
