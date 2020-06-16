Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A4271FB339
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 16:01:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p6DU9ab4brHy2kp9bmQcYEPQ8U5RcfZn+tRI3HyYQvA=; b=fyrKdbi8VawVno
	sm9VxIk3DbZhqt6po/GNUx5ZIBTbA6iAW2oY9z52lLwZkF98MliUhNp7wdMpBaXXLMd9ne1/O7DM/
	tMxcXfa3c241g15cmqI/rlMeyF+AdGbVKNG6yT5Hk06bPP5zYGy+/KZNAG5+hGS+E1FnBxv/v3mEU
	2Bvah5xcem5yroRRcmF1gMHx6KuIP4Ui3HhtvyD5H5lF+2Rx4VyWuGJYhssZqoyGt/S0YkrPvZVCc
	FDEpEGCJ+Rgpfflb07iGeX/8bLeapbeAVLKzbVI1cEYWA6P/EtDvwhuRl+l0+zaMwa/YvuuvLmR9R
	WijJgCVYnx2440zFehkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlC9b-0002f5-Vo; Tue, 16 Jun 2020 14:01:32 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlC1p-0001Y7-Os
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 13:53:35 +0000
Received: by mail-wm1-x32d.google.com with SMTP id l17so2985153wmj.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 06:53:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=AoEw0rmMW6HiZqYouRCoCNbDuDDB/aoUdZjuFXCUO0U=;
 b=vaCR19h295ikkD9fn123ptat0C96CwhstcKM9rEN+o+xtuRWEvBCAY4e/aSSpBGC6s
 4VQuHQAo6dbEKZlYfTY+gVmBOaCEhb6yCo7Cipwzpx3j6OhYfZyUHMU26EiUjguLTbM/
 /FCXC9929OAvd2bpPkDJsFOE8dDkzH1ZMZlMj7Lbls3pkDyOnVKS8QzY5yf6f+hrB28l
 pQLZQ/ZERpRg5VL4st5dCvJcezUAXnvXT2/4sfQnIpit8AoSVlZFg2OhO5FeqSi5x3GF
 uEaRfdfB7FZzpHRMQptiRWuak8sXOfgJX2ExIPWNVKT+nXQt3JzPwwj8DEQWKZHSq1i4
 w7LA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=AoEw0rmMW6HiZqYouRCoCNbDuDDB/aoUdZjuFXCUO0U=;
 b=lxlV5NFvMLiM3XNc/huETXpNa6Xgdkrl0Xu85YkEouKUFUZ5duu3+4Ub34CY6kX/Uh
 CUi7UlqUSPp2igU/5bkl2jI85+tNgx+dBmkNDWr+U+U8++NCJfQtWi83b6rJPiXgGfV6
 QvtUB4o3D9Ag8TgePsmRt702Jr0nUVy7qwIjVnAnjlvcfLyC3t/EjElnnz33tSadGL6H
 Ib9WpMI3jqBRCVIUjl4vv2BVx3LG6gNWh3Y+SuhG2cOdXtDiCtgNYnEHUdce/aNRqba+
 WSWbBkl/JjAxosSy6NOYdzrpGCGYk4u4gGosFRU7zGCaH8/oYJCyZjWE3wdb1xKZKQ61
 tSYA==
X-Gm-Message-State: AOAM533jxEpYmWJyIx2fOVAsz8X5oLCaZ9HcLEYGyw4vIAEAFbWz8yHA
 wQQA3luMFP/KCWixTQtrDUY=
X-Google-Smtp-Source: ABdhPJx3t5vU/Fepyh6XekgeXMiAo8JsP+2/2MPBqrGlymim/ySai0wH8Ig324AlJtsEvB4LkqtNfA==
X-Received: by 2002:a05:600c:29a:: with SMTP id
 26mr3226251wmk.76.1592315607927; 
 Tue, 16 Jun 2020 06:53:27 -0700 (PDT)
Received: from localhost ([62.96.65.119])
 by smtp.gmail.com with ESMTPSA id 89sm2412029wrg.56.2020.06.16.06.53.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2020 06:53:26 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH 18/73] ARM: tegra: Use standard name for Ethernet devices
