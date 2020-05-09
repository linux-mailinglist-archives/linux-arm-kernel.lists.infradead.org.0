Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DD401CBE48
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  9 May 2020 08:59:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=XfeVIdHHK9MFTUWR8vP7dN3ICvLvwARKJSajndexIJE=; b=K5hLmEsvYNq2yX65OqXml0C/zx
	XwJ10Jn32sOyoVc4tDbaPXhh1J/3mzu0FcAxkj0cR7Y2lLL5OXLwq+4wmhX9VG8XsDhxAmWlYgSEi
	FXByR6QBSozwq/Tp+v4SDlcHeac89K2igb0tk83jRFFbObnIvX3KMa+z5VOYIf7FNPu4yO3mllGuz
	uUNPm8MxHrcLb76xXgdT2zyMRFg/Ahv07Em/k8HBVnrBOCY0juKjyGZwf7C3lavujBXVlpwGmpc+b
	Em7uTHE/bCnL/jVjwBKoPrCU0FQsv7ht5zliegQqO75Xq9zk5npxfpzcFHBqDRFjxOBnJ/F5+QacZ
	CNx4kkaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXJS7-0000nN-MG; Sat, 09 May 2020 06:59:15 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXJRU-0000MA-LL
 for linux-arm-kernel@lists.infradead.org; Sat, 09 May 2020 06:58:38 +0000
Received: by mail-pf1-x443.google.com with SMTP id x2so2156402pfx.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 08 May 2020 23:58:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=e7MiLH7+SCtzdt0PBk2oBWo6WTMfe3HTrl4Wg7fT5b8=;
 b=vXdN8oypTs3z11xY+tYCbwNsJsWc09M2NTfdgk362GzYGjuOhmweKw0fBqIjtJRioO
 4Bv2v2sRxvLiDGjJmyCn4v9XqjuvHLlmlaZuKER9aC77SYKfRPygWHeEDqeDeL19wvXG
 jDY2fx0dJy2qJOM28eDgrAOcySYfq1+V+jbso60kjUwVPh0IlCO8X2HxsSQiJ+TkQnc6
 RybMCGAZu6zTMRecBvOtL6h9sG6cXQ1va2DRKE1o14L5aOXP3Hb920UtA8Fz075lIUSA
 plWojAKpTbjrEFwUcnUiTwXg7Db3GhsX7TRNppYgWIgcJ7INMfsd9Q19BWcwqPdLlQl3
 q+EQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=e7MiLH7+SCtzdt0PBk2oBWo6WTMfe3HTrl4Wg7fT5b8=;
 b=X/9x7TZa9pvGLQDpFfe436EM2WhXEzoLgGsCBGsItUejgvVcBO53iEt+IJH0ZUQl8q
 YdOUx8zHP1v4pBph/Ax9g+fyTfXKB04xiSVLUP9VVL6bgrvKHrIxqN+RE5l7Ea4bwYvn
 gCbcpIG4z+unX+lgpKV86sj67RjZRzWnkOHzA6R7qX27A/uWNS9fv6tfNZ8xLeRuLkmi
 gMTD2/RW1sdtXkypZ5jB13MIaB0rz2ZasTJoH2M2C9AuU3t71Y9c7RoZ2sY1UTbjw3cR
 gZJtBpI49IKZmUkK/cS3qR3cg21l9eKAwYpm/1sD0RrZtWYO8Brw+aBmHOtGo4Ft81sP
 WU+Q==
X-Gm-Message-State: AGi0PubKSkMDJCzFr5cZQ4bY55cUfwCXw4AaqqPAtAhM8QhmiGNJjR/7
 FI561mfGyk96UqOfxjY7/DQ=
X-Google-Smtp-Source: APiQypK3wT9LttykvZaRfxnpnUFiKYc9Ap/hkzHYXBDRd2HlFmINnaeauCt6vlHaxkkOFfT6f8Szuw==
X-Received: by 2002:aa7:8509:: with SMTP id v9mr6968735pfn.110.1589007516067; 
 Fri, 08 May 2020 23:58:36 -0700 (PDT)
Received: from fmin-OptiPlex-7060.nreal.work ([103.206.190.146])
 by smtp.gmail.com with ESMTPSA id w192sm3811572pff.126.2020.05.08.23.58.32
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 08 May 2020 23:58:35 -0700 (PDT)
From: dillon.minfei@gmail.com
To: robh+dt@kernel.org, mcoquelin.stm32@gmail.com, alexandre.torgue@st.com,
 broonie@kernel.org, p.zabel@pengutronix.de
Subject: [PATCH 2/3] ARM: dts: stm32: enable l3gd20 on stm32429-disco board
Date: Sat,  9 May 2020 14:58:22 +0800
Message-Id: <1589007503-9523-3-git-send-email-dillon.minfei@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1589007503-9523-1-git-send-email-dillon.minfei@gmail.com>
References: <1589007503-9523-1-git-send-email-dillon.minfei@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200508_235836_708828_E2B38F80 
X-CRM114-Status: GOOD (  11.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dillon.minfei[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, dillonhua@gmail.com,
 linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org,
 dillon min <dillon.minfei@gmail.com>, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: dillon min <dillon.minfei@gmail.com>

Enable l3gd20 on stm32429-disco board.

Signed-off-by: dillon min <dillon.minfei@gmail.com>
---
 arch/arm/boot/dts/stm32f429-disco.dts | 24 ++++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/arch/arm/boot/dts/stm32f429-disco.dts b/arch/arm/boot/dts/stm32f429-disco.dts
index 30c0f67..d365358 100644
--- a/arch/arm/boot/dts/stm32f429-disco.dts
+++ b/arch/arm/boot/dts/stm32f429-disco.dts
@@ -49,6 +49,8 @@
 #include "stm32f429.dtsi"
 #include "stm32f429-pinctrl.dtsi"
 #include <dt-bindings/input/input.h>
+#include <dt-bindings/interrupt-controller/irq.h>
+#include <dt-bindings/gpio/gpio.h>
 
 / {
 	model = "STMicroelectronics STM32F429i-DISCO board";
@@ -127,3 +129,25 @@
 	pinctrl-names = "default";
 	status = "okay";
 };
+
+&spi5 {
+	status = "okay";
+	pinctrl-0 = <&spi5_pins>;
+	pinctrl-names = "default";
+	#address-cells = <1>;
+	#size-cells = <0>;
+	cs-gpios = <&gpioc 1 GPIO_ACTIVE_LOW>;
+	dmas = <&dma2 3 2 0x400 0x0>,
+	       <&dma2 4 2 0x400 0x0>;
+	dma-names = "rx", "tx";
+	l3gd20: l3gd20@0 {
+		compatible = "st,l3gd20-gyro";
+		spi-max-frequency = <10000000>;
+		st,drdy-int-pin = <2>;
+		interrupt-parent = <&gpioa>;
+		interrupts = <1 IRQ_TYPE_EDGE_RISING>,
+				<2 IRQ_TYPE_EDGE_RISING>;
+		reg = <0>;
+		status = "okay";
+	};
+};
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
