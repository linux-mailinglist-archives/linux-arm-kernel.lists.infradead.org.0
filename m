Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E003C4014
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 20:43:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hikf0leOLZ4NK2N7N6Iwn1yPKFUPKsgMTmJfkWOKWRI=; b=pYKnvImAgLaPej
	GITfP+6jPCtzDlXqWHOHFQhoj5AFQYK7f2/p+nJ5ArH6DAqa0dTBXzJKW/cOJuROvKb9q4AHd51xK
	juNGO4+mGEWAkyDfSip8/BksX/xO1egstdtYoxBu5cHGU3+KtTN6d3c+xfwJb2IClzWnYJtCz9pjp
	3Af+/mwF1h/moEyqBf+AUyFPB+cup1uH92UHYbxHKvIFWIiOD/M918JihssLBn+q0dBwhRPW7I6T6
	ZC9lTYt1iW0RXCifUoCJIiRT0FwCynLoYGLTmnQ+gKE2eMIPl/cTQ5atX94SS5+xQOIlHLBfTU2vb
	xsFJgDBLFVJY7uMuAb8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFN7O-0007N4-PV; Tue, 01 Oct 2019 18:43:26 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFN5x-00068r-Rr
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 18:41:59 +0000
Received: by mail-wr1-x443.google.com with SMTP id b9so16773739wrs.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 01 Oct 2019 11:41:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=3uq19lbLKTH7ULR+B4YPbGht8xy9goJU2ZUfKOHR3wQ=;
 b=NSzQeSer4vnSEkVbCTPNiopU9iCEDjshU9Pk3d3lgXHtQ/q9dkbVaIdEQwOOU01b5A
 qtGJubL3DC5GGKNA4fEmdobaynyTVwbhHeXo1cNSDHV+3nl/J4aA8pIt/obMKHbRl59x
 9q+V28cQjDmzhltMzLLPepfh0hULxmYvG/ljZx/RsbB1m5pMoWly7i60mQiOiAcHi50c
 V+c/Z+Ixy5hTC0O0yxuxciMP3Mlj2j2thjGZccW7GhDhNyyur23V1f6nufbCsmxk1483
 2HEPKkZmRpRgvPrVkdMB1dg6J45fvT27kbF12jN0/IOjuUEL0KDOvXanNHJAHg4Ft4TA
 yTdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=3uq19lbLKTH7ULR+B4YPbGht8xy9goJU2ZUfKOHR3wQ=;
 b=qSeudRquEmT/YOHyhsbS4bX0AYUEUMo3DhLGYbeKzaaz5MzfP0fC5/Lg6vF7Xe3SFq
 /iPqwEAvLpm6WBlTebWs3pCdnYtNM7nXJUkOgABTrlTzaYMiQtvNshcMRyzK3ulqrGGA
 wU+t4WfEwzmfJsIkYISxu9dEZZjVv5gExPOSAto9uNfzmIdHLQBtt8uE5Rr9E+ExVkv1
 zMmi9a6enbtOdV+AjQoER1+8eP5/7t5YKMakXbiP9MSloqcI/tnr6/a71jrPYICiBK/p
 E0WVqar9gQOZe8YyIwBGmvm0b8bNIrYXBSaj0OgPAhkJehdSj8U1GK4/bewMu8hyOboM
 rSsg==
X-Gm-Message-State: APjAAAXbfAAke6BgzdxO/E6BAp1ydIw1l8hZhh1KZBuml8z/GfRkMOTs
 1NBBOY8lI7FfEcv8Pk4RMH8=
X-Google-Smtp-Source: APXvYqw5DtaeOTom50F4g2+RllhYAoQlDrhsjYJqz11Rf7j20PRRU7AcKZKoZcWY54Msno5tG8bulw==
X-Received: by 2002:a5d:618a:: with SMTP id j10mr18178611wru.168.1569955316364; 
 Tue, 01 Oct 2019 11:41:56 -0700 (PDT)
Received: from Red.localdomain ([2a01:cb1d:147:7200:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id n8sm6788987wma.7.2019.10.01.11.41.55
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 01 Oct 2019 11:41:55 -0700 (PDT)
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: catalin.marinas@arm.com, davem@davemloft.net, herbert@gondor.apana.org.au,
 linux@armlinux.org.uk, mark.rutland@arm.com, mripard@kernel.org,
 robh+dt@kernel.org, wens@csie.org, will@kernel.org
Subject: [PATCH v2 06/11] ARM64: dts: allwinner: sun50i: Add Crypto Engine
 node on A64
Date: Tue,  1 Oct 2019 20:41:36 +0200
Message-Id: <20191001184141.27956-7-clabbe.montjoie@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191001184141.27956-1-clabbe.montjoie@gmail.com>
References: <20191001184141.27956-1-clabbe.montjoie@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_114157_967010_BA678C4C 
X-CRM114-Status: GOOD (  13.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
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

This patch enables the Crypto Engine on the Allwinner A64 SoC Device-tree.

Signed-off-by: Corentin Labbe <clabbe.montjoie@gmail.com>
---
 arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
index 69128a6dfc46..9701d4280f6d 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
@@ -487,6 +487,16 @@
 			reg = <0x1c14000 0x400>;
 		};
 
+		crypto: crypto@1c15000 {
+			compatible = "allwinner,sun50i-a64-crypto";
+			reg = <0x01c15000 0x1000>;
+			interrupts = <GIC_SPI 94 IRQ_TYPE_LEVEL_HIGH>;
+			resets = <&ccu RST_BUS_CE>;
+			reset-names = "bus";
+			clocks = <&ccu CLK_BUS_CE>, <&ccu CLK_CE>;
+			clock-names = "bus", "mod";
+		};
+
 		usb_otg: usb@1c19000 {
 			compatible = "allwinner,sun8i-a33-musb";
 			reg = <0x01c19000 0x0400>;
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
