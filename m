Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0118C404B
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 20:44:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AqbTyl7PFWI8sH+cZBtWogrd7T271zhZL7pDlf7cBeI=; b=MlASnl85t6Hw+6
	3nPwY952Z7prSBVKAhC3wQYFuZS/fLkKNt30x1uKa1hON+T4+f2DCfzvZV9lLBAihPJbBOh0RKZXR
	0csEgODFy6jbUuWJBJ/BuS+cRRoaT7YMXsSHj3ne2C9lVFAjeZ32s0fxuLcT/11IiydfDjlq7Rwh7
	VT+mziEDgTIzZ8W+Mw1rLaw7aS2RFMfFuUlzmcRphK2dZFRmPzF8FcNBau6s46c94swDaSPPzVoMH
	tlpUAL6c/VPF+1Y/Z1vs9Yh6rzH6oiSGiZKlU6f/xP8azjKzgQcwnOiONVkfhmfsa0fdFF8Ub9c+0
	qqyP4LaqLEgy/W9CNcYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFN85-0007xC-1L; Tue, 01 Oct 2019 18:44:09 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFN5z-0006BS-Ov
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 18:42:01 +0000
Received: by mail-wr1-x441.google.com with SMTP id n14so16731640wrw.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 01 Oct 2019 11:41:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=AE8l+XRMu1sgkl2Oy/fFtmiZlnFZOea3H9nl7n7sx/w=;
 b=dZGVoaQA65ACdRAYWhu+1Xw/6V2dJNORC94PgsqCbn9mSou5fkbF3DTRF/S+ViuVBf
 brZ+C1r6l5dNcudiP9HUWpzGaNkDj1WKb+ZVgygsustay5u0I7RJgJvpB69Qj6pnF14q
 yI40IetVyDwgS2lydWxz3NLubVhsycKQBNDhpDTVLMr0k9KeQSqnCN8IyrPvY7wXBgAT
 nBTMRm+cT6z25P+5hCtYUtw5MfKB5FfqzLUsk5SntHQ/yQ9tbhjS9ftZtRAHgX9/2An2
 Icd9384WOreyeGOaWltflmV2OVTP8JV0tpcqOEZ7dhKQC1u5qurqzULDh8/2teFdD9i5
 GEfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=AE8l+XRMu1sgkl2Oy/fFtmiZlnFZOea3H9nl7n7sx/w=;
 b=oZhGcfnAzWCYUEjH3pVueo+MFKwktn+i08Zy8/71X9lVYWcRRWhK0i8Dr3tk7NF156
 n7wsIHjR9RKrBiKuyVwf0kJw+86u+fQBSdRq12Akc6ugrlU+6plBRKSHlX+MlLbOrpz7
 d9pEyLXeK9IRCG6uhVQBmAlPv2WrRjU6yoFXdav3sDVWudxVKBdu25xWdY+u+L5FYVqU
 j/7RPP93LZ4gfT5Hx9o6zAst8/2bsCPcccS7Gfu1M4sHvicaOmW3tNgvpOYjApX+MRHG
 NoZUbO+ZHFXmZ2SyqThm8CKjI3dzVLmEVQ6/4ibIVxZpok8v8Ks+oPSNCXWlU0sG4sG9
 iV5A==
X-Gm-Message-State: APjAAAUzHybJj6C6rCrFlaInNlwyN65XHE5oeDm/FDC4hKODJT2FbdjK
 CvXQ4jpMdcwL+ck0DaQWvBM=
X-Google-Smtp-Source: APXvYqxDm2SDCiSBhrALXCHZc5QOsLfBxMwxfZBJHkpp2DnDuLU6/K882gSaAsZjpqW0zvLHgpIPug==
X-Received: by 2002:a5d:52cd:: with SMTP id r13mr18241988wrv.376.1569955317656; 
 Tue, 01 Oct 2019 11:41:57 -0700 (PDT)
Received: from Red.localdomain ([2a01:cb1d:147:7200:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id n8sm6788987wma.7.2019.10.01.11.41.56
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 01 Oct 2019 11:41:57 -0700 (PDT)
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: catalin.marinas@arm.com, davem@davemloft.net, herbert@gondor.apana.org.au,
 linux@armlinux.org.uk, mark.rutland@arm.com, mripard@kernel.org,
 robh+dt@kernel.org, wens@csie.org, will@kernel.org
Subject: [PATCH v2 07/11] ARM64: dts: allwinner: sun50i: Add crypto engine
 node on H5
Date: Tue,  1 Oct 2019 20:41:37 +0200
Message-Id: <20191001184141.27956-8-clabbe.montjoie@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191001184141.27956-1-clabbe.montjoie@gmail.com>
References: <20191001184141.27956-1-clabbe.montjoie@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_114159_854943_A7BEB48B 
X-CRM114-Status: GOOD (  11.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
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

This patch enables the Crypto Engine on the Allwinner H5 SoC Device-tree.

Signed-off-by: Corentin Labbe <clabbe.montjoie@gmail.com>
---
 arch/arm64/boot/dts/allwinner/sun50i-h5.dtsi | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h5.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-h5.dtsi
index f002a496d7cb..362f78e9122e 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h5.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h5.dtsi
@@ -127,6 +127,17 @@
 			allwinner,sram = <&ve_sram 1>;
 		};
 
+		crypto: crypto@1c15000 {
+			compatible = "allwinner,sun50i-h5-crypto";
+			reg = <0x01c15000 0x1000>;
+			interrupts = <GIC_SPI 94 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "ce_ns";
+			resets = <&ccu RST_BUS_CE>;
+			reset-names = "bus";
+			clocks = <&ccu CLK_BUS_CE>, <&ccu CLK_CE>;
+			clock-names = "bus", "mod";
+		};
+
 		mali: gpu@1e80000 {
 			compatible = "allwinner,sun50i-h5-mali", "arm,mali-450";
 			reg = <0x01e80000 0x30000>;
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
