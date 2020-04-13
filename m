Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3A051A630A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Apr 2020 08:25:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cuxMiTbVIeESkGHKZV7pD84gkIxl/DYZVhYAtpBu1DM=; b=MVBNoSO5IQomNH
	69SiiYXd+i9TxZLGrJQiwZY0gTvmR64SC1JF3M/vMddpTYXqhknW4JgJpDPi1KVgV/Tiwf/ZCFZBH
	EhZZG9gZ37FPVsaEVSBjGpi/Hn1RYX9wwm3UmzLxsgYAIykgstE5typr6CAxcDWSG3TUf4hTf5xH+
	pfO4Ji+ozpSBxn6sLonZPHJpUWrTjnaup7lIJYU+Re5A2EnZg3BkkJ4kx4TgDYF82J3sjx531a7HU
	GQT9JNN2EHrH5r7suY3JfoveGlYOH8J1Z3kuwv1/6+LPOCDoC1QHD2J66//CgLjHL1Sx+8l59oDyZ
	gUlSEfk/eBAePDmfJeFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNsXC-0003C2-0c; Mon, 13 Apr 2020 06:25:30 +0000
Received: from mailoutvs40.siol.net ([185.57.226.231] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNsWd-0000ao-8R
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Apr 2020 06:24:56 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Zimbra) with ESMTP id 2137A522E3E;
 Mon, 13 Apr 2020 08:24:51 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta12.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta12.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id NvdWUDaGcZ_S; Mon, 13 Apr 2020 08:24:50 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Zimbra) with ESMTPS id D3E42522E48;
 Mon, 13 Apr 2020 08:24:50 +0200 (CEST)
Received: from localhost.localdomain (89-212-178-211.dynamic.t-2.net
 [89.212.178.211]) (Authenticated sender: 031275009)
 by mail.siol.net (Zimbra) with ESMTPSA id 4ECB5522E3E;
 Mon, 13 Apr 2020 08:24:48 +0200 (CEST)
From: Jernej Skrabec <jernej.skrabec@siol.net>
To: mripard@kernel.org,
	wens@csie.org
Subject: [PATCH 1/3] arm64: dts: allwinner: h6: orangepi: Add gpio power supply
Date: Mon, 13 Apr 2020 08:24:31 +0200
Message-Id: <20200413062433.1145043-2-jernej.skrabec@siol.net>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200413062433.1145043-1-jernej.skrabec@siol.net>
References: <20200413062433.1145043-1-jernej.skrabec@siol.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200412_232455_450052_374E47E8 
X-CRM114-Status: UNSURE (   9.24  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.231 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, linux-sunxi@googlegroups.com,
 robh+dt@kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

OrangePi Lite2 and One Plus have GPIO ports powered by same power
supplies. Add them in common DT.

Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
---
 arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi.dtsi | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi.dtsi
index 9287976c4a50..f1be3dd558ca 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi.dtsi
@@ -106,6 +106,12 @@ &ohci3 {
 	status = "okay";
 };
 
+&pio {
+	vcc-pc-supply = <&reg_bldo2>;
+	vcc-pd-supply = <&reg_cldo1>;
+	vcc-pg-supply = <&reg_aldo1>;
+};
+
 &r_i2c {
 	status = "okay";
 
@@ -230,6 +236,10 @@ &r_ir {
 	status = "okay";
 };
 
+&r_pio {
+	vcc-pm-supply = <&reg_bldo3>;
+};
+
 &rtc {
 	clocks = <&ext_osc32k>;
 };
-- 
2.26.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
