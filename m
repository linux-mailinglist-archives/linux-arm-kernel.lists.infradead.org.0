Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66C18E3851
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 18:40:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=H6zyrS1RbFDHfzAkfBngDqBLmh7x2yaqUpHbQRNW+sY=; b=AJeHQwpI/f6Z8pdgECXoO44enA
	w7RjK2YFaqcHrGz35RYXxIp5k2LOQmtSYuFKm6pm0cJZl/n70Ct9UKG7rZaFfDcaiUnHkuaWQ2LoQ
	C3a0HcEvAhucX1+wk7DpaHfAplzw30iRljqpPwyVMwYoRxeVa/M56g3+MPfctR7Qk7TkUBrkN49Ho
	NLRFkwnh7NEP0y6USsC/rwcH9akBbtWjmy0kr+wo/ZvcYEz/Z7hP8HrOTzE5xvZJFFV60IXrVof6p
	/wCEbJiRDYXM1jmyd9+azD4dgVuGXERk4WmVyAYmjAaJAn3qBx9MPT78Ox5FYRveeAK6fckYdWeAq
	jEWIwmcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNgA1-0007sW-Mj; Thu, 24 Oct 2019 16:40:29 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNg8H-0005Lw-4e
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 16:38:44 +0000
Received: by mail-wr1-x443.google.com with SMTP id q13so21864832wrs.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 24 Oct 2019 09:38:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=UL330JCxNCb1QfPA7XEdnee8d8sanDm58UEp+DpPD5E=;
 b=AO2viM8RfA1DxiniDHFsPnX7EJHu7id0/Nbauz4pHVAcEh/Vqn3h1cCsIRCAaGNIJr
 ZjlMabMeGfI++dacJ1ty4Ouq/jr7hOu1XAeoUkC1u+G903TpW9UwEjkRM1uCUUrcLVxI
 H/H643bgLQqGEWNJw5wEUgSR2bEqy2cfVXnngqm+AfFt0J2WpsMNXHexR2K3WYED4KND
 5mSLuNIQ72aRBZgvd7e+0KcCpu5+ZxUSH+089gVL4hDpasT4MWDHRnUdhJFbpRUu6rim
 ZFOwtDQ0W393tuxnG/lfjtS+iV+0GJXV74Y3KSZgyVIRWQsZLwLeBhH/kvS3Dlr7XQ3g
 bKEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=UL330JCxNCb1QfPA7XEdnee8d8sanDm58UEp+DpPD5E=;
 b=kxHzWaKua9J/X11PMtL9ReIKrU488DxtYsQa5afxY6RVnc2Kf2Gy3sH8Ipk9Ee+sSr
 H00liZts+YTKuhhaSAsEKCQcyF1/+YpNAFx8xbiYrLTtpXe1rt2SeN3gR7kCrU25Mli5
 tv1Iw55vlcqly3DxqrlzYfEPYT4XZxmqAUZbo1icLqsTUq/hk2DNbFi/hiEGraibSXL8
 HktidNwerkfianzmokSotB3xFgA2ouWlobzfRnsTHguc//g7NIdVsxnpoWtU1TI/iqO+
 ztaKqboU5dOTEBI9qyW4efHsKnm7WXvDUKfR+2FXyQ2ABZaKav8Ggrr5AimM2eDZOSCl
 /6mA==
X-Gm-Message-State: APjAAAXhSVsyPxYM5uMoxM09R1vbUvZx3NltlHzaXq5QzwYNpDhncQ3/
 gdyrFGZXuwpA+N+AtqgtXouANQ==
X-Google-Smtp-Source: APXvYqy2xkfi86nA4mhOrLIzpA090ARXwDKjuWsAZVNAIY7/Ok8ONn/AZjlyCf2mh96jrKmo/A+TgA==
X-Received: by 2002:adf:da42:: with SMTP id r2mr4493849wrl.383.1571935118290; 
 Thu, 24 Oct 2019 09:38:38 -0700 (PDT)
Received: from localhost.localdomain ([95.149.164.99])
 by smtp.gmail.com with ESMTPSA id 6sm3446175wmd.36.2019.10.24.09.38.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 24 Oct 2019 09:38:37 -0700 (PDT)
From: Lee Jones <lee.jones@linaro.org>
To: daniel.thompson@linaro.org, arnd@arndb.de, broonie@kernel.org,
 linus.walleij@linaro.org
Subject: [PATCH v3 02/10] mfd: cs5535-mfd: Remove mfd_cell->id hack
Date: Thu, 24 Oct 2019 17:38:24 +0100
Message-Id: <20191024163832.31326-3-lee.jones@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191024163832.31326-1-lee.jones@linaro.org>
References: <20191024163832.31326-1-lee.jones@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_093841_181314_4C833CEB 
X-CRM114-Status: GOOD (  13.63  )
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

The current implementation abuses the platform 'id' mfd_cell member
to index into the correct resources entry.  Seeing as enough resource
slots are already available, let's just loop through all available
bars and allocate them to their appropriate slot, even if they happen
to be zero.

Signed-off-by: Lee Jones <lee.jones@linaro.org>
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
