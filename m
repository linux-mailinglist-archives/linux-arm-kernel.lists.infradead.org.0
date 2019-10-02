Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57B56C8EEA
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 18:46:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TlkaLJqvVwdZAO2q9NKV/SQFbuSm4cbWVP5qaUDk5O4=; b=hEGBXFVGnm6CYw
	YtLqdesQ5/Fi5I8ObyAhTGcoLJG44nixt2CkWAfuZxO8PZW3VtSx98U6INVMuYeQ9iJ8gubY7S2Bb
	k+y5kloJ53FKjGwkInnV6bIpB2w+PKQAfaXSjuq9bXD2F0RjIZKQ2ghZSy6b7zw+64icg0lEVGjN/
	UYK89G254dmRQjvSrxk5Y5YT3lPZGcVfa3BGSm3lEnrijh3p8gpwH3BEugNglnK8v5Lji8z4v13Q1
	inDdOFFS4LBJb+LfZ6TupSxe2VM3sgnsirW22PXahNKdha9WmCYc4yJu9H13qSr3ghWlQTPF023o7
	A1UlIDUJzhtpXDCaMN0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFhlk-00069L-A1; Wed, 02 Oct 2019 16:46:28 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFhkF-0003ZB-5Y
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 16:44:56 +0000
Received: from localhost.localdomain (unknown [194.230.155.145])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 00C5221D82;
 Wed,  2 Oct 2019 16:44:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570034694;
 bh=R3JtOA0Dfq49tu8H2veFMJQO3r2gPbDYYE4d7ZI1Ix8=;
 h=From:To:Subject:Date:In-Reply-To:References:From;
 b=MwRjVxg5VW4JlCPfao/vHhQoNy67kt4iEbnc0YMpw30oX3aIBpRBHn1zF4T4qxZXD
 KgPq9w5E8dz4qOVlO3mwxSRUskZsQ/cKaUCvbCNT4eDs8BcppMaWMcEWxri1AhtN0Q
 pz0an0WXawlkxRqiL5dOMDVreqb08i6T1muT0iAI=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Kukjin Kim <kgene@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 =?UTF-8?q?Beno=C3=AEt=20Cousson?= <bcousson@baylibre.com>,
 Tony Lindgren <tony@atomide.com>, Jason Cooper <jason@lakedaemon.net>,
 Andrew Lunn <andrew@lunn.ch>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Santosh Shilimkar <ssantosh@kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-omap@vger.kernel.org,
 linux-tegra@vger.kernel.org
Subject: [PATCH v3 10/10] ARM: dts: omap: Rename "ocmcram" node to "sram"
Date: Wed,  2 Oct 2019 18:43:16 +0200
Message-Id: <20191002164316.14905-10-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191002164316.14905-1-krzk@kernel.org>
References: <20191002164316.14905-1-krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_094455_256885_136CC334 
X-CRM114-Status: GOOD (  13.17  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The device node name should reflect generic class of a device so rename
the "ocmcram" node to "sram".  This will be also in sync with upcoming DT
schema.  No functional change.

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
---
 arch/arm/boot/dts/omap4.dtsi | 2 +-
 arch/arm/boot/dts/omap5.dtsi | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/omap4.dtsi b/arch/arm/boot/dts/omap4.dtsi
index 7cc95bc1598b..413304540f8b 100644
--- a/arch/arm/boot/dts/omap4.dtsi
+++ b/arch/arm/boot/dts/omap4.dtsi
@@ -148,7 +148,7 @@
 		l4_abe: interconnect@40100000 {
 		};
 
-		ocmcram: ocmcram@40304000 {
+		ocmcram: sram@40304000 {
 			compatible = "mmio-sram";
 			reg = <0x40304000 0xa000>; /* 40k */
 		};
diff --git a/arch/arm/boot/dts/omap5.dtsi b/arch/arm/boot/dts/omap5.dtsi
index 1fb7937638f0..9f1621f554d7 100644
--- a/arch/arm/boot/dts/omap5.dtsi
+++ b/arch/arm/boot/dts/omap5.dtsi
@@ -162,7 +162,7 @@
 		l4_abe: interconnect@40100000 {
 		};
 
-		ocmcram: ocmcram@40300000 {
+		ocmcram: sram@40300000 {
 			compatible = "mmio-sram";
 			reg = <0x40300000 0x20000>; /* 128k */
 		};
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
