Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 675461A06E9
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Apr 2020 07:59:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9bVE9qGPgNTzJU8tATlEQ+4SworiFTapsNa2hihfFCs=; b=iXsXDVMPLDU+oz
	p2enMkhWN7QfJfyS2rgGxBYqkZO+0wl2oud3uMImOhAo6AxZJmrOBBnc6Tb+nrrmJXiTZtF000CMR
	wgBQnS141b19/lWJdZGMBmx0oegB7faD4hSdfexLSm3kK4DbusVjT9wDdITMIx8k72upTE59O2PTC
	3rXSlD5klht4Enx6fNq5CCEo7+ddJ9AyrPI7njnaw/sDHUE5YehAC6qnHN9j4suvBvDT0NhXCwy6x
	COXNPlN/3T3v5hj4DTEaPUWtm7tITd+y+k3xw3bz+50xidczPbN6PnJ+CN66SFZEMFymQgRfzDJc4
	Uw0MirFpFL9tJ3bcj3fQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLhGq-0004aE-Ig; Tue, 07 Apr 2020 05:59:36 +0000
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLhGB-00044s-Iz
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Apr 2020 05:58:56 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id 6806B58030C;
 Tue,  7 Apr 2020 01:58:48 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Tue, 07 Apr 2020 01:58:48 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alistair23.me;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=j0hiybRWpWmn4
 RFlXkM4Nvl4eLWofEJym1lENDbvopU=; b=fzFRDfdn9v8eMnVl8iT7MynBqAS7Z
 okMUoO2leumP0WFnxOmlJN0ax8p0/tDS/H/BeAKje4ULvIe6sfO6vVMY1TYLSONZ
 BlQBJ5o+QXvNRU0UixXbFxKDf4oxpgPwmQ+RJ6wrkKi1T1Loo1FMiaY975GwutbO
 C1fL+AWFxL3Ox7Bd+tdQaibXuLjvoM495YCZA4n0iZVWBNGti6c854Ik0d8uvKoi
 AYMMiNff+1cHb4C7Qbpe3K5mqraDf2tnp5dxDxceKFHKB6kHw6cNHJDWX1sg26+E
 29pCKYZcpMdVWJoIwnD1lUHF62RrCKCiRDwIuZ14ua7ig6suAX87PBocA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=j0hiybRWpWmn4RFlXkM4Nvl4eLWofEJym1lENDbvopU=; b=RZ3NC15S
 6n2oFqaKn8j1/5yiru9oXGDSqQlt6pAoqUNX8YlDUL0eyiGG0qPkdeoHq1MEy0bK
 8qE5uR3lIOHfWZq3zRProqQxvm2YphnnwtNxgsmdhGTNxYPciYTRM5xUBhrTFa7V
 jCEtD0029ZuWAGTmzjOytKXs70lk5lrjnTLlFghTITzy27zkuptxYqCYX71Se030
 qOc+gBbIaHdeCvb/GnEtflhJCTFY3NpNko/bBsIv3S59MsrBd2CTHuIehXwdB39l
 oUnf5vpSIpGKCubiKYZaEk/+Rw+yy2KPzUE+LkVeLOV1uEFroMrINIlaJPLpbIvf
 dOYN1j6MHQj0IQ==
X-ME-Sender: <xms:lxaMXvsmFnSGvBb0DBILmQD_iruZgzBOoaorzpbJIwKkc7vXqGJI6g>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrudeggdellecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffojghfggfgsedtkeertd
 ertddtnecuhfhrohhmpeetlhhishhtrghirhcuhfhrrghntghishcuoegrlhhishhtrghi
 rhesrghlihhsthgrihhrvdefrdhmvgeqnecukfhppeejfedrleefrdekgedrvddtkeenuc
 evlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpegrlhhishht
 rghirhesrghlihhsthgrihhrvdefrdhmvg
X-ME-Proxy: <xmx:lxaMXjfRdmjaeSUQ-_foCoeQEjT2DUq9cH7API2izHpdw6phnOaPbA>
 <xmx:lxaMXuaARqcMIIPBjAvGULjtqfWrXT3n9beNUjY97zebZmt0sKE1AQ>
 <xmx:lxaMXs4QoxsT-W4VJYbB8KXl4oiHzjWccqlmTOLkCiWDinjxWS_2XA>
 <xmx:mBaMXtFfF4rIiaxzDaVxIs6NYgvNgVVRa9caWph7Nazh_511BZ0W-Q>
Received: from alistair-xps-14z.alistair23.me
 (c-73-93-84-208.hsd1.ca.comcast.net [73.93.84.208])
 by mail.messagingengine.com (Postfix) with ESMTPA id 738AC3280064;
 Tue,  7 Apr 2020 01:58:46 -0400 (EDT)
From: Alistair Francis <alistair@alistair23.me>
To: netdev@vger.kernel.org, linux-kernel@vger.kernel.org, marcel@holtmann.org,
 johan.hedberg@gmail.com, linux-bluetooth@vger.kernel.org,
 mripard@kernel.org, wens@csie.org
Subject: [PATCH v2 3/3] arm64: allwinner: Enable Bluetooth and WiFi on sopine
 baseboard
Date: Mon,  6 Apr 2020 22:58:37 -0700
Message-Id: <20200407055837.3508017-3-alistair@alistair23.me>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200407055837.3508017-1-alistair@alistair23.me>
References: <20200407055837.3508017-1-alistair@alistair23.me>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_225855_752863_5C861FA8 
X-CRM114-Status: UNSURE (   9.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.224 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Alistair Francis <alistair@alistair23.me>,
 linux-arm-kernel@lists.infradead.org, alistair23@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The sopine board has an optional RTL8723BS WiFi + BT module that can be
connected to UART1. Add this to the device tree so that it will work
for users if connected.

Signed-off-by: Alistair Francis <alistair@alistair23.me>
---
 .../allwinner/sun50i-a64-sopine-baseboard.dts | 23 +++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine-baseboard.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine-baseboard.dts
index 2f6ea9f3f6a2..f4be1bc56b07 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine-baseboard.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine-baseboard.dts
@@ -103,6 +103,16 @@ ext_rgmii_phy: ethernet-phy@1 {
 	};
 };
 
+&mmc1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&mmc1_pins>;
+	vmmc-supply = <&reg_dldo4>;
+	vqmmc-supply = <&reg_eldo1>;
+	non-removable;
+	bus-width = <4>;
+	status = "okay";
+};
+
 &mmc2 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&mmc2_pins>;
@@ -174,6 +184,19 @@ &uart0 {
 	status = "okay";
 };
 
+&uart1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart1_pins>, <&uart1_rts_cts_pins>;
+	uart-has-rtscts = <1>;
+	status = "okay";
+
+	bluetooth {
+		compatible = "realtek,rtl8723bs-bt";
+		device-wake-gpios = <&r_pio 0 5 GPIO_ACTIVE_HIGH>; /* PL5 */
+		host-wake-gpios = <&r_pio 0 6 GPIO_ACTIVE_HIGH>; /* PL6 */
+	};
+};
+
 /* On Pi-2 connector */
 &uart2 {
 	pinctrl-names = "default";
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
