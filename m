Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B731E2A937
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 May 2019 11:48:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UfuU65tIVwZgzA9k/ksZpQ3BDB/JLt7JSDvDA9QK4Hg=; b=EIeSThdZtO/8zg
	6Obs5mgVVC2mRExV/0K/v3Tc/oM3YusnG7S9HhhwkGcuG8Fns9B0zv0+dZgF5xLqSi1ouAEV490D+
	cBrH4r6+a2keWvGH87hMnQfNyoZHw1ueLhIIJccB/8+XHuRHOrUXXnkgPHbuhr3Ziu8RFBrz90fzA
	qSW2HJkTrh02d8VAOVFkj44rFsPbrdNzuheFlz/1kY4FLXcZjshtQhOgGVwlSYoK3+6o5qssgG84G
	wzUqLEY6pF63jIKNoRlIEyrLIIRIilMyS7DQhkc7GYcuAzJxKWrDoI5Blyy3YuZhydhGRK1ImmcIl
	YU/8IdVfjiQ9CJvg4tkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUplT-0000iI-Sm; Sun, 26 May 2019 09:48:27 +0000
Received: from mx1.riseup.net ([198.252.153.129])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUplK-0000ho-Gj
 for linux-arm-kernel@lists.infradead.org; Sun, 26 May 2019 09:48:20 +0000
Received: from capuchin.riseup.net (capuchin-pn.riseup.net [10.0.1.176])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (Client CN "*.riseup.net",
 Issuer "COMODO RSA Domain Validation Secure Server CA" (verified OK))
 by mx1.riseup.net (Postfix) with ESMTPS id EB5721A0CAF;
 Sun, 26 May 2019 02:48:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=riseup.net; s=squak;
 t=1558864095; bh=8OaqU8bvZuIXA7nF3gCJ4vUP6PXw6ku0VUrbHfqjHAQ=;
 h=From:To:Cc:Subject:Date:From;
 b=AbJFSzTpy+q0/Tly14xp4E0gE66+KV+sX4Pv4MNcTkczonBjKea1eclojC481a33W
 QOsKILLMLBykNx9COt9boiw+h1qp6Gtwjv8cCxpRQn8dWlrHhQNkMUsxetjKuWqGq+
 GNNatU64LAdFB/pti6KAlFD1dEXZXTG/Ytl2Magc=
X-Riseup-User-ID: F570A3085F3311A36801C4EC41F2616F67BF4FC43DF8360ACC0A436D2EF42768
Received: from [127.0.0.1] (localhost [127.0.0.1])
 by capuchin.riseup.net (Postfix) with ESMTPSA id 4C351120896;
 Sun, 26 May 2019 02:48:11 -0700 (PDT)
From: Yegor Timoshenko <yegortimoshenko@riseup.net>
To: Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: allwinner: a64: bananapi-m64: enable UART2
Date: Sun, 26 May 2019 12:47:15 +0300
Message-Id: <20190526094715.12289-1-yegortimoshenko@riseup.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190526_024818_598602_D5BFE7BD 
X-CRM114-Status: UNSURE (   9.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [198.252.153.129 listed in list.dnswl.org]
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
Cc: Yegor Timoshenko <yegortimoshenko@riseup.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

BananaPi M64 exposes UART2 interface that is supposed to be enabled
by default (see "Default Function" in the pin definition table from
the manufacturer [1]).

[1]: https://bananapi.gitbooks.io/bpi-m64/en/bpi-m64gpiopindefine.html

Signed-off-by: Yegor Timoshenko <yegortimoshenko@riseup.net>
---
 arch/arm64/boot/dts/allwinner/sun50i-a64-bananapi-m64.dts | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-bananapi-m64.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-bananapi-m64.dts
index 094cfed13df9..100d1a8fd292 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64-bananapi-m64.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-bananapi-m64.dts
@@ -54,6 +54,7 @@
 		ethernet0 = &emac;
 		serial0 = &uart0;
 		serial1 = &uart1;
+		serial2 = &uart2;
 	};
 
 	chosen {
@@ -312,6 +313,12 @@
 	status = "okay";
 };
 
+&uart2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart2_pins>;
+	status = "okay";
+};
+
 &usb_otg {
 	dr_mode = "otg";
 	status = "okay";
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
