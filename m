Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 892461084FC
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 24 Nov 2019 21:52:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aa0HvkW7ab75e17C3QwbVhxP4G/xz3r0QR0h4D6VWYc=; b=OdIzDLXeh/Ab/P
	hl27nY02PjEhHQWbe2hqC7UL/JksVQ6J3O0NYR4UDAp4FnD2UN/L4v8Bs05Kz+9wRCJ7px1RPwZg4
	HBDC9xaVRjI0vzzX0E871+fQPxWG7jLyF92ACNKaQMz0Ml11k8NBLqIV+/R64oOVR3wuQq6iT6LY+
	RLTsJnth7q+e87rbeNx8THq1GFID51BgvJElR/nkjWXssUxXMxP4Bvc4ualtMAzNP6qgWNf9pFcw9
	d8pl+Z73WRiwyVXJBfsJItBO2wC/2/METFfy6dscEaQE4m1WvAM1PXVnlRJDKTKKOLJLta8qSCNg5
	sqhpCsDDIo/f4at203xQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYyrg-0007e9-66; Sun, 24 Nov 2019 20:52:16 +0000
Received: from mo6-p01-ob.smtp.rzone.de ([2a01:238:20a:202:5301::7])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYyrX-0007dK-V1
 for linux-arm-kernel@lists.infradead.org; Sun, 24 Nov 2019 20:52:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1574628725;
 s=strato-dkim-0002; d=gerhold.net;
 h=Message-Id:Date:Subject:Cc:To:From:X-RZG-CLASS-ID:X-RZG-AUTH:From:
 Subject:Sender;
 bh=mDUqPV5Qhr6G4j4fBcrxLNAXwyQc//1k5IFuN2hMhPg=;
 b=RjCL0P/wjqwYkpCzIjRWUp6kz9/lxeP3+xWk3NoF4eNbN9+OwkM2JRMD8nYdylsIlB
 96D/d02XAJYBKgVfJvjf9DPD/2f9jccV5P6MjwP2p06nMEAqEN7BycyTh8euB6/rr6Eh
 2/jkeolD496DzfWVCDKdQL6wWU8JGJNTa65KSVQZniQxQxd7JgOlbUla0CyGh4s2W6iD
 OhzMbhEVjP5ZHabfQD1iYo6O3dnr/e4vvSud86XHusDYpuUNZG6tL7htUW3YI2Hoc5TC
 O8+4JUd/UUqjUCdVQOxYK2b8LK+jzVgjS0yNAPbZ7Zhs05low/H92UehGzsy76MFiq+h
 ZPBA==
X-RZG-AUTH: ":P3gBZUipdd93FF5ZZvYFPugejmSTVR2nRPhVORvLd4SsytBXQ7IOGU5qzCBwY93scQxp"
X-RZG-CLASS-ID: mo00
Received: from localhost.localdomain by smtp.strato.de (RZmta 44.29.0 AUTH)
 with ESMTPSA id e07688vAOKq2CZP
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (curve secp521r1 with
 521 ECDH bits, eq. 15360 bits RSA))
 (Client did not present a certificate);
 Sun, 24 Nov 2019 21:52:02 +0100 (CET)
From: Stephan Gerhold <stephan@gerhold.net>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH] ARM: dts: ux500: Use "arm,pl031" compatible for PL031
Date: Sun, 24 Nov 2019 21:51:10 +0100
Message-Id: <20191124205110.48031-1-stephan@gerhold.net>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191124_125208_146255_91BD83D4 
X-CRM114-Status: GOOD (  11.52  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a01:238:20a:202:5301:0:0:7 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Stephan Gerhold <stephan@gerhold.net>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Ux500 device tree uses "arm,rtc-pl031" as compatible for PL031.
All other boards in Linux describe it using "arm,pl031" instead.
This works because the compatible is not actually used in Linux:
AMBA devices get probed based on "arm,primecell" and their peripheral ID.

Nevertheless, some other projects (e.g. U-Boot) rely on the compatible
to probe the device with the correct driver. Those will look for
"arm,pl031" instead of "arm,rtc-pl031", preventing the RTC from being
probed.

Change it to "arm,pl031" to match all other boards.

Signed-off-by: Stephan Gerhold <stephan@gerhold.net>
---
 arch/arm/boot/dts/ste-dbx5x0.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/ste-dbx5x0.dtsi b/arch/arm/boot/dts/ste-dbx5x0.dtsi
index 51ac65b78be0..0a5b88702b16 100644
--- a/arch/arm/boot/dts/ste-dbx5x0.dtsi
+++ b/arch/arm/boot/dts/ste-dbx5x0.dtsi
@@ -324,7 +324,7 @@
 		};
 
 		rtc@80154000 {
-			compatible = "arm,rtc-pl031", "arm,primecell";
+			compatible = "arm,pl031", "arm,primecell";
 			reg = <0x80154000 0x1000>;
 			interrupts = <GIC_SPI 18 IRQ_TYPE_LEVEL_HIGH>;
 
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
