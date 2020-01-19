Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7953141F0E
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 19 Jan 2020 17:31:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a3k+g+M5YkIEmdgSAHevbvAhTbOuXnqxH6tgEX0Uu+A=; b=jAnnZZ0/mwnygs
	hk25G/JuyI4CzHpcvpszcJT95lpbF3wWiJR7QVu6jdXgD3RzL02h9DKFUhr7clZFS1cfk7QHBmUU3
	shed6ItXY3Az8nwQolbyWKQpDb5oa7TS/hIShWcCpI8HNZen/ddtvfmHX9XnTp3eGOmVKELRJnFrN
	fsJrh14/2Dkngs3ErjhXdSQrYiqwIyLm85wih20Dj9CZmhxJJvpdQl6RLgIrk/3O9mDZAeXQ5p8U6
	nxVmUcaPRZOIKgHfegWB29msJMkXMmx0jXcrhPZ0ZKlbdotBV96BBciApNm++L8SYQMlY31gCVfdC
	iqCI3WkhsKcO66HPxIvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itDU0-000586-02; Sun, 19 Jan 2020 16:31:28 +0000
Received: from out5-smtp.messagingengine.com ([66.111.4.29])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itDTl-000552-Qk
 for linux-arm-kernel@lists.infradead.org; Sun, 19 Jan 2020 16:31:17 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailout.nyi.internal (Postfix) with ESMTP id AAD3D21B6A;
 Sun, 19 Jan 2020 11:31:06 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute5.internal (MEProxy); Sun, 19 Jan 2020 11:31:06 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm1; bh=GZvRpwCtvmTOQ
 s2hXP6ts5mlEVgyPC4n0SpzvQR202w=; b=ESMVRuxN0vXPPtuiT2zQr0EW65308
 EiIB3RT6slESVpejv8CzRCdvMtkb4vmK8O87E/lMv7kt6KN+awxXkMhtzqtU+XUC
 JHvfTvKv/8m/mMHeNEk1zBtwgyB4N+uRnaIGF0c9MGokwgovvpw53ZRIgkwEQ0Wo
 UdEsv1M7ZtDmTA11+XzuvIxm3dZyib30vbsm6n5wK8dl+69AtUGvqEyF04yVRD9d
 ri4BScGHOU+R5MzRtG5J4uNmzfaUJhIefqQ631Aer120KwFV9pb/7ETrg39V6LZ/
 DtjhpG8rLsCGt0Dno2OkWW9jQHmOEeqnpfpSDegveBwhyDlUz6XJOWYCQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; bh=GZvRpwCtvmTOQs2hXP6ts5mlEVgyPC4n0SpzvQR202w=; b=etS9mNPU
 4wBC5IyNV/ChxhJopF7CIFEqH2u+a6PzedxFyK5F5hSWekittrRaPhUJmLash2QJ
 EP1EWvhxXGNFa+sIWqFCiAaQsFcR8DwNCBFfw7upfVCOXIewrJoP8NgZvghCVZYP
 GgQ1BuHxCbzXSuD6xURNTUTNLtKzSAZxAhoKKjxG4tWsTvvGLwind0sz498f75vm
 UzXVsUHJ1c7EKM3XXmcRNjH0ejgEgYY+z2JiHLeU88L9g0qdnpV7V9mIv302FGb7
 CgWyepxQfNhgi/RDmXpTbSdG7z83her0Jy+1Zh/98CwhIskwMcPdvnuBQ6lirhni
 wBKpsJEXoiD4OA==
X-ME-Sender: <xms:SoQkXpwepIZ0A2VKsjizHeWjRlqMilLJQ4ZvvXmL6_MBfgCsbx8y3A>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrudefgdekkecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepufgrmhhuvghl
 ucfjohhllhgrnhguuceoshgrmhhuvghlsehshhholhhlrghnugdrohhrgheqnecukfhppe
 ejtddrudefhedrudegkedrudehudenucfrrghrrghmpehmrghilhhfrhhomhepshgrmhhu
 vghlsehshhholhhlrghnugdrohhrghenucevlhhushhtvghrufhiiigvpedu
X-ME-Proxy: <xmx:SoQkXtYD9daVwESsliif9LOLmAk0OvhP_uB4RzschFRjLIYJr9G-NA>
 <xmx:SoQkXu6lPQiVNdSYomxRveG-A3rLSCscsewozz8YflpEtIFgnSB-Og>
 <xmx:SoQkXtz9wcLw6PSZkQ_oo0kIrqV3nv0Opk_JFxef_P2kSQBypHTdqQ>
 <xmx:SoQkXj08oRFYLnhrLiRvCrbgtFfCNrc6wqwckdJuNMd8NVULEKRAqA>
Received: from titanium.stl.sholland.net
 (70-135-148-151.lightspeed.stlsmo.sbcglobal.net [70.135.148.151])
 by mail.messagingengine.com (Postfix) with ESMTPA id 1C9A48005A;
 Sun, 19 Jan 2020 11:31:06 -0500 (EST)
From: Samuel Holland <samuel@sholland.org>
To: Maxime Ripard <mripard@kernel.org>,
	Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH 4/9] arm64: dts: allwinner: pinebook: Sort device tree nodes
Date: Sun, 19 Jan 2020 10:30:59 -0600
Message-Id: <20200119163104.13274-4-samuel@sholland.org>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20200119163104.13274-1-samuel@sholland.org>
References: <20200119163104.13274-1-samuel@sholland.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200119_083114_170090_F312C384 
X-CRM114-Status: UNSURE (   9.51  )
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

The r_i2c node should come before r_rsb, and in any case should not
separate the axp803 node from its subnodes.

Signed-off-by: Samuel Holland <samuel@sholland.org>
---
 .../boot/dts/allwinner/sun50i-a64-pinebook.dts   | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-pinebook.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-pinebook.dts
index 8e7ce6ad28dd..97e412fc4e4b 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64-pinebook.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-pinebook.dts
@@ -172,6 +172,14 @@
 	status = "okay";
 };
 
+/* The ANX6345 eDP-bridge is on r_i2c */
+&r_i2c {
+	clock-frequency = <100000>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&r_i2c_pl89_pins>;
+	status = "okay";
+};
+
 &r_rsb {
 	status = "okay";
 
@@ -183,14 +191,6 @@
 	};
 };
 
-/* The ANX6345 eDP-bridge is on r_i2c */
-&r_i2c {
-	clock-frequency = <100000>;
-	pinctrl-names = "default";
-	pinctrl-0 = <&r_i2c_pl89_pins>;
-	status = "okay";
-};
-
 #include "axp803.dtsi"
 
 &ac_power_supply {
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
