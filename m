Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24E6A35206
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 23:42:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=K+9CgLC0KnT3+UbenZ4mFa/6FPj4qKVBcrZZfmZeOyU=; b=AKLivZEIqaSUMz
	5k0oaDx91bvvV4dTYmoLkWn6kfQ2OO6owQkv/yCSWYbUKRWkQPsVrAu0tT/oC1xU+iGpPvngWIOe4
	FOIdLsEIZpk19UGnZ2xPJQkGrHdq63PzRbK279q8Nvrh6Yw/atdT17vuTA8LdGJW6G4uKQbdVsD7l
	usxJITTMyGxePwkP8TUNpIP7YTV5kzDVNSUan/77SwB+GSaSVsMNsxIB7U4J8jO29h9tZDoOReATM
	X6kwx/5WvbUIxT8uj9EC+jyIwSpeX1DtgHYeoKCP+VbRh2b3QSPDBQlImVt1QRhIT9/V+wdPQ+9FR
	5EdugJCTKqSRarLeWmEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYHCE-00035d-Cr; Tue, 04 Jun 2019 21:42:18 +0000
Received: from atlmailgw2.ami.com ([63.147.10.42])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYHC8-00035J-4X
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 21:42:13 +0000
X-AuditID: ac10606f-bbfff70000003de9-15-5cf6e5b10449
Received: from atlms1.us.megatrends.com (atlms1.us.megatrends.com
 [172.16.96.144])
 (using TLS with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by atlmailgw2.ami.com (Symantec Messaging Gateway) with SMTP id
 B1.12.15849.2B5E6FC5; Tue,  4 Jun 2019 17:42:10 -0400 (EDT)
Received: from hongweiz-Ubuntu-AMI.us.megatrends.com (172.16.98.93) by
 atlms1.us.megatrends.com (172.16.96.144) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Tue, 4 Jun 2019 17:42:09 -0400
From: Hongwei Zhang <hongweiz@ami.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>, Linus
 Walleij <linus.walleij@linaro.org>
Subject: [PATCH 1/3 linux dev-5.1 arm/soc v2] ARM: dts: aspeed: Add SGPM pinmux
Date: Tue, 4 Jun 2019 17:42:04 -0400
Message-ID: <1559684524-15583-1-git-send-email-hongweiz@ami.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [172.16.98.93]
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrPLMWRmVeSWpSXmKPExsWyRiBhgu6mp99iDLad47PYdZnDYv6Rc6wW
 v8//ZbaY8mc5k8Wmx9dYLZpXn2O2uLxrDpvF0usXmSxa9x5hd+D0uNq+i91jzbw1jB4XPx5j
 9ti0qpPN4861PWwem5fUe5yfsZDR4/MmuQCOKC6blNSczLLUIn27BK6Mvo5ZzAVrWCuaO+Yz
 NTCuZ+li5OSQEDCRuHG1jxnEFhLYxSRxewNjFyMXkH2IUeLP0k6wIjYBNYm9m+cwgSREBHYw
 Slz98QysillgPaNE466tjCBVwgL+Eo/fTgSzWQRUJKbf/MEOYvMKOEjM37iGFWKdnMTNc53M
 EHFBiZMzn4BtYBaQkDj44gXUGbIStw49ZoKoV5B43veYZQIj3ywkLbOQtCxgZFrFKJRYkpOb
 mJmTXm6kl5ibqZecn7uJERLI+TsYP340P8TIxMEI9BIHs5IIb+LtLzFCvCmJlVWpRfnxRaU5
 qcWHGKU5WJTEeVet+RYjJJCeWJKanZpakFoEk2Xi4JRqYJyat2VV6s9lL3fo6G/vlpuVzLMg
 Y8fVRx0T+LVz+P+sULxYP2fVzAOyW2sMfp9r27qgajnPqtrkIO2Tfwqz7kSyflI+9ftQyfqp
 O482Gfrfv7CCdevX3gyHuocKbGKB2nlVQr7eVb1Lj17141eIjNt05rnP23PG/YcnHD78g2eP
 mMP9tbkTSrKUWIozEg21mIuKEwHBh/8yUgIAAA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_144212_251527_77B8DCB0 
X-CRM114-Status: GOOD (  10.09  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [63.147.10.42 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, linux-aspeed@lists.ozlabs.org,
 Hongwei Zhang <hongweiz@ami.com>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add SGPM pinmux to ast2500-pinctrl function and group, to prepare for
supporting SGPIO in AST2500 SoC.

Signed-off-by: Hongwei Zhang <hongweiz@ami.com>
---
 arch/arm/boot/dts/aspeed-g5.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm/boot/dts/aspeed-g5.dtsi b/arch/arm/boot/dts/aspeed-g5.dtsi
index 85ed9db..8d30818 100644
--- a/arch/arm/boot/dts/aspeed-g5.dtsi
+++ b/arch/arm/boot/dts/aspeed-g5.dtsi
@@ -1321,6 +1321,11 @@
 		groups = "SDA2";
 	};
 
+	pinctrl_sgpm_default: sgpm_default {
+		function = "SGPM";
+		groups = "SGPM";
+	};
+
 	pinctrl_sgps1_default: sgps1_default {
 		function = "SGPS1";
 		groups = "SGPS1";
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
