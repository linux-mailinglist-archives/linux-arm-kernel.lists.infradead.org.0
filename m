Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26B4D125D6C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 10:16:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=B6VHxP+WOYe2tMf5s8cfbRrEBfPmjXh0f/ajB338iKs=; b=I0ESCCO3PXq8L1
	TJbjmS/detQPjPk26Y22C9FI1MfvI6yAePYv629aJ428G6i0GVmQ6OR+YCXvoNADQwh3GIMF2MDCi
	jGUoerFnMGuAKf467jwNqKxHPAFk0SnmlF6tW3muhzpDEHp93KwbSM3tpuNmfmQ+gvJzmXPbDa5jj
	TwFNBwWZg7noqWoTl9v/XzqVoXIiH0GAzY8465G2b0Zb3LCQ1AjV4FcvAIHErXWf1eC+kJ2sgvN/R
	x4ulyKqHCaJgPYEXAibzIaAzdG4Xhbo1UPfyZMSrR4x83TpoFlzstOjlICFFnOzI5WYV0CWF9DDNF
	/LwJpu9ADHuhUVUBe9YQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihrus-0006MA-92; Thu, 19 Dec 2019 09:16:18 +0000
Received: from wout1-smtp.messagingengine.com ([64.147.123.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihruM-0006AC-HN
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 09:15:47 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.west.internal (Postfix) with ESMTP id 083BE4B1;
 Thu, 19 Dec 2019 04:15:44 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Thu, 19 Dec 2019 04:15:45 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding; s=fm1; bh=sEPCTmcKJq8uHuHsR3beo741x0
 w7QYTh8pNPK8004rM=; b=JJ2CClGhGfBR/8lwtSHuL6vQzySmndRoIoGtlkujWV
 GgAwaRxSnvct65Uaq7UcvisVLIUE/httyeadfQhcufJwIlKScM7OZ/wOyJZpMeIb
 GTfr+foI2lbqiR7ZuFUdY9Fyav2hSmpATPKRI26OKgFhYTylUqfVkB/CJ/lGQOkq
 l2Tnuzj0LN5czHovwkEikODOQ9PqdyB0+ZgUIWhdDrVl1/WphZpFINKMkmCd7VHF
 avjd6JYnnfXb/DLxWhoo5vPzh+nnu0WyiQ0LlpNm5tFE2iraIi7FG/Y2Zf7sStgG
 KpsUTwBrm+S5Ll4hG+hB+d8Tp6QX9rEfYYa32YO2YHQQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=sEPCTmcKJq8uHuHsR
 3beo741x0w7QYTh8pNPK8004rM=; b=SDJ0J/GO9R42kd4bgo5VD3kXwlAhWjDeO
 XnO+jvBEmjCrcJ1kN21NVDOX2fqklmpmu4MK0/p+YHdGwS1GKWG00GSCUqhXgnaM
 QP1pbQ/1VJM9+Q7EwiLxxRsHdgox64f4O+U6OLmKrdsQe262eKTIsKuUU8G9LwWT
 ucS7Vw+EkJ74iHJdeQET4XdoakefmsslTj1COFbsahW4viZ12LCtgCDyxA/l2qc/
 HqK6YtWHkR6FP0drbSPSRIWG6r7BELORb3uofs2lnHcUijag6VfFlk6ETOZn/wHk
 WdFy7UYwrZMdJT+QaX+GTiRmLjpJTBcC9v7j2w0hv2cwTOnf9gENg==
X-ME-Sender: <xms:vz_7XSu2qrRs6TorFYh12UdNxaz6uVBh9Upqoujeo-8i56aDoX3Xew>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrvdduuddgtdduucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvffufffkofgggfestdekredtre
 dttdenucfhrhhomhepofgrgihimhgvucftihhprghrugcuoehmrgigihhmvgestggvrhhn
 ohdrthgvtghhqeenucfkphepledtrdekledrieekrdejieenucfrrghrrghmpehmrghilh
 hfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthhenucevlhhushhtvghrufhiiigv
 pedt
X-ME-Proxy: <xmx:vz_7Xd5tf8u6y_-To5HpSwM1I0s-Aev7vPFZQmCF9LutY5NB5cyXtQ>
 <xmx:vz_7XWlOOdnhQ42NVNGjhitW8MCo_7_f3Cgn4kX3cnCcy7nYfMJNlg>
 <xmx:vz_7XQGeEFXF67NIRECRU-pSp_1pynX2GJlLkwmoHXqIbxPlh_d1pA>
 <xmx:wD_7XQr2PxnRWFgGKZqGymr5WrUcQDdsRutyO9FTr2R9FAAGGbWPCg>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 903FA8005A;
 Thu, 19 Dec 2019 04:15:43 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
To: Chen-Yu Tsai <wens@csie.org>,
	Maxime Ripard <mripard@kernel.org>
Subject: [PATCH 1/5] ARM: dts: sun9i: Make sure the USB PHY resources are in
 the same order
Date: Thu, 19 Dec 2019 10:15:35 +0100
Message-Id: <20191219091539.948530-1-maxime@cerno.tech>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_011546_615521_D4934F72 
X-CRM114-Status: UNSURE (   9.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.24 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Maxime Ripard <maxime@cerno.tech>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

While this is functional, it's a best practice to always have the clocks
and reset lines in order, in case we ever need to have compatibility code.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 arch/arm/boot/dts/sun9i-a80.dtsi | 32 ++++++++++++++++----------------
 1 file changed, 16 insertions(+), 16 deletions(-)

diff --git a/arch/arm/boot/dts/sun9i-a80.dtsi b/arch/arm/boot/dts/sun9i-a80.dtsi
index 1d900f591d5f..dd292a670921 100644
--- a/arch/arm/boot/dts/sun9i-a80.dtsi
+++ b/arch/arm/boot/dts/sun9i-a80.dtsi
@@ -387,16 +387,16 @@
 		usbphy2: phy@a01800 {
 			compatible = "allwinner,sun9i-a80-usb-phy";
 			reg = <0x00a01800 0x4>;
-			clocks = <&usb_clocks CLK_USB1_HSIC>,
+			clocks = <&usb_clocks CLK_USB1_PHY>,
 				 <&usb_clocks CLK_USB_HSIC>,
-				 <&usb_clocks CLK_USB1_PHY>;
-			clock-names = "hsic_480M",
+				 <&usb_clocks CLK_USB1_HSIC>;
+			clock-names = "phy",
 				      "hsic_12M",
-				      "phy";
-			resets = <&usb_clocks RST_USB1_HSIC>,
-				 <&usb_clocks RST_USB1_PHY>;
-			reset-names = "hsic",
-				      "phy";
+				      "hsic_480M";
+			resets = <&usb_clocks RST_USB1_PHY>,
+				 <&usb_clocks RST_USB1_HSIC>;
+			reset-names = "phy",
+				      "hsic";
 			status = "disabled";
 			#phy-cells = <0>;
 			/* usb1 is always used with HSIC */
@@ -429,16 +429,16 @@
 		usbphy3: phy@a02800 {
 			compatible = "allwinner,sun9i-a80-usb-phy";
 			reg = <0x00a02800 0x4>;
-			clocks = <&usb_clocks CLK_USB2_HSIC>,
+			clocks = <&usb_clocks CLK_USB2_PHY>,
 				 <&usb_clocks CLK_USB_HSIC>,
-				 <&usb_clocks CLK_USB2_PHY>;
-			clock-names = "hsic_480M",
+				 <&usb_clocks CLK_USB2_HSIC>;
+			clock-names = "phy",
 				      "hsic_12M",
-				      "phy";
-			resets = <&usb_clocks RST_USB2_HSIC>,
-				 <&usb_clocks RST_USB2_PHY>;
-			reset-names = "hsic",
-				      "phy";
+				      "hsic_480M";
+			resets = <&usb_clocks RST_USB2_PHY>,
+				 <&usb_clocks RST_USB2_HSIC>;
+			reset-names = "phy",
+				      "hsic";
 			status = "disabled";
 			#phy-cells = <0>;
 		};
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
