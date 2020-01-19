Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A839141F11
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 19 Jan 2020 17:32:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NK/z1bYtxA6ryKdYtWNlD3sGNtb05wMo2ZZD7+eChPs=; b=cbyGw8Lo8qiVLn
	tuhdI47LO7ktqx2VW5/afeKNZRVcpbN0o40HXEzu/k26FlpmNRqkhrHeORgE2SKmNRvIdaLPVW8zY
	8QY8JYa7xMBeKRvrieekhxFN39IFfiDb4iha3i5dczZylHcFrGhy4yohgbSnjz1X42Lb/Mecoq6ox
	DSxUHtC+W3HVGuQU7AdaibzC2lmHQsQB1TF/MBx6jBYCKst1RBgS3iUAMTwigIdg4FzgIgaMtpVpg
	oMSi/PFvAgx5kK3LjyvPkConQt+WwnI2HlaS7/5kSm8GIcScmHbvp4MBxo7c2kNYGbV2F2nkhwbIW
	fMk4DZLR7h1o5/GyHRnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itDUt-0005np-Nk; Sun, 19 Jan 2020 16:32:23 +0000
Received: from out5-smtp.messagingengine.com ([66.111.4.29])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itDTl-000553-TF
 for linux-arm-kernel@lists.infradead.org; Sun, 19 Jan 2020 16:31:18 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailout.nyi.internal (Postfix) with ESMTP id 232BD213CA;
 Sun, 19 Jan 2020 11:31:07 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute5.internal (MEProxy); Sun, 19 Jan 2020 11:31:07 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm1; bh=hRy0Rr9iYfUJ+
 i5sc98uoqEzTLMSGVVLNQOlk6Dfgms=; b=BB2raS0tSvNhDlx9uap5mrxhESEnk
 b5HKO+rF7HgUnhszuwTnFOlVJDiDJ0ByDPzXbm7eL3PA03YXetsg3r8zhBFwkSIB
 3XgZKQ9aR8pPk+5fj1bd9uSWw2juRL+GZh8FxtiXwZju2NM+Cuvt9VvSAkHWkb1R
 qm2WuF+yGb4yjBJPVCsIU3kfIuv3dQ8r0gI0vpD8YSch6T5TUov6JMIkALkkzvVB
 z//ax0HueQB9xMcXIEb7c1O0O61AacQSyBxINFiNZsPfEuBRln2Y0ctXrrB3Tvk+
 MJdkzNuJ7UnWKdGWkboEkh8++XgdjrsF+yNE3JVYTFtiri/kPPG6lpP3A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; bh=hRy0Rr9iYfUJ+i5sc98uoqEzTLMSGVVLNQOlk6Dfgms=; b=i1jZnzmF
 cgbUYlLNBbqn2QrpxPYx9jr2O8zQzDS6fViPj0o+xoYVmlmnGBfnYxeuDR3q102o
 JblNdUw7hdRPmP88MFJxuJPxsmmpjk95+JAc/Y6ZIf4BysOgWn+vseWUKCmDn/Ms
 ++8vuP1+U+NBr0YnMYSrC7PSiWcED/2C+UwBvm3BL7BvQ5cMarOWYycH9BTqH/q/
 STqa9hgw6LHNnj1/HnDptfsI8Z1rFCe9oRzcZM7r7BETaHtANawlcaK43qcCt1BQ
 t7a/OhfhRz7QKp6/9LAvMc/XECnCGumGrTavYA7v11cMrN5rb5TZDwB7V0HhUjn/
 m+LSGpV4xNzKRg==
X-ME-Sender: <xms:S4QkXgbQOtXRL8KS3Izt3CGzW64xSRYeUfwjqxpCzMWnu_CbZ36DDw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrudefgdekkecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepufgrmhhuvghl
 ucfjohhllhgrnhguuceoshgrmhhuvghlsehshhholhhlrghnugdrohhrgheqnecukfhppe
 ejtddrudefhedrudegkedrudehudenucfrrghrrghmpehmrghilhhfrhhomhepshgrmhhu
 vghlsehshhholhhlrghnugdrohhrghenucevlhhushhtvghrufhiiigvpedu
X-ME-Proxy: <xmx:S4QkXuRYA4ll5vDJt_LzzZRvQmqGJmRbov76jQ3oFz4dAN3AY6uo8w>
 <xmx:S4QkXrxQ7ePJ_xMAe5Wv9IhNtb6vYJOBWYKfyNjThq4Rm_gLvWURng>
 <xmx:S4QkXscdoemS9ta9DDpthFSZaY969Kh_WI3hugv7vj_Y9eywBTpmmQ>
 <xmx:S4QkXrNsqwjeJx4QUzYXygy8RT5u5sLPYROA7YeZLr7ApTOO_0hTbQ>
Received: from titanium.stl.sholland.net
 (70-135-148-151.lightspeed.stlsmo.sbcglobal.net [70.135.148.151])
 by mail.messagingengine.com (Postfix) with ESMTPA id 857B78005B;
 Sun, 19 Jan 2020 11:31:06 -0500 (EST)
From: Samuel Holland <samuel@sholland.org>
To: Maxime Ripard <mripard@kernel.org>,
	Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH 5/9] arm64: dts: allwinner: pinebook: Make simplefb more
 consistent
Date: Sun, 19 Jan 2020 10:31:00 -0600
Message-Id: <20200119163104.13274-5-samuel@sholland.org>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20200119163104.13274-1-samuel@sholland.org>
References: <20200119163104.13274-1-samuel@sholland.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200119_083114_175460_56D20A59 
X-CRM114-Status: UNSURE (   9.05  )
X-CRM114-Notice: Please train this message.
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

Boards generally reference the simplefb nodes from the SoC dtsi by
label, not by full path. simplefb_hdmi is already like this in the
Pinebook DTS. Update simplefb_lcd to match.

Signed-off-by: Samuel Holland <samuel@sholland.org>
---
 .../arm64/boot/dts/allwinner/sun50i-a64-pinebook.dts | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-pinebook.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-pinebook.dts
index 97e412fc4e4b..af902b565b0a 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64-pinebook.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-pinebook.dts
@@ -41,12 +41,6 @@
 
 	chosen {
 		stdout-path = "serial0:115200n8";
-
-		framebuffer-lcd {
-			panel-supply = <&reg_dc1sw>;
-			dvdd25-supply = <&reg_dldo2>;
-			dvdd12-supply = <&reg_fldo1>;
-		};
 	};
 
 	gpio_keys {
@@ -302,6 +296,12 @@
 	regulator-name = "vcc-rtc";
 };
 
+&simplefb_lcd {
+	panel-supply = <&reg_dc1sw>;
+	dvdd25-supply = <&reg_dldo2>;
+	dvdd12-supply = <&reg_fldo1>;
+};
+
 &simplefb_hdmi {
 	vcc-hdmi-supply = <&reg_dldo1>;
 };
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
