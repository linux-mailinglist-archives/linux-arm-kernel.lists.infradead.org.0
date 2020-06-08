Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C084A1F133B
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jun 2020 09:10:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=i6dYBxV4Ubg/ri9eLpzprKqgSUBNWouUo8xbzvcVHGI=; b=fM22y0fgqub3R7
	GjBPKG+YAGvU9KkRSm+Y9mVKNyZYVxj1ZDTmI41N/AwL/4qV/bemstRcpvQ9sO1xG2LOvxkRBUlHT
	4kqyooRV7tNwlEGJeY9LW5vmvsmJj/Z3vySF6q6fo58VW4q62VMrhO9RoaBz+aA8lgPcat3NQsBnW
	xCBnTTjZGctKM4A1vVgXjEfLP1tblqrIW+mxgnctP2Ry7sj2pXVdGpaAnqdkIUuSnJQIwFStI9+Ck
	M7t7D3VTapHpl5u9wfd7l6NFtPLmz+yq75O9AEX4vF8c9dvGHJOmfCvPCcpo8dMgwnIrFy3nIqf5o
	pEtaCGzjLIU3f14kw+mg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiBuj-0003WQ-NL; Mon, 08 Jun 2020 07:09:45 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiBuZ-0003VH-5m
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jun 2020 07:09:37 +0000
Received: by mail-lj1-x243.google.com with SMTP id a25so19091132ljp.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 08 Jun 2020 00:09:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=eLHXN6AWltCIBxs2DNSCGZ0DX+K3s3X6F8h3xg9dmHM=;
 b=rqhpmzBMr0ZmT3IS15wvsjt+shYjUl/MkyLX04MMwELrKIC2nhBgNDywQIyzmsHccx
 +2uGTY0M3uPVbDDXjn10U0+gZhh/QGE5A5AnT2vmjxwJpW2A+a+KrofSkcCdexMVRC5Y
 nFfXJ/tAws0MZ+BdPNWJKjIq6p8/3214drcaP6lyGd6Y/XZtkxHXuE1PO3tuIWMrh/Ys
 Cl+hCfK4Mqws6z1pseEpF6PjYnkJW4toov6aaWHZkr5OheFrXE+GhvY0Aw8MSWaWNT76
 QvLc8XwNZH9dGUUGHPfbRAKt5Kuc40yIjK6mcqiplHuq+b4A+szaSafNLZRussdg27uG
 Mxhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=eLHXN6AWltCIBxs2DNSCGZ0DX+K3s3X6F8h3xg9dmHM=;
 b=VPvbAS1aygTYRpbcijS3nLJmpnJU62dOnjsZ5FVpcCAq4x0o3HAJFhFWD0QEd+GdMk
 qr5fWeToNmCDWUU6F6w3z0pAqPBRSgYRKQcghJdjeob7BiRv+dG1DjcXKUHZT5Ef92sE
 KgMIU5Hd9dSu1gOEBgvPbzQhrf8I/C/aibwZo0a4celcnWzG/QyPRCBTong4tRHnVwT1
 QL3TnknSteVQn+DVKu4X7MEk6ZwXF32DI7oIPa5pgsb3tDv6kmjVqpxLSKcLyeDj9Bb3
 bpc/Gbk7jnYGAqJLWNE+ZTjpoLHDMyXWT+4+u7g76tG68gjo9XGTSEFB6OoZHiJlnKcc
 SLhw==
X-Gm-Message-State: AOAM531bhf2bgFfdQU40W6Qu2ytqYHuVUTGWivkk5fFPx72YFbaXhBKq
 ke7agWcBxAruSYUcDBUTywkcJ3Wb4bw=
X-Google-Smtp-Source: ABdhPJwmn8EDKRgBdqaIHjIFkjdAeHcs2vHaYa1ppUzzJYGx5Vn/ROwc0gkIovk1v0oXFn2K6FVBfg==
X-Received: by 2002:a2e:8601:: with SMTP id a1mr8729523lji.255.1591600172465; 
 Mon, 08 Jun 2020 00:09:32 -0700 (PDT)
Received: from localhost.localdomain
 (c-92d7225c.014-348-6c756e10.bbcust.telenor.se. [92.34.215.146])
 by smtp.gmail.com with ESMTPSA id o2sm4168948lfc.85.2020.06.08.00.09.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 08 Jun 2020 00:09:31 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: linux-arm-msm@vger.kernel.org, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>
Subject: [PATCH] ARM: dts: qcom-msm8660: Add GSBI1 SPI bus
Date: Mon,  8 Jun 2020 09:07:18 +0200
Message-Id: <20200608070718.59666-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.25.4
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_000935_250185_9F4CC99C 
X-CRM114-Status: GOOD (  10.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Linus Walleij <linus.walleij@linaro.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

GSBI1 can be used to enable an external SPI bus on e.g. the
APQ8060. On the DragonBoard APQ8060 this SPI bus is used to
talk to the LCD display.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 arch/arm/boot/dts/qcom-msm8660.dtsi | 25 +++++++++++++++++++++++++
 1 file changed, 25 insertions(+)

diff --git a/arch/arm/boot/dts/qcom-msm8660.dtsi b/arch/arm/boot/dts/qcom-msm8660.dtsi
index 480fc08cbe8e..5b21fbc12d37 100644
--- a/arch/arm/boot/dts/qcom-msm8660.dtsi
+++ b/arch/arm/boot/dts/qcom-msm8660.dtsi
@@ -130,6 +130,31 @@ gcc: clock-controller@900000 {
 			reg = <0x900000 0x4000>;
 		};
 
+		gsbi1: gsbi@16000000 {
+			compatible = "qcom,gsbi-v1.0.0";
+			cell-index = <12>;
+			reg = <0x16000000 0x100>;
+			clocks = <&gcc GSBI1_H_CLK>;
+			clock-names = "iface";
+			#address-cells = <1>;
+			#size-cells = <1>;
+			ranges;
+			status = "disabled";
+
+			syscon-tcsr = <&tcsr>;
+
+			gsbi1_spi: spi@16080000 {
+				compatible = "qcom,spi-qup-v1.1.1";
+				reg = <0x16080000 0x1000>;
+				interrupts = <GIC_SPI 147 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&gcc GSBI1_QUP_CLK>, <&gcc GSBI1_H_CLK>;
+				clock-names = "core", "iface";
+				status = "disabled";
+				#address-cells = <1>;
+				#size-cells = <0>;
+			};
+		};
+
 		gsbi6: gsbi@16500000 {
 			compatible = "qcom,gsbi-v1.0.0";
 			cell-index = <12>;
-- 
2.25.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
