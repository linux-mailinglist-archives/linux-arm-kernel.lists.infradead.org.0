Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 880E51AFC80
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 19 Apr 2020 19:11:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z1lhiugBl8kLDWT4eZsz84LhNkBLxWSFWyhY20MFbi4=; b=ary9tP9U1Jr2ex
	QL9O+HEORPaGhLoB0y1sRnZ0lfZdSL/8JaVTNsoAJAq3D2cGQ3KExso8FV5SSzZGY11ivaTr4q7i4
	902H71WfV/lliM7XKDvkuSKUAzPEwaP3TKKg4jlWFTuOdslCuWSypu93UhXcwfvyXUVHki1eoSDyG
	EG2iNe7LRKRPd3LD9CuDuj29hAYEGfqZTLdeeoDZuhiAPDLP0ZaH6y1kxARsLQQsXndc0FtMxo1wT
	qh1YhtaQuwO1wxMTy1Xgw4uGHTSISSnu6pz5G2StqEZx/9EYAZpiM80TAMS+PnQFtRNfZ4cVB1GFh
	3gK8DMU37h9r0kANp1mg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQDTx-0006jC-Am; Sun, 19 Apr 2020 17:11:49 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQDQh-0001qP-B1
 for linux-arm-kernel@lists.infradead.org; Sun, 19 Apr 2020 17:08:28 +0000
Received: by mail-ot1-f66.google.com with SMTP id j26so5980940ots.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 19 Apr 2020 10:08:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=GUrQRwWEdT3OPVCv5XBDcWtCr3A5NYwLye3iL8Rp6X4=;
 b=SDBeTEJFDUtlAD0vj0hGzPBm6wxvlJRsSgIttB4w7QCiKiCt9VRdg3gvimtJH6+FUy
 PtqJYl2aGECXmM4yQorxzddICIwfN1I2w4X6G0Wlgu/J2515/5R5QMYxnwFQG/dWur1P
 gsNRkBDXseSgRZgKYZnbWZwTfTZEmGqywcVhTO3UwuCL6fo5V6maGwLSntiUg/P8za2U
 1ML3nmo0W5GousjyZA3QzMNWvOIRRtlzibruluHCRg5TQRMhFZRnxHk6GYJGk/qxPeIV
 5+DGx1XE2RnBaRUHbWMAHLR6Aj9X1yRb2rlH44/to5Gfayz+0pUQwihxwI49s/BL2aXY
 ktIQ==
X-Gm-Message-State: AGi0PuZTrApmoRELh69CQxq2QysLlIfMXsO/mgYZZmq3yQUDxoW3Ftjp
 87tOL5WT9qAtmVTyK5fSAg==
X-Google-Smtp-Source: APiQypJGWLbEPjS2dTyxElGSO1SQkhT/chgz+TKrJJLrrB7yeocLCbZGPucP0I6nicooOJm2R+O0CQ==
X-Received: by 2002:a9d:6ad0:: with SMTP id m16mr6268800otq.122.1587316106702; 
 Sun, 19 Apr 2020 10:08:26 -0700 (PDT)
Received: from xps15.herring.priv (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.googlemail.com with ESMTPSA id u205sm9661938oia.37.2020.04.19.10.08.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 19 Apr 2020 10:08:26 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: Linus Walleij <linus.walleij@linaro.org>,
 Liviu Dudau <liviu.dudau@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Sudeep Holla <sudeep.holla@arm.com>
Subject: [PATCH 10/17] mfd: vexpress-sysreg: Drop unused syscon child devices
Date: Sun, 19 Apr 2020 12:08:03 -0500
Message-Id: <20200419170810.5738-11-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200419170810.5738-1-robh@kernel.org>
References: <20200419170810.5738-1-robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200419_100827_394871_55C288A4 
X-CRM114-Status: UNSURE (   9.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Arnd Bergmann <arnd@arndb.de>, linux-pm@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Kevin Brodsky <Kevin.Brodsky@arm.com>, Sebastian Reichel <sre@kernel.org>,
 Will Deacon <will@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Lee Jones <lee.jones@linaro.org>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Cc: Liviu Dudau <liviu.dudau@arm.com>
Cc: Sudeep Holla <sudeep.holla@arm.com>
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc: Linus Walleij <linus.walleij@linaro.org>
Cc: Lee Jones <lee.jones@linaro.org>
Signed-off-by: Rob Herring <robh@kernel.org>
---
 drivers/mfd/vexpress-sysreg.c | 36 -----------------------------------
 1 file changed, 36 deletions(-)

diff --git a/drivers/mfd/vexpress-sysreg.c b/drivers/mfd/vexpress-sysreg.c
index 0b9cc67706c7..90a4eda2ba2b 100644
--- a/drivers/mfd/vexpress-sysreg.c
+++ b/drivers/mfd/vexpress-sysreg.c
@@ -43,10 +43,6 @@
 
 /* The sysreg block is just a random collection of various functions... */
 
-static struct syscon_platform_data vexpress_sysreg_sys_id_pdata = {
-	.label = "sys_id",
-};
-
 static struct bgpio_pdata vexpress_sysreg_sys_led_pdata = {
 	.label = "sys_led",
 	.base = -1,
@@ -65,24 +61,8 @@ static struct bgpio_pdata vexpress_sysreg_sys_flash_pdata = {
 	.ngpio = 1,
 };
 
-static struct syscon_platform_data vexpress_sysreg_sys_misc_pdata = {
-	.label = "sys_misc",
-};
-
-static struct syscon_platform_data vexpress_sysreg_sys_procid_pdata = {
-	.label = "sys_procid",
-};
-
 static struct mfd_cell vexpress_sysreg_cells[] = {
 	{
-		.name = "syscon",
-		.num_resources = 1,
-		.resources = (struct resource []) {
-			DEFINE_RES_MEM(SYS_ID, 0x4),
-		},
-		.platform_data = &vexpress_sysreg_sys_id_pdata,
-		.pdata_size = sizeof(vexpress_sysreg_sys_id_pdata),
-	}, {
 		.name = "basic-mmio-gpio",
 		.of_compatible = "arm,vexpress-sysreg,sys_led",
 		.num_resources = 1,
@@ -109,22 +89,6 @@ static struct mfd_cell vexpress_sysreg_cells[] = {
 		},
 		.platform_data = &vexpress_sysreg_sys_flash_pdata,
 		.pdata_size = sizeof(vexpress_sysreg_sys_flash_pdata),
-	}, {
-		.name = "syscon",
-		.num_resources = 1,
-		.resources = (struct resource []) {
-			DEFINE_RES_MEM(SYS_MISC, 0x4),
-		},
-		.platform_data = &vexpress_sysreg_sys_misc_pdata,
-		.pdata_size = sizeof(vexpress_sysreg_sys_misc_pdata),
-	}, {
-		.name = "syscon",
-		.num_resources = 1,
-		.resources = (struct resource []) {
-			DEFINE_RES_MEM(SYS_PROCID0, 0x8),
-		},
-		.platform_data = &vexpress_sysreg_sys_procid_pdata,
-		.pdata_size = sizeof(vexpress_sysreg_sys_procid_pdata),
 	}, {
 		.name = "vexpress-syscfg",
 		.num_resources = 1,
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
