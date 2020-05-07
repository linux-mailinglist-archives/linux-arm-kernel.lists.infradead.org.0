Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C04401C83C3
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 09:47:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=O3YqjF5OiOVsEVCKLkTC2Z6EaQKCOMF8t/dmPviYF3M=; b=Ca/w06lXNqlg/cnDQW4G3Ix3/U
	C5IQMdmxm779DiPKrJk71LSWMXTdQ7EyjIksexhJ1BRUwkCIRAFeYjRh1OYHXPV2UPAEaroiXXOQ6
	YY/CmzzhI9pfsp+GJJWlsas/QzGQoTnShrfbf5+ZogHWCVMMmV7lRIT0SgOffYmJjPus2e6QgaLGD
	0OE4y4pgQaRpXPolJ9L6+RgGGutE0iO/bn/2tD95ndj6T7IAJJOOzHgZnIiWX+MuXIuhxqRgntHWe
	OCv3Icahxjs0WAvEkdluB8D46kqDTY45/V0DVlMya3nB8bKMD2e/Uf5NnxEvCxdmH+wc9fPb4EmFc
	QDVA56LA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWbFY-0003Me-GN; Thu, 07 May 2020 07:47:20 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWbF8-0003Bh-E0
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 07:46:55 +0000
Received: by mail-pf1-x442.google.com with SMTP id f7so2600511pfa.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 May 2020 00:46:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=cweRr9cAyY6zAkbWBKWMpZ4+w4vWexg4Pp5+tOHzveM=;
 b=Bqxfo24AfFYXWhsN8GHnujLuoVkBpk+oLN5n/pKhY1B/kTAZsV4QlTI/+64OgJd7me
 /3GbM2TCKbKKs5H0kBqmM/lnyfr9O1RVWszihBOglb3thtIhJhcsvO0cuaevmIsigXdc
 AvG+O3NOWCh8NEyKHb9rrPLijMLpT2UVpR3OtJax9CXsSrfustfDX6lSjq7KY+lxg8aH
 cRYpX6Ay58EqICKpIAqzfQGh+rA6W3MSlwo/Gl8PisC8qnqo5nBQPZ6Vs295kRAD8EEu
 ru29YLo93QVo76QU8igeajEgubBaI0bCFrxP9vYIm1WQw+gIC21E0CRyu41/mtzKfcMM
 c0mA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=cweRr9cAyY6zAkbWBKWMpZ4+w4vWexg4Pp5+tOHzveM=;
 b=q7f5T0ICbun4Gb+TjEz+QRzqXdYdnPQusB+ISAJhUS1XTgN2iI4ub4r8bjRcHD8+Xy
 iPco544aMm0z5t6jGRyhY+TB/pZ6ld/JgnU0QptHa25rpKHnz0DE/YeQ19i5npfhEioD
 NQQAo0zBJ7qpc3kTMx5d9B1P0bNeFyJaGEnShSa2BM48+IKAgwolpHkr/pNoj9b2yJPZ
 yArUGplx8Euf2IrvemlyUgMu5WSDQbJPE1wm5gAn6o7bVB7ZrwTEmVbf5ObCfY5Jwm/o
 JhYy7t7VlX26afUY2v/P2MvuoTqyOy+51O90WK/hUhsr+8yb/2lNVi5EXshTP4h0pBOn
 F7GQ==
X-Gm-Message-State: AGi0PuZ4eEx17O0h86exsTDZfrB7/jcaiHl27I6BaC3Ibem0qecQHR31
 jmvwQibN7gu1VFOBLC3THQs4eVpVemU=
X-Google-Smtp-Source: APiQypI8VrY230e+hhO68sFDKpYBvjJ1jP2UrGvK+1FaFovSdhtxYdf0l+gaPRquhoaquZMZUdgkeQ==
X-Received: by 2002:aa7:9429:: with SMTP id y9mr13001101pfo.8.1588837613949;
 Thu, 07 May 2020 00:46:53 -0700 (PDT)
Received: from fmin-OptiPlex-7060.nreal.work ([103.206.190.146])
 by smtp.gmail.com with ESMTPSA id r26sm4127943pfq.75.2020.05.07.00.46.51
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 07 May 2020 00:46:53 -0700 (PDT)
From: dillon.minfei@gmail.com
To: mcoquelin.stm32@gmail.com, alexandre.torgue@st.com,
 philippe.schenker@toradex.com
Subject: [PATCH 1/4] ARM: dts: stm32: add I2C3 support on STM32F429 SoC
Date: Thu,  7 May 2020 15:46:43 +0800
Message-Id: <1588837603-14206-2-git-send-email-dillon.minfei@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1588837603-14206-1-git-send-email-dillon.minfei@gmail.com>
References: <1588837603-14206-1-git-send-email-dillon.minfei@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_004654_472085_8C5834E1 
X-CRM114-Status: GOOD (  12.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dillon.minfei[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: dillon min <dillon.minfei@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: dillon min <dillon.minfei@gmail.com>

This patch adds I2C3 instances of the STM32F429 SoC

Signed-off-by: dillon min <dillon.minfei@gmail.com>
---
 arch/arm/boot/dts/stm32f429.dtsi | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm/boot/dts/stm32f429.dtsi b/arch/arm/boot/dts/stm32f429.dtsi
index d777069..257b843 100644
--- a/arch/arm/boot/dts/stm32f429.dtsi
+++ b/arch/arm/boot/dts/stm32f429.dtsi
@@ -402,6 +402,18 @@
 			status = "disabled";
 		};
 
+		i2c3: i2c@40005c00 {
+			compatible = "st,stm32f4-i2c";
+			reg = <0x40005c00 0x400>;
+			interrupts = <72>,
+				     <73>;
+			resets = <&rcc STM32F4_APB1_RESET(I2C3)>;
+			clocks = <&rcc 0 STM32F4_APB1_CLOCK(I2C3)>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+			status = "disabled";
+		};
+
 		dac: dac@40007400 {
 			compatible = "st,stm32f4-dac-core";
 			reg = <0x40007400 0x400>;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
