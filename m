Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C92A11A44
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 15:34:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=mMws+T3yFCmGwsPu7NTYHr7bcFTL/lTmHNjft6uPQ+g=; b=jc1E2hYka2IalDfyozEa8P3ZXW
	dWUl1mvQwf/R9loogKgizjGr/pXsQCzEAN7lM1cCu1BUv8UOwqiBvZPlKvb2roJZaKycjdVNCpuie
	z19wrsaZYabREcyQPF7i9syNIW+7/R/yxc0KauK8cudd2vdH6QTBFiO5pvqOWV4STbqNNYpqOH2bK
	4vO1TNb/vk8rrj8W+L9IpaVbX6aLgam9I2aeA2mtgG/T6d9axucRF+nAKYExc8w5VSHPqlOoLqNRe
	YbjJD/ujK8OrIUjR3Rxl3PNAeAf0SB3eCbAVMEHumP8lN7/vp5MvYjIjWnAcFx5PjyWvX2O5cMeg4
	H+DpicaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMBqm-0001Li-Lx; Thu, 02 May 2019 13:34:12 +0000
Received: from mail2.sp2max.com.br ([138.185.4.9])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMBqe-0001JL-KU
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 13:34:06 +0000
Received: from pgsop.sopnet.com.ar (unknown [179.40.38.12])
 (Authenticated sender: pablo@fliagreco.com.ar)
 by mail2.sp2max.com.br (Postfix) with ESMTPA id 7F0767B2FF1;
 Thu,  2 May 2019 10:34:00 -0300 (-03)
From: Pablo Greco <pgreco@centosproject.org>
To: linux-sunxi@googlegroups.com
Subject: [PATCH v6 1/5] ARM: dts: sun8i: v40: bananapi-m2-berry: Add GPIO
 pin-bank regulator supplies
Date: Thu,  2 May 2019 10:33:45 -0300
Message-Id: <1556804030-25291-2-git-send-email-pgreco@centosproject.org>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <1556804030-25291-1-git-send-email-pgreco@centosproject.org>
References: <1556804030-25291-1-git-send-email-pgreco@centosproject.org>
X-SP2Max-MailScanner-Information: Please contact the ISP for more information
X-SP2Max-MailScanner-ID: 7F0767B2FF1.A2C29
X-SP2Max-MailScanner: Sem Virus encontrado
X-SP2Max-MailScanner-SpamCheck: nao spam, SpamAssassin (not cached,
 escore=-2.9, requerido 6, autolearn=not spam, ALL_TRUSTED -1.00,
 BAYES_00 -1.90)
X-SP2Max-MailScanner-From: pgreco@centosproject.org
X-Spam-Status: No
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_063404_895673_970BB53F 
X-CRM114-Status: UNSURE (   6.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Pablo Greco <pgreco@centosproject.org>, linux-kernel@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The bananapi-m2-berry has the PMIC providing voltage to all the pin-bank
supply rails from its various regulator outputs, tie them to the pio
node.

Signed-off-by: Pablo Greco <pgreco@centosproject.org>
---
 arch/arm/boot/dts/sun8i-v40-bananapi-m2-berry.dts | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/arch/arm/boot/dts/sun8i-v40-bananapi-m2-berry.dts b/arch/arm/boot/dts/sun8i-v40-bananapi-m2-berry.dts
index f05cabd..27297f4 100644
--- a/arch/arm/boot/dts/sun8i-v40-bananapi-m2-berry.dts
+++ b/arch/arm/boot/dts/sun8i-v40-bananapi-m2-berry.dts
@@ -123,6 +123,21 @@
 	status = "okay";
 };
 
+&pio {
+	vcc-pa-supply = <&reg_aldo2>;
+	vcc-pc-supply = <&reg_dcdc1>;
+	vcc-pd-supply = <&reg_dcdc1>;
+	vcc-pe-supply = <&reg_eldo1>;
+	vcc-pf-supply = <&reg_dcdc1>;
+	vcc-pg-supply = <&reg_dldo1>;
+};
+
+&reg_aldo2 {
+	regulator-min-microvolt = <2500000>;
+	regulator-max-microvolt = <2500000>;
+	regulator-name = "vcc-pa";
+};
+
 &reg_aldo3 {
 	regulator-always-on;
 	regulator-min-microvolt = <2700000>;
-- 
1.8.3.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
