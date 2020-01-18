Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 920D5141BEE
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 19 Jan 2020 05:13:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=oi0Qgo++IcA0jKe+BDuvwDaCA/u4sKNO0HuXPwxHjSQ=; b=Pfp803OzVu8brz
	IHSEjb2fb4co1ErYGDXfYugon1ZMG3j0IykRPR55NKKDdLVTtBjXhjBIDVOehHX6HTRaIuKi4DbLy
	D36kyjvIe+z8kUw2HLLCBbnRGkYeWHbS1dXRWug92vQu4Iy457brVq1+ntEyqn3zrnFfOYHb7PbbK
	hWKtlKRwLWDE9TpA2Lf5AaYUXrcEOnIbbd/gP1nIIHU9KA/npgqGgT4MRybvReSweESEjaS0fEbwQ
	fj7nwprbkCdLpfvC0aqofjHgCsyCeLFvufrQxg6wIoJ/GiQLiZxhFVaL2tGMRPeB/g2pfVM0B71wu
	8Yg9eVEaoOup3s66eAfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1it1xf-0006wm-UV; Sun, 19 Jan 2020 04:13:19 +0000
Received: from mx2.freebsd.org ([2610:1c1:1:606c::19:2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1it1xT-0006rO-9q
 for linux-arm-kernel@lists.infradead.org; Sun, 19 Jan 2020 04:13:09 +0000
Received: from mx1.freebsd.org (mx1.freebsd.org [96.47.72.80])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (Client CN "mx1.freebsd.org",
 Issuer "Let's Encrypt Authority X3" (verified OK))
 by mx2.freebsd.org (Postfix) with ESMTPS id 11D6974046;
 Sat, 18 Jan 2020 14:34:25 +0000 (UTC)
 (envelope-from manu@freebsd.org)
Received: from smtp.freebsd.org (smtp.freebsd.org
 [IPv6:2610:1c1:1:606c::24b:4])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 server-signature RSA-PSS (4096 bits)
 client-signature RSA-PSS (4096 bits) client-digest SHA256)
 (Client CN "smtp.freebsd.org",
 Issuer "Let's Encrypt Authority X3" (verified OK))
 by mx1.freebsd.org (Postfix) with ESMTPS id 480L6S5f0Rz42MZ;
 Sat, 18 Jan 2020 14:34:24 +0000 (UTC)
 (envelope-from manu@freebsd.org)
Received: from localhost.localdomain
 (lfbn-idf2-1-1164-130.w90-92.abo.wanadoo.fr [90.92.223.130])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (Client did not present a certificate) (Authenticated sender: manu)
 by smtp.freebsd.org (Postfix) with ESMTPSA id BD8D1179A1;
 Sat, 18 Jan 2020 14:34:23 +0000 (UTC)
 (envelope-from manu@freebsd.org)
From: Emmanuel Vadot <manu@freebsd.org>
To: mripard@kernel.org, wens@csie.org, robh+dt@kernel.org, mark.rutland@arm.com
Subject: [PATCH v2] arm64: dts: allwinner: a64: Add gpio bank supply for
 A64-Olinuxino
Date: Sat, 18 Jan 2020 15:34:08 +0100
Message-Id: <20200118143408.15574-1-manu@freebsd.org>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200118_201307_409263_BBC6357D 
X-CRM114-Status: GOOD (  11.99  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2610:1c1:1:606c:0:0:19:2 listed in] [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Emmanuel Vadot <manu@freebsd.org>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add the regulators for each bank on this boards.
For VCC-PL only add a comment on what regulator is used. We cannot add
the property without causing a circular dependency as the PL pins are
used to talk to the PMIC.

Signed-off-by: Emmanuel Vadot <manu@freebsd.org>
---
v2:
 - Remove vcc-pl-supply in r_pio as it cause a circular dependency.

 .../boot/dts/allwinner/sun50i-a64-olinuxino.dts | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-olinuxino.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-olinuxino.dts
index 01a9a52edae4..7e71b5b12f98 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64-olinuxino.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-olinuxino.dts
@@ -163,6 +163,17 @@ &ohci1 {
 	status = "okay";
 };
 
+&pio {
+	vcc-pa-supply = <&reg_dcdc1>;
+	vcc-pb-supply = <&reg_dcdc1>;
+	vcc-pc-supply = <&reg_dcdc1>;
+	vcc-pd-supply = <&reg_dcdc1>;
+	vcc-pe-supply = <&reg_aldo1>;
+	vcc-pf-supply = <&reg_dcdc1>;
+	vcc-pg-supply = <&reg_dldo4>;
+	vcc-ph-supply = <&reg_dcdc1>;
+};
+
 &r_rsb {
 	status = "okay";
 
@@ -175,6 +186,12 @@ axp803: pmic@3a3 {
 	};
 };
 
+/* VCC-PL is powered by aldo2 but we cannot add it as the RSB */
+/* interface used to talk to the PMIC in on the PL pins */
+/* &r_pio { */
+/*	vcc-pl-supply = <&reg_aldo2>; */
+/* }; */
+
 #include "axp803.dtsi"
 
 &ac_power_supply {
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
