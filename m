Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 502FED51E2
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 12 Oct 2019 20:50:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e18W4+dUqEFxkc73Xo1lO+u+Dg/pgYsTKLbOk8kb6N8=; b=F4D5fC9LnfbDr+
	n8LPVWjWPTD5W2Kxg5PMZwULY0M71tUfvoTxNtPhn2TWeZAZJdl1Y6r5YSvmGKmpPZfvlL0zww5oh
	MccDTGvsCqFx3zVFZI6ekhascwrv+nYUqBI1qWBjcfeuF8z3vrQnzK8h9OYHt+fHALjCQq8Lf0O5S
	WBGqmamYvK1t9xh+RxQ+7IzsaAS8/GIhGmakwld0P7kVizmMYih1sqK8QccESV8Hs1yhebBr+nQFi
	OfiwKu0LELPjSZMlQzfhFjrY5GXFLjTsd6fevq+X1iXmIp+EaRXCuqdUK/Ou9UYkqR67hixcbX8mH
	77e8xrSlDr7nqqB1BrAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJMTZ-0005jD-NL; Sat, 12 Oct 2019 18:50:49 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJMRu-00039j-Lc
 for linux-arm-kernel@lists.infradead.org; Sat, 12 Oct 2019 18:49:08 +0000
Received: by mail-wr1-x443.google.com with SMTP id b9so15282108wrs.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 12 Oct 2019 11:49:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=sqDLE8eOD/jzuEBYGSJJdfRbfHzmSxgCPCd3m6sI5BM=;
 b=FRWMocFYj6kFju55yAqo/swB7F1SHMMCVeC4WgHKb72ywUIeJM37QEWpv3UPxjs+3M
 dzTYtk5cbZbDAqvJ0G/7eEuPIjk+BiDAcbS6MfKmz1QGS90SPAWmH5tL8/R+huKbzNq1
 BC36+hXCFzmTEFL4mLunKknwJEXgxKaHDPJ7ju6k+jZvuJII+vfn/SqUC1ZqCQglZmG6
 XNDkR9oq1y83ThHKmLYocZiIzgwb1lW6wpeU0qYeuFSHWVtc+BqxYK1jS2oKvUjzlu6R
 4wrDmn61lqmPOun2nbH60rAdrFAQNs5bGfAmruqPwm7eKQ0lVKl+ZhO2vCrlmas4V6rK
 7gqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=sqDLE8eOD/jzuEBYGSJJdfRbfHzmSxgCPCd3m6sI5BM=;
 b=rXD8PCEAvL8D9Ap8K4kftaTKwbl3rufppoVftaAzXXBBEGYSmtGqWxlyqoln7w2qVo
 r13rJ6i7/R7gfjQfs9sUvisxeg9aYZXoKUr4yqmGIMTw4onjh++8nClSO0P8VFlFwsIy
 dHHBaySaVP1ZPAkhDCmq0TDthTkXvy4rrtP5ecbvk6rf//sAfl/saHLu1r2Y8jdragX+
 +Ig8LJUhKd/gAZtD8V/3dJ4rssZPBC8zlH12ANJ/+gAto9+UF751AWuqWGDiQCfJq0Sb
 aaAadFZcpc97iVTs3rF0zGCuay1+0hFP8fQj76BdmbEn47+6EgdcvqExKUjbNR7o/THe
 +S4Q==
X-Gm-Message-State: APjAAAX40qbyiI8KfAzZGkPnuOXi2nfp1yrDa/e1cMYvq2xod+11c3YP
 TU+W1F2hjJ8dDR8SBcNoRZE=
X-Google-Smtp-Source: APXvYqxOlaS/CpVCGcylTHA6rWuO7yxu6b5Fe+63OMY0v/jTG/iqJ3LKbPwvu/3C6QJeF2ZhgFoWsg==
X-Received: by 2002:adf:df81:: with SMTP id z1mr18921965wrl.367.1570906145208; 
 Sat, 12 Oct 2019 11:49:05 -0700 (PDT)
Received: from Red.localdomain ([2a01:cb1d:147:7200:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id a13sm33670580wrf.73.2019.10.12.11.49.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 12 Oct 2019 11:49:04 -0700 (PDT)
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: catalin.marinas@arm.com, davem@davemloft.net, herbert@gondor.apana.org.au,
 linux@armlinux.org.uk, mark.rutland@arm.com, mripard@kernel.org,
 robh+dt@kernel.org, wens@csie.org, will@kernel.org
Subject: [PATCH v4 06/11] ARM64: dts: allwinner: sun50i: Add Crypto Engine
 node on A64
Date: Sat, 12 Oct 2019 20:48:47 +0200
Message-Id: <20191012184852.28329-7-clabbe.montjoie@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191012184852.28329-1-clabbe.montjoie@gmail.com>
References: <20191012184852.28329-1-clabbe.montjoie@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191012_114906_740775_1017971B 
X-CRM114-Status: GOOD (  10.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (clabbe.montjoie[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-sunxi@googlegroups.com, Corentin Labbe <clabbe.montjoie@gmail.com>,
 linux-crypto@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Crypto Engine is a hardware cryptographic accelerator that supports
many algorithms.
It could be found on most Allwinner SoCs.

This patch enables the Crypto Engine on the Allwinner A64 SoC Device-tree.

Signed-off-by: Corentin Labbe <clabbe.montjoie@gmail.com>
---
 arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
index 70f4cce6be43..0287d8458675 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
@@ -478,6 +478,15 @@
 			reg = <0x1c14000 0x400>;
 		};
 
+		crypto: crypto@1c15000 {
+			compatible = "allwinner,sun50i-a64-crypto";
+			reg = <0x01c15000 0x1000>;
+			interrupts = <GIC_SPI 94 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&ccu CLK_BUS_CE>, <&ccu CLK_CE>;
+			clock-names = "bus", "mod";
+			resets = <&ccu RST_BUS_CE>;
+		};
+
 		usb_otg: usb@1c19000 {
 			compatible = "allwinner,sun8i-a33-musb";
 			reg = <0x01c19000 0x0400>;
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
