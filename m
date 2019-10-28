Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBE3FE7BE6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 22:59:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BAEPmYTYp9cwYEFfoeAXaWQiwxgBELbesaC5bR+uncA=; b=nSL+czYluz3HiH
	i6nmZ0VHbrn4/OP/VaBn/MvdqRaU1rcesh+UPGa6z1yDXVJsm54DDuNWhYnmvgxqiiczrQ/zKQXyY
	MQMDG7NYBXqlaqczHZbt1xr5G0/c07oI/YKDpc9CGcy2YnRHG5sxOQgjNxl5erfFZLXPs9e7UNmcM
	stlr8eWHArvBhjlcpsT5QdByu6SrbVfgeN3xIFUCwrGfpin5nUR+uoPTIaq41PuuhG5URO3C5OeOc
	itrk7ZvcnFadYdEt/UvedAeYxty/om5qXoMi1/I7Dp6/TUWEncZ4gyVaFRFsbFmy1rVPNRJIXzyvB
	dT5H6OhHvvnSHgmuVrlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPD2i-0004XF-Ly; Mon, 28 Oct 2019 21:59:16 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPD2W-0004WW-MP
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 21:59:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1572299943; bh=OGy4tk2NtSVhCsY1un9winjfE+tY6tvjqJKdXuqJvTI=;
 h=From:To:Cc:Subject:Date:From;
 b=fuisXx2w1vW3gGTDpaVdepq1nYuN90cLhhIPx0lzAnWF9TzDfq2wG601mYk1SZyv7
 2ANgeRKXdkcA6KAUBZ//s4zgd7lHrc5625rn8VtoIU2JFHONOP7/WvFyq3e7n2nhm4
 uDwt3qLRSd+saKx1gAZJVcAa8MsBrIMgfNfqX5x8=
From: Ondrej Jirman <megous@megous.com>
To: linux-sunxi@googlegroups.com
Subject: [PATCH] ARM: dts: sun8i-a83t-tbs-a711: Fix WiFi resume from suspend
Date: Mon, 28 Oct 2019 22:58:58 +0100
Message-Id: <20191028215859.3467317-1-megous@megous.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_145904_896384_33F4D071 
X-CRM114-Status: UNSURE (   8.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Ondrej Jirman <megous@megous.com>, Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Without enabling keep-power-in-suspend, we can't wake the device
up using WOL packet, and the log is flooded with these messages
on resume:

sunxi-mmc 1c10000.mmc: send stop command failed
sunxi-mmc 1c10000.mmc: data error, sending stop command
sunxi-mmc 1c10000.mmc: send stop command failed
sunxi-mmc 1c10000.mmc: data error, sending stop command

So to make the WiFi really a wakeup-source, we need to keep it powered
during suspend.

Fixes: 0e23372080def7 ("arm: dts: sun8i: Add the TBS A711 tablet devicetree")
Signed-off-by: Ondrej Jirman <megous@megous.com>
---
 arch/arm/boot/dts/sun8i-a83t-tbs-a711.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boot/dts/sun8i-a83t-tbs-a711.dts b/arch/arm/boot/dts/sun8i-a83t-tbs-a711.dts
index 43b21599898e..5b8c9c24350b 100644
--- a/arch/arm/boot/dts/sun8i-a83t-tbs-a711.dts
+++ b/arch/arm/boot/dts/sun8i-a83t-tbs-a711.dts
@@ -311,6 +311,7 @@
 	vqmmc-supply = <&reg_dldo1>;
 	non-removable;
 	wakeup-source;
+	keep-power-in-suspend;
 	status = "okay";
 
 	brcmf: wifi@1 {
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
