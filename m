Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EDCB3135A5E
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 14:40:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8OOYVs8gZqtwJn/EiqOnkr9ufc0vx3zSbA/Bj5CiXsA=; b=EsQiV431+idpoe
	FaNa1bH7N8suuQnvJEcmSPMsqQ8w/Fh6Q6XyTwZBdO37moJ7e/KEsDz0jTKZJUaDsRZw/Dg/T0pGz
	ghKQ2OUOCw0iURW6/BIYfN3PWVNBPAGzoYqHj+jju5St3qqtSBl3ePBes2nSo84RmKasFbPoe0nXx
	qyEN4pB/SZq73vXkBEVCVNUV5b35FFsBwcuRCd2g/1j8a6Oj6OuST6az5AfODCmGIvY1jJ+R2ohZ1
	ZmYUSkegJAMkkkthdL9x0EynEmJjbXdGzmZ6l21dprTF7b6msNEOxvD8XayDHJFBRsjFZFcHoT2Ob
	ZJp69oGgWyg6jgst/bcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipY2b-0004s0-4y; Thu, 09 Jan 2020 13:40:01 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipY1y-0004Qy-OT
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 13:39:24 +0000
Received: by mail-wr1-x444.google.com with SMTP id j42so7368149wrj.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Jan 2020 05:39:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=monstr-eu.20150623.gappssmtp.com; s=20150623;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=r7WTFcFTk1QmmtFD4T5h5vDKOxEbNevvnGjMspC9SaQ=;
 b=yB+cXjham6iu3QWUiauzuVhna2pI/lM3ap1PyFVUgIdf30z80pj5V0REouRFMrmXeb
 bxHZZ3PvHKPP1+LkEXDd9Gde0FPU3HRc6pALcVoVz4lW2JKgdN0qWpOloTRNYIs/+JsR
 PSr02LwEXLY1Y/8kDuEkbMsnKt4iK9RpGiq8N37cls+E7WBdBvMQ5VG3g0bU9P5m1pAj
 51cSJpVp2nw7HJlV1B8w/yUNvoa0uM6JoiyXEAJ1fugzcAE+Afj/1kFkgl1t2A0lGBwg
 9G4vyVJtLJNKoBaMVpn60KFoDIlCkBGHlcsfaTMcrFK22AH2+5s8G1GXHWwx7xsyy6iR
 07hQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=r7WTFcFTk1QmmtFD4T5h5vDKOxEbNevvnGjMspC9SaQ=;
 b=RVy46gV/47gfLtrM9B7eAbq7k9ob5f3XoYPV+d+K5fs+GN+oP2AshPIqIQunkUdRTI
 SAAjmBoF0MSncFURzM16kuY1RQ4KcJI237KA9IMquEVW09yTa78vF2KjNuUVPSwEwV3Y
 200UbOJN41pR3xDibV0dAFt/Ahjs/oY+O0FYEh+nDEAEIXzzWADxYw/B2zRdxyl3SaOi
 qsvuiUp/L8so3KuvHBwK1O/1dmrjtU1BF5oX5zuoqgVdB+krIvZrOunNTpKRofnBRtdJ
 PgUO9AaUl0enHuTCHOYap40Pd6Nlkl+AX3IZvlIwnBA/tERL/xUQ3VQmyzoPHd3Wtk2r
 ErWA==
X-Gm-Message-State: APjAAAVkWYgAtkmjTVFBExT5qqWeYdKrofraggTB/QllWw9gWpBzBSeE
 jlv0NFe78gX0TQqxSovIBxZxtiRNCZRKig==
X-Google-Smtp-Source: APXvYqzBNJJfU6vCVqf/kckPeYyOk9us+nNsVs1xLIoX1DFcfCCm47/9vDfpkL8wjDjT2Bi7VzAFnw==
X-Received: by 2002:a05:6000:118e:: with SMTP id
 g14mr1797127wrx.39.1578577161031; 
 Thu, 09 Jan 2020 05:39:21 -0800 (PST)
