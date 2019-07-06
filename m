Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73D266123D
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  6 Jul 2019 18:48:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9bfNJCc4i45VJf7Y0b1avWI0K2FjNDGGKItBkq+cp/0=; b=lm4if5m9Ta99Sn
	27aW9LhlhGq5NLOp1hinawLxDU3D8ddtdDPm8p0pC8TIKGD0jQQWcNFiJLsyWDgmTxSlo2nbNNowv
	WOr3OPeD4OE3jLw0h0StP66lUfrAE5SVQyk0qbP1TLEPOWa2q3QSu52RsbklqvE6pbqOfwJs+lJSc
	jA7QaoWpgqBZLqI2tq209FXteHwrXIkvEO5XGeYhaKmB5nRX4COOOPtSpv4N9gTFQvAc/hf2MIjXv
	YqSpdk6GmN7I+jdWkxmez3ly6Pu7ZZBzF8RFf0BIMel8gyxbWY/4ZxYeHsqgIKxkniD0FWNbzK4nk
	3zD7Ro5e0Wkl863rWTPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjnrf-0005SZ-J6; Sat, 06 Jul 2019 16:48:43 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjnrF-0005Ju-9V
 for linux-arm-kernel@lists.infradead.org; Sat, 06 Jul 2019 16:48:19 +0000
Received: from localhost (unknown [62.119.166.9])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 559D220836;
 Sat,  6 Jul 2019 16:48:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1562431697;
 bh=lXv0IUjwDee6Mz/14tiR2B9luWiq3nJe/U5UhZnCCSM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=gxtsvi8sLenV+YlphxC4iuw9Q9kU5MHIMGsHvVKAa0dGl6Z9W5QaloyNIGn2yUy1b
 KkNeUR1Ru8HgxFPthfQO2W/eoXJmAPWQUnwkc78N+MQptH/N9tr769SBC22HqpefoC
 eyW3wzPjdqYCfR/mwrq3rm/pGDH2GojhZ00IhoAk=
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Lee Jones <lee.jones@linaro.org>
Subject: [PATCH 2/3] mfd: ab8500: no need to check return value of
 debugfs_create functions
