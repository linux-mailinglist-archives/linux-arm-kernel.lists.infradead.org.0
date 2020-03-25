Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDC62192E2D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Mar 2020 17:26:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=aaC1H7AW5Cf2FgpOf1c3urrX2y9aIv7idHVfQP8S1Fo=; b=pao6ELjYKN1novt9n5/CoW6Gb9
	NqT+mUUF072L0yCuDgCmZ9DsaGMXydWRD6VZW9U4frTEpCx7yhkKmjSsMQ8uLTsr4ekK/8Tv2HoW2
	aiqTAQ8Oh3EVTJSxpgljNxgQWWPi9fNZ39cWN4yfzIItzs8YHcZl2XS4SNfTt7wZ2JU6d/UDiEbZW
	1aGE+DU2Sio6sGWfizr9ZYg60rHeqMSrNWzKaYSHAfjjurjsHaOszoys7gUfps2G4hnva+gKYmaBf
	VOvp4t6pcW7HAV2I87bs2OPrTft8qUhwTy2SqRLIGg6C2Syxw/nyo02+Y8b97muGEEQ2zLYRhMg/5
	1kbk93Eg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jH8rd-0006fQ-In; Wed, 25 Mar 2020 16:26:45 +0000
Received: from lists.gateworks.com ([108.161.130.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH8rV-0006f6-Rz
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Mar 2020 16:26:39 +0000
Received: from 68-189-91-139.static.snlo.ca.charter.com ([68.189.91.139]
 helo=tharvey.pdc.gateworks.com)
 by lists.gateworks.com with esmtp (Exim 4.82)
 (envelope-from <tharvey@gateworks.com>)
 id 1jH8ss-0003Ch-JQ; Wed, 25 Mar 2020 16:28:02 +0000
From: Tim Harvey <tharvey@gateworks.com>
To: Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH v2] ARM: dts: imx: fix audio SSI on GW551x
Date: Wed, 25 Mar 2020 09:26:22 -0700
Message-Id: <1585153582-21127-1-git-send-email-tharvey@gateworks.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1584651135-29266-1-git-send-email-tharvey@gateworks.com>
References: <1584651135-29266-1-git-send-email-tharvey@gateworks.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_092637_944000_D7FBA353 
X-CRM114-Status: GOOD (  10.15  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: devicetree@vger.kernel.org, Tim Harvey <tharvey@gateworks.com>,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The audio codec on the GW551x routes to ssi1

Signed-off-by: Tim Harvey <tharvey@gateworks.com>
---
v2: fix typo in commit short desc

 arch/arm/boot/dts/imx6qdl-gw551x.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/imx6qdl-gw551x.dtsi b/arch/arm/boot/dts/imx6qdl-gw551x.dtsi
index c38e86e..8c33510 100644
--- a/arch/arm/boot/dts/imx6qdl-gw551x.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-gw551x.dtsi
@@ -110,7 +110,7 @@
 		simple-audio-card,frame-master = <&sound_codec>;
 
 		sound_cpu: simple-audio-card,cpu {
-			sound-dai = <&ssi2>;
+			sound-dai = <&ssi1>;
 		};
 
 		sound_codec: simple-audio-card,codec {
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