Received: from localhost (nat-35.starnet.cz. [178.255.168.35])
 by smtp.gmail.com with ESMTPSA id a16sm8167344wrt.37.2020.01.09.05.39.20
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 09 Jan 2020 05:39:20 -0800 (PST)
From: Michal Simek <michal.simek@xilinx.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/6] arm64: zynqmp: Turn comment to gpio-line-names
Date: Thu,  9 Jan 2020 14:39:11 +0100
Message-Id: <5c7d1ef3643f6ac96e8a7c0144da224d8eabc529.1578577147.git.michal.simek@xilinx.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <cover.1578577147.git.michal.simek@xilinx.com>
References: <cover.1578577147.git.michal.simek@xilinx.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_053922_792612_26623337 
X-CRM114-Status: GOOD (  10.17  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
 Anurag Kumar Vulisha <anurag.kumar.vulisha@xilinx.com>,
 Rajan Vaja <rajan.vaja@xilinx.com>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Harini Katakam <harini.katakam@xilinx.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Label gpio lines properly.

Signed-off-by: Michal Simek <michal.simek@xilinx.com>
---

 .../boot/dts/xilinx/zynqmp-zcu102-revA.dts    | 43 ++++---------------
 1 file changed, 9 insertions(+), 34 deletions(-)

diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-zcu102-revA.dts b/arch/arm64/boot/dts/xilinx/zynqmp-zcu102-revA.dts
index 7c6b538490f8..c96e8416fa7e 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp-zcu102-revA.dts
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-zcu102-revA.dts
@@ -125,21 +125,11 @@ &i2c0 {
 	tca6416_u97: gpio@20 {
 		compatible = "ti,tca6416";
 		reg = <0x20>;
-		gpio-controller;
+		gpio-controller; /* IRQ not connected */
 		#gpio-cells = <2>;
-		/*
-		 * IRQ not connected
-		 * Lines:
-		 * 0 - PS_GTR_LAN_SEL0
-		 * 1 - PS_GTR_LAN_SEL1
-		 * 2 - PS_GTR_LAN_SEL2
-		 * 3 - PS_GTR_LAN_SEL3
-		 * 4 - PCI_CLK_DIR_SEL
-		 * 5 - IIC_MUX_RESET_B
-		 * 6 - GEM3_EXP_RESET_B
-		 * 7, 10 - 17 - not connected
-		 */
-
+		gpio-line-names = "PS_GTR_LAN_SEL0", "PS_GTR_LAN_SEL1", "PS_GTR_LAN_SEL2", "PS_GTR_LAN_SEL3",
+				"PCI_CLK_DIR_SEL", "IIC_MUX_RESET_B", "GEM3_EXP_RESET_B",
+				"", "", "", "", "", "", "", "", "";
 		gtr-sel0 {
 			gpio-hog;
 			gpios = <0 0>;
@@ -169,27 +159,12 @@ gtr-sel3 {
 	tca6416_u61: gpio@21 {
 		compatible = "ti,tca6416";
 		reg = <0x21>;
-		gpio-controller;
+		gpio-controller; /* IRQ not connected */
 		#gpio-cells = <2>;
-		/*
-		 * IRQ not connected
-		 * Lines:
-		 * 0 - VCCPSPLL_EN
-		 * 1 - MGTRAVCC_EN
-		 * 2 - MGTRAVTT_EN
-		 * 3 - VCCPSDDRPLL_EN
-		 * 4 - MIO26_PMU_INPUT_LS
-		 * 5 - PL_PMBUS_ALERT
-		 * 6 - PS_PMBUS_ALERT
-		 * 7 - MAXIM_PMBUS_ALERT
-		 * 10 - PL_DDR4_VTERM_EN
-		 * 11 - PL_DDR4_VPP_2V5_EN
-		 * 12 - PS_DIMM_VDDQ_TO_PSVCCO_ON
-		 * 13 - PS_DIMM_SUSPEND_EN
-		 * 14 - PS_DDR4_VTERM_EN
-		 * 15 - PS_DDR4_VPP_2V5_EN
-		 * 16 - 17 - not connected
-		 */
+		gpio-line-names = "VCCPSPLL_EN", "MGTRAVCC_EN", "MGTRAVTT_EN", "VCCPSDDRPLL_EN", "MIO26_PMU_INPUT_LS",
+				"PL_PMBUS_ALERT", "PS_PMBUS_ALERT", "MAXIM_PMBUS_ALERT", "PL_DDR4_VTERM_EN",
+				"PL_DDR4_VPP_2V5_EN", "PS_DIMM_VDDQ_TO_PSVCCO_ON", "PS_DIMM_SUSPEND_EN",
+				"PS_DDR4_VTERM_EN", "PS_DDR4_VPP_2V5_EN", "", "";
 	};
 
 	i2c-mux@75 { /* u60 */
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
