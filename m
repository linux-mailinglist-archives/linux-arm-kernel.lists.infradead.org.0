Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 081BD18D9F
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 May 2019 18:05:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DaZdwXLxF8NuhMzzQ7Qfeg6VQa5qG4vceGXSR8kDDIY=; b=HSL0Q9uJswhejk
	E8kJYa2XOMoemq17THHZpIhiq0wJQGtYtpBph5ePTOITusQVQhhWbzLKRedKYz5SGFvI8EMmcAx+w
	60WeOsJTHmEEMD2YYiMLa3cs+77yV/p8UKff3yIWg5Pg2tGeqTP955KywstcqS1rKBGLfvVkf4GSw
	ISgDlJ4PYSw2HTBmcEHaGH/fwyWva7fDSp6BsT0OCpCNWV+FiwJHMb7n7RaYZfCG/7q7b/WLvFmqN
	N9xpo6hrTEQKUCIhEpTkPm/+pbyNSHNIzfDzr8rO7kyda0GNPbYbVcJeb3+1CaMMOU4/HpvH94GFk
	gws6dAvYKRNRv/eFhGOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOlXY-0001yR-GX; Thu, 09 May 2019 16:05:00 +0000
Received: from mail.bugwerft.de ([2a03:6000:1011::59])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOlXQ-0001nA-QB
 for linux-arm-kernel@lists.infradead.org; Thu, 09 May 2019 16:04:54 +0000
Received: from localhost.localdomain (pD95EF6AC.dip0.t-ipconnect.de
 [217.94.246.172])
 by mail.bugwerft.de (Postfix) with ESMTPSA id 6302E2822A7;
 Thu,  9 May 2019 16:02:34 +0000 (UTC)
From: Daniel Mack <daniel@zonque.org>
To: robert.jarzmik@free.fr,
	haojian.zhuang@gmail.com
Subject: [PATCH] ARM: dts: pxa300-raumfeld-speaker-one: Add channel output
 mapping for STA320
Date: Thu,  9 May 2019 18:04:39 +0200
Message-Id: <20190509160439.18827-1-daniel@zonque.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_090452_994971_DEC58FDB 
X-CRM114-Status: UNSURE (   7.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Daniel Mack <daniel@zonque.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

These settings are needed to make the hardware operable.

Signed-off-by: Daniel Mack <daniel@zonque.org>
---
 arch/arm/boot/dts/pxa300-raumfeld-speaker-one.dts | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/boot/dts/pxa300-raumfeld-speaker-one.dts b/arch/arm/boot/dts/pxa300-raumfeld-speaker-one.dts
index 543ba6cb36b2..a3a12b68e91e 100644
--- a/arch/arm/boot/dts/pxa300-raumfeld-speaker-one.dts
+++ b/arch/arm/boot/dts/pxa300-raumfeld-speaker-one.dts
@@ -114,6 +114,9 @@
 		st,invalid-input-detect-mute;
 		/* 2 (half-bridge) and 1 (full-bridge) on-board power */
 		st,output-conf = /bits/ 8 <0x1>;
+		st,ch1-output-mapping = /bits/ 8 <0>;
+		st,ch2-output-mapping = /bits/ 8 <1>;
+		st,ch3-output-mapping = /bits/ 8 <2>;
 		st,needs_esd_watchdog;
 	};
 };
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
