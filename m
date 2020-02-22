Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B98D168CF6
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 22 Feb 2020 07:46:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=gIvk+8V+FQEHEEGYIDCUbFKnXFKi/5r4d6qdEQdBiJk=; b=Q+RpBWyeWyw6NvmQtzkRB6P8RZ
	9bFCKslzns5R2yydM/hyZ3zWkOzqB4H2DauiU1xZjGHJ/SQQjhhpQDjdt1LHa2UnFpU4I0HIzGtm2
	EJeojWlm6jExapuolSsnlR1xSF/sqUkYtAcPxiF720Ysynq2GK1+7HSxNRh0p96d6rGbtDg5wJCLM
	uv6au06tJ2nxra847xXIYP6Xxcdb3DEbPrU1fze4R4lE89ys5ZLvCrTDTr7DdKNj3Ej2L0HlM8bps
	xDph7anHR/7kmRH/NbWJOr+J15Has2xVB3Fx5ATaST+OAyXL91Qvy16F4TEwJ2MfhzbKW6L/grsBX
	aW5UFOvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5OXv-0000VI-Vr; Sat, 22 Feb 2020 06:45:52 +0000
Received: from conuserg-07.nifty.com ([210.131.2.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5OXQ-0000NN-WA
 for linux-arm-kernel@lists.infradead.org; Sat, 22 Feb 2020 06:45:25 +0000
Received: from grover.flets-west.jp (softbank126093102113.bbtec.net
 [126.93.102.113]) (authenticated)
 by conuserg-07.nifty.com with ESMTP id 01M6ik5R005982;
 Sat, 22 Feb 2020 15:44:48 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-07.nifty.com 01M6ik5R005982
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1582353888;
 bh=QXIr1NM/lJU9Er4W0jdmoTXg2ZffC9oBy94sIlyO2tY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=XR5D3jcocDCm9YhIeLHXopxKiDTCB/2+rBBzyxSk+UPE+Bgxrn69ysb/tsKaTgKPo
 Z/1CHjEFwc+RCEtmLrzR8lfcrkvQfNLBrmd3C3SxdFHFsqgIFDk+wX+lKh6dqRv5Mc
 ariH1fjTC+insOWB01MkaZXU/qcCkJtHvbL3shAXphwZ79aHRKxgs7F93D6uDNcPFE
 LE46V0YMAVG1m/c9vmcj1gs82X6EkgQw0dMG/F3Sl5FBVTKeKcA1gFMFWZzSZBqjdD
 3/9lqd7qDt+J3yZBoMEStXGziN8FPBSC7mowZOdvQd3/E1/UZdXOZ4978xyuL0HNoq
 OxatouZ+F6SoQ==
X-Nifty-SrcIP: [126.93.102.113]
From: Masahiro Yamada <yamada.masahiro@socionext.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 3/4] ARM: dts: uniphier: rename aidet node names to follow
 json-schema
Date: Sat, 22 Feb 2020 15:44:44 +0900
Message-Id: <20200222064445.14903-3-yamada.masahiro@socionext.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200222064445.14903-1-yamada.masahiro@socionext.com>
References: <20200222064445.14903-1-yamada.masahiro@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_224521_274108_DA94F727 
X-CRM114-Status: UNSURE (   8.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.74 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [210.131.2.74 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 masahiroy@kernel.org, linux-kernel@vger.kernel.org,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Rob Herring <robh+dt@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Follow the standard nodename pattern "^interrupt-controller(@[0-9a-f,]+)*$"
defined in schemas/interrupt-controller.yaml of dt-schema.

Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
---

 arch/arm/boot/dts/uniphier-ld4.dtsi  | 2 +-
 arch/arm/boot/dts/uniphier-pro4.dtsi | 2 +-
 arch/arm/boot/dts/uniphier-pro5.dtsi | 2 +-
 arch/arm/boot/dts/uniphier-pxs2.dtsi | 2 +-
 arch/arm/boot/dts/uniphier-sld8.dtsi | 2 +-
 5 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm/boot/dts/uniphier-ld4.dtsi b/arch/arm/boot/dts/uniphier-ld4.dtsi
index f3a20dc0b22b..23b8fd627c00 100644
--- a/arch/arm/boot/dts/uniphier-ld4.dtsi
+++ b/arch/arm/boot/dts/uniphier-ld4.dtsi
@@ -375,7 +375,7 @@
 			interrupt-controller;
 		};
 
-		aidet: aidet@61830000 {
+		aidet: interrupt-controller@61830000 {
 			compatible = "socionext,uniphier-ld4-aidet";
 			reg = <0x61830000 0x200>;
 			interrupt-controller;
diff --git a/arch/arm/boot/dts/uniphier-pro4.dtsi b/arch/arm/boot/dts/uniphier-pro4.dtsi
index e96b5796f0f8..eb06c353970f 100644
--- a/arch/arm/boot/dts/uniphier-pro4.dtsi
+++ b/arch/arm/boot/dts/uniphier-pro4.dtsi
@@ -426,7 +426,7 @@
 			};
 		};
 
-		aidet: aidet@5fc20000 {
+		aidet: interrupt-controller@5fc20000 {
 			compatible = "socionext,uniphier-pro4-aidet";
 			reg = <0x5fc20000 0x200>;
 			interrupt-controller;
diff --git a/arch/arm/boot/dts/uniphier-pro5.dtsi b/arch/arm/boot/dts/uniphier-pro5.dtsi
index f794a0676760..c95eb44c816d 100644
--- a/arch/arm/boot/dts/uniphier-pro5.dtsi
+++ b/arch/arm/boot/dts/uniphier-pro5.dtsi
@@ -408,7 +408,7 @@
 			};
 		};
 
-		aidet: aidet@5fc20000 {
+		aidet: interrupt-controller@5fc20000 {
 			compatible = "socionext,uniphier-pro5-aidet";
 			reg = <0x5fc20000 0x200>;
 			interrupt-controller;
diff --git a/arch/arm/boot/dts/uniphier-pxs2.dtsi b/arch/arm/boot/dts/uniphier-pxs2.dtsi
index 04d6bef3a00f..c054d0175df9 100644
--- a/arch/arm/boot/dts/uniphier-pxs2.dtsi
+++ b/arch/arm/boot/dts/uniphier-pxs2.dtsi
@@ -508,7 +508,7 @@
 			};
 		};
 
-		aidet: aidet@5fc20000 {
+		aidet: interrupt-controller@5fc20000 {
 			compatible = "socionext,uniphier-pxs2-aidet";
 			reg = <0x5fc20000 0x200>;
 			interrupt-controller;
diff --git a/arch/arm/boot/dts/uniphier-sld8.dtsi b/arch/arm/boot/dts/uniphier-sld8.dtsi
index beb1eac85436..a05061038e78 100644
--- a/arch/arm/boot/dts/uniphier-sld8.dtsi
+++ b/arch/arm/boot/dts/uniphier-sld8.dtsi
@@ -379,7 +379,7 @@
 			interrupt-controller;
 		};
 
-		aidet: aidet@61830000 {
+		aidet: interrupt-controller@61830000 {
 			compatible = "socionext,uniphier-sld8-aidet";
 			reg = <0x61830000 0x200>;
 			interrupt-controller;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
