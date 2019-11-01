Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0FB3EBE9C
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 08:46:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=k+uryYCUA28pChAty7VAuKECSaFCYISucKJb8HpR6CU=; b=qVMpYDSEDwnoTEuWHoyPmyM2wa
	5+wAPJMNMeq+wBpY0wumUDieGF3sJVXbY1POFBfp1mJW8Obzhe/w0RKGwKO1xEr7B+FMa8Ga4jXKS
	+HKkojfaXKXAAR3XigHH04wYqrk/iA3kvpPYpHgPvdsn+BNsVEibHtGl0D9kg1BIdTT8iGJu4u3vT
	/sJnDjBrm3rBYr9QuJfl7BxpHBary9FoqD+MXQ7HO261edhUAI2bP9Lt410FBURftoLw+JZQU6cwP
	khRfCrhCb7yX3auY02oK6lJGtQcczcgcWfu0Fnpo0qMHTK5eu9ca/dIieberWox0xekLpsGR/fkAZ
	86fSC4Rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQRdD-0008V0-Vy; Fri, 01 Nov 2019 07:46:04 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQRca-00081x-UF
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 07:45:26 +0000
Received: by mail-wr1-x441.google.com with SMTP id n1so8796419wra.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 01 Nov 2019 00:45:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=C/fpce4zj8Symqro3B0UUT4uQWdn48veRLNE2xUiEm4=;
 b=vdGFsAjypI0mSjBgOqNUooAp4m4MfQ3YHrTg00PdnnA9cGN40by+eWJugaNkshf/ZB
 KR3IFrZ6ysfOE0+XKewaL50A4TNjCAL7tv0Fsi0pIY1f86g/5nZkEKP085Tux1fMEM3Y
 kUDK9XDy5ceVyg+QvbSqg6AuLfDPqtWroZrgdR0WAx0L91cOQrcqgWdjIHErHpt4VXCS
 4yHGTUCPWjz6TvOinw8pjau6F783yazcdNr+vFEpgamEysT4OqJ8ZL3O0y2usDFtAtww
 M34m9y7C+zIIeHrIkOF4qbE9xNou0Z3cBPGq/bUeLDmImLlg6fiOV/IofRdBOY0vepuW
 YXTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=C/fpce4zj8Symqro3B0UUT4uQWdn48veRLNE2xUiEm4=;
 b=razS8XUDDsv9TvfikzZ50adgUApcZKEKa2qfIhJQSDlnvcmEzKHRD2/m66yPF3Vg/7
 cJpXTc4EbSQfnRzMNYy5DaXctvdEqMGfgb4Z5Onxe+gxb9AYyT+0jzUxoonS/LGPXy/v
 hyEAwGVaKSXNzrtIxDCKR9LTQC9yKB3rjIhS5R/+sVLB5/BkJ7C70zS8aYyxOwwXnkym
 dcFIoS6B2m4MFx2lK6/PepxPAUhklHgLpSyq5zMGFKR9sx7as2DQKmSw26pokgI9UYXy
 nbNhNhVt7nLf2Zvz22ZxGsVM57s+wMrYyTJl0HlIcK1U/dn6F+TbmdhTWv9lNy02+jxP
 YLrQ==
X-Gm-Message-State: APjAAAXZxQWi52neus1H19MVUMTHoc5FYZGOpQ9RW5G3YUzrBzWo3j9M
 3Zpq+cemjB+TPHUr00t9co19xDEbsOY=
X-Google-Smtp-Source: APXvYqwq+F6gA3UQw8pVEhUfe9Xu39bSZwSSmj9CGYK4g86iUd/eJHgSykb2d4ooTXLkEUz4BlNDww==
X-Received: by 2002:a5d:6944:: with SMTP id r4mr1938621wrw.238.1572594323745; 
 Fri, 01 Nov 2019 00:45:23 -0700 (PDT)
Received: from localhost.localdomain ([2.31.163.64])
 by smtp.gmail.com with ESMTPSA id b1sm576215wrw.77.2019.11.01.00.45.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 01 Nov 2019 00:45:23 -0700 (PDT)
