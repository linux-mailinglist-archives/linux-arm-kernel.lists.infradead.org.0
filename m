Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14A8B165734
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 06:53:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=orgzHRvRd5OOtMUeJduLL4171XyUgNWxEBADwRIKbJQ=; b=bI1pOpyuOpn4Yt
	623EEvv/uvC30tzdLDfJs4CFtW/Et5vBRPe33cueFJZES+EMHnrCJ+x8MhTTwNHJgpkBgiE6ZfnwX
	E7FJL8hEbSlT37kC4eucV3BLeS1Qh9vrBoklGc6d6WwWEEWYqi9ZQrXkcFW53Jy0zETtvq6zJXu9P
	w1AccTdKkOCa2y4kjBUdSZ1PMkPAxoAHSkXMD1ro6WYLZW53XI/CTx7/YiXK4llwJMZjqJdaExrNd
	eLFg6/aWiBhhPz2+8GdLvS8WCBpqRQulDPH3HMsBWIDeAlUlbMpKIquh/KGyW+A6mDsr/2YLV6EPi
	ki65KAAiX0Bwy/ma06Eg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4em4-0003As-2f; Thu, 20 Feb 2020 05:53:24 +0000
Received: from segapp02.wistron.com ([103.200.3.19] helo=segapp03.wistron.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4elu-00039X-9E
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 05:53:16 +0000
Received: from EXCHAPP04.whq.wistron (unverified [10.37.38.27]) by 
 TWNHUMSW4.wistron.com (Clearswift SMTPRS 5.6.0) with ESMTP id 
 <Tdd6f484d45c0a816721080@TWNHUMSW4.wistron.com>; Thu, 20 Feb 2020 
 13:53:01 +0800
Received: from EXCHAPP04.whq.wistron (10.37.38.27) by EXCHAPP04.whq.wistron 
 (10.37.38.27) with Microsoft SMTP Server 
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 
 15.1.1713.5; Thu, 20 Feb 2020 13:53:00 +0800
Received: from gitserver.wistron.com (10.37.38.233) by EXCHAPP04.whq.wistron 
 (10.37.38.27) with Microsoft SMTP Server id 15.1.1713.5 via Frontend
 Transport; Thu, 20 Feb 2020 13:53:00 +0800
From: Ben Pai <Ben_Pai@wistron.com>
To: <robh+dt@kernel.org>, <mark.rutland@arm.com>, <joel@jms.id.au>, 
 <andrew@aj.id.au>, <devicetree@vger.kernel.org>, 
 <linux-arm-kernel@lists.infradead.org>, 
 <linux-aspeed@lists.ozlabs.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH v1] ARM: dts: mihawk: Change the name of mihawk led
Date: Thu, 20 Feb 2020 13:52:55 +0800
Message-ID: <20200220055255.22809-1-Ben_Pai@wistron.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-TM-SNTS-SMTP: 878E35D0BF548269343F48DBF623908D488A6736306ADE4D4D02D482038B268B2000:8
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_215314_602720_C34DABA4 
X-CRM114-Status: UNSURE (   6.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [103.200.3.19 listed in list.dnswl.org]
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
Cc: Ben Pai <Ben_Pai@wistron.com>, wangat@tw.ibm.com, Claire_Ku@wistron.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

1.Change the name of power, fault and rear-id.
2.Remove the two leds.

Signed-off-by: Ben Pai <Ben_Pai@wistron.com>
---
 arch/arm/boot/dts/aspeed-bmc-opp-mihawk.dts | 17 +++--------------
 1 file changed, 3 insertions(+), 14 deletions(-)

diff --git a/arch/arm/boot/dts/aspeed-bmc-opp-mihawk.dts b/arch/arm/boot/dts/aspeed-bmc-opp-mihawk.dts
index e55cc454b17f..6c11854b9006 100644
--- a/arch/arm/boot/dts/aspeed-bmc-opp-mihawk.dts
+++ b/arch/arm/boot/dts/aspeed-bmc-opp-mihawk.dts
@@ -120,35 +120,24 @@
 	leds {
 		compatible = "gpio-leds";
 
-		fault {
+		front-fault {
 			retain-state-shutdown;
 			default-state = "keep";
 			gpios = <&gpio ASPEED_GPIO(AA, 0) GPIO_ACTIVE_LOW>;
 		};
 
-		power {
+		power-button {
 			retain-state-shutdown;
 			default-state = "keep";
 			gpios = <&gpio ASPEED_GPIO(AA, 1) GPIO_ACTIVE_LOW>;
 		};
 
-		rear-id {
+		front-id {
 			retain-state-shutdown;
 			default-state = "keep";
 			gpios = <&gpio ASPEED_GPIO(AA, 2) GPIO_ACTIVE_LOW>;
 		};
 
-		rear-g {
-			retain-state-shutdown;
-			default-state = "keep";
-			gpios = <&gpio ASPEED_GPIO(AA, 4) GPIO_ACTIVE_LOW>;
-		};
-
-		rear-ok {
-			retain-state-shutdown;
-			default-state = "keep";
-			gpios = <&gpio ASPEED_GPIO(Y, 0) GPIO_ACTIVE_LOW>;
-		};
 
 		fan0 {
 			retain-state-shutdown;
-- 
2.17.1


---------------------------------------------------------------------------------------------------------------------------------------------------------------
This email contains confidential or legally privileged information and is for the sole use of its intended recipient. 
Any unauthorized review, use, copying or distribution of this email or the content of this email is strictly prohibited.
If you are not the intended recipient, you may reply to the sender and should delete this e-mail immediately.
---------------------------------------------------------------------------------------------------------------------------------------------------------------

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
