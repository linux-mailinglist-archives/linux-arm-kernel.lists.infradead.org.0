Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E451810FDC5
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 13:37:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gXqEfRdKV/L+FkA3tmUDCgM3Gp1+tJODl2yjPc3Wd5o=; b=W7SDvyfy83uu2j
	Q02fs9g5KW0ipPcO8oct0iLKMN19wglJxW689z6ZIVn5CLFGC4b/CnBEAYVJYz3Kb0Wbz1FT+J9qo
	GJw5CQ15okZzTkTqmARg9W5FPz9cpOrLZmOQ215U5kZ8bukWBeAoYuaPvmkWubzaCv3c3RvOwZo60
	8hPIL/knzLX6tO9UhGqpL7a593dleIa+9gC9J2Z/zAscwRq0dn32l4v0W1xjN9aejbY1+IhToJLd1
	Mso1fODlUFNmMsgzX/8zBu/xkRS/5zYvWcfDEacxbAt3N71PaJjzyUyFF+MsuVXJsGsHauRQ6SB9I
	RIn0z9iZQPv4QlVmWUrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic7QT-0004mJ-2I; Tue, 03 Dec 2019 12:37:09 +0000
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic7Q7-0004c7-BX
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Dec 2019 12:36:48 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id C07C76E64;
 Tue,  3 Dec 2019 07:36:46 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Tue, 03 Dec 2019 07:36:46 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm1; bh=8ZlgpTfN5GmTh
 4i624Rlcksvxj54ouDMeKXMopZs1XE=; b=fC0cu19wEM2nuuI5OlavXIp8itYWV
 MAH8uNjjus+ai8C9rm581qD0MGE1MQPfCpHT7k+Xx35iLwXZ2dPFcyj2R5QFVFVK
 r/J3HC1BEhFFf0RuQWMBX8XwNJO3uUhTs/RwIW1QjzrymgrvaUTbgXKLzqTJh2/1
 4FYbS+JLNj84ju6+5VJm/uAXF79suZDe0HAqQBct3qPeQ2T/9C5E0WH8Qea0/doi
 Su8LonezleqcHA7Y6DBaYeucKmUn/6YlAjgtN64z6KdQvRQpwf0gNBDPCMdTPyvj
 qKe7Z9bMdVUNknbT5aZPKfHUI9c5U2xMz8JZfbM4geoZAXOJ+IW1QFymQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; bh=8ZlgpTfN5GmTh4i624Rlcksvxj54ouDMeKXMopZs1XE=; b=f8zM9Bg2
 5+XdexcX1HdP+Nc0MizFl6zEBAtqnyFjbCDVmk1mFsAHDEvAJgr1gQO2xuSfHJkn
 SivHEtnq1C3wfUzFk/e5r94KjpbN89eUNJhJui596uKZ4zR6e6DzLPRF+6ZoknZr
 aBD7x5basN5cFNZZx7WBM5TpfTDpNE3jrQFmXvGRrb5z7JJR6XJO/vLTwxxF+wKD
 UtaIvBpEnWvVsCK/Mdoona/hpli6E8EkIhMyXnHRpT1ghOlGw9mRCzJyMzHacDs+
 ndM7/f3Gnojt6yep89I7bdsY8EYbtWkDIXCwv5/W54AEU6PAeORXoqvrZ3IfBFPG
 SPx3C9uA3BqhFg==
X-ME-Sender: <xms:3lbmXXS06qAsIh1BD-aS17ZHpW-GEbJiEHKRu2oXaFu-aW0z7zRjfw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrudejjedggeefucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvffufffkofgjfhgggfestdekre
 dtredttdenucfhrhhomheptehnughrvgifucflvghffhgvrhihuceorghnughrvgifsegr
 jhdrihgurdgruheqnecukfhppeduudekrddvuddurdelvddrudefnecurfgrrhgrmhepmh
 grihhlfhhrohhmpegrnhgurhgvfiesrghjrdhiugdrrghunecuvehluhhsthgvrhfuihii
 vgeptd