Date: Tue, 16 Jun 2020 15:51:43 +0200
Message-Id: <20200616135238.3001888-19-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200616135238.3001888-1-thierry.reding@gmail.com>
References: <20200616135238.3001888-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_065329_823861_6D4A6E40 
X-CRM114-Status: GOOD (  10.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:32d listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [thierry.reding[at]gmail.com]
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
Cc: linux-tegra@vger.kernel.org, Marcel Ziswiler <marcel.ziswiler@toradex.com>,
 Philippe Schenker <philippe.schenker@toradex.com>,
 linux-arm-kernel@lists.infradead.org, Jon Hunter <jonathanh@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Thierry Reding <treding@nvidia.com>

Ethernet device should be named "ethernet@<unit-address>".

Cc: Marcel Ziswiler <marcel.ziswiler@toradex.com>
Cc: Philippe Schenker <philippe.schenker@toradex.com>
Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 arch/arm/boot/dts/tegra124-apalis-v1.2.dtsi | 2 +-
 arch/arm/boot/dts/tegra124-apalis.dtsi      | 2 +-
 arch/arm/boot/dts/tegra30-apalis-v1.1.dtsi  | 2 +-
 arch/arm/boot/dts/tegra30-apalis.dtsi       | 2 +-
 4 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/tegra124-apalis-v1.2.dtsi b/arch/arm/boot/dts/tegra124-apalis-v1.2.dtsi
index eb5f4ad0fe71..8f4c11f918b4 100644
--- a/arch/arm/boot/dts/tegra124-apalis-v1.2.dtsi
+++ b/arch/arm/boot/dts/tegra124-apalis-v1.2.dtsi
@@ -37,7 +37,7 @@ pci@2,0 {
 			phy-names = "pcie-0";
 			status = "okay";
 
-			pcie@0 {
+			ethernet@0,0 {
 				reg = <0 0 0 0 0>;
 				local-mac-address = [00 00 00 00 00 00];
 			};
diff --git a/arch/arm/boot/dts/tegra124-apalis.dtsi b/arch/arm/boot/dts/tegra124-apalis.dtsi
index 64a18b525378..39a5744dbcb4 100644
--- a/arch/arm/boot/dts/tegra124-apalis.dtsi
+++ b/arch/arm/boot/dts/tegra124-apalis.dtsi
@@ -36,7 +36,7 @@ pci@2,0 {
 			phy-names = "pcie-0";
 			status = "okay";
 
-			pcie@0 {
+			ethernet@0,0 {
 				reg = <0 0 0 0 0>;
 				local-mac-address = [00 00 00 00 00 00];
 			};
diff --git a/arch/arm/boot/dts/tegra30-apalis-v1.1.dtsi b/arch/arm/boot/dts/tegra30-apalis-v1.1.dtsi
index fdd3e4e3522b..6a3a72f81c44 100644
--- a/arch/arm/boot/dts/tegra30-apalis-v1.1.dtsi
+++ b/arch/arm/boot/dts/tegra30-apalis-v1.1.dtsi
@@ -37,7 +37,7 @@ pci@3,0 {
 			status = "okay";
 			nvidia,num-lanes = <1>;
 
-			pcie@0 {
+			ethernet@0,0 {
 				reg = <0 0 0 0 0>;
 				local-mac-address = [00 00 00 00 00 00];
 			};
diff --git a/arch/arm/boot/dts/tegra30-apalis.dtsi b/arch/arm/boot/dts/tegra30-apalis.dtsi
index 90694d1a3b0c..6544ce70b46f 100644
--- a/arch/arm/boot/dts/tegra30-apalis.dtsi
+++ b/arch/arm/boot/dts/tegra30-apalis.dtsi
@@ -36,7 +36,7 @@ pci@3,0 {
 			status = "okay";
 			nvidia,num-lanes = <1>;
 
-			pcie@0 {
+			ethernet@0,0 {
 				reg = <0 0 0 0 0>;
 				local-mac-address = [00 00 00 00 00 00];
 			};
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
