Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D6FAC4010
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 20:42:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XDzuwPcJYAlT/nsmIF/7TAoVYhOu7xgSb1mYOxrgPAM=; b=rE1lgpvQ6e6Uq6
	x0PwcmEWBvbmtWdTJiSA1Z1SryJCuav9aF+yWBGmtfoDxoWND/bbmWhZDG6Y/Avyhmsaiwz6MmsIY
	dBzNgTUaolcGAXq+GDHNoS1xN6mtMkzVMh9VxdL/Fe2/nxujNpW6qTjZvlIgTQzeiztoccBgGbtEn
	REIbCNO1DffldxttxSDNXJQ1PdlfscLzXbOUNIxDABx/1UfyuZkaVTf5xq+kxlfVpn6AHu39jkn9D
	4RzHe7V+3CrfqxhN+fpF9WoekCJ12WxhxVJi6KSJNqiMzK0s5n4UstNfC+j4VG6KPEuzb+JA6Pmqn
	Rf3rCe4n49OZwLqGBRIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFN6Y-0006Vh-Vg; Tue, 01 Oct 2019 18:42:34 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFN5w-00067J-5Y
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 18:41:58 +0000
Received: by mail-wr1-x444.google.com with SMTP id a11so16782928wrx.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 01 Oct 2019 11:41:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Xi1PY45A9Lda1Y/IC4dXlxysdfAnSBFMqs5iPhi/26s=;
 b=EC5x3JwIylYQhvAu+JOamaLobk+oW0aExLC799Z4z9fPyYJ89gDZcisO9TRmBbVBp+
 lI5Z7V6JScNpSW299UlXWnqWlz6F9bKr2r/n+I2K/WS439+NUIath3JX28iqz+gVU0CF
 7kaNoALlmdHAxkEpYeGIjYQlTmPSmAmRERSpUGlZwTmLFWvC+ygvBuP1ueVBdU2+Bgny
 mRPFoNrfDF9ddT1Rpzdw6TtGD1GFaI/tqK32mb6o/DOnxSV+KnoW9YzZsAJlR3XZAL4v
 /o8DqYg3q7PUDpOyEauSFQTt6IvqR0Mi96MUSSi/pcsvjgW+JsaSikrHcqyrdVrU9SMZ
 pL5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Xi1PY45A9Lda1Y/IC4dXlxysdfAnSBFMqs5iPhi/26s=;
 b=YHfF5VTVS2t0GoaMuZsBRmxkCSHn1GcGrTJbu93DRQChs05V7e8UABaooZJQLY7/52
 ezXm7HEHBk5NTZCI3a/e1Wtjk6hDKMP1noZ651QZgN8s2eYr9uf6Tn3bb7kcXbhFIyS3
 YsklNsdDT/VXypfLp2jH5sdNHzWlNCDc1su8tvYOU5X/ZirthkIweazR1JLtV08Wuk99
 dmW8GCRLuadrXzjftQimHAbN809BwBubQl5KVKoXf8/OI/Rg4kOz6weqY4T5V61Vqrnd
 3EFkyjG6/ztdxtlDSIutI9YJKy4b/O/29hIdlld4ipATTgD95EVMjI+Z6rTyp4RfyHxw
 cVdw==
X-Gm-Message-State: APjAAAX3bVet+QkypjO/BmjVxd4MAHeAMN2VTKy2cPG5YYcE/MY5wtG3
 EY76B2zNVlM0PAsQDL6HKuI=
X-Google-Smtp-Source: APXvYqxY9Qp528krfwvGQD1zr1FhtrsC61+CpRlyWYj7vK188LT443AuVK7BAKzKWr+dGgHXn1T8ug==
X-Received: by 2002:adf:e9c5:: with SMTP id l5mr18834973wrn.40.1569955314989; 
 Tue, 01 Oct 2019 11:41:54 -0700 (PDT)
Received: from Red.localdomain ([2a01:cb1d:147:7200:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id n8sm6788987wma.7.2019.10.01.11.41.53
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 01 Oct 2019 11:41:54 -0700 (PDT)
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: catalin.marinas@arm.com, davem@davemloft.net, herbert@gondor.apana.org.au,
 linux@armlinux.org.uk, mark.rutland@arm.com, mripard@kernel.org,
 robh+dt@kernel.org, wens@csie.org, will@kernel.org
Subject: [PATCH v2 05/11] ARM: dts: sun8i: H3: Add Crypto Engine node
Date: Tue,  1 Oct 2019 20:41:35 +0200
Message-Id: <20191001184141.27956-6-clabbe.montjoie@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191001184141.27956-1-clabbe.montjoie@gmail.com>
References: <20191001184141.27956-1-clabbe.montjoie@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_114156_230139_50DF59E2 
X-CRM114-Status: GOOD (  12.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (clabbe.montjoie[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-sunxi@googlegroups.com, Corentin Labbe <clabbe.montjoie@gmail.com>,
 linux-crypto@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Crypto Engine is a hardware cryptographic accelerator that supports
many algorithms.
It could be found on most Allwinner SoCs.

This patch enables the Crypto Engine on the Allwinner H3 SoC Device-tree.

Signed-off-by: Corentin Labbe <clabbe.montjoie@gmail.com>
---
 arch/arm/boot/dts/sun8i-h3.dtsi | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm/boot/dts/sun8i-h3.dtsi b/arch/arm/boot/dts/sun8i-h3.dtsi
index e37c30e811d3..778a23a794c9 100644
--- a/arch/arm/boot/dts/sun8i-h3.dtsi
+++ b/arch/arm/boot/dts/sun8i-h3.dtsi
@@ -153,6 +153,17 @@
 			allwinner,sram = <&ve_sram 1>;
 		};
 
+		crypto: crypto@1c15000 {
+			compatible = "allwinner,sun8i-h3-crypto";
+			reg = <0x01c15000 0x1000>;
+			interrupts = <GIC_SPI 94 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "ce_ns";
+			resets = <&ccu RST_BUS_CE>;
+			reset-names = "bus";
+			clocks = <&ccu CLK_BUS_CE>, <&ccu CLK_CE>;
+			clock-names = "bus", "mod";
+		};
+
 		mali: gpu@1c40000 {
 			compatible = "allwinner,sun8i-h3-mali", "arm,mali-400";
 			reg = <0x01c40000 0x10000>;
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
