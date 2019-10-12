Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04176D524D
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 12 Oct 2019 22:06:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0st+or+6CYuEtbScOf40EX9RzPtf7CV7lt18IyIShhQ=; b=mUdxS9slDB4z64
	aShZ2xrCL9S+MHetdQ3JqBkGjrTgpNtQHEwa+XUQjnbec6zj6J3aqR4zCGMq5eclQk9uV0+BRolnR
	KCIQCwX5gsD2/iG3bAZAgXnPTKpHx6VkKn6sGNGLlXkMJocXaJd0GGetmX4frVlxLlE13rzaXWw72
	9WB6L+4gBk7SHz5VlBHVepgMMjgRlLkLqMD5vEpOkluCx/+XNS5/XrQcsUXXN+pvsKMsRD6X/4Gar
	E/2HsI9ucrVCdfxyMRh3RymZabhlrHyh+DyYGz+8KZDUhG9TUWSwwptt5/cyPkKJYQ8L5GFUkNmkb
	h7/UCH/zQAUtvgcfUFeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJNe1-00063W-9k; Sat, 12 Oct 2019 20:05:41 +0000
Received: from out5-smtp.messagingengine.com ([66.111.4.29])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJNdu-00062s-Ib
 for linux-arm-kernel@lists.infradead.org; Sat, 12 Oct 2019 20:05:36 +0000
Received: from compute7.internal (compute7.nyi.internal [10.202.2.47])
 by mailout.nyi.internal (Postfix) with ESMTP id 79C2F21385;
 Sat, 12 Oct 2019 16:05:28 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute7.internal (MEProxy); Sat, 12 Oct 2019 16:05:28 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alistair23.me;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding; s=fm2; bh=OvzfG8zhdZT1F4AotrdKLjvY01
 WSIUt9Ce8DLglbjK4=; b=W/W+rJpIPleM+iUaW+8YgGmLkreSetZBcVOUYfU1cP
 H4yfVXNosTPzMqMy8ZzkxKk3j/PwwH1YNAOu5J0cg9PFOgagZ227c89i1AmkvpeW
 /y/ENoZET1MgkYjkU1saxNVi+dISHvw9ua7hQo30xSMRz0p1o869FIqBy0oqqfkH
 IAYEDz9dE0TSILNSc/qOh5HALhC++gEXVErc4NUJcgxxUjv1FwJIp6B0D/RCApdx
 WABeOSc3bHCF/3LcInTnIdkpKOIYNYVN0FrmoeaKtYdDCUPipa+OGlKhzIlt3JpP
 Nf7W13FzYG7I7YExQifOy/9FS7SUYgmKqVPTEmZwdx1Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=OvzfG8zhdZT1F4Aot
 rdKLjvY01WSIUt9Ce8DLglbjK4=; b=Wk991iMXPO+a9X/pYazh57Nh8BDyAt14g
 +qiM+GBf6iYK1O1DRkg4YLMsVMnXPd9k+OzzNkgp0KnOX9Qo9LYy7rHqraWlRhea
 8x1y8BPRXor6A9I6Nu7t+8Mw8FIopU1f1GKXlJSlHY8hbxr0XahaN+B2I/r4EX+t
 j6QPjXTSvHyGtlQc49uM9euRj90IXz8DDBu0XZ1Sw4BRrxrhG8Pt2qX/Hm5qbiD0
 KE2v6Vjs2MPjUrsdCdzRBw0clrw2GoRp/vtMZKH3gUM0vxAZ9SW2UbJPJcpxyYl2
 CAKk95rmDHQUupLcZXbYjc1MxilnnAdxOv2Ejzlha39jQrONXxUAA==
X-ME-Sender: <xms:BzKiXa1iVBxZ4sp6o8UocD1dKwGBMGdRCAZ9lxwKQe6haAcTr1zbzg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrieejgddugeehucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvffufffkofgggfestdekredtre
 dttdenucfhrhhomheptehlihhsthgrihhrucfhrhgrnhgtihhsuceorghlihhsthgrihhr
 segrlhhishhtrghirhdvfedrmhgvqeenucfkphepjeefrdelfedrkeegrddvtdeknecurf
 grrhgrmhepmhgrihhlfhhrohhmpegrlhhishhtrghirhesrghlihhsthgrihhrvdefrdhm
 vgenucevlhhushhtvghrufhiiigvpedt
X-ME-Proxy: <xmx:BzKiXZZevJ8A3IXvN_MXan054Rz1MwhbpZtEoNkqiFi_gymdHXyIlw>
 <xmx:BzKiXVoTdpXooHgfEcRyQDgBmfE9cWhmoPyB8t05eekBuFnB_F0XOg>
 <xmx:BzKiXdq4NHQ6_kTTW49-0b1aL7ZhMUEFALbd2TF7wePG5NQ6Gmry4g>
 <xmx:CDKiXclACE5AvIwWq51pgAS_gg_yalbrOgY_mAPbB0fvbqOVA4HbUw>
Received: from alistair-xps-14z.alistair23.me
 (c-73-93-84-208.hsd1.ca.comcast.net [73.93.84.208])
 by mail.messagingengine.com (Postfix) with ESMTPA id C901CD6005D;
 Sat, 12 Oct 2019 16:05:26 -0400 (EDT)
From: Alistair Francis <alistair@alistair23.me>
To: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64: dts: sun50i: sopine-baseboard: Expose serial1,
 serial2 and serial3
Date: Sat, 12 Oct 2019 13:05:24 -0700
Message-Id: <20191012200524.23512-1-alistair@alistair23.me>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191012_130534_943789_8BD72C41 
X-CRM114-Status: UNSURE (   7.09  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.29 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: alistair23@gmail.com, wens@csie.org,
 Alistair Francis <alistair@alistair23.me>, mripard@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Follow what the sun50i-a64-pine64.dts does and expose all 5 serial
connections.

Signed-off-by: Alistair Francis <alistair@alistair23.me>
---
 .../allwinner/sun50i-a64-sopine-baseboard.dts | 25 +++++++++++++++++++
 1 file changed, 25 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine-baseboard.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine-baseboard.dts
index 124b0b030b28..49c37b21ab36 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine-baseboard.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine-baseboard.dts
@@ -56,6 +56,10 @@
 	aliases {
 		ethernet0 = &emac;
 		serial0 = &uart0;
+		serial1 = &uart1;
+		serial2 = &uart2;
+		serial3 = &uart3;
+		serial4 = &uart4;
 	};
 
 	chosen {
@@ -280,6 +284,27 @@
 	};
 };
 
+/* On Pi-2 connector */
+&uart2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart2_pins>;
+	status = "disabled";
+};
+
+/* On Euler connector */
+&uart3 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart3_pins>;
+	status = "disabled";
+};
+
+/* On Euler connector, RTS/CTS optional */
+&uart4 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart4_pins>;
+	status = "disabled";
+};
+
 &usb_otg {
 	dr_mode = "host";
 	status = "okay";
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
