Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CAC4C404D
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 20:44:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n6y7eYXYxXj26VjFK+cTw3gV+nlNqsDMBivLyr+2MlA=; b=V3ipIsSAMmY9qQ
	dT1FSs0YvvW8xNc3RUgGCazOuXH0KuiQACsybXCmmZkRE9M48cTYPbcgcJ4fHGb6zXlFFvFMn4cVD
	uC4MBfNgXSKiBUytRtoQqS1EMMcoV9h34TIjopxKJu6IqNibPd3E2jaMwN9QNcOWhxc8oRPMQykng
	JN3Ab0KjRAOxMcT+dWmkGclvnUPyzSxbD9OCdF0WCxbXdQMHOsAgtwiP8Mh89bp3Oq+wKlhNxMy4O
	hJULd8DH58JcG/PFDXbS+IqRr/GwaJLPHjY/ipoN4EjLzbluN8EJhiEERv/RB9IEaEqswwvG3/CVZ
	txR/oNbHm52MB9t49/uA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFN8N-0008C3-Cz; Tue, 01 Oct 2019 18:44:27 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFN60-0006Bn-Fb
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 18:42:03 +0000
Received: by mail-wr1-x442.google.com with SMTP id h7so16768521wrw.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 01 Oct 2019 11:42:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=gZZhSHrWVeMsgcZ1DNWdqejRZp5+6jKQtXPgaV4ea4U=;
 b=qEyQZYZyIjF+lLElfRTkIBpuwmvIl0oEdlMqmL+SywepsvSp14oTYYh544PWow0LoS
 Rf21kH7sBUbzDYbWnStY1d5yYCBpUZUkCj43OHCdbKf89oF4/xDfkeAMFvE4+3LV7NEk
 3qguTeGN1fxdOB8L0o6JebjJkUCVIaAXFn4bKCB79ZUGDaiHMw4m3AiJAEgcihptGIMs
 nzCY4MlDXWXTodNPVfmZBAbbjgObWdrhRmbErlfIllyKH4+MYep+ekTx1qHa5/hmaLWe
 uBBmLSAsZPozRc/2JldDw4jjy9ZlpAYVgCXgRW1SYsm2Lhi6Ns6WU4KerJb+0X6InKYy
 qm5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=gZZhSHrWVeMsgcZ1DNWdqejRZp5+6jKQtXPgaV4ea4U=;
 b=EYXuqcvJufH0vzemgQVyv/A5oo1wDmO7E3VthivzgsEHQKcpEhDtpnLr78x51dowFo
 vN9s8OxKNuI8j8LO5kZCXjPjrzURHUJI9zZE9yZlJbpQgUuQmM7eOoTeIfiHVFeSBcNs
 gikOXaj5fRU/fGKogfCG/pfTtQnhGAnYCjxpCRL+EGR5Ut44pkqtr/eeLnc8Yx7pBNbD
 he9152pFJitRst0G152LDamOO1IAXOFF527Iw+n7/r03HX9UBzWsMtLH7xsQ7ACR+he9
 vIpcXXNZ9YFn+jSX2w8i5L/Qfk5Oc/lu8azwIcLUvhYxCiX0PCoVeArXvLTjUX8F5YDs
 1Rnw==
X-Gm-Message-State: APjAAAWmWcplxlZD4S9lgelO9YBCovtbA7aDSMlL46U9ku0sTnGusuJU
 5gglSOCrxtag8Q0OU75HLEs=
X-Google-Smtp-Source: APXvYqybn2IX5mvp+PPcExvF4EUI1AnHHE9tXo68fCXeU2b/e1T1Xp/7huN0mrK8DdiS9UTUhN6ewg==
X-Received: by 2002:adf:e951:: with SMTP id m17mr18678899wrn.154.1569955318987; 
 Tue, 01 Oct 2019 11:41:58 -0700 (PDT)
Received: from Red.localdomain ([2a01:cb1d:147:7200:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id n8sm6788987wma.7.2019.10.01.11.41.57
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 01 Oct 2019 11:41:58 -0700 (PDT)
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: catalin.marinas@arm.com, davem@davemloft.net, herbert@gondor.apana.org.au,
 linux@armlinux.org.uk, mark.rutland@arm.com, mripard@kernel.org,
 robh+dt@kernel.org, wens@csie.org, will@kernel.org
Subject: [PATCH v2 08/11] ARM64: dts: allwinner: sun50i: Add Crypto Engine
 node on H6
Date: Tue,  1 Oct 2019 20:41:38 +0200
Message-Id: <20191001184141.27956-9-clabbe.montjoie@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191001184141.27956-1-clabbe.montjoie@gmail.com>
References: <20191001184141.27956-1-clabbe.montjoie@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_114200_546734_4D780BAF 
X-CRM114-Status: GOOD (  12.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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

This patch enables the Crypto Engine on the Allwinner H6 SoC Device-tree.

Signed-off-by: Corentin Labbe <clabbe.montjoie@gmail.com>
---
 arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
index 4020a1aafa3e..0d26901d42ca 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
@@ -149,6 +149,16 @@
 			allwinner,sram = <&ve_sram 1>;
 		};
 
+		crypto: crypto@1904000 {
+			compatible = "allwinner,sun50i-h6-crypto";
+			reg = <0x01904000 0x1000>;
+			clocks = <&ccu CLK_BUS_CE>, <&ccu CLK_CE>, <&ccu CLK_MBUS_CE>;
+			clock-names = "bus", "mod", "ram";
+			resets = <&ccu RST_BUS_CE>;
+			reset-names = "bus";
+			interrupts = <GIC_SPI 87 IRQ_TYPE_LEVEL_HIGH>;
+		};
+
 		syscon: syscon@3000000 {
 			compatible = "allwinner,sun50i-h6-system-control",
 				     "allwinner,sun50i-a64-system-control";
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
