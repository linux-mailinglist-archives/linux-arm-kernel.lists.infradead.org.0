Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84A4D21B31
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 May 2019 18:11:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=oxF5I7DZMBCBbrugJhl46yCYCNtgt4YqoVUHqpuSp7g=; b=rTc1PTYEqn/jg6
	588QoAh4qFuBDCOYNmi2v3Oj2jWXUp4Evo1J1kLUa0dT1kZ/08EASMlDIIY7IAgptvpMB1sAvB/s3
	mmkbZD6zq3X7b4S73hHVmc7k+sJU5shWd75NeifE926czTQvEBqZtJY++vebgw8JGJ8uDuRat4VtB
	M47ibT7hH+Sajz4YskWeTGXFArucHaW2JT5kgm2uQVTIWKZUHQqTZHtMurOG0gsQM0H/J7MWFP6CC
	oEB7RQVNoRl+9MEkMwAvnfvEe51dxicnpp96khcsX8bhcs/B9+astrgcG6VX1D2kZawvNTcn6FJbg
	y+ZpyihOPpfi4L6ll7Tw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRfSV-0003tg-6L; Fri, 17 May 2019 16:11:47 +0000
Received: from mout.gmx.net ([212.227.15.15])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRfSP-0003tM-0r
 for linux-arm-kernel@lists.infradead.org; Fri, 17 May 2019 16:11:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1558109490;
 bh=ObVsCKoy24nyR+PE5lyuwbL6rGIGz6OGgJWXUYTs8Gc=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
 b=fqQDbDarvk1j260RMG1ySbxWBkJAQIhtWUp29JDmoJrZGizSYh620SlDIF13rkOQT
 t4enlnwpAgGrJ3kuP9k3TRo1xX/qAtpFsMEAkK03M7s1RylbLw7KWPdGT3A6yM91sA
 IrQLLKxr6F5mp4FMrIApwKuxFBcdtOXp0ozigY8w=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from macchiato.fritz.box ([84.118.159.3]) by mail.gmx.com (mrgmx001
 [212.227.17.184]) with ESMTPSA (Nemesis) id 0MSdNs-1hHjJ00w68-00RWe0; Fri, 17
 May 2019 18:11:30 +0200
From: Heinrich Schuchardt <xypron.glpk@gmx.de>
To: Jason Cooper <jason@lakedaemon.net>, Andrew Lunn <andrew@lunn.ch>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 Russell King <linux@armlinux.org.uk>
Subject: [PATCH 1/1] arm64: dts: marvell: mcbin: enlarge PCI memory window
Date: Fri, 17 May 2019 18:11:23 +0200
Message-Id: <20190517161123.9293-1-xypron.glpk@gmx.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:hCNjLnr3ec6akbhn/dmwopTmrwD2ngfwxcwNRx8GXCrYkJA0EpJ
 L5UcXsGJelQo6uQlfzMgiqLsfqw3RElPw9lrnRcjjwRR9gJcmj1rrRavn1HvVShlaCU+Enq
 Egozfv7Y/B6s88noZPevX9LpD7kNku6iptetaBWgDjfD10dJMtbxmeENjqoUVoWbJ4oCLar
 XOelF3caKICXi3KXxsccQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:OcrfSlw1JQ8=:GN1/4inuw1Bj7DI4AR2yOE
 kenLvJPUoIGFq7CquaGL3nQdBdCj1yHykf2FsJQJHIPVtxiuL7LbrWOhwMHEzLTNDd6YHMLFM
 py2hQ0SYwIKrHw/1lFlBtN8pJU/FfSJs3RjxBW+ZHwv/uRM0frc2txp2WV8qsNhzvixSLqmeg
 gPPL73apNRQHlv3euqNA+3OzjZBicRpOukofYNwkuzclIkKX4p2KNqyAjUMAxkmbZNIDJ/gTB
 7EeVZmNC6a8YNC1r5z71uhWM0vPITUuD1/lx6kEnd04y+ftqzyoHriL0y727mJDxItIG/M5Jh
 p5ZxnMHqsC9hhoVnaVdwWHsQhbGgqTi75WnZ/dkSPzj8p52WrUiPdxVLQ3bxQNmxXn68qk6Ki
 sTP0ULeONcC4xgmdPtOPRhFgRh8rb+fN1wshsiZOm/qr+V4tULGYcOoDMmQgdbRf2gG75yW3T
 U+xs7MvfZUyP2RVoIjpciq3uzzq5GPxfCefxFoJgR6dxOP8IpSRPOZHMbtVZJBEhCFKKTd7GD
 aWnaPa6q0LWGlEB9VfBPGngG5MLOZs4TFK4j2RHpui9wxMjwMD9vIaHS2hMIDOHbDwNt7V2Vm
 My4aO7y53osFxqQleVUXmA4n/VvpZW5nxcl2bIx+8xUD3vFEzpaLCY9GaYPCyh4OlYWA+D8Wt
 HYT1DH2/UK7Rd2Pe7yBnfOBgeGe3GWmn7uGpT8dHdT0ofIvRcF/0fYqMhuYko3WLq1hjXmdV8
 lIgJnIEHbHh2ub17m2hQo3yj2OwJFQbwP2XKw0Z1ILw8m+enl7gUZ2m9yoz1XJ24qlJpDHPpS
 fUou0epAwa2ZNgnPHW7SGFA72qMWSnCM20OB+OdgGgoOhF3g6ozC/1buxhkxnLMR5W0jYjSab
 TMvM9yFgotVEQK3OamifYbAg0oV3Pnw2muyxD0dKvNWAru6lHOiybnkKjKUfP3J6ooUKtSjBc
 6LSRQ7VCs4Jg823WxYvLwdCi4JvvpZCw=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_091141_405038_36FB6521 
X-CRM114-Status: UNSURE (   9.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.15.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (xypron.glpk[at]gmx.de)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Heinrich Schuchardt <xypron.glpk@gmx.de>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Running a graphics adapter on the MACCHIATObin fails due to an
insufficently sized memory window.

Enlarge the memory window for the PCIe slot to 512 MiB.

With the patch I am able to use a GT710 graphics adapter with 1 GB onboard
memory.

These are the mapped memory areas that the graphics adapter is actually
using:

Region 0: Memory at cc000000 (32-bit, non-prefetchable) [size=16M]
Region 1: Memory at c0000000 (64-bit, prefetchable) [size=128M]
Region 3: Memory at c8000000 (64-bit, prefetchable) [size=32M]
Region 5: I/O ports at 1000 [size=128]
Expansion ROM at ca000000 [disabled] [size=512K]

Signed-off-by: Heinrich Schuchardt <xypron.glpk@gmx.de>
---
 arch/arm64/boot/dts/marvell/armada-8040-mcbin.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/marvell/armada-8040-mcbin.dtsi b/arch/arm64/boot/dts/marvell/armada-8040-mcbin.dtsi
index 329f8ceeebea..205071b45a32 100644
--- a/arch/arm64/boot/dts/marvell/armada-8040-mcbin.dtsi
+++ b/arch/arm64/boot/dts/marvell/armada-8040-mcbin.dtsi
@@ -184,6 +184,8 @@
 	num-lanes = <4>;
 	num-viewport = <8>;
 	reset-gpios = <&cp0_gpio2 20 GPIO_ACTIVE_LOW>;
+	ranges = <0x81000000 0x0 0xf9010000 0x0 0xf9010000 0x0 0x10000
+		  0x82000000 0x0 0xc0000000 0x0 0xc0000000 0x0 0x20000000>;
 	status = "okay";
 };

--
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
