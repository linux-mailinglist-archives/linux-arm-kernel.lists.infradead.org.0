Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B836141F14
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 19 Jan 2020 17:33:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NZ5LYKAcxU3G7T6VelaGM4oX4lM+wBKnMkp+xvuL2zo=; b=MvATVxrNKQRvxV
	JpfzkYjF+B+oynTgXkwYL0thps5CkAA87zReCdAg0UTVmkdImWoK58f6vOKlcCy1OsQxbQ3zynpAo
	YJy53/vBY7Q8UBVuPz+tZ9Ze2K8lPFTRvlU0oqdm1LwKB6tLJqcYActsJrbikORbRiSxdzY6YEeTa
	OvzH8DI2XBOkwKJQA+T19+ssUE28S2cKaTAce94I5G0Bb0tZtzUFiNQjDtLfVevwjqZv+CQMRPfLy
	fzNYcGYMT3nPVwzDC3PY7DQ8Y9+wO6Idrms21g5KDlND0BWpykz+zBTCzKm/gjKrUTxDWFm3ewtmr
	3pFRuZmTv2nqBsF8L4uw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itDVb-0006Vl-NW; Sun, 19 Jan 2020 16:33:07 +0000
Received: from out5-smtp.messagingengine.com ([66.111.4.29])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itDTp-000575-QT
 for linux-arm-kernel@lists.infradead.org; Sun, 19 Jan 2020 16:31:20 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailout.nyi.internal (Postfix) with ESMTP id 890B321B7C;
 Sun, 19 Jan 2020 11:31:07 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute5.internal (MEProxy); Sun, 19 Jan 2020 11:31:07 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm1; bh=BdLsbiYqLIzZi
 4myyOEJxDQqqWES1KD/D8a1k+nQK5c=; b=PdU80dp4KEjsSJhxcUV/NNV+wMYy+
 5+5oxbkIrh1JalAnUzqi8i24Kzuoi6kz9Sp3pn7VJkzn7eksLlGL1OQfyH2O02RI
 5esaS5y68LrOmziAsZZOCZhqp1DjI0W0vsTtXJWFzYfCq8UuwqYPRsWQ8hN/rvk0
 2Oab2Nk1PsKm+t/qwaOFHXITFoUo6FCebO/deofRXhYG1swgm6I2clfgeXxxW4e4
 itl3abrGzMOAwZr9cVxqwc4vquxih4XEAJ6Se3/uEGfDrDaB3cxG3CRxU+teIW6q
 VKKmuK8ppptDtYGw4SVu9d0oEdBJkUAdAEq0PE92KcKFhuPxXmR19vT7w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; bh=BdLsbiYqLIzZi4myyOEJxDQqqWES1KD/D8a1k+nQK5c=; b=IMaLqF1C
 koSUy1HRzvu3Mlv0fWI576H2tcQdsqwrzIf/Kmi9EQyzPcswy//rAYvIfT5J8Mea
 kB3d8zfclikyHNWO9z6bouT8CF6dWUEO00flJ7xAVz2Zup8tGyYaVM7k4DG4R4Ek
 v6fN2r1ywcM3J8dWZXPTWui3JTUiyC2no5YN/f7aXQ+EeH9d/VbTI02W2hux5NvS
 YsbNvPzHvU6x7B97D18JXUwPM47Q/UUDpptsNyIXXRDWWTBHwGPdK5b2Xrj6elLS
 gXeXEpNj6JcDA0YTe+XN1hKxFBayyrxBuDtszxMPVOIqE31+VqIltqE0nf3nNi0d
 vrXW8yGOobYjmA==
X-ME-Sender: <xms:S4QkXhvcz0sOxxdDEC8ftpsGCur5W8GSEgqZPaijUT8QB4aEj9JmSw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrudefgdekkecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepufgrmhhuvghl
 ucfjohhllhgrnhguuceoshgrmhhuvghlsehshhholhhlrghnugdrohhrgheqnecukfhppe
 ejtddrudefhedrudegkedrudehudenucfrrghrrghmpehmrghilhhfrhhomhepshgrmhhu
 vghlsehshhholhhlrghnugdrohhrghenucevlhhushhtvghrufhiiigvpedu
X-ME-Proxy: <xmx:S4QkXqIMcYV_83Q3TiWwDN9XtafXx9cBPRcBjSYkiU3aZthoHdlxmQ>
 <xmx:S4QkXo0tbc533YBGGfnQLjQlvDHGu-1qKwVHWkHaskR5chFkkYSuaQ>
 <xmx:S4QkXtDOozcBr-bZibrkk8o3GYl02b1Tobrc6q-LXAT3lq3P-VpaIg>
 <xmx:S4QkXlbsawf6WJMaAoeEPYHwsgtuaS0ogcEvfIaL1j0YTOWn6SinJw>
Received: from titanium.stl.sholland.net
 (70-135-148-151.lightspeed.stlsmo.sbcglobal.net [70.135.148.151])
 by mail.messagingengine.com (Postfix) with ESMTPA id ECBCF8005A;
 Sun, 19 Jan 2020 11:31:06 -0500 (EST)
From: Samuel Holland <samuel@sholland.org>
To: Maxime Ripard <mripard@kernel.org>,
	Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH 6/9] arm64: dts: allwinner: pinebook: Document MMC0 CD pin name
Date: Sun, 19 Jan 2020 10:31:01 -0600
Message-Id: <20200119163104.13274-6-samuel@sholland.org>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20200119163104.13274-1-samuel@sholland.org>
References: <20200119163104.13274-1-samuel@sholland.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200119_083118_003979_D4FE3710 
X-CRM114-Status: GOOD (  11.05  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.29 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Samuel Holland <samuel@sholland.org>,
 linux-kernel@vger.kernel.org, linux-sunxi@googlegroups.com,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Normally GPIO pin references are followed by a comment giving the pin
name for searchability. Add the comment here where it was missing.

Signed-off-by: Samuel Holland <samuel@sholland.org>
---
 arch/arm64/boot/dts/allwinner/sun50i-a64-pinebook.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-pinebook.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-pinebook.dts
index af902b565b0a..7c6a3d204dba 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64-pinebook.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-pinebook.dts
@@ -119,7 +119,7 @@
 	pinctrl-names = "default";
 	pinctrl-0 = <&mmc0_pins>;
 	vmmc-supply = <&reg_dcdc1>;
-	cd-gpios = <&pio 5 6 GPIO_ACTIVE_LOW>;
+	cd-gpios = <&pio 5 6 GPIO_ACTIVE_LOW>; /* PF6 */
 	disable-wp;
 	bus-width = <4>;
 	status = "okay";
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
