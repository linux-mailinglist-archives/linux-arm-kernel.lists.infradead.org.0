Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F6241FB3F3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 16:15:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tuGHBKz2/j8kyDWOka01APVVUCsfAkjTmKxg9YbrBBw=; b=WA1uSr8ALh5QQY
	iJK5So1eXLr1u3Cv9Vlvm01+KLOfIWPWOIyYSOrC6vvO52xi5LetqbOMdpMMDyXWCRvVUqnZtChbg
	qRJx4NR/3amhRgG+x7s69yovpjyx8/3fVqJbP7YtIeQTpLxFLPlvIWxA9Dwwk2gUBYTKEJ8zWQuJ6
	cSVCNipF90n/ztGaMIxOOiLFuprrCGLfHrmgwcTwhA/0rdbXWwWwN/sa6y5JaKM5D78YhdcQodkfk
	LFmpnjH1FlgoWTieDzt15gzaiYANxZhpQAPdWs8+0X72sYiIuAiMG+R8qgy77aae8rlWkh5S9uht7
	1FJjx0SapwPuw+cj6hBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlCNM-0004A4-Du; Tue, 16 Jun 2020 14:15:44 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlC3Z-0004IJ-IA
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 13:55:36 +0000
Received: by mail-wr1-x443.google.com with SMTP id c3so20837550wru.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 06:55:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=0FIwhGeWIKDzcDiXiL9U9G/fCD/sufAWQaOGk+U5mF8=;
 b=EGRqQsipzL1m6G88lpuZb4k+ImdYyA5qiAQeTodpNx51qmqHzgLJ08BZc5KdrnYTB8
 S8DV6VY4CypWGQ8X/+C/VlivZhRrlvKf4AaS+Cf/90RqgyUSGWE/vpaXnzgNXUt3ePrT
 n2dx4RiA8/l99SpjT0QShY18fXumSHMovKIaEbXwh1iX/cH52o2zHQSuSMeLEfBJvPUt
 S4ywvpx9MZzZt0M2NG6vhJB6WB7Pi9BkO9uGMINNoKjH9qVrTFVQBE6vOyLGOj4eKtlL
 JDWclzLj9YuhkqhgeUfamnfFOZs3hYqNYs/EJVwrmGp1UgpgAToNEA4R/KDHEz0qjSh3
 mpHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=0FIwhGeWIKDzcDiXiL9U9G/fCD/sufAWQaOGk+U5mF8=;
 b=lze1LePc7YuHV5EPpmoXuvJZw9B8uAtltKZJlXHU079eajHqHhXuQJ7cbeG7PXH8KU
 wHFCQY8eyLm7Wrzy1NfkWQHAN/UP2gzgApJbp13WYrONxfgFIy/D4Giv9uoiX74kqm3G
 nq12r9wqhGoXz8xPoNyPDX1/bYAP9UOUopxQoSPdTMePD4Zctiz6YxnDk4shkCqDgYar
 JTTgkMIs0KKX+ZcP9MT2hUk6sYToyBSqsk/62UtIZrZWfRhxaZeF7zCi72sH4geHiml3
 PsT9FP8dpCCRXTkS4WJOUplMQjFH0hvnbSi2/TYRX+ow8QfFLtwffJq2tk2sirpBd+Yk
 URaA==
X-Gm-Message-State: AOAM53314u/rx9XreAwE09IFn4qp0SutXHxUOd+ZfNp2nISe9dUHH9G7
 D6imB7qon7HdoTxtIwk/hyg=
X-Google-Smtp-Source: ABdhPJwLlzLH8D8CFE7XROw4UUZo1RS1KiY0uDKZ36wx84SvyVCaL0wEle5caKQBa6INHFIjByUaNA==
X-Received: by 2002:a05:6000:10d2:: with SMTP id
 b18mr3182753wrx.366.1592315715034; 
 Tue, 16 Jun 2020 06:55:15 -0700 (PDT)
Received: from localhost ([62.96.65.119])
 by smtp.gmail.com with ESMTPSA id z9sm3919624wmi.41.2020.06.16.06.55.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2020 06:55:14 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH 62/73] arm64: tegra: Use standard EEPROM properties
