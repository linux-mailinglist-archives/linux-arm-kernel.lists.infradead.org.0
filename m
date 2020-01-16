Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E2D813F9BD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 20:47:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=AdqfalzW1lXlMg7sdOHaQGr+MajfIwf0CcFzeP9GFxs=; b=fMVlKQc7JGGiB6
	6I1f1HuJ7EYN/9h/KE/sgUiR8NfZJ4qJ7VtTmWk8t9mK5OTLJUe0wRMoGYlqakEsHzuJeJynfK6hR
	TBMNEBPIV/us/rCbRM5wXjoW3ABBPs6F+wRsCFCyi5Q7iPfZQtgWkkiF/8Hs79jwaqbQ+903Os+my
	vLf/FgOS1wvilGnbQPVRQDYcmjBOP29NxWLTGNM3aQxTfC/eZPOwp0q8Lr9Miwu3sDrtxiWH7uvex
	VYqTGGxMR2k1u+kRiiV8uFaBeXHa5LvfGAcwWn8TEz5HMPS+xPB10iyy9xgnTNtEQN45PorzXUExV
	5R70ugkPdojwetEgNFHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isB6x-00080p-Eb; Thu, 16 Jan 2020 19:47:23 +0000
Received: from mx2.freebsd.org ([96.47.72.81])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isB6p-00080W-2n
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 19:47:16 +0000
Received: from mx1.freebsd.org (mx1.freebsd.org [96.47.72.80])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (Client CN "mx1.freebsd.org",
 Issuer "Let's Encrypt Authority X3" (verified OK))
 by mx2.freebsd.org (Postfix) with ESMTPS id 0976F8BD3A;
 Thu, 16 Jan 2020 19:47:11 +0000 (UTC)
 (envelope-from manu@freebsd.org)
Received: from smtp.freebsd.org (smtp.freebsd.org [96.47.72.83])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 server-signature RSA-PSS (4096 bits)
 client-signature RSA-PSS (4096 bits) client-digest SHA256)
 (Client CN "smtp.freebsd.org",
 Issuer "Let's Encrypt Authority X3" (verified OK))
 by mx1.freebsd.org (Postfix) with ESMTPS id 47zF8G5gxgz4Ty1;
 Thu, 16 Jan 2020 19:47:10 +0000 (UTC)
 (envelope-from manu@freebsd.org)
Received: from localhost.localdomain
 (lfbn-idf2-1-1164-130.w90-92.abo.wanadoo.fr [90.92.223.130])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (Client did not present a certificate) (Authenticated sender: manu)
 by smtp.freebsd.org (Postfix) with ESMTPSA id D90D249FE;
 Thu, 16 Jan 2020 19:47:09 +0000 (UTC)
 (envelope-from manu@freebsd.org)
From: Emmanuel Vadot <manu@freebsd.org>
To: mripard@kernel.org, wens@csie.org, robh+dt@kernel.org, mark.rutland@arm.com
Subject: [PATCH] arm64: dts: allwinner: a64: Add gpio bank supply for
 A64-Olinuxino
Date: Thu, 16 Jan 2020 20:46:58 +0100
Message-Id: <20200116194658.78893-1-manu@freebsd.org>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_114715_192794_A6D24A04 
X-CRM114-Status: UNSURE (   9.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [96.47.72.81 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

Signed-off-by: Emmanuel Vadot <manu@freebsd.org>
---
 .../boot/dts/allwinner/sun50i-a64-olinuxino.dts   | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-olinuxino.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-olinuxino.dts
index 01a9a52edae4..1a25abf6065c 100644
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
 
@@ -175,6 +186,10 @@ axp803: pmic@3a3 {
 	};
 };
 
+&r_pio {
+	vcc-pl-supply = <&reg_aldo2>;
+};
+
 #include "axp803.dtsi"
 
 &ac_power_supply {
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
