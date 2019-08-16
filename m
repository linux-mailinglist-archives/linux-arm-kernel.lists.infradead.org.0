Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 733B18FB61
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 16 Aug 2019 08:48:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=YyQwY+wW0vCbFNyV+j7JvFarIBoL6W10YlnYR/6HiLU=; b=AyqlcfNAEe7LEAxj/Pa7WMSmsj
	DWvWWccxAIg8lGIac0h/RHgEEqrYS+jzYNcEatii5clOLE8XMP7g0AGwrAgYtePDiQIciQnLH0rqG
	r/QY58nMWzrSMkoA6dF+g81n4pxBj1O8+sv6h86BkCTuWb9vEW0+KGTcBDTWA/h7ZKFsoMKu6KV9r
	5+PYIKpSmXHZUshF0l2KR9YT5oGNjPabDYTlK26Y14ak/MzxH/Fi414/X8Z14dHLwsZkIW1M4zRi0
	deCqqkvqtsxEz5Mpvku816Wkg7zdjEfd5T65VZYPgzjDuV4DFCqPTEjJq0ujfWl14reJ/APw5Kjlb
	VdzhYXPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyW2A-0005UY-Hk; Fri, 16 Aug 2019 06:48:22 +0000
Received: from letterbox.kde.org ([2001:41c9:1:41e::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyW1c-0005IK-Ef
 for linux-arm-kernel@lists.infradead.org; Fri, 16 Aug 2019 06:47:49 +0000
Received: from archbox.localdomain (unknown [123.201.155.129])
 (Authenticated sender: bshah)
 by letterbox.kde.org (Postfix) with ESMTPSA id AED5128ACF1;
 Fri, 16 Aug 2019 07:47:46 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kde.org; s=users;
 t=1565938067; bh=ePjvQ8ajgrtxUHMFSOWhNNhVxI+y1Eg4fcjki3juWZg=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=nQqTnRjC/rPiFnACpoHJbEsxdIP3/KJtCoYYqAVhn1JemXcnRWlJ5Db2qrdvCIR6d
 ABYLnRY7ayDaAe/ygo5IgrK/xmlpnBZyN3FKBDbThd7YhdwLKmLNQaAXBFEPBKF6Dv
 k8CXqC8vwQkwfp+7qRsgWqGR8YVYs8EGK22AIUWEWv6P4X05euOSriRv8M2aPcVXzn
 M0ZHpO2Jjn6IoSDVW1ciEedk1IW0/Hvk24V/p91BUwsYtBmTjeq2GadQt80lkkCqxm
 JzUBeMVZRXLS1+7xdkTjf0YFrreE5njql+/30QxR68nNTCE9rHNwrxfpxjz4z1G7CA
 gzw/SXslRGUSg==
From: Bhushan Shah <bshah@kde.org>
To: Icenowy Zheng <icenowy@aosc.io>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Wolfram Sang <wsa@the-dreams.de>,
 Gregory CLEMENT <gregory.clement@bootlin.com>, linux-i2c@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 3/3] arm64: allwinner: h6: add i2c0 node in PineH64
Date: Fri, 16 Aug 2019 12:17:10 +0530
Message-Id: <20190816064710.18280-4-bshah@kde.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190816064710.18280-1-bshah@kde.org>
References: <20190811090503.32396-1-bshah@kde.org>
 <20190816064710.18280-1-bshah@kde.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_234748_624669_B962343D 
X-CRM114-Status: UNSURE (   8.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:41c9:1:41e:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Bhushan Shah <bshah@kde.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

i2c0 bus is exposed by PI-2 BUS in the PineH64, model B.

Signed-off-by: Bhushan Shah <bshah@kde.org>
---
Changes in v2:
  - Don't enable the i2c0 node in PineH64 by default

 arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64.dts | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64.dts b/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64.dts
index 684d1daa3081..97d9b7c63fb3 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64.dts
@@ -160,6 +160,15 @@
 	vcc-pg-supply = <&reg_aldo1>;
 };
 
+/* This i2c interface is exposed on PI-2 BUS, Pin 3 (I2C_SDA) and 5 (I2C_SCL) */
+&i2c0 {
+	status = "disabled";
+};
+
+&i2c0_pins {
+	bias-pull-up;
+};
+
 &r_i2c {
 	status = "okay";
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
