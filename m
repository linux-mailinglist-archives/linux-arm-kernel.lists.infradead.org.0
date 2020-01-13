Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11B47139858
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 19:07:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vnALl9ZZGKx/sVj92a8LPQXCjss/ad8Zgkgvd5kUgVw=; b=phjt0vB2pfrRxW
	GEHenNbGvKL81cLrLvu0v87Jm8+jfQfadABNisaZrdfT1YTjp4PSB/CrR/KyIeBp+3z79J+BPsD6M
	JnVGpZGFp4uXzcbmO3FsoSi9va40vLhYwXYJzp71OD0aCvNHN4eBLQkNUH8x8b5+wrIS/5OdMYcLJ
	oLH6HwNHb6stz66BcCQNMrPKgvyQZSm3hXgd9BfYEGWE0V1b7tKV20C7p7aLiFjPwc9cUwxNioqJu
	P4Sqtg7eiLJsIMT0ssVwiunMuCvOmy9vibRdWsGQJPXhl+pb6hj8sswDSqQiQYOboTGBJMeUEJD/N
	IfBfC8fGNqBLB0wm40dg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ir47v-0003Xk-6t; Mon, 13 Jan 2020 18:07:47 +0000
Received: from mailoutvs57.siol.net ([185.57.226.248] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ir47o-0003Wg-Ch
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 18:07:42 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Zimbra) with ESMTP id B11C6522228;
 Mon, 13 Jan 2020 19:07:31 +0100 (CET)
X-Virus-Scanned: amavisd-new at psrvmta12.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta12.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id gxcA4vRUheZN; Mon, 13 Jan 2020 19:07:31 +0100 (CET)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Zimbra) with ESMTPS id 628FF522223;
 Mon, 13 Jan 2020 19:07:31 +0100 (CET)
Received: from localhost.localdomain (cpe-194-152-20-232.static.triera.net
 [194.152.20.232]) (Authenticated sender: 031275009)
 by mail.siol.net (Zimbra) with ESMTPSA id E152A522212;
 Mon, 13 Jan 2020 19:07:27 +0100 (CET)
From: Jernej Skrabec <jernej.skrabec@siol.net>
To: mripard@kernel.org, wens@csie.org, robh+dt@kernel.org, mark.rutland@arm.com
Subject: [PATCH] arm64: dts: allwinner: h6: tanix-tx6: Use internal oscillator
Date: Mon, 13 Jan 2020 19:07:20 +0100
Message-Id: <20200113180720.77461-1-jernej.skrabec@siol.net>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_100740_590334_F79E3857 
X-CRM114-Status: UNSURE (   8.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.248 listed in list.dnswl.org]
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
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Tanix TX6 doesn't have external 32 kHz oscillator, so switch RTC clock
to internal one.

Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
---

While this patch gives one possible solution, I mainly want to start
discussion why Allwinner SoC dtsi reference external 32 kHz crystal
although some boards don't have it. My proposal would be to make clock
property optional, based on the fact if external crystal is present or
not. However, I'm not sure if that is possible at this point or not.
Driver also considers missing clock property as deprecated (old DT) [1],
so this might complicate things even further.

What do you think?

Best regards,
Jernej

[1] https://elixir.bootlin.com/linux/latest/source/drivers/rtc/rtc-sun6i.c#L263

 arch/arm64/boot/dts/allwinner/sun50i-h6-tanix-tx6.dts | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6-tanix-tx6.dts b/arch/arm64/boot/dts/allwinner/sun50i-h6-tanix-tx6.dts
index 83e6cb0e59ce..af3aebda47bb 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h6-tanix-tx6.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h6-tanix-tx6.dts
@@ -91,6 +91,12 @@ &r_ir {
 	status = "okay";
 };
 
+/* This board doesn't have external 32 kHz crystal. */
+&rtc {
+	assigned-clocks = <&rtc 0>;
+	assigned-clock-parents = <&rtc 2>;
+};
+
 &uart0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&uart0_ph_pins>;
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