From: Lee Jones <lee.jones@linaro.org>
To: daniel.thompson@linaro.org,
	broonie@kernel.org
Subject: [PATCH v4 02/10] mfd: cs5535-mfd: Remove mfd_cell->id hack
Date: Fri,  1 Nov 2019 07:45:10 +0000
Message-Id: <20191101074518.26228-3-lee.jones@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191101074518.26228-1-lee.jones@linaro.org>
References: <20191101074518.26228-1-lee.jones@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_004524_976420_CF1908F6 
X-CRM114-Status: GOOD (  13.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: baohua@kernel.org, stephan@gerhold.net, arnd@arndb.de,
 linus.walleij@linaro.org, linux-kernel@vger.kernel.org,
 Lee Jones <lee.jones@linaro.org>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The current implementation abuses the platform 'id' mfd_cell member
to index into the correct resources entry.  Seeing as enough resource
slots are already available, let's just loop through all available
bars and allocate them to their appropriate slot, even if they happen
to be zero.

Signed-off-by: Lee Jones <lee.jones@linaro.org>
Reviewed-by: Daniel Thompson <daniel.thompson@linaro.org>
---
 drivers/mfd/cs5535-mfd.c | 14 ++------------
 1 file changed, 2 insertions(+), 12 deletions(-)

diff --git a/drivers/mfd/cs5535-mfd.c b/drivers/mfd/cs5535-mfd.c
index cda7f5b942e7..b35f1efa01f6 100644
--- a/drivers/mfd/cs5535-mfd.c
+++ b/drivers/mfd/cs5535-mfd.c
@@ -63,25 +63,21 @@ static struct resource cs5535_mfd_resources[NR_BARS];
 
 static struct mfd_cell cs5535_mfd_cells[] = {
 	{
-		.id = SMB_BAR,
 		.name = "cs5535-smb",
 		.num_resources = 1,
 		.resources = &cs5535_mfd_resources[SMB_BAR],
 	},
 	{
-		.id = GPIO_BAR,
 		.name = "cs5535-gpio",
 		.num_resources = 1,
 		.resources = &cs5535_mfd_resources[GPIO_BAR],
 	},
 	{
-		.id = MFGPT_BAR,
 		.name = "cs5535-mfgpt",
 		.num_resources = 1,
 		.resources = &cs5535_mfd_resources[MFGPT_BAR],
 	},
 	{
-		.id = PMS_BAR,
 		.name = "cs5535-pms",
 		.num_resources = 1,
 		.resources = &cs5535_mfd_resources[PMS_BAR],
@@ -90,7 +86,6 @@ static struct mfd_cell cs5535_mfd_cells[] = {
 		.disable = cs5535_mfd_res_disable,
 	},
 	{
-		.id = ACPI_BAR,
 		.name = "cs5535-acpi",
 		.num_resources = 1,
 		.resources = &cs5535_mfd_resources[ACPI_BAR],
@@ -108,23 +103,18 @@ static const char *olpc_acpi_clones[] = {
 static int cs5535_mfd_probe(struct pci_dev *pdev,
 		const struct pci_device_id *id)
 {
-	int err, i;
+	int err, bar;
 
 	err = pci_enable_device(pdev);
 	if (err)
 		return err;
 
-	/* fill in IO range for each cell; subdrivers handle the region */
-	for (i = 0; i < ARRAY_SIZE(cs5535_mfd_cells); i++) {
-		int bar = cs5535_mfd_cells[i].id;
+	for (bar = 0; bar < NR_BARS; bar++) {
 		struct resource *r = &cs5535_mfd_resources[bar];
 
 		r->flags = IORESOURCE_IO;
 		r->start = pci_resource_start(pdev, bar);
 		r->end = pci_resource_end(pdev, bar);
-
-		/* id is used for temporarily storing BAR; unset it now */
-		cs5535_mfd_cells[i].id = 0;
 	}
 
 	err = mfd_add_devices(&pdev->dev, PLATFORM_DEVID_NONE, cs5535_mfd_cells,
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
