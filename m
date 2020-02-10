Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D52C7157287
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 11:07:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8TX4AHzBK2kj37cpH96Br8yHhBEHB7BIdoUJseb+tUw=; b=H18aARrm2vaDFs
	M4N1VvyCDBWtKo19ecKjBv+QmYzCXoqV1d7QppO4QXQvgmu71vN+Wx55EdDI/OJl1MwB/zzCZH/+q
	jAEHJ2vQeHh0abxD4WujWqsIHA7RZO3dAjAUqUdZOOARwRngWLAOpBsUJ+P2xGUqoQVcfOb5xADIM
	LCEPSysWDdWlb+PLsXk4Sg1eAbkZDmoQXsy9rOD1tX0+itzyatQdrRwF0KHoDtM7raNRMESy1S98v
	pPRpHcTwY0/wl6C+vSjVfFugby7rDNnGN6ELwgOjPaB0f4NyjduyA3V32a3kVQb3bgpd1o/QnWd8Q
	gGznf17ruZGFouvHc3Cg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j15ym-0007i7-0c; Mon, 10 Feb 2020 10:07:48 +0000
Received: from out4-smtp.messagingengine.com ([66.111.4.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j15yQ-0007WD-N4
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 10:07:28 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id 2092721F18;
 Mon, 10 Feb 2020 05:07:26 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Mon, 10 Feb 2020 05:07:26 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=2JmA5h++vuWm1
 H1qeV91zQriXeCwg4vJQ5x7RcqWqoo=; b=capTjsEKo9yve17a9POeeXTBQ0Kjr
 bmscqHfOpotz5z6g7jAxDU87nkesdYuVLEbD0854u+hSpBe/wOJXyVIVaJUCrzqD
 hrxczGcJZ+wrcipM8xNe4Xc+mDjq1Z0vr7W9v78Fz11XP5xbaCwW8O19EYosluv9
 nkYahjEVHM33FyjFj6D/sU87hxOpGxN3nLlXkXugOsbCU/saOg2efRJuKrIIC69X
 NPGkMNdTRd3cj/kqQhFLoLraWO2vZKnqsU7iOJhEfizjkkjeSkVBgQd9uwERF/25
 4DIR4b8ZMzZL/upu0X8PcfHR3ibAVkCzdn2l6+hADaEdLlwgkE4JkqcyA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=2JmA5h++vuWm1H1qeV91zQriXeCwg4vJQ5x7RcqWqoo=; b=3L+OLvHw
 Cjbu+1S6Xs79+/1/Xz2Sz4p+CKGdN3xaBfKbAG1ni2CP4fJI9Xc2gr6kFiNiIPst
 9IX00VLDXA0GIJ9ttvpmkqhXzs3a+3wbUTzn7tMlUKoyVM0AcE3xlkEI5cfs/5UC
 sdt7pdfer+rqcl1t52Ura9j4AMqfDvzOfCRdlbu7IMVrO+NarU5XgaHhMp0mMrEh
 DbQtUYdB9ZRt0Ob8gZKkj2gwYe1UGCjLh43qwD3E+fkcKaMkjFLASliFihHp7+h8
 fG0re/aS8IWjYnNQOD3sLmuzqZhucUg/MhqzByyFe8DhWpauy985UhkQBf/G7iNV
 7+DYgR1gI1CCvQ==
X-ME-Sender: <xms:XitBXk9rsDYnO9uZ_bP3eeYzFuF_-eIyDG3_ziqNiJBl1W9oIaiPfg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedriedugdduudcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffojghfggfgsedtkeertd
 ertddtnecuhfhrohhmpeforgigihhmvgcutfhiphgrrhguuceomhgrgihimhgvsegtvghr
 nhhordhtvggthheqnecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuih
 iivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordht
 vggthh
X-ME-Proxy: <xmx:XitBXisiXRELrMc6d0XxW7SWR8oierDkVCL1sj8O1xPmVM7FMddzRw>
 <xmx:XitBXk2Xvm5Vb1vWm9IEWXgaSG4PL1e5xY-zCRufz1nVb-eERxYM1A>
 <xmx:XitBXnSqg2b76vQfpJjGjhd372FBHuZn-QPbxOa4jRO5lpxhQPI_dw>
 <xmx:XitBXp0SHNBLzgBXnB_-at9mJVY7h-UehFy8fWg0ujncKhbxLidIzQ>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id B92F1328005E;
 Mon, 10 Feb 2020 05:07:25 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
To: Chen-Yu Tsai <wens@csie.org>,
	Maxime Ripard <mripard@kernel.org>
Subject: [PATCH 2/2] ARM: dts: sunxi: Remove redundant assigned-clocks
Date: Mon, 10 Feb 2020 11:07:18 +0100
Message-Id: <20200210100718.78951-2-maxime@cerno.tech>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200210100718.78951-1-maxime@cerno.tech>
References: <20200210100718.78951-1-maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_020726_894452_15264B4B 
X-CRM114-Status: UNSURE (   7.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.28 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.28 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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

The display DRC nodes have an assigned clocks property, while the driver
also enforces it.

Since assigned-clocks is pretty fragile anyway, let's just remove it.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 arch/arm/boot/dts/sun6i-a31.dtsi     | 6 ------
 arch/arm/boot/dts/sun8i-a23-a33.dtsi | 3 ---
 2 files changed, 9 deletions(-)

diff --git a/arch/arm/boot/dts/sun6i-a31.dtsi b/arch/arm/boot/dts/sun6i-a31.dtsi
index f41440ecbdad..f3425a66fc0a 100644
--- a/arch/arm/boot/dts/sun6i-a31.dtsi
+++ b/arch/arm/boot/dts/sun6i-a31.dtsi
@@ -1182,9 +1182,6 @@ drc1: drc@1e50000 {
 				      "ram";
 			resets = <&ccu RST_AHB1_DRC1>;
 
-			assigned-clocks = <&ccu CLK_IEP_DRC1>;
-			assigned-clock-rates = <300000000>;
-
 			ports {
 				#address-cells = <1>;
 				#size-cells = <0>;
@@ -1268,9 +1265,6 @@ drc0: drc@1e70000 {
 				      "ram";
 			resets = <&ccu RST_AHB1_DRC0>;
 
-			assigned-clocks = <&ccu CLK_IEP_DRC0>;
-			assigned-clock-rates = <300000000>;
-
 			ports {
 				#address-cells = <1>;
 				#size-cells = <0>;
diff --git a/arch/arm/boot/dts/sun8i-a23-a33.dtsi b/arch/arm/boot/dts/sun8i-a23-a33.dtsi
index 48487f6d4ab9..c1362d0f0ff8 100644
--- a/arch/arm/boot/dts/sun8i-a23-a33.dtsi
+++ b/arch/arm/boot/dts/sun8i-a23-a33.dtsi
@@ -684,9 +684,6 @@ drc0: drc@1e70000 {
 			clock-names = "ahb", "mod", "ram";
 			resets = <&ccu RST_BUS_DRC>;
 
-			assigned-clocks = <&ccu CLK_DRC>;
-			assigned-clock-rates = <300000000>;
-
 			ports {
 				#address-cells = <1>;
 				#size-cells = <0>;
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