X-ME-Proxy: <xmx:3lbmXXCTd7ecyAxMLtfyGT24QKHC1-5VqEBO9Mr-W6TJktoEgv5lIw>
 <xmx:3lbmXWKq7o7n15b5OIJLdTrvWZEtXvERoKNQrQAM0mPq52D1awf3HQ>
 <xmx:3lbmXaBq701cVdq9NzQP08T5sOdl2RqeYoADJt6NbxwzN1vp-neKxw>
 <xmx:3lbmXYx9LTKAIt-N3KHwH-c1NkSLOm35M-eWZyFJ3EVsEmSM2KYvSA>
Received: from mistburn.lan (unknown [118.211.92.13])
 by mail.messagingengine.com (Postfix) with ESMTPA id ABCD5306017A;
 Tue,  3 Dec 2019 07:36:42 -0500 (EST)
From: Andrew Jeffery <andrew@aj.id.au>
To: openipmi-developer@lists.sourceforge.net
Subject: [PATCH 1/3] dt-bindings: ipmi: aspeed: Introduce a v2 binding for KCS
Date: Tue,  3 Dec 2019 23:08:23 +1030
Message-Id: <3da2492c244962c27b21aad87bfa6bf74f568f1d.1575376664.git-series.andrew@aj.id.au>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.5630f63168ad5cddf02e9796106f8e086c196907.1575376664.git-series.andrew@aj.id.au>
References: <cover.5630f63168ad5cddf02e9796106f8e086c196907.1575376664.git-series.andrew@aj.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_043647_533390_B5E40E19 
X-CRM114-Status: UNSURE (   8.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.224 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, minyard@acm.org,
 arnd@arndb.de, gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 linux-aspeed@lists.ozlabs.org, robh+dt@kernel.org, joel@jms.id.au,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The v2 binding utilises reg and renames some of the v1 properties.

Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
---
 Documentation/devicetree/bindings/ipmi/aspeed-kcs-bmc.txt | 20 +++++---
 1 file changed, 14 insertions(+), 6 deletions(-)

diff --git a/Documentation/devicetree/bindings/ipmi/aspeed-kcs-bmc.txt b/Documentation/devicetree/bindings/ipmi/aspeed-kcs-bmc.txt
index d98a9bf45d6c..76b180ebbde4 100644
--- a/Documentation/devicetree/bindings/ipmi/aspeed-kcs-bmc.txt
+++ b/Documentation/devicetree/bindings/ipmi/aspeed-kcs-bmc.txt
@@ -1,9 +1,10 @@
-* Aspeed KCS (Keyboard Controller Style) IPMI interface
+# Aspeed KCS (Keyboard Controller Style) IPMI interface
 
 The Aspeed SOCs (AST2400 and AST2500) are commonly used as BMCs
 (Baseboard Management Controllers) and the KCS interface can be
 used to perform in-band IPMI communication with their host.
 
+## v1
 Required properties:
 - compatible : should be one of
     "aspeed,ast2400-kcs-bmc"
@@ -12,14 +13,21 @@ Required properties:
 - kcs_chan : The LPC channel number in the controller
 - kcs_addr : The host CPU IO map address
 
+## v2
+Required properties:
+- compatible : should be one of
+    "aspeed,ast2400-kcs-bmc-v2"
+    "aspeed,ast2500-kcs-bmc-v2"
+- reg : The address and size of the IDR, ODR and STR registers
+- interrupts : interrupt generated by the controller
+- slave-reg : The host CPU IO map address
 
 Example:
 
-    kcs3: kcs3@0 {
-        compatible = "aspeed,ast2500-kcs-bmc";
-        reg = <0x0 0x80>;
+    kcs3: kcs@24 {
+        compatible = "aspeed,ast2500-kcs-bmc-v2";
+        reg = <0x24 0x1>, <0x30 0x1>, <0x3c 0x1>;
         interrupts = <8>;
-        kcs_chan = <3>;
-        kcs_addr = <0xCA2>;
+        slave-reg = <0xca2>;
         status = "okay";
     };
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
