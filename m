Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CB6E12CAC8
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 29 Dec 2019 21:36:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=IWiqOmSKL5UBBrXhKGJa41iUUsBTJWKOMIVEDhkTPi4=; b=XlxUppkORXo75C
	LSB9ISLrKr3RmOgvgE44YAiheduF6Bj4JiROP4S3a2ivbmjbcEdMqotqrxL9ILPCqxs/+mS42GWdo
	uqPdkpNcBfrmWgPC3/ina1HP7um7s4zPnSvejcyKKAlk56C0TyxNGlUDr5QvguHdlJjrE61AXPGCf
	d5acYHz3V7gK7dkLmYky159QudF012KrU3GbPaGoRNoY9h2XNYgdmnir1msZKUy2NXSD4bF65VEsq
	BVR6z79dqtMcB1ElsTgsdwwQtM9ew4mwh785wxDhyvM5aPHVmeGjqtRRhsbn7qMajZf5La+OP7rMN
	VomV7PDvJ3WmUbT+QloQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilfI2-0006OK-Aj; Sun, 29 Dec 2019 20:35:54 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilfHv-0006O4-VN
 for linux-arm-kernel@bombadil.infradead.org; Sun, 29 Dec 2019 20:35:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+tRPB4r4O8X05pwEYPsnVHYAT778pjcxiLkUHbARw7Y=; b=iVC0US2RY1/zbxilBwene3y75H
 RucOPs0W3QZLPg81DhFclbi9JRI7nVGpIVfMQTpfdk5cY+kMVm8eWrl8ZUOVkwr17hnfOZbE9KyG4
 BZVReN0AwStF21RIqq20c/6X/X966QSUbqS6gTM/DeSGc9/20yCWUH8rOaesoXhsOe4em3Wz4Tdv6
 VK2uXrOrNAe0ZI9irgzKrVg00ML1nXSZUcMAF4Q2WUTLA0MUv41/QuyF+qrz9qi1k3ibloio1ly+V
 nihzDL/zDQgD8meAgnpox4y9BaO+iJaSewl+e58CsjMpAsCEQPtyk5zE1KuGE52o3fsIUFd6YCX+d
 GjlXOwQg==;
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilfIJ-0003MS-Qn
 for linux-arm-kernel@lists.infradead.org; Sun, 29 Dec 2019 20:36:13 +0000
X-Originating-IP: 92.184.100.83
Received: from localhost (unknown [92.184.100.83])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 797B0E0003;
 Sun, 29 Dec 2019 20:35:06 +0000 (UTC)
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Peter Rosin <peda@axentia.se>
Subject: [PATCH] ARM: dts: at91: nattis 2: remove unnecessary include
Date: Sun, 29 Dec 2019 21:35:03 +0100
Message-Id: <20191229203503.336593-1-alexandre.belloni@bootlin.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191229_203611_891173_383C7C04 
X-CRM114-Status: UNSURE (   7.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.7 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.196 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

sama5d3_lcd.dtsi is already included by sama5d31.dtsi, itself included by
at91-linea.dtsi.

Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
---
 arch/arm/boot/dts/at91-nattis-2-natte-2.dts | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm/boot/dts/at91-nattis-2-natte-2.dts b/arch/arm/boot/dts/at91-nattis-2-natte-2.dts
index f245944bd5d7..4f123477e631 100644
--- a/arch/arm/boot/dts/at91-nattis-2-natte-2.dts
+++ b/arch/arm/boot/dts/at91-nattis-2-natte-2.dts
@@ -8,7 +8,6 @@
  */
 /dts-v1/;
 #include "at91-linea.dtsi"
-#include "sama5d3_lcd.dtsi"
 #include "at91-natte.dtsi"
 
 / {
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
