Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EDBD8133A23
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 05:21:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oaDN7TcJRUR6vK4d+Mgc4TyAP3ePlc191X0K3fOF/qA=; b=W9c4Y4SEcRCmBL
	7MvaPrD3HOAPJGFOBEIUbQhi8sT3Abz/HXWpAdrpNropiUU6Dx2pyci06CWSJKrtDeJrixivteXXW
	l7S/0JSsj2rF4db6gWtiCuclNk5iGt8KpV0MS7zb4eGOipfCJ/XIJAb1FpLA+4iOaJB+oAMUb1cqz
	sFuh0vc1HwyV8EEZokvLwI2rOiqyNxzDeyFNBnGk43+QX7sICXiWblmcNiWS/CFiX2XQ6z/wIQUGY
	vobGJjrDGpOSSkXYXAZeP4TTGOqDyv35XvZWGgsC3EWV4WYm6e1Z1R0JthE8RqS30Yc3b/CrJe1Tg
	IpNB5yEbjwRvFMNs8oCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ip2qG-0000II-F2; Wed, 08 Jan 2020 04:21:12 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ip2pr-00009f-Pr
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 04:20:49 +0000
Received: by mail-pf1-x441.google.com with SMTP id x184so950533pfb.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 Jan 2020 20:20:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ieNSOsSOpnj4q/u/rEsAWON6yaOZBpH5DBZCwjMqUes=;
 b=egCsy8ctMqgFUgKw7PbURv7W1BffaIxMGQDselFlo0AxzKV5U0PNX3VwhKyTONsyxS
 9eqE4TpwjAEz9Kk8cKy+rHCwPmeI7iBdTHcVljgzCuCo5ZfzMC6yq/z3IbVEHbkpU3Yq
 DwW0ga6jtWLFHMUQ7wzvbsecqgkPk3njKN6vvkZ/mXduzO+zDv2qvDutrOZLmbRCSIF2
 QzWbVHm8lNNZDiiM4D6cpYnoSEvq48LeuVXibD10jJ9DSdi4yg6clcKgRn3DSIRALHyO
 5GDbPN5WT6Kct/kPMPZSiHmRREYm83tFMC2Pjl1TOWaTtEOOGiby/clTN+TDsqj82sxn
 Ax7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ieNSOsSOpnj4q/u/rEsAWON6yaOZBpH5DBZCwjMqUes=;
 b=EQV+Qr03vW4vUkXjsNCZbDcR9LZf/HppWJEkWMeD/mNi26y1IjDVX4KoDE0YCeeJzM
 9yPSGnRwXYHmjrUcqwanJ2SjIzcwIu194Jb5yECa4363i+XeJbEn/VavY6n3pn/zVkW4
 ZL8RB8DCbRyOoGYrghqCqGVTyouewoeTM4l4tlPz5EQiBLIuERIjFCkeYjCJASYAYi7u
 I2qJh3wMqGValDzYcbYp23+XmGG7rpj3U17d7U6yS+WD3igLMsmeB/nOw9ffW4qE8QTl
 Y4edevcOJQyiCHAffg4/g6Voij7g9OtwQqfPWg0E87LGfLFGXXRq52Xfm7x8pV7M68jf
 6eRA==
X-Gm-Message-State: APjAAAVslow4bo46L6kZzlerX0Pg9orAdHgFWOanL4zd6iz+vY3sGl6k
 lf9oB41Y+OhLlvE40gu3fyE=
X-Google-Smtp-Source: APXvYqwX1+AkSJZKhcVWFSRebEkfGF/lWQNJzL44Lhhyk/Wvx/HuJ2QTscsmY6/SwEh0nrmoSRXaDA==
X-Received: by 2002:a63:e17:: with SMTP id d23mr3233679pgl.173.1578457246963; 
 Tue, 07 Jan 2020 20:20:46 -0800 (PST)
Received: from anarsoul-thinkpad.lan (216-71-213-236.dyn.novuscom.net.
 [216.71.213.236])
 by smtp.gmail.com with ESMTPSA id p12sm1133478pjo.5.2020.01.07.20.20.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Jan 2020 20:20:46 -0800 (PST)
From: Vasily Khoruzhick <anarsoul@gmail.com>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: [PATCH v2 1/4] arm64: dts: allwinner: a64: add CPU clock to CPU0-3
 nodes
Date: Tue,  7 Jan 2020 20:20:15 -0800
Message-Id: <20200108042018.571251-2-anarsoul@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200108042018.571251-1-anarsoul@gmail.com>
References: <20200108042018.571251-1-anarsoul@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_202047_836578_D5F3B362 
X-CRM114-Status: GOOD (  11.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (anarsoul[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add CPU clock to the CPU nodes since it is a prerequisite for enabling
DVFS.

Signed-off-by: Vasily Khoruzhick <anarsoul@gmail.com>
---
 arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
index 5e3f16c3b706..77b33087866d 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
@@ -90,6 +90,8 @@ cpu0: cpu@0 {
 			reg = <0>;
 			enable-method = "psci";
 			next-level-cache = <&L2>;
+			clocks = <&ccu CLK_CPUX>;
+			clock-names = "cpu";
 		};
 
 		cpu1: cpu@1 {
@@ -98,6 +100,8 @@ cpu1: cpu@1 {
 			reg = <1>;
 			enable-method = "psci";
 			next-level-cache = <&L2>;
+			clocks = <&ccu CLK_CPUX>;
+			clock-names = "cpu";
 		};
 
 		cpu2: cpu@2 {
@@ -106,6 +110,8 @@ cpu2: cpu@2 {
 			reg = <2>;
 			enable-method = "psci";
 			next-level-cache = <&L2>;
+			clocks = <&ccu CLK_CPUX>;
+			clock-names = "cpu";
 		};
 
 		cpu3: cpu@3 {
@@ -114,6 +120,8 @@ cpu3: cpu@3 {
 			reg = <3>;
 			enable-method = "psci";
 			next-level-cache = <&L2>;
+			clocks = <&ccu CLK_CPUX>;
+			clock-names = "cpu";
 		};
 
 		L2: l2-cache {
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
