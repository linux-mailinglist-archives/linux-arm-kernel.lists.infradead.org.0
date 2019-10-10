Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 505E4D304E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 20:25:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E0Zs5VP67PA/35cISqVkcN4b6pKSKn2jXbVgRttjsjo=; b=NwJ7cUu2rbViqL
	bAwYqFE9G7Gz8mlRSYxMjR1zdEG6PtxPPid13Dh9bFTzBboBYw2bHjqrn9KbGo6vCw4EkHb9prAx3
	StpJqeU6FCFwH0lip6iUOBrIIa2Qr65dQXXoJzZYT0foxYMlTbgsp9xAlHKj/HBWTZJBo+kDuw6Wz
	fJz/Prvl226o8A1p7hur8+K++CyE+8QD5n3SrmZwGGJ73i7FIEDGxm6qQ3Qgt99s2xjlSdDmF9Zoq
	aulZbYAY3IU6YVbHNkZc4Os5xHYAdZ7mhTVzr5c+qMi+mDSgdd7d6xILs1nQCA80UCEXYUMAYV81E
	qxgX0WAcU3j7zRdLHN3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iId7d-0003Or-FV; Thu, 10 Oct 2019 18:25:09 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iId6V-0002bf-Jj
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 18:24:01 +0000
Received: by mail-wm1-x344.google.com with SMTP id v17so7762255wml.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 10 Oct 2019 11:23:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=U0bXFZtZxRLCBkdXsKMyb9zQdwkvrsk2DYrybLJs1HU=;
 b=jHD68LNyZNEqrWyossZVKYNEwMQRWa7V14HWf3oCVwLGf2T5d23iDySGUekDPskWRo
 AG4SZF6A+GZGyH2POnDZsRxkjWy0vSMefjgQMSUtJ+txlJzWBCgum3ItRm2jqPDgBfWk
 DW8BtPzpIDoxS52M//UfXT8J7aTlni+NbV8mmxSk3+oOzBl6yvi4rN1HWqtGLVK/zO6h
 A+Uo9X5QFJgnDnMTxpItX37uTJF/Sx6kGKMBNX9upCY4PzGfn0o4XqMhcjZVzL9lq1yU
 pq9Du6FRkncwH6zDtC9WBRxaoMlp3qpZ2U8NOqB9vNS45/GiT9SeCbUGjr9cT/TtIyBY
 Jzyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=U0bXFZtZxRLCBkdXsKMyb9zQdwkvrsk2DYrybLJs1HU=;
 b=Yk4QiJL5ytnWcDzDrP0E8SvUW+FdRd56qyZtgXh80OParjjuMiLBnjncGR99ypEris
 07xALiG9Rx4U4OTmkNhDFUJDL2Va2QerTrl3T1jR8wDXY5Kd0c+HEFpDLZjcEzuOLucM
 gpPYzbMRL0VrimBa7JpG4mxr7YecTNIQv2tcT9yP3wgGT3gNAdo/RTqglfoqgiYN7JUX
 2BQDwFXUfJ00P+56Y4BDKFWosDFy9bgaXx1yQzgnWsMxMYqNa9appxcPAxpQzrtajho+
 lqCc/OgR3YS4WKPQPtiAWZA5CfPAKT9ZLU26rWHOcn2Nkwti9MHF3m4AnGVGOapfSsRg
 9oTA==
X-Gm-Message-State: APjAAAX9sON8ZVCYJ9WjNtGCgiVpHL8vFFlpsvAGiIb342h08immSld2
 AmpECyFwwtW3cqqSSny3Jno=
X-Google-Smtp-Source: APXvYqxofRBu0ObJYQe2/ofB+iluWNmJKI+Zh7K9b7aB2BAnHbOKcNw825vEB9xlcblHSD/p5UflsA==
X-Received: by 2002:a05:600c:24c9:: with SMTP id
 9mr9130050wmu.174.1570731838108; 
 Thu, 10 Oct 2019 11:23:58 -0700 (PDT)
Received: from Red.localdomain ([2a01:cb1d:147:7200:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id
 y186sm11367664wmb.41.2019.10.10.11.23.56
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 10 Oct 2019 11:23:57 -0700 (PDT)
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: catalin.marinas@arm.com, davem@davemloft.net, herbert@gondor.apana.org.au,
 linux@armlinux.org.uk, mark.rutland@arm.com, mripard@kernel.org,
 robh+dt@kernel.org, wens@csie.org, will@kernel.org
Subject: [PATCH v3 04/11] ARM: dts: sun8i: R40: add crypto engine node
Date: Thu, 10 Oct 2019 20:23:21 +0200
Message-Id: <20191010182328.15826-5-clabbe.montjoie@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191010182328.15826-1-clabbe.montjoie@gmail.com>
References: <20191010182328.15826-1-clabbe.montjoie@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_112359_775287_6D4D6D1A 
X-CRM114-Status: GOOD (  13.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (clabbe.montjoie[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-sunxi@googlegroups.com, Corentin Labbe <clabbe.montjoie@gmail.com>,
 linux-crypto@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Crypto Engine is a hardware cryptographic offloader that supports
many algorithms.
It could be found on most Allwinner SoCs.

This patch enables the Crypto Engine on the Allwinner R40 SoC Device-tree.

Signed-off-by: Corentin Labbe <clabbe.montjoie@gmail.com>
---
 arch/arm/boot/dts/sun8i-r40.dtsi | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm/boot/dts/sun8i-r40.dtsi b/arch/arm/boot/dts/sun8i-r40.dtsi
index c9c2688db66d..1da08cdb8311 100644
--- a/arch/arm/boot/dts/sun8i-r40.dtsi
+++ b/arch/arm/boot/dts/sun8i-r40.dtsi
@@ -266,6 +266,16 @@
 			#phy-cells = <1>;
 		};
 
+		crypto: crypto@1c15000 {
+			compatible = "allwinner,sun8i-r40-crypto";
+			reg = <0x01c15000 0x1000>;
+			interrupts = <GIC_SPI 94 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&ccu CLK_BUS_CE>, <&ccu CLK_CE>;
+			clock-names = "bus", "mod";
+			resets = <&ccu RST_BUS_CE>;
+			reset-names = "bus";
+		};
+
 		ehci1: usb@1c19000 {
 			compatible = "allwinner,sun8i-r40-ehci", "generic-ehci";
 			reg = <0x01c19000 0x100>;
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
