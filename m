Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D66313E5C8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 18:17:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wkk1wY0qrLYS3RvgsXVfaK1QRemGBXydT2leoNrsTLM=; b=d4GNIlynt7k+hq
	lik6SwxUSOMWlJvcPCZRHFwFDq7wHjVzJXIflofR2Yr25P2w/OcT+RSbWKC9PlK8P/RA74IM4SGyO
	BvUTFUkrkIC1Xes6l9NgPKCNNTWWDjOR2/CfHJT0ThLWC07oHJhHpb71P3/tJV1vH6A1rX7BDifEJ
	sFqu1r1ANEGpuNVzCO8oRNsnVarc06pOWoAbHvLeVzYhvNLx3CGNrbG/wSB/xJu77voJwqkJOm+ZO
	XX/I8/d/lMXuXeyO2gM1t/FyKmRpd9KiVWxN89J0Ggui/j0UTCkpNSRZPGjmNWQhwUvnkbTKgrdLz
	FQOG4yU8yQ+CCSpG1cHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is8lg-0002QH-Py; Thu, 16 Jan 2020 17:17:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is8Xz-0002tD-0J
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 17:03:12 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B27FE2468A;
 Thu, 16 Jan 2020 17:03:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579194186;
 bh=61EJZJPc1a3gs4XIN+LWQPcIiCAAXoiKIMY7tgHtW+U=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=W+5Dqh8nWgaS0eYSiPJ9OTDeNlpQdzsvPxyJwD9Ih1R4m5YtTTSWXzA790gZ/pjQz
 ii3DB5Lng6zJ1WkhKiLkGX6fupPX1VuF0+8Vf8vFEy48zDMbSIYpQ9+a7JACoYUGiC
 bOfKMyJ8FajXUXj4RNQluNNxnTZA9OpylS1TuIn8=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.19 259/671] ARM: dts: sun9i: optimus: Fix
 fixed-regulators
Date: Thu, 16 Jan 2020 11:52:48 -0500
Message-Id: <20200116165940.10720-142-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200116165940.10720-1-sashal@kernel.org>
References: <20200116165940.10720-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_090307_098592_C199C626 
X-CRM114-Status: GOOD (  10.34  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Maxime Ripard <maxime.ripard@bootlin.com>, Sasha Levin <sashal@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Maxime Ripard <maxime.ripard@bootlin.com>

[ Upstream commit c2a5b554751545023056559121a8ecf86aebe541 ]

Commit 1848f3f44444 ("ARM: dts: sun9i: Remove GPIO pinctrl nodes to avoid
warnings") was wrong on the optimus, and instead of droping the
pinctrl-names property, it dropped the regulator-name one.

Obviously, that wasn't what was intended. Reinstate regulator-name and drop
pinctrl-names.

Fixes: 1848f3f44444 ("ARM: dts: sun9i: Remove GPIO pinctrl nodes to avoid warnings")
Acked-by: Chen-Yu Tsai <wens@csie.org>
Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm/boot/dts/sun9i-a80-optimus.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/sun9i-a80-optimus.dts b/arch/arm/boot/dts/sun9i-a80-optimus.dts
index 58a199b0e494..d1e58a6a4343 100644
--- a/arch/arm/boot/dts/sun9i-a80-optimus.dts
+++ b/arch/arm/boot/dts/sun9i-a80-optimus.dts
@@ -82,7 +82,7 @@
 
 	reg_usb1_vbus: usb1-vbus {
 		compatible = "regulator-fixed";
-		pinctrl-names = "default";
+		regulator-name = "usb1-vbus";
 		regulator-min-microvolt = <5000000>;
 		regulator-max-microvolt = <5000000>;
 		enable-active-high;
@@ -91,7 +91,7 @@
 
 	reg_usb3_vbus: usb3-vbus {
 		compatible = "regulator-fixed";
-		pinctrl-names = "default";
+		regulator-name = "usb3-vbus";
 		regulator-min-microvolt = <5000000>;
 		regulator-max-microvolt = <5000000>;
 		enable-active-high;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
