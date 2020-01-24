Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1A62148780
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Jan 2020 15:24:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=76KIxSLV6agVigFUlhzvjk/K83w2bong8C+n3nWbT4Y=; b=IyCbFmBeNOmfmX
	wMo6E0/BO2JfG47IRbgGOXsNZ0JyjSEDhk8bMaMlwk5bbHTcrgUGEf9DzTrWggVdqGt3DzXz+OwUI
	fiLvqhYxfT2SlsdF4sqqkrMMNn4XpSdjKx+xAo/D3DG4/LBrd/XHbZchp3UYqW5WXEt1vziKMgEtT
	OwUq96eCRfZPa3euM62FxDboN+bYKpRjPI7vMzWKhDGZFB5ST5SN2/ItV4WCdK9LUVamRLxJD0oA4
	PqxjjzSdN85+Ldd8+s5Aukl6obGi4t4ywKnGElme7WXYC0FLqWK7vGef3UGyVuEUc/S/i5yK3GS+/
	YB/IbrnIBKBC2W7gpiPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuzso-0006tF-8Y; Fri, 24 Jan 2020 14:24:26 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuznT-0000wh-MD
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Jan 2020 14:18:57 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 79E34214AF;
 Fri, 24 Jan 2020 14:18:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579875535;
 bh=M1XJdYuI26x5zhD3lYCIl85IT2am0Ic/TF32xNAwtnQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=onVvVI2VWj+oAc2BUYaXqYGA+Pw8tF84U8mhHLzbMp0Mj955wPfPjmXNieEbRVhgi
 tJgrXTTMTP/sZQvO8X5Zuw/SUy4G2/KW/nId8bNgE5WAT57lbICOU9JAzBjvwS1Ux0
 vwhjQTn0GEMhNOkD57IMBUwwo3TFu4PPWXxtPRRk=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 032/107] ARM: dts: imx6sx-sdb: Remove incorrect
 power supply assignment
Date: Fri, 24 Jan 2020 09:17:02 -0500
Message-Id: <20200124141817.28793-32-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200124141817.28793-1-sashal@kernel.org>
References: <20200124141817.28793-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200124_061855_873122_56FBF3EF 
X-CRM114-Status: UNSURE (   8.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.9 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 2.3 TVD_SUBJ_WIPE_DEBT     Spam advertising a way to eliminate debt
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Sasha Levin <sashal@kernel.org>, devicetree@vger.kernel.org,
 Shawn Guo <shawnguo@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Anson Huang <Anson.Huang@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Anson Huang <Anson.Huang@nxp.com>

[ Upstream commit d4918ebb5c256d26696a13e78ac68c146111191a ]

The vdd3p0 LDO's input should be from external USB VBUS directly, NOT
PMIC's power supply, the vdd3p0 LDO's target output voltage can be
controlled by SW, and it requires input voltage to be high enough, with
incorrect power supply assigned, if the power supply's voltage is lower
than the LDO target output voltage, it will return fail and skip the LDO
voltage adjustment, so remove the power supply assignment for vdd3p0 to
avoid such scenario.

Fixes: 37a4bdead109 ("ARM: dts: imx6sx-sdb: Assign corresponding power supply for LDOs")
Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
Signed-off-by: Shawn Guo <shawnguo@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm/boot/dts/imx6sx-sdb-reva.dts | 4 ----
 arch/arm/boot/dts/imx6sx-sdb.dts      | 4 ----
 2 files changed, 8 deletions(-)

diff --git a/arch/arm/boot/dts/imx6sx-sdb-reva.dts b/arch/arm/boot/dts/imx6sx-sdb-reva.dts
index f1830ed387a55..91a7548fdb8db 100644
--- a/arch/arm/boot/dts/imx6sx-sdb-reva.dts
+++ b/arch/arm/boot/dts/imx6sx-sdb-reva.dts
@@ -159,10 +159,6 @@
 	vin-supply = <&vgen6_reg>;
 };
 
-&reg_vdd3p0 {
-	vin-supply = <&sw2_reg>;
-};
-
 &reg_vdd2p5 {
 	vin-supply = <&vgen6_reg>;
 };
diff --git a/arch/arm/boot/dts/imx6sx-sdb.dts b/arch/arm/boot/dts/imx6sx-sdb.dts
index a8ee7087af5a5..5a63ca6157229 100644
--- a/arch/arm/boot/dts/imx6sx-sdb.dts
+++ b/arch/arm/boot/dts/imx6sx-sdb.dts
@@ -141,10 +141,6 @@
 	vin-supply = <&vgen6_reg>;
 };
 
-&reg_vdd3p0 {
-	vin-supply = <&sw2_reg>;
-};
-
 &reg_vdd2p5 {
 	vin-supply = <&vgen6_reg>;
 };
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
