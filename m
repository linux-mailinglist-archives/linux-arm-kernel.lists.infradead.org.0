Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 907CB647FD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jul 2019 16:16:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ICgb5KiJyW3PDtp+IryC4OwvuJjM8CxzOw8Hhgsr9+k=; b=T+Vv+96HxrWvvO
	Wk4HICxOoSKS2GEFaJVXpY3g7jWf/hVaAHpV2l13fGTEOJWENU6tQMPd74w4eesS97Perrb8zoC/b
	lHylUrHf0EqU/nIrE5pf3EgniOkSwvDTA4zb36R6mUJnflHI6l6Quh6AnBv3k/Md4ELVGnPWfUx1C
	vJkEdHxdUmtK7fOKfd8+X1osi2qVy/qZle0rY6Mz63iSWksybV3arZvtT83gcvmNLWJnfaUTb2SnS
	NNwujKZ9UyWyvw9CmU+m7kMH873CUK6vIrjLCKr0DQIw+s4CoIyAjBstrOni7leAbfKqjr/S18H5u
	+C4oEs/ZjEH7U6e4N3xg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlDOH-000192-4b; Wed, 10 Jul 2019 14:16:13 +0000
Received: from out3-smtp.messagingengine.com ([66.111.4.27])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlDNP-0000Yw-Vi
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jul 2019 14:15:21 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 42BBD22171;
 Wed, 10 Jul 2019 10:15:19 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Wed, 10 Jul 2019 10:15:19 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=/nuJnxVDzRhoS
 VxlYKo/BeplUiN6nooOgbT9w/0IY+k=; b=ohoIueS1t1j0S89EU/3VnCYNiGAQQ
 ThW7HV0YRygHvhObUuMl20MSosAa9SCrs/d2TV514GpoOqpuLzNobHBB4kXV1Kp6
 8QwxT2XoCiBuTIqWR5yGCqzsN+sYYbVe+fQfNFAt9uboZAcSIYJMDqlOeugot1Fb
 3qwP0RJQEbJa5GEjcdiCXyDU+6nwT5ST3qB3fG8x7V1YET7iiOHhUxq6jqqXhlrI
 WXlx5r0j8IQ7rFsizdUm7nQ0z9FwqJ4L+RfGOtDMGPR4CIA0LEgbuC8f3ivxlhm0
 3wdokRDiEfAQ3ZNU6uf3U+kgldOh6SrLdWV0rDDMtjLMfy1kbNUDX1JRA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=/nuJnxVDzRhoSVxlYKo/BeplUiN6nooOgbT9w/0IY+k=; b=Z6qjLuOk
 TCzwieLNJe0YVNj4WIPp8WQa0x9Njozlj74mLU/0JW7ry6f5cKc3nvaHyx1h+TRy
 U21p5qBXLAUfF7HoPW/g5cYgfYYIUlecluXW+Y8fPWTJWnEWdYU/eFUOC3OLf0eP
 jdfGFkwozxTOLCKsyehr1em6n0Dtvh3z5l32ZfwZn2ZIHF5ZHQsNsT3Gom5J8GOL
 G72lPq6yktsmrSnsOnRD7Nbfasm2Txu6RBG/Nsg64U6WhVtRzwQmPG0OEDlCGpsC
 tzkH8d0K7YO1887VP19I2S6Z949VC3l2BXMmC7UuHbz+SoiWclinipZhiNz2e47D
 9AToIPTI85DS+Q==
X-ME-Sender: <xms:9_IlXWBLKssUsguJc2GqUPOe86fv4Id8vMSzZ-DCn3sfXnLJWvCTaA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrgeeigdejhecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffojghfggfgsedtkeertd
 ertddtnecuhfhrohhmpeetnhgurhgvficulfgvfhhfvghrhicuoegrnhgurhgvfiesrghj
 rdhiugdrrghuqeenucfkphepudegrddvrdekhedrvddvnecurfgrrhgrmhepmhgrihhlfh
 hrohhmpegrnhgurhgvfiesrghjrdhiugdrrghunecuvehluhhsthgvrhfuihiivgepfe
X-ME-Proxy: <xmx:9_IlXWDuxIMqVC6KPSXXQxYHn2GpmvLI6CeP_NwJG50hJXhNMax64A>
 <xmx:9_IlXYqQgjQUJ_mmNIQhgBIMUX5gSRrrULhcIjLHMsuZmKeFm-8tzg>
 <xmx:9_IlXZGURF6rMC8o2CRRKhnEVoQTsuhWflcx0TrmttcMCRrLRj0Bhg>
 <xmx:9_IlXRnmIfQ1Nzdx4NvxHjjewlW1k8xASkuU0viHSyu1hbM5bc2Olw>
Received: from localhost.localdomain
 (ppp14-2-85-22.adl-apt-pir-bras31.tpg.internode.on.net [14.2.85.22])
 by mail.messagingengine.com (Postfix) with ESMTPA id D950A8005B;
 Wed, 10 Jul 2019 10:15:15 -0400 (EDT)
From: Andrew Jeffery <andrew@aj.id.au>
To: linux-aspeed@lists.ozlabs.org
Subject: [PATCH 2/3] ARM: dts: aspeed: Enable both MMC slots on AST2500 EVB
Date: Wed, 10 Jul 2019 23:45:02 +0930
Message-Id: <20190710141503.21026-3-andrew@aj.id.au>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190710141503.21026-1-andrew@aj.id.au>
References: <20190710141503.21026-1-andrew@aj.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_071520_207453_C5F268C5 
X-CRM114-Status: UNSURE (   9.08  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.27 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, Andrew Jeffery <andrew@aj.id.au>,
 ryanchen.aspeed@gmail.com, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 joel@jms.id.au, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Enabled for testing purposes.

Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
---
 arch/arm/boot/dts/aspeed-ast2500-evb.dts | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/arch/arm/boot/dts/aspeed-ast2500-evb.dts b/arch/arm/boot/dts/aspeed-ast2500-evb.dts
index 556ed469830c..429904e401ee 100644
--- a/arch/arm/boot/dts/aspeed-ast2500-evb.dts
+++ b/arch/arm/boot/dts/aspeed-ast2500-evb.dts
@@ -94,6 +94,24 @@
 	};
 };
 
+&sdc {
+	status = "okay";
+};
+
+&sdhci0 {
+	status = "okay";
+
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_sd1_default>;
+};
+
+&sdhci1 {
+	status = "okay";
+
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_sd2_default>;
+};
+
 /*
  * Enable port A as device (via the virtual hub) and port B as
  * host by default on the eval board. This can be easily changed
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
