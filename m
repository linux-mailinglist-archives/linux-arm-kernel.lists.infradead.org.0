Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7359DEF93
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 16:31:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n76qiiucE6aXrBvRho3fimqWF/4LmcmY/vGrFbUjj9A=; b=gJWV4Q+lsnALED
	HnPdtUl8kLdRw08QiVtwu49CD+erPHBaTi282FvzSdt2DeWZKK3SDTBltyLFI9hcWCUwnVuSSCcOg
	pd1OGyR4dr+GS1ke7NtGeDrHBhM+qb5I6FV3hOUbeakeQbwWABdSz1YorRtEz1C58Is5RpTgBzSYK
	xJXkgZ8O/yzbCf7OcQfb0e+9veFyYxyntE6BC0qDap69wY++0OXc5Hds5lR0avPtrw/1K0R+iLN2x
	bNy4VUeQvB46wXYiveYpVnc6Xo13nEc3I+ELi4xDwTRvhVlqtkdNDXLUbJZ36DUXMC01bmGyINC9g
	iLou0HATAaZnD7oth2Mw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMYi4-0001Ha-RG; Mon, 21 Oct 2019 14:31:00 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMYgL-000744-8A
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 14:29:15 +0000
Received: by mail-wm1-x341.google.com with SMTP id r19so13602150wmh.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 21 Oct 2019 07:29:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=CWYTqEyFtCOGakjlsNfRufixkNsbXr5lNP4UMlm1PG8=;
 b=EgzjKJzHoYUGkXcnmYBxTE0wwlWMADawhLiOwzthjwpM1Ze4VnIiYHorWAQ6NbSDEM
 YW5c06uFVcHIChoHfLaQ0SvlFkLJNSFsKf5ebIIMyU9OLXdxHxZOI6dkPVRPeLGwVupX
 xMTyteIssTql0hNdb1y+de+JQmn1KIYoYLGGMsLRK5v7HRAU74z8sEAwbxxfmCDNYw8S
 m3qy0Sru9ygMm26ot8A1Rg5rpJ5hxzPN1/6P7hhc3jThrHYdrBEObRxtUoQXz/vR4toB
 IVPI+OmAxFpbKzHQBN0xMmrXQWDzYT9FA3MEafy8kENyEIGnvFVr7i2TuGi1tsbmbguR
 Zeyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=CWYTqEyFtCOGakjlsNfRufixkNsbXr5lNP4UMlm1PG8=;
 b=BcmplpeTXlYK4DIe471ksnpwWs+5kDOYlfVz4dgFZPhQ8adq1Dfsh+rEujHbaYdAFw
 J8p5SsXzaqmnucju8eS/UPntDSBP8gwzQFHyJG6ggemE2ic4gZcBMtGI5MtI9wIZl9ua
 0Do191PsUA5YCDL28HdxzP8I+PFvWOCjLX85/050rfEUrdQ64Q2WktZOGzynIMMqGv6u
 Bdmm4PBkUJPxV5BsK6UYO6NUyEnQkZElulJgSjctWScML3ExFJ4RS8Loem21MYsocw6l
 QHh177kpvc83r6zq4IR1ajpQCLykcCEZtEY0imguuZeNXo2uGhxGSeT2g3rEBDNj+mMO
 gctg==
X-Gm-Message-State: APjAAAVsdWs2GUgZrk72BJD9m8Cdzbyu/tHtKRp0Gj6qj725Y2MKPcki
 rEK6hO6B5x25qnHySCaftDA+WA==
X-Google-Smtp-Source: APXvYqx1AEQ9qTWronewXaRO1McG5B1AqN27qxt7hs3CmBfk/ag/v361jhGFZEtnnnnr2xXiMMDQkA==
X-Received: by 2002:a7b:cc0c:: with SMTP id f12mr19213259wmh.40.1571668151654; 
 Mon, 21 Oct 2019 07:29:11 -0700 (PDT)
Received: from localhost.localdomain
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id d11sm17304463wrf.80.2019.10.21.07.29.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Oct 2019 07:29:11 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com
Subject: [PATCH 5/5] arm64: dts: meson-gx: fix i2c compatible
Date: Mon, 21 Oct 2019 16:29:04 +0200
Message-Id: <20191021142904.12401-6-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20191021142904.12401-1-narmstrong@baylibre.com>
References: <20191021142904.12401-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_072913_351331_49EE5497 
X-CRM114-Status: GOOD (  10.61  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This fixes the following DT schemas check errors:
meson-gxbb-nanopi-k2.dt.yaml: i2c@8500: compatible: Additional items are not allowed ('amlogic,meson-gxbb-i2c' was unexpected)
meson-gxbb-nanopi-k2.dt.yaml: i2c@8500: compatible:0: 'amlogic,meson-gx-i2c' is not one of ['amlogic,meson6-i2c', 'amlogic,meson-gxbb-i2c', 'amlogic,meson-axg-i2c']
meson-gxbb-nanopi-k2.dt.yaml: i2c@8500: compatible: ['amlogic,meson-gx-i2c', 'amlogic,meson-gxbb-i2c'] is too long

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 arch/arm64/boot/dts/amlogic/meson-gx.dtsi | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-gx.dtsi b/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
index 042132bf5b76..10d5c97cba4f 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
@@ -240,7 +240,7 @@
 			};
 
 			i2c_A: i2c@8500 {
-				compatible = "amlogic,meson-gx-i2c", "amlogic,meson-gxbb-i2c";
+				compatible = "amlogic,meson-gxbb-i2c";
 				reg = <0x0 0x08500 0x0 0x20>;
 				interrupts = <GIC_SPI 21 IRQ_TYPE_EDGE_RISING>;
 				#address-cells = <1>;
@@ -290,7 +290,7 @@
 			};
 
 			i2c_B: i2c@87c0 {
-				compatible = "amlogic,meson-gx-i2c", "amlogic,meson-gxbb-i2c";
+				compatible = "amlogic,meson-gxbb-i2c";
 				reg = <0x0 0x087c0 0x0 0x20>;
 				interrupts = <GIC_SPI 214 IRQ_TYPE_EDGE_RISING>;
 				#address-cells = <1>;
@@ -299,7 +299,7 @@
 			};
 
 			i2c_C: i2c@87e0 {
-				compatible = "amlogic,meson-gx-i2c", "amlogic,meson-gxbb-i2c";
+				compatible = "amlogic,meson-gxbb-i2c";
 				reg = <0x0 0x087e0 0x0 0x20>;
 				interrupts = <GIC_SPI 215 IRQ_TYPE_EDGE_RISING>;
 				#address-cells = <1>;
@@ -415,7 +415,7 @@
 			};
 
 			i2c_AO: i2c@500 {
-				compatible = "amlogic,meson-gx-i2c", "amlogic,meson-gxbb-i2c";
+				compatible = "amlogic,meson-gxbb-i2c";
 				reg = <0x0 0x500 0x0 0x20>;
 				interrupts = <GIC_SPI 195 IRQ_TYPE_EDGE_RISING>;
 				#address-cells = <1>;
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