Date: Sat,  6 Jul 2019 18:47:21 +0200
Message-Id: <20190706164722.18766-2-gregkh@linuxfoundation.org>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190706164722.18766-1-gregkh@linuxfoundation.org>
References: <20190706164722.18766-1-gregkh@linuxfoundation.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190706_094817_522607_84DA5287 
X-CRM114-Status: GOOD (  13.20  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 2.5 SUSPICIOUS_RECIPS      Similar addresses in recipient list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When calling debugfs functions, there is no need to ever check the
return value.  The function can work or not, but the code logic should
never do something different based on this.

Cc: Linus Walleij <linus.walleij@linaro.org>
Cc: Lee Jones <lee.jones@linaro.org>
Cc: linux-arm-kernel@lists.infradead.org
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 drivers/mfd/ab8500-debugfs.c | 324 +++++++++++------------------------
 1 file changed, 98 insertions(+), 226 deletions(-)

diff --git a/drivers/mfd/ab8500-debugfs.c b/drivers/mfd/ab8500-debugfs.c
index d24c6ecccb88..567a34b073dd 100644
--- a/drivers/mfd/ab8500-debugfs.c
+++ b/drivers/mfd/ab8500-debugfs.c
@@ -2644,12 +2644,10 @@ static const struct file_operations ab8500_hwreg_fops = {
 	.owner = THIS_MODULE,
 };
 
-static struct dentry *ab8500_dir;
-static struct dentry *ab8500_gpadc_dir;
-
 static int ab8500_debug_probe(struct platform_device *plf)
 {
-	struct dentry *file;
+	struct dentry *ab8500_dir;
+	struct dentry *ab8500_gpadc_dir;
 	struct ab8500 *ab8500;
 	struct resource *res;
 
@@ -2694,47 +2692,22 @@ static int ab8500_debug_probe(struct platform_device *plf)
 	}
 
 	ab8500_dir = debugfs_create_dir(AB8500_NAME_STRING, NULL);
-	if (!ab8500_dir)
-		goto err;
 
 	ab8500_gpadc_dir = debugfs_create_dir(AB8500_ADC_NAME_STRING,
 					      ab8500_dir);
-	if (!ab8500_gpadc_dir)
-		goto err;
-
-	file = debugfs_create_file("all-bank-registers", S_IRUGO, ab8500_dir,
-				   &plf->dev, &ab8500_bank_registers_fops);
-	if (!file)
-		goto err;
-
-	file = debugfs_create_file("all-banks", S_IRUGO, ab8500_dir,
-				   &plf->dev, &ab8500_all_banks_fops);
-	if (!file)
-		goto err;
-
-	file = debugfs_create_file("register-bank",
-				   (S_IRUGO | S_IWUSR | S_IWGRP),
-				   ab8500_dir, &plf->dev, &ab8500_bank_fops);
-	if (!file)
-		goto err;
-
-	file = debugfs_create_file("register-address",
-				   (S_IRUGO | S_IWUSR | S_IWGRP),
-				   ab8500_dir, &plf->dev, &ab8500_address_fops);
-	if (!file)
-		goto err;
-
-	file = debugfs_create_file("register-value",
-				   (S_IRUGO | S_IWUSR | S_IWGRP),
-				   ab8500_dir, &plf->dev, &ab8500_val_fops);
-	if (!file)
-		goto err;
-
-	file = debugfs_create_file("irq-subscribe",
-				   (S_IRUGO | S_IWUSR | S_IWGRP), ab8500_dir,
-				   &plf->dev, &ab8500_subscribe_fops);
-	if (!file)
-		goto err;
+
+	debugfs_create_file("all-bank-registers", S_IRUGO, ab8500_dir,
+			    &plf->dev, &ab8500_bank_registers_fops);
+	debugfs_create_file("all-banks", S_IRUGO, ab8500_dir,
+			    &plf->dev, &ab8500_all_banks_fops);
+	debugfs_create_file("register-bank", (S_IRUGO | S_IWUSR | S_IWGRP),
+			    ab8500_dir, &plf->dev, &ab8500_bank_fops);
+	debugfs_create_file("register-address", (S_IRUGO | S_IWUSR | S_IWGRP),
+			    ab8500_dir, &plf->dev, &ab8500_address_fops);
+	debugfs_create_file("register-value", (S_IRUGO | S_IWUSR | S_IWGRP),
+			    ab8500_dir, &plf->dev, &ab8500_val_fops);
+	debugfs_create_file("irq-subscribe", (S_IRUGO | S_IWUSR | S_IWGRP),
+			    ab8500_dir, &plf->dev, &ab8500_subscribe_fops);
 
 	if (is_ab8500(ab8500)) {
 		debug_ranges = ab8500_debug_ranges;
@@ -2750,194 +2723,93 @@ static int ab8500_debug_probe(struct platform_device *plf)
 		num_interrupt_lines = AB8540_NR_IRQS;
 	}
 
-	file = debugfs_create_file("interrupts", (S_IRUGO), ab8500_dir,
-				   &plf->dev, &ab8500_interrupts_fops);
-	if (!file)
-		goto err;
-
-	file = debugfs_create_file("irq-unsubscribe",
-				   (S_IRUGO | S_IWUSR | S_IWGRP), ab8500_dir,
-				   &plf->dev, &ab8500_unsubscribe_fops);
-	if (!file)
-		goto err;
-
-	file = debugfs_create_file("hwreg", (S_IRUGO | S_IWUSR | S_IWGRP),
-				   ab8500_dir, &plf->dev, &ab8500_hwreg_fops);
-	if (!file)
-		goto err;
-
-	file = debugfs_create_file("all-modem-registers",
-				   (S_IRUGO | S_IWUSR | S_IWGRP),
-				   ab8500_dir, &plf->dev, &ab8500_modem_fops);
-	if (!file)
-		goto err;
-
-	file = debugfs_create_file("bat_ctrl", (S_IRUGO | S_IWUSR | S_IWGRP),
-				   ab8500_gpadc_dir, &plf->dev,
-				   &ab8500_gpadc_bat_ctrl_fops);
-	if (!file)
-		goto err;
-
-	file = debugfs_create_file("btemp_ball", (S_IRUGO | S_IWUSR | S_IWGRP),
-				   ab8500_gpadc_dir,
-				   &plf->dev, &ab8500_gpadc_btemp_ball_fops);
-	if (!file)
-		goto err;
-
-	file = debugfs_create_file("main_charger_v",
-				   (S_IRUGO | S_IWUSR | S_IWGRP),
-				   ab8500_gpadc_dir, &plf->dev,
-				   &ab8500_gpadc_main_charger_v_fops);
-	if (!file)
-		goto err;
-
-	file = debugfs_create_file("acc_detect1",
-				   (S_IRUGO | S_IWUSR | S_IWGRP),
-				   ab8500_gpadc_dir, &plf->dev,
-				   &ab8500_gpadc_acc_detect1_fops);
-	if (!file)
-		goto err;
-
-	file = debugfs_create_file("acc_detect2",
-				   (S_IRUGO | S_IWUSR | S_IWGRP),
-				   ab8500_gpadc_dir, &plf->dev,
-				   &ab8500_gpadc_acc_detect2_fops);
-	if (!file)
-		goto err;
-
-	file = debugfs_create_file("adc_aux1", (S_IRUGO | S_IWUSR | S_IWGRP),
-				   ab8500_gpadc_dir, &plf->dev,
-				   &ab8500_gpadc_aux1_fops);
-	if (!file)
-		goto err;
-
-	file = debugfs_create_file("adc_aux2", (S_IRUGO | S_IWUSR | S_IWGRP),
-				   ab8500_gpadc_dir, &plf->dev,
-				   &ab8500_gpadc_aux2_fops);
-	if (!file)
-		goto err;
-
-	file = debugfs_create_file("main_bat_v", (S_IRUGO | S_IWUSR | S_IWGRP),
-				   ab8500_gpadc_dir, &plf->dev,
-				   &ab8500_gpadc_main_bat_v_fops);
-	if (!file)
-		goto err;
-
-	file = debugfs_create_file("vbus_v", (S_IRUGO | S_IWUSR | S_IWGRP),
-				   ab8500_gpadc_dir, &plf->dev,
-				   &ab8500_gpadc_vbus_v_fops);
-	if (!file)
-		goto err;
-
-	file = debugfs_create_file("main_charger_c",
-				   (S_IRUGO | S_IWUSR | S_IWGRP),
-				   ab8500_gpadc_dir, &plf->dev,
-				   &ab8500_gpadc_main_charger_c_fops);
-	if (!file)
-		goto err;
-
-	file = debugfs_create_file("usb_charger_c",
-				   (S_IRUGO | S_IWUSR | S_IWGRP),
-				   ab8500_gpadc_dir,
-				   &plf->dev, &ab8500_gpadc_usb_charger_c_fops);
-	if (!file)
-		goto err;
-
-	file = debugfs_create_file("bk_bat_v", (S_IRUGO | S_IWUSR | S_IWGRP),
-				   ab8500_gpadc_dir, &plf->dev,
-				   &ab8500_gpadc_bk_bat_v_fops);
-	if (!file)
-		goto err;
-
-	file = debugfs_create_file("die_temp", (S_IRUGO | S_IWUSR | S_IWGRP),
-				   ab8500_gpadc_dir, &plf->dev,
-				   &ab8500_gpadc_die_temp_fops);
-	if (!file)
-		goto err;
-
-	file = debugfs_create_file("usb_id", (S_IRUGO | S_IWUSR | S_IWGRP),
-				   ab8500_gpadc_dir, &plf->dev,
-				   &ab8500_gpadc_usb_id_fops);
-	if (!file)
-		goto err;
-
+	debugfs_create_file("interrupts", (S_IRUGO), ab8500_dir, &plf->dev,
+			    &ab8500_interrupts_fops);
+	debugfs_create_file("irq-unsubscribe", (S_IRUGO | S_IWUSR | S_IWGRP),
+			    ab8500_dir, &plf->dev, &ab8500_unsubscribe_fops);
+	debugfs_create_file("hwreg", (S_IRUGO | S_IWUSR | S_IWGRP), ab8500_dir,
+			    &plf->dev, &ab8500_hwreg_fops);
+	debugfs_create_file("all-modem-registers", (S_IRUGO | S_IWUSR | S_IWGRP),
+			    ab8500_dir, &plf->dev, &ab8500_modem_fops);
+	debugfs_create_file("bat_ctrl", (S_IRUGO | S_IWUSR | S_IWGRP),
+			    ab8500_gpadc_dir, &plf->dev,
+			    &ab8500_gpadc_bat_ctrl_fops);
+	debugfs_create_file("btemp_ball", (S_IRUGO | S_IWUSR | S_IWGRP),
+			    ab8500_gpadc_dir, &plf->dev,
+			    &ab8500_gpadc_btemp_ball_fops);
+	debugfs_create_file("main_charger_v", (S_IRUGO | S_IWUSR | S_IWGRP),
+			    ab8500_gpadc_dir, &plf->dev,
+			    &ab8500_gpadc_main_charger_v_fops);
+	debugfs_create_file("acc_detect1", (S_IRUGO | S_IWUSR | S_IWGRP),
+			    ab8500_gpadc_dir, &plf->dev,
+			    &ab8500_gpadc_acc_detect1_fops);
+	debugfs_create_file("acc_detect2", (S_IRUGO | S_IWUSR | S_IWGRP),
+			    ab8500_gpadc_dir, &plf->dev,
+			    &ab8500_gpadc_acc_detect2_fops);
+	debugfs_create_file("adc_aux1", (S_IRUGO | S_IWUSR | S_IWGRP),
+			    ab8500_gpadc_dir, &plf->dev,
+			    &ab8500_gpadc_aux1_fops);
+	debugfs_create_file("adc_aux2", (S_IRUGO | S_IWUSR | S_IWGRP),
+			    ab8500_gpadc_dir, &plf->dev,
+			    &ab8500_gpadc_aux2_fops);
+	debugfs_create_file("main_bat_v", (S_IRUGO | S_IWUSR | S_IWGRP),
+			    ab8500_gpadc_dir, &plf->dev,
+			    &ab8500_gpadc_main_bat_v_fops);
+	debugfs_create_file("vbus_v", (S_IRUGO | S_IWUSR | S_IWGRP),
+			    ab8500_gpadc_dir, &plf->dev,
+			    &ab8500_gpadc_vbus_v_fops);
+	debugfs_create_file("main_charger_c", (S_IRUGO | S_IWUSR | S_IWGRP),
+			    ab8500_gpadc_dir, &plf->dev,
+			    &ab8500_gpadc_main_charger_c_fops);
+	debugfs_create_file("usb_charger_c", (S_IRUGO | S_IWUSR | S_IWGRP),
+			    ab8500_gpadc_dir, &plf->dev,
+			    &ab8500_gpadc_usb_charger_c_fops);
+	debugfs_create_file("bk_bat_v", (S_IRUGO | S_IWUSR | S_IWGRP),
+			    ab8500_gpadc_dir, &plf->dev,
+			    &ab8500_gpadc_bk_bat_v_fops);
+	debugfs_create_file("die_temp", (S_IRUGO | S_IWUSR | S_IWGRP),
+			    ab8500_gpadc_dir, &plf->dev,
+			    &ab8500_gpadc_die_temp_fops);
+	debugfs_create_file("usb_id", (S_IRUGO | S_IWUSR | S_IWGRP),
+			    ab8500_gpadc_dir, &plf->dev,
+			    &ab8500_gpadc_usb_id_fops);
 	if (is_ab8540(ab8500)) {
-		file = debugfs_create_file("xtal_temp",
-					   (S_IRUGO | S_IWUSR | S_IWGRP),
-					   ab8500_gpadc_dir, &plf->dev,
-					   &ab8540_gpadc_xtal_temp_fops);
-		if (!file)
-			goto err;
-		file = debugfs_create_file("vbattruemeas",
-					   (S_IRUGO | S_IWUSR | S_IWGRP),
-					   ab8500_gpadc_dir, &plf->dev,
-					   &ab8540_gpadc_vbat_true_meas_fops);
-		if (!file)
-			goto err;
-		file = debugfs_create_file("batctrl_and_ibat",
-					(S_IRUGO | S_IWUGO),
-					ab8500_gpadc_dir,
-					&plf->dev,
-					&ab8540_gpadc_bat_ctrl_and_ibat_fops);
-		if (!file)
-			goto err;
-		file = debugfs_create_file("vbatmeas_and_ibat",
-					(S_IRUGO | S_IWUGO),
-					ab8500_gpadc_dir, &plf->dev,
-					&ab8540_gpadc_vbat_meas_and_ibat_fops);
-		if (!file)
-			goto err;
-		file = debugfs_create_file("vbattruemeas_and_ibat",
-				(S_IRUGO | S_IWUGO),
-				ab8500_gpadc_dir,
-				&plf->dev,
-				&ab8540_gpadc_vbat_true_meas_and_ibat_fops);
-		if (!file)
-			goto err;
-		file = debugfs_create_file("battemp_and_ibat",
-			(S_IRUGO | S_IWUGO),
-			ab8500_gpadc_dir,
-			&plf->dev, &ab8540_gpadc_bat_temp_and_ibat_fops);
-		if (!file)
-			goto err;
-		file = debugfs_create_file("otp_calib",
-				(S_IRUGO | S_IWUSR | S_IWGRP),
-				ab8500_gpadc_dir,
-				&plf->dev, &ab8540_gpadc_otp_calib_fops);
-		if (!file)
-			goto err;
+		debugfs_create_file("xtal_temp", (S_IRUGO | S_IWUSR | S_IWGRP),
+				    ab8500_gpadc_dir, &plf->dev,
+				    &ab8540_gpadc_xtal_temp_fops);
+		debugfs_create_file("vbattruemeas", (S_IRUGO | S_IWUSR | S_IWGRP),
+				    ab8500_gpadc_dir, &plf->dev,
+				    &ab8540_gpadc_vbat_true_meas_fops);
+		debugfs_create_file("batctrl_and_ibat", (S_IRUGO | S_IWUGO),
+				    ab8500_gpadc_dir, &plf->dev,
+				    &ab8540_gpadc_bat_ctrl_and_ibat_fops);
+		debugfs_create_file("vbatmeas_and_ibat", (S_IRUGO | S_IWUGO),
+				    ab8500_gpadc_dir, &plf->dev,
+				    &ab8540_gpadc_vbat_meas_and_ibat_fops);
+		debugfs_create_file("vbattruemeas_and_ibat", (S_IRUGO | S_IWUGO),
+				    ab8500_gpadc_dir, &plf->dev,
+				    &ab8540_gpadc_vbat_true_meas_and_ibat_fops);
+		debugfs_create_file("battemp_and_ibat", (S_IRUGO | S_IWUGO),
+				    ab8500_gpadc_dir, &plf->dev,
+				    &ab8540_gpadc_bat_temp_and_ibat_fops);
+		debugfs_create_file("otp_calib", (S_IRUGO | S_IWUSR | S_IWGRP),
+				    ab8500_gpadc_dir, &plf->dev,
+				    &ab8540_gpadc_otp_calib_fops);
 	}
-	file = debugfs_create_file("avg_sample", (S_IRUGO | S_IWUSR | S_IWGRP),
-				   ab8500_gpadc_dir, &plf->dev,
-				   &ab8500_gpadc_avg_sample_fops);
-	if (!file)
-		goto err;
-
-	file = debugfs_create_file("trig_edge", (S_IRUGO | S_IWUSR | S_IWGRP),
-				   ab8500_gpadc_dir, &plf->dev,
-				   &ab8500_gpadc_trig_edge_fops);
-	if (!file)
-		goto err;
-
-	file = debugfs_create_file("trig_timer", (S_IRUGO | S_IWUSR | S_IWGRP),
-				   ab8500_gpadc_dir, &plf->dev,
-				   &ab8500_gpadc_trig_timer_fops);
-	if (!file)
-		goto err;
-
-	file = debugfs_create_file("conv_type", (S_IRUGO | S_IWUSR | S_IWGRP),
-				   ab8500_gpadc_dir, &plf->dev,
-				   &ab8500_gpadc_conv_type_fops);
-	if (!file)
-		goto err;
+	debugfs_create_file("avg_sample", (S_IRUGO | S_IWUSR | S_IWGRP),
+			    ab8500_gpadc_dir, &plf->dev,
+			    &ab8500_gpadc_avg_sample_fops);
+	debugfs_create_file("trig_edge", (S_IRUGO | S_IWUSR | S_IWGRP),
+			    ab8500_gpadc_dir, &plf->dev,
+			    &ab8500_gpadc_trig_edge_fops);
+	debugfs_create_file("trig_timer", (S_IRUGO | S_IWUSR | S_IWGRP),
+			    ab8500_gpadc_dir, &plf->dev,
+			    &ab8500_gpadc_trig_timer_fops);
+	debugfs_create_file("conv_type", (S_IRUGO | S_IWUSR | S_IWGRP),
+			    ab8500_gpadc_dir, &plf->dev,
+			    &ab8500_gpadc_conv_type_fops);
 
 	return 0;
-
-err:
-	debugfs_remove_recursive(ab8500_dir);
-	dev_err(&plf->dev, "failed to create debugfs entries.\n");
-
-	return -ENOMEM;
 }
 
 static struct platform_driver ab8500_debug_driver = {
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
