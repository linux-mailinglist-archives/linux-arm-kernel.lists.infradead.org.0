Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8387F55539
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 18:54:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=St0J+l+MAVMwAzfp5bWMWDdKjIxPHrwexylzdPeNS7M=; b=EQJmTKBXvkdOyM
	aZe3okKI83+kyu3m7RyvauFhnuI0/hh3UBmoHtEEC/8Yl38GsorAKREChkUTZT72TI1FrS9umSPsN
	RdwaXKDKX7EB5Mqb8VTOXx5/CQs+8Brk0HCVg4EKMRqJ2A4oGdJhK3PuHVfizpdM8mAhbgtKYnHW3
	/X8CJfBmCtHtZllHV5iabHQgtkNXkzkBDqNU/crxO3GmpNvf/Jvpa5Lad7mKAOYOrOU4dRH43tyRb
	PC5AWN2A1l5jten1n7YlFiDUR1Ssav9NetQMbyMDy3dCacn9CbI3XKumu3axG1tuK1NuUDciFJyk2
	sNevTo1hYiEq6FM2X86g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfoi6-0008RV-5Y; Tue, 25 Jun 2019 16:54:22 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfodI-0003pg-Re
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 16:49:27 +0000
Received: by mail-wm1-x344.google.com with SMTP id f17so3689383wme.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 09:49:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=BpBEtYSgqrBi7j4SiCT1m6YSPtNFJxDP5oog1k2Dp/E=;
 b=eDnM5SmroyDBRGWomt4zm7VTbV4K8ugQm9G7mQkVjtkKKrgpPXvluSKc0vRgU+BNb1
 VpUb13atGzKgtE48uLL+hhQvMBm9nrkO/hshQUUBPnbzeI7eO2oFXOu/PfLFTvmUSWv+
 x7u4OqYLiuvEApl5clWFxy/edonhHNOkVcoa6DL6GKCw3W95w+/vY9iMBQZEbF4R2QRS
 lLKqTq8JHXN2kSAZndjbq6Wix02hiVIb2mJT5MSoSkAUY3hR43RXrZcC4LYzVLDMMY5A
 1zedhzJ1Y2ZuXVSUI//I5AgEyxzZ5K9tcypa/cdU1QDNyLXJkXuoQLX+foMyOZZwbDMF
 CA5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=BpBEtYSgqrBi7j4SiCT1m6YSPtNFJxDP5oog1k2Dp/E=;
 b=Fs3TXgIDQfN6QHER2k4Q0SyRVny23DkC6ChiB31cQmwjA6MZklhlttpR2g1RvBkNP4
 jWOKvoHUVMr76k218t1vGWPX3BFRZR9u5EBxksYNlQXGSf9uAlqN96MA/1aOEZhmXeXw
 1hHB04B8sCitG6s5OlU+yxxvvA2lHobKIhzvhn6da4EvyhptKgwDRw47EVuzkWaeGkOg
 +NAwbZRK/L2jXW49wb+0VDKyQ1umhJ2GaOn7M7ic37YvOCBwskzSzI71hrAL5r+qiGDb
 w+7QCX+xeY9h7kCG9brMXkgMKW5fxAfqCnPkhMGgGlI41qIVDPmd1Z/1Vf1CWpSyxTxA
 WPlw==
X-Gm-Message-State: APjAAAVdbR8AkVS6oTZDBnbhtiVAEAxUzr43OlytD/4AAXOBloyVNJUm
 prsEMU4ooIVAq+PHQnXogCfYRA==
X-Google-Smtp-Source: APXvYqyVBBSlo04QiVVJZul9HxR3AfR32ezyhijOC6RrdMyx1+Q4KkR7gbPOK8c8SM4hhdG5xjAAig==
X-Received: by 2002:a1c:23c4:: with SMTP id
 j187mr20851213wmj.176.1561481363562; 
 Tue, 25 Jun 2019 09:49:23 -0700 (PDT)
Received: from debian-brgl.home ([2a01:cb1d:af:5b00:6d6c:8493:1ab5:dad7])
 by smtp.gmail.com with ESMTPSA id h14sm3078652wro.30.2019.06.25.09.49.22
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 25 Jun 2019 09:49:23 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Sekhar Nori <nsekhar@ti.com>,
	Kevin Hilman <khilman@kernel.org>
Subject: [PATCH 2/2] ARM: davinci: omapl138-hawk: add missing regulator
 constraints for OHCI
Date: Tue, 25 Jun 2019 18:49:15 +0200
Message-Id: <20190625164915.30242-2-brgl@bgdev.pl>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190625164915.30242-1-brgl@bgdev.pl>
References: <20190625164915.30242-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_094925_019329_06540F70 
X-CRM114-Status: GOOD (  10.87  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Bartosz Golaszewski <bgolaszewski@baylibre.com>, stable@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Bartosz Golaszewski <bgolaszewski@baylibre.com>

We need to enable status changes for the fixed power supply for the USB
controller.

Fixes: 1d272894ec4f ("ARM: davinci: omapl138-hawk: add a fixed regulator for ohci-da8xx")
Cc: stable@vger.kernel.org
Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
---
 arch/arm/mach-davinci/board-omapl138-hawk.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/mach-davinci/board-omapl138-hawk.c b/arch/arm/mach-davinci/board-omapl138-hawk.c
index db177a6a7e48..5390a8630cf0 100644
--- a/arch/arm/mach-davinci/board-omapl138-hawk.c
+++ b/arch/arm/mach-davinci/board-omapl138-hawk.c
@@ -306,6 +306,9 @@ static struct regulator_consumer_supply hawk_usb_supplies[] = {
 static struct regulator_init_data hawk_usb_vbus_data = {
 	.consumer_supplies	= hawk_usb_supplies,
 	.num_consumer_supplies	= ARRAY_SIZE(hawk_usb_supplies),
+	.constraints    = {
+		.valid_ops_mask = REGULATOR_CHANGE_STATUS,
+	},
 };
 
 static struct fixed_voltage_config hawk_usb_vbus = {
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
