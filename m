Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B842969956
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jul 2019 18:47:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1oJJKJLp+MUN6n0rEYOZAn30kiVZtH1Vn4Rs35XV9gs=; b=K+oINf9n8b/g6g
	yxnlOebf6GZVola+mxH+lohT6sWr4GHrZcy4RXEkdJWPwFa8+Jd5YphFHcnM28z5tZoR++m2mya68
	8W2+kKhbS+6zP5YLkQ/2nVTNuWUgSlLeiVU/1PnbhSRTnAP12m6BBv3UXZohz9pBByokkisZXL2Q6
	67jh5pp0uIQfJ6RYBuzxUmhPsw0yFxB9DFClWbs1Rl9IRabW9e2aL3Rf4KuueY9/i+lW4piy7TbVf
	4PEu0LPtHNEPcYJ2lByVkAQ7CaghY/6nPm4ImsTQRd1YBCZ5w+3Gb6suYOoYLtUC/gUxD99hIDOkf
	QO66jIuT32x8NWSphmOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn48a-0000DN-2x; Mon, 15 Jul 2019 16:47:40 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn47v-0008RO-Rx
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jul 2019 16:47:01 +0000
Received: by mail-lj1-x242.google.com with SMTP id m23so16913269lje.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jul 2019 09:46:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=7CHNk9a97/g0strtJzi9ujSVJqpro4Yo0WFZ1HD72o0=;
 b=NXEGef0dtWOzaM5nMhpoHGC7Q2vnRM/mEtMU8wJASUVu+sHtCWOnmLcxrNB38PccVl
 T3aFHDgy/FSFKGPuqivaQsaHijJ/RHkPzJFKqUd8Ztz/8nr1ZWt5p0Aox3dhOGKHt2yq
 YMA9NyZnSKzdPwYKyG8Pfo/21erZULWzIwaOynDskN5CCm1Ww5hngMrz86qja9px7EAm
 S9qk94n6oiUIbtHowqBYZ6nxtuEVZKLoc17HhFoYGZc22QMQl8we9idBTzfCLO46Fphs
 iMd8dlQ7GN8wBOjxcR1niX5jtqT8c/9RMjLlfviXBVTt+sjoZRwOBoGSuRcZ1dH4dQtH
 aizA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=7CHNk9a97/g0strtJzi9ujSVJqpro4Yo0WFZ1HD72o0=;
 b=k60enKC9jUjISmZlNJm4x3NcPDaxMUHwrxoRa59ZyZDt3Z+T2otoOCn5B/y13JkzBo
 exs72DhAqMF9NWY+eW7wVd9P0wxNhM2L17/bdiliW9ZGu6BXo9SZrmtEOb5JoTnW4qSO
 RvgOVwO4vdeg+pp5zB+NOjapj+cJuOxOFYriEnx5uBZ7ENaAi9gb7S2X0bv2oBaRimHs
 FWtut6HLC/4uGUyuwJnInPcucrXx/IEfMCklzEMmmIQnTq37RrS47Wt9UAwuDLAKvvJm
 f88/8sLuaXRY7MrfSr/FAgBUuqCLfs91F/+WcCri2IQtkxIsrvFRTLuUHIYNGEwl+lB0
 uGYw==
X-Gm-Message-State: APjAAAWDYhk5Nr1ML7G7PathFVxyVD4+VUkaf6SXE7QjoRZKgHtr3EkR
 tRKyLCnYGwTvVjFEV2tKKL/DOpiTahI=
X-Google-Smtp-Source: APXvYqyr94NBVoIEm1VDH3DEWSeDxHLv0s3iJwCWQXAvHeE/SwW5Jfrxqj6faEeMgsopMoR33X3FAw==
X-Received: by 2002:a2e:5d92:: with SMTP id v18mr14722248lje.9.1563209217795; 
 Mon, 15 Jul 2019 09:46:57 -0700 (PDT)
Received: from localhost.bredbandsbolaget
 (c-22cd225c.014-348-6c756e10.bbcust.telenor.se. [92.34.205.34])
 by smtp.gmail.com with ESMTPSA id e87sm3628329ljf.54.2019.07.15.09.46.56
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 15 Jul 2019 09:46:56 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: linux-arm-kernel@lists.infradead.org,
 Hans Ulli Kroll <ulli.kroll@googlemail.com>