Date: Tue, 16 Jun 2020 15:52:27 +0200
Message-Id: <20200616135238.3001888-63-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200616135238.3001888-1-thierry.reding@gmail.com>
References: <20200616135238.3001888-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_065517_960778_C64C8F95 
X-CRM114-Status: UNSURE (   9.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
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
Cc: linux-tegra@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Jon Hunter <jonathanh@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Thierry Reding <treding@nvidia.com>

The address-bits and page-size properties that are currently used are
not valid properties according to the bindings. Use the address-width
and pagesize properties instead.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 arch/arm64/boot/dts/nvidia/tegra186-p2771-0000.dts | 4 ++--
 arch/arm64/boot/dts/nvidia/tegra186-p3310.dtsi     | 4 ++--
 arch/arm64/boot/dts/nvidia/tegra210-p2180.dtsi     | 4 ++--
 arch/arm64/boot/dts/nvidia/tegra210-p2371-2180.dts | 4 ++--
 arch/arm64/boot/dts/nvidia/tegra210-p3450-0000.dts | 8 ++++----
 5 files changed, 12 insertions(+), 12 deletions(-)

diff --git a/arch/arm64/boot/dts/nvidia/tegra186-p2771-0000.dts b/arch/arm64/boot/dts/nvidia/tegra186-p2771-0000.dts
index 4a7a022acabb..a70fd4e86840 100644
--- a/arch/arm64/boot/dts/nvidia/tegra186-p2771-0000.dts
+++ b/arch/arm64/boot/dts/nvidia/tegra186-p2771-0000.dts
@@ -222,8 +222,8 @@ eeprom@57 {
 			reg = <0x57>;
 
 			vcc-supply = <&vdd_1v8>;
-			address-bits = <8>;
-			page-size = <8>;
+			address-width = <8>;
+			pagesize = <8>;
 			size = <256>;
 			read-only;
 		};
diff --git a/arch/arm64/boot/dts/nvidia/tegra186-p3310.dtsi b/arch/arm64/boot/dts/nvidia/tegra186-p3310.dtsi
index b5568b9ff181..654c55ed048b 100644
--- a/arch/arm64/boot/dts/nvidia/tegra186-p3310.dtsi
+++ b/arch/arm64/boot/dts/nvidia/tegra186-p3310.dtsi
@@ -174,8 +174,8 @@ eeprom@50 {
 			reg = <0x50>;
 
 			vcc-supply = <&vdd_1v8>;
-			address-bits = <8>;
-			page-size = <8>;
+			address-width = <8>;
+			pagesize = <8>;
 			size = <256>;
 			read-only;
 		};
diff --git a/arch/arm64/boot/dts/nvidia/tegra210-p2180.dtsi b/arch/arm64/boot/dts/nvidia/tegra210-p2180.dtsi
index d818fac3070c..6a4b50aaa25d 100644
--- a/arch/arm64/boot/dts/nvidia/tegra210-p2180.dtsi
+++ b/arch/arm64/boot/dts/nvidia/tegra210-p2180.dtsi
@@ -274,8 +274,8 @@ eeprom@50 {
 			reg = <0x50>;
 
 			vcc-supply = <&vdd_1v8>;
-			address-bits = <8>;
-			page-size = <8>;
+			address-width = <8>;
+			pagesize = <8>;
 			size = <256>;
 			read-only;
 		};
diff --git a/arch/arm64/boot/dts/nvidia/tegra210-p2371-2180.dts b/arch/arm64/boot/dts/nvidia/tegra210-p2371-2180.dts
index eb46f745d75f..0c0d51c23975 100644
--- a/arch/arm64/boot/dts/nvidia/tegra210-p2371-2180.dts
+++ b/arch/arm64/boot/dts/nvidia/tegra210-p2371-2180.dts
@@ -84,8 +84,8 @@ eeprom@57 {
 			reg = <0x57>;
 
 			vcc-supply = <&vdd_1v8>;
-			address-bits = <8>;
-			page-size = <8>;
+			address-width = <8>;
+			pagesize = <8>;
 			size = <256>;
 			read-only;
 		};
diff --git a/arch/arm64/boot/dts/nvidia/tegra210-p3450-0000.dts b/arch/arm64/boot/dts/nvidia/tegra210-p3450-0000.dts
index ac17f5485bf8..beec6aab2157 100644
--- a/arch/arm64/boot/dts/nvidia/tegra210-p3450-0000.dts
+++ b/arch/arm64/boot/dts/nvidia/tegra210-p3450-0000.dts
@@ -116,8 +116,8 @@ eeprom@50 {
 			reg = <0x50>;
 
 			vcc-supply = <&vdd_1v8>;
-			address-bits = <8>;
-			page-size = <8>;
+			address-width = <8>;
+			pagesize = <8>;
 			size = <256>;
 			read-only;
 		};
@@ -127,8 +127,8 @@ eeprom@57 {
 			reg = <0x57>;
 
 			vcc-supply = <&vdd_1v8>;
-			address-bits = <8>;
-			page-size = <8>;
+			address-width = <8>;
+			pagesize = <8>;
 			size = <256>;
 			read-only;
 		};
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
