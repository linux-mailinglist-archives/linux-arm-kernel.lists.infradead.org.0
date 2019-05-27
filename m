Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D96D2B01A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 10:23:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t6urIAeTMwNwdgVNVD/LIfvkuhJ+7UHPxB2FILE8CQA=; b=NWZAAdu0pPI66A
	T3FjigvBn/SWjbYOqYoEc34KineaEAMipq4ZqFFFZST4hxEjXOnx0wmWvreY56Omvl/D0tmtOqPlU
	b4ruLsmdVDSANy1MbGIuMvTU57kMekGGa5e2VJJrsay96uk7Rgvc/a+OqXXmbjg2K0Ko/8aKqTjMh
	7Nhz/zrKnFpPANfH+5HwIEDh5Y/lyJdO8AWhpNY7SL/g7XeBsC9TV1e5U/TK3539AKdMCEhMm2Hz+
	OP0yDkku6rP+kwTHc4NhNm838xdVnRkCna6kJXrEct194Ukz3nfuUN/u7HGwVyYrUI3pEeyvtdXkm
	yYAf5QNUkMzlQX9SBeYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVAuz-0001OQ-Dh; Mon, 27 May 2019 08:23:41 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVAuR-0000sr-Q1
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 08:23:09 +0000
Received: by mail-wr1-x442.google.com with SMTP id e2so7216627wrv.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 May 2019 01:23:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=wkvoQ7ZQRviI68t1GQUcpGSIR6wTw9yWovYigsGIRFY=;
 b=1IZRLlb+iAynIaLix5gVnCAZ7xAcsd6DubGOlTTQORdKeGFTdgOh86Q19BhVPF5sMv
 u1AqrDphMxX0Fwzlt5Dk57C6gE+ZvPbGWoUjWVcMODmvKRc8x7h3blory7XLa3KETdcT
 ecC9iPtBIvBvnBCSKIgCj3oWsT2OrdLpMlvDn0WCtiw7OgLy9TY+WVctIW8/9aNWRnlX
 mRUVt7eA4ISwHFWuDZoy0s7d4LfdG4JfsnBgbrrtTPY2FN06VS7flHrs68atPeaAXBb4
 6+J9l9steEVtxruflDf2GdqRxa3qzPfn6FssE3SZ4CyeX3gTCwWVLtjvSi1XW8/FQt/c
 PHYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=wkvoQ7ZQRviI68t1GQUcpGSIR6wTw9yWovYigsGIRFY=;
 b=sgBKp9AvmowyVtb47n+p4aQy8I3Ye+HXq+fKrwZAFiqui0Bdy+NX3/FF49YeuCLLKW
 gYkp3teeZjRBBKNrGMspMWwrgC4aSj2kyb/Z225pD+uKPCmAhVXQAxS20wiNQ/fd3KC3
 8Dtoq4SJk47pvK7iYZLibNJp7wCIQfu4Hd4AF+r2nArymvOToqLSV+5mx8ufxhvxhgNS
 4EqiIFqnI7ZjCcO84pqA72DwtiOsb/9s51O8cs7r8+XiJEbQumgYPeGJJzvO3CVvisyr
 22fvPd38J4tbg1iVXcaQHKrr4leoOvShUSQW/uAleNYSH9Yh2DGNXaBPGRESR35UVMOB
 dpzw==
X-Gm-Message-State: APjAAAWmRH6BKep6yPTY6BY9+AqNuBQ901fObjhJeul/VrbA7+c+xyYs
 sUaXRpIj8w3VH28NT5zlHRMyQA==
X-Google-Smtp-Source: APXvYqxjl3RRa1d0rScJAF3qliJ/Hk9OGySvApUogEWYS5nGYWKNr0B8fU4E1ulTp3VLCeiqGm9b1A==
X-Received: by 2002:adf:f391:: with SMTP id m17mr8161803wro.90.1558945386129; 
 Mon, 27 May 2019 01:23:06 -0700 (PDT)
Received: from localhost.localdomain
 (amontpellier-652-1-281-69.w109-210.abo.wanadoo.fr. [109.210.96.69])
 by smtp.gmail.com with ESMTPSA id n5sm14482754wrj.27.2019.05.27.01.23.05
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 27 May 2019 01:23:05 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Sekhar Nori <nsekhar@ti.com>, Kevin Hilman <khilman@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 David Lechner <david@lechnology.com>, Adam Ford <aford173@gmail.com>
Subject: [RESEND PATCH v5 2/5] ARM: dts: da850-lego-ev3: enable cpufreq
Date: Mon, 27 May 2019 10:22:56 +0200
Message-Id: <20190527082259.29237-3-brgl@bgdev.pl>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190527082259.29237-1-brgl@bgdev.pl>
References: <20190527082259.29237-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_012307_840519_1C01BC81 
X-CRM114-Status: GOOD (  13.09  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: David Lechner <david@lechnology.com>

Add a fixed regulator for the LEGO EV3 board along with board-specific
CPU configuration.

Signed-off-by: David Lechner <david@lechnology.com>
Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
---
 arch/arm/boot/dts/da850-lego-ev3.dts | 30 ++++++++++++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/arch/arm/boot/dts/da850-lego-ev3.dts b/arch/arm/boot/dts/da850-lego-ev3.dts
index 66fcadf0ba91..553717f84483 100644
--- a/arch/arm/boot/dts/da850-lego-ev3.dts
+++ b/arch/arm/boot/dts/da850-lego-ev3.dts
@@ -125,6 +125,15 @@
 		amp-supply = <&amp>;
 	};
 
+	cvdd: regulator0 {
+		compatible = "regulator-fixed";
+		regulator-name = "cvdd";
+		regulator-min-microvolt = <1200000>;
+		regulator-max-microvolt = <1200000>;
+		regulator-always-on;
+		regulator-boot-on;
+	};
+
 	/*
 	 * This is a 5V current limiting regulator that is shared by USB,
 	 * the sensor (input) ports, the motor (output) ports and the A/DC.
@@ -204,6 +213,27 @@
 	clock-frequency = <24000000>;
 };
 
+&cpu {
+	cpu-supply = <&cvdd>;
+};
+
+/* since we have a fixed regulator, we can't run at these points */
+&opp_100 {
+	status = "disabled";
+};
+
+&opp_200 {
+	status = "disabled";
+};
+
+/*
+ * The SoC is actually the 456MHz version, but because of the fixed regulator
+ * This is the fastest we can go.
+ */
+&opp_375 {
+	status = "okay";
+};
+
 &pmx_core {
 	status = "okay";
 
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
