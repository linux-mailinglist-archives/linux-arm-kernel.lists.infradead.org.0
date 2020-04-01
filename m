Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F3DD19B858
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Apr 2020 00:20:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7TrJV5tLoh5XNE6c/3bZyRFl+jvrxLRQo0LASKDw9cY=; b=g7xdpopy2YbrNQ
	i1sIsQ2RqOcmc2o+vkW4noHinwNSmxzgZYQyRSGxsEOut4l+QV+geE2ppakrWJaEoJ4TL8CrAraGB
	51s+SZXxlguGurBirlzWoTQ2iNtfUS9eK2a3N4r1Lw0LfJBmFyrjG34t6c5UU14/PrQBdM9uTOcA4
	sUk6DmDEeKSV8LL16whE1MXmklrjdCCjU6ma9zLRTpMOWNoRv51aQBrhElQHT2vjaY6/fFaBuERDq
	+t+tPL1r1m4k+Qc4FWuBMApA1PUoyjqQ5Bm79oJsxFKjz3utLWaOHWDPt2ZKe31W8AEjz1EB4XhaI
	Eg8po37VgYxUt0TwHawQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJliZ-0007ZP-2m; Wed, 01 Apr 2020 22:20:15 +0000
Received: from esa2.microchip.iphmx.com ([68.232.149.84])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJliE-0007Z3-Gf
 for linux-arm-kernel@lists.infradead.org; Wed, 01 Apr 2020 22:19:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1585779594; x=1617315594;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=BPjNOnkGc0WibCjCNo7i6GUfzGFIqq0ztMrxOHNDZwQ=;
 b=tjv4I0tTb7+AkNHMr34G4igS48jdklqpLCkJjIsNfL7FyTIxmmWfvGoH
 znrLyZMpGjA/nqUOISk9CTWUda/soO0Gw0fu+w69yoK0XNOQgKJImYW5z
 LqfHDoi9LLIQ9wkv4yfd1+oCKPevo0Ux8e2X6XJ42JmF+0HyswGzVob2k
 yuL2uhdEHtg2qj7uxt5hr2JKWohAeG7p7Sqfl/rASPk7DG8NZPHwHUK3+
 EIjnVsBSot7urGRERirMCycLw2xijS2NjDJN8kbMog5eIfKURRqQvuVn0
 JvhgVs3ADs/e+g5/nJFqaLqWTTQ2PsKhUzG1nwt+kqEevRKRpZ/Xo0j3U g==;
IronPort-SDR: E38uwSDiXzIp38bHPdN0cFgpbIsfXGgCKcIMl8IchKCQ2R6QxytPDUgpf3ndS7QPcQw20eX/JX
 sXjzZ2edkIYukkCp0VGp1a/4a/cKvyzTiVRsgVRDv80c4Zm+0qFZn9SWU3fpDsuXRhVHLfx1+0
 8Es+diZtT2pfxqdiQsjNhp6GWKS2DNkAsPrbyBCZeZWFo9x76Je/QsQh2OjfUHihyoh7AhtCHk
 8u1xVWDIt3LtOayQINBa3lqhvfl/a64V3tyfBzwrt1KR8Rmi4JOcB5xWCnMG6TZiOIRLrepZaw
 zVQ=
X-IronPort-AV: E=Sophos;i="5.72,333,1580799600"; d="scan'208";a="70956797"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 01 Apr 2020 15:19:53 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 1 Apr 2020 15:19:53 -0700
Received: from sekiro.microchip.com (10.10.115.15) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Wed, 1 Apr 2020 15:19:56 -0700
From: Ludovic Desroches <ludovic.desroches@microchip.com>
To: <nicolas.ferre@microchip.com>, <alexandre.belloni@bootlin.com>,
 <robh+dt@kernel.org>
Subject: [RESEND PATCH 2/5] ARM: dts: at91: sama5d2_ptc_ek: fix vbus pin
Date: Thu, 2 Apr 2020 00:19:47 +0200
Message-ID: <20200401221947.41502-1-ludovic.desroches@microchip.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200401221504.41196-2-ludovic.desroches@microchip.com>
References: <20200401221504.41196-2-ludovic.desroches@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_151954_591928_FA8BB583 
X-CRM114-Status: GOOD (  11.27  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.149.84 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Tudor.Ambarus@microchip.com,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org, Ludovic
 Desroches <ludovic.desroches@microchip.com>,
 linux-arm-kernel@lists.infradead.org, Codrin.Ciubotariu@microchip.com,
 Cristian.Birsan@microchip.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The gpio property for the vbus pin doesn't match the pinctrl and is
not correct.

Signed-off-by: Ludovic Desroches <ludovic.desroches@microchip.com>
Fixes: 42ed535595ec "ARM: dts: at91: introduce the sama5d2 ptc ek board"
Cc: stable@vger.kernel.org # 4.19 and later
---

s/watch/match

 arch/arm/boot/dts/at91-sama5d2_ptc_ek.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/at91-sama5d2_ptc_ek.dts b/arch/arm/boot/dts/at91-sama5d2_ptc_ek.dts
index 772809c54c1f3..b803fa1f20391 100644
--- a/arch/arm/boot/dts/at91-sama5d2_ptc_ek.dts
+++ b/arch/arm/boot/dts/at91-sama5d2_ptc_ek.dts
@@ -40,7 +40,7 @@ main_xtal {
 
 	ahb {
 		usb0: gadget@300000 {
-			atmel,vbus-gpio = <&pioA PIN_PA27 GPIO_ACTIVE_HIGH>;
+			atmel,vbus-gpio = <&pioA PIN_PB11 GPIO_ACTIVE_HIGH>;
 			pinctrl-names = "default";
 			pinctrl-0 = <&pinctrl_usba_vbus>;
 			status = "okay";
-- 
2.26.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
