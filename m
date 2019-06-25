Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ED5C55AA8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 00:11:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=btUnrHeZzg9SJlczeMUkgaHfP95WxOlokqwz0a8qdsM=; b=f0X5oyVK8Gldq/
	09H0KsqHgCPygflmQj9uRPg9DCBZbCjVzaGVZHMVCqbLVaS/L6w27EMR6dvpB+RvaI4U14Qelgctt
	04ahT8Fppz3LPb045C23MVCy1Z3jRPkeutNiFz0rbZAyAtfp1h9eNGtW7Enlp7aC6fiLdgvThZdnW
	kV5yr07Jx70pWKTqeeeWon5wfyPrp46JGf3BYg7Nl7+cLM6V+QZB49FZoePU9AxrBKgOjdi3GJear
	o//0yVPGQygJ96gMm3LRxz+JnYtW7XbE2gTyKAsRGiOT/Wcsee9cFWSfPpmHg24LAFeQzEFPFwFe1
	yThQdO8g+J8OphXYcHwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hftf1-0007bk-Ev; Tue, 25 Jun 2019 22:11:31 +0000
Received: from gate2.alliedtelesis.co.nz ([2001:df5:b000:5::4])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfteo-0007bC-NS
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 22:11:20 +0000
Received: from mmarshal3.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id A500C886BF;
 Wed, 26 Jun 2019 10:11:10 +1200 (NZST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
 s=mail181024; t=1561500670;
 bh=VTKifGQSMyc0p8/UOeOVCWiP56S29r6HjQ7HWgB/EdQ=;
 h=From:To:Cc:Subject:Date;
 b=bT4Fj73ZBuGvjDiyU+LMqCObw5RXXmExUTt/4AeCdqw36yJObKg0RkS9SiC5YyFXI
 6EqMeU7YYZRHycl+uh3pCvufEhWzCtZL82Wwnbo9/5t6cTwfGmaiiPUsrbkSCjiI4L
 /SJ0XG3bsl3bTxeeYaaiWmaTVWrcB9popHaCpol312js7B8zLXxlSr094rpFgfA/0x
 xD59A17g5RL4ePwrY54cLZg+Plbc7hZCqprvb1SP1hf2FqKTVjsVzMVIG3WZ7vtLxF
 9CTZ8GRgCMFE16qNhJTKoJWikQRxdlHsQEiMoL0Ocq3R43QiAmFeZ/X7RyXFPC2Lzx
 vtwDcNSt+1Dpw==
Received: from smtp (Not Verified[10.32.16.33]) by mmarshal3.atlnz.lc with
 Trustwave SEG (v7, 5, 8, 10121)
 id <B5d129bfd0000>; Wed, 26 Jun 2019 10:11:09 +1200
Received: from joshuas-dl.ws.atlnz.lc (joshuas-dl.ws.atlnz.lc [10.33.13.27])
 by smtp (Postfix) with ESMTP id BD3D813EED3;
 Wed, 26 Jun 2019 10:11:11 +1200 (NZST)
Received: by joshuas-dl.ws.atlnz.lc (Postfix, from userid 1634)
 id 5863F1A0472; Wed, 26 Jun 2019 10:11:10 +1200 (NZST)
From: Joshua Scott <joshua.scott@alliedtelesis.co.nz>
To: linux-arm-kernel@lists.infradead.org, Jason Cooper <jason@lakedaemon.net>,
 Andrew Lunn <andrew@lunn.ch>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Subject: [PATCH v3] ARM: dts: armada-xp-98dx3236: Switch to armada-38x-uart
 serial node
Date: Wed, 26 Jun 2019 10:11:08 +1200
Message-Id: <20190625221108.21455-1-joshua.scott@alliedtelesis.co.nz>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
x-atlnz-ls: pat
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_151119_337161_E6F39AD9 
X-CRM114-Status: GOOD (  14.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Joshua Scott <joshua.scott@alliedtelesis.co.nz>, stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Switch to the "marvell,armada-38x-uart" driver variant to empty
the UART buffer before writing to the UART_LCR register.

Signed-off-by: Joshua Scott <joshua.scott@alliedtelesis.co.nz>
Tested-by: Andrew Lunn <andrew@lunn.ch>
Acked-by: Gregory CLEMENT <gregory.clement@bootlin.com>.
Cc: stable@vger.kernel.org
Fixes: 43e28ba87708 ("ARM: dts: Use armada-370-xp as a base for armada-xp-98dx3236")

---
Changes in v3:

Updated title, added tested-by, and Fixes tag

Changes in v2:

Andrew Lunn was able to test on a Marvell 370RD reference design, and
the character loss issue did not occur.

The fix has now been changed to only affect the following SOCs:
 * 98DX323x
 * 98DX3333
 * 98DX4251

v1 message:

We have found that like the armada 38x, other Marvell SOCs can lose
characters when the UART_LCR register is written to without first
waiting for the buffer to empty.

We have observed this behaviour on the following Marvell switch SOCs:

 * 98DX323x
 * 98DX3333
 * 98DX4251

However, we do not currently have access to non-switch SOCs which share
the same parent device-tree.

The question we have is, should the fix be applied to the common
armada-370-xp device-tree, or should it be restricted to only affect the
SOCs listed above.

If anybody is able to check, we would like to find out if the issue
affects other armada-xp / armada-370 based SOCs.

The issue can be reproduced, if logging in using the serial port, with:
    resize && echo "hello world"

On affected devices, the first couple letters of "hello world" are
lost. On some SOCs this can be seen at 115200 baud, and on others
we have had to slow down to 9600 to see the issue.

Cheers,
Joshua Scott
---
 arch/arm/boot/dts/armada-xp-98dx3236.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm/boot/dts/armada-xp-98dx3236.dtsi b/arch/arm/boot/dts/armada-xp-98dx3236.dtsi
index 59753470cd34..267d0c178e55 100644
--- a/arch/arm/boot/dts/armada-xp-98dx3236.dtsi
+++ b/arch/arm/boot/dts/armada-xp-98dx3236.dtsi
@@ -336,3 +336,11 @@
 	status = "disabled";
 };
 
+&uart0 {
+	compatible = "marvell,armada-38x-uart";
+};
+
+&uart1 {
+	compatible = "marvell,armada-38x-uart";
+};
+
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