Subject: [PATCH 2/3] ARM: dts: gemini: Switch to redboot partition parsing
Date: Mon, 15 Jul 2019 18:46:49 +0200
Message-Id: <20190715164650.2883-2-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190715164650.2883-1-linus.walleij@linaro.org>
References: <20190715164650.2883-1-linus.walleij@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_094659_914440_FE3E00FB 
X-CRM114-Status: GOOD (  11.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Linus Walleij <linus.walleij@linaro.org>,
 Florian Fainelli <f.fainelli@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This switches the kernel to parse the Redboot partitions
in the SL93512r and the NAS4220B properly using the
right compatible string instead of using hard-coded
partitions.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 arch/arm/boot/dts/gemini-nas4220b.dts | 35 +++------------------------
 arch/arm/boot/dts/gemini-sl93512r.dts | 35 +++------------------------
 2 files changed, 8 insertions(+), 62 deletions(-)

diff --git a/arch/arm/boot/dts/gemini-nas4220b.dts b/arch/arm/boot/dts/gemini-nas4220b.dts
index f4535d635f3b..254ecbc3d79f 100644
--- a/arch/arm/boot/dts/gemini-nas4220b.dts
+++ b/arch/arm/boot/dts/gemini-nas4220b.dts
@@ -81,37 +81,10 @@
 			/* 16MB of flash */
 			reg = <0x30000000 0x01000000>;
 
-			partition@0 {
-				label = "RedBoot";
-				reg = <0x00000000 0x00020000>;
-				read-only;
-			};
-			partition@20000 {
-				label = "Kernel";
-				reg = <0x00020000 0x00300000>;
-			};
-			partition@320000 {
-				label = "Ramdisk";
-				reg = <0x00320000 0x00600000>;
-			};
-			partition@920000 {
-				label = "Application";
-				reg = <0x00920000 0x00600000>;
-			};
-			partition@f20000 {
-				label = "VCTL";
-				reg = <0x00f20000 0x00020000>;
-				read-only;
-			};
-			partition@f40000 {
-				label = "CurConf";
-				reg = <0x00f40000 0x000a0000>;
-				read-only;
-			};
-			partition@fe0000 {
-				label = "FIS directory";
-				reg = <0x00fe0000 0x00020000>;
-				read-only;
+			partitions {
+				compatible = "redboot-fis";
+				/* Eraseblock at 0xfe0000 */
+				fis-index-block = <0x1fc>;
 			};
 		};
 
diff --git a/arch/arm/boot/dts/gemini-sl93512r.dts b/arch/arm/boot/dts/gemini-sl93512r.dts
index afe655593b28..5f70e01af7ec 100644
--- a/arch/arm/boot/dts/gemini-sl93512r.dts
+++ b/arch/arm/boot/dts/gemini-sl93512r.dts
@@ -143,37 +143,10 @@
 			/* 16MB of flash */
 			reg = <0x30000000 0x01000000>;
 
-			partition@0 {
-				label = "BOOT";
-				reg = <0x00000000 0x00020000>;
-				read-only;
-			};
-			partition@120000 {
-				label = "Kern";
-				reg = <0x00020000 0x00300000>;
-			};
-			partition@320000 {
-				label = "Ramdisk";
-				reg = <0x00320000 0x00600000>;
-			};
-			partition@920000 {
-				label = "Application";
-				reg = <0x00920000 0x00600000>;
-			};
-			partition@f20000 {
-				label = "VCTL";
-				reg = <0x00f20000 0x00020000>;
-				read-only;
-			};
-			partition@f40000 {
-				label = "CurConf";
-				reg = <0x00f40000 0x000a0000>;
-				read-only;
-			};
-			partition@fe0000 {
-				label = "FIS directory";
-				reg = <0x00fe0000 0x00020000>;
-				read-only;
+			partitions {
+				compatible = "redboot-fis";
+				/* Eraseblock at 0xfe0000 */
+				fis-index-block = <0x1fc>;
 			};
 		};
 
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
