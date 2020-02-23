Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66B1416973A
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 23 Feb 2020 11:40:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jRZxxm+AdRDxxx4EdGZwi9vKQacz7tOCNiAg07MeXQg=; b=nv3JiMPUKYxMtB
	dVSuAV2NFem+m2lqaUb0IIodPW2wX3bC9DJ0H1FcZVPhITrdOa5VZLTHkEEvl9mMrSpudklljIQzd
	DuDigG1B1ulR3IWsR3LrpXboy3fqFdDyNQdu609wG1M/u1LtWrYAiMO81DGVWyppG78ZdM1n5iqOg
	hzA3NRYmIpn+CzED0hu2NblPv0/kThilMwuLVW/mF60/M73YQAvX4Byd68w3EquVN3D80BMQulI+u
	bHcSKu1UJyND+7BanZzgAURlBKhl6zxZEUqXCiInUmyJCY2mRytfEe1AWVEOavMKvPypJCF/lY1St
	BbyYSDxrmk5HLIiWQk2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5ogd-0000uR-T8; Sun, 23 Feb 2020 10:40:35 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5ogU-0000tu-PP
 for linux-arm-kernel@lists.infradead.org; Sun, 23 Feb 2020 10:40:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1582454424; bh=yQi5LUYQ7kGvpcOP6gpK0t0DsHyR0thPiy164ClcnMA=;
 h=From:To:Cc:Subject:Date:From;
 b=WWSCQvGx9mHzPDvEbm+0tNohoy7zQPtUIoEW0CFCRiiFj/Ah2EWKI/Bb/GWn4BN+N
 v4Rkbb/j0uKW1Rv2zWBDErDRrNaifnTJQ0P+nVrlIa+NUi9QIMnlrcg2JjhiiAoDLZ
 lruh0UqyzkhGXVl7y3f5S5yzIxyr4uLTR9zCbCsk=
From: Ondrej Jirman <megous@megous.com>
To: linux-sunxi@googlegroups.com
Subject: [PATCH v2] arm64: dts: sun50i-h5-orange-pi-pc2: Add CPUX voltage
 regulator
Date: Sun, 23 Feb 2020 11:40:19 +0100
Message-Id: <20200223104019.527587-1-megous@megous.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200223_024026_994441_EBDDF936 
X-CRM114-Status: UNSURE (   6.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Ondrej Jirman <megous@megous.com>, Mark Rutland <mark.rutland@arm.com>,
 Samuel Holland <samuel@sholland.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Orange Pi PC2 features sy8106a regulator just like Orange Pi PC.

Signed-off-by: Ondrej Jirman <megous@megous.com>
Reviewed-by: Samuel Holland <samuel@sholland.org>
---
 .../dts/allwinner/sun50i-h5-orangepi-pc2.dts  | 20 +++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h5-orangepi-pc2.dts b/arch/arm64/boot/dts/allwinner/sun50i-h5-orangepi-pc2.dts
index 70b5f09984218..7b2572dc84857 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h5-orangepi-pc2.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h5-orangepi-pc2.dts
@@ -93,6 +93,10 @@ &codec {
 	status = "okay";
 };
 
+&cpu0 {
+	cpu-supply = <&reg_vdd_cpux>;
+};
+
 &de {
 	status = "okay";
 };
@@ -168,6 +172,22 @@ &ohci3 {
 	status = "okay";
 };
 
+&r_i2c {
+	status = "okay";
+
+	reg_vdd_cpux: regulator@65 {
+		compatible = "silergy,sy8106a";
+		reg = <0x65>;
+		regulator-name = "vdd-cpux";
+		silergy,fixed-microvolt = <1100000>;
+		regulator-min-microvolt = <1000000>;
+		regulator-max-microvolt = <1400000>;
+		regulator-ramp-delay = <200>;
+		regulator-boot-on;
+		regulator-always-on;
+	};
+};
+
 &spi0  {
 	status = "okay";
 
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
