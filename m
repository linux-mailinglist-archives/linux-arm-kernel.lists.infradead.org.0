Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 602D3D51E8
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 12 Oct 2019 20:52:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gPjh4S7YL29ATI8TbCle6rCWz7Z1afKs/da039xzEAo=; b=WXwdi2RVxqla9l
	EsqPUq6L0X5EktR6RYvMAEn9Zw7ASQYx3nFx6ZOH2L5BnFXASGTzKewsY79S+iJiCSexXZpW6/mZJ
	dF0hw39nUy7aVyn9kPM7rcv99B6rIms8FCZJ8f2b3HgjZxE8b3uoBEXf95JdnWzibtfrPxbuB5zNm
	huJ9K1BXVTBgakQ74cHIefHZ/lOTEgLByvR/py9fAj6oiXorO60U4YYxm5B+do1RSNjqxA03UF4i8
	O5yiD+serokLxPvzHlQe1h540MndJMbVW5enj7gcseGo10q/nI16lP1PJHVq5eiUamNVYI4ugHL14
	3g2aAMTpbKylvgD+IygA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJMUZ-0006lK-GC; Sat, 12 Oct 2019 18:51:51 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJMRw-0003CY-V1
 for linux-arm-kernel@lists.infradead.org; Sat, 12 Oct 2019 18:49:10 +0000
Received: by mail-wr1-x441.google.com with SMTP id j18so15231519wrq.10
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 12 Oct 2019 11:49:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=44TuELDtNCusYZupj5B8B0t5vnjX1mlerc4abRfeM5Q=;
 b=dzzB+q06UqsEKkd/hCvau1TGM+qAedC7qRk2up+oQYXYidRqXwKi+IujeOcbW8Tdza
 +y9qtXZG02ID99EELK1Qp9UnnYeXSm4jQ5g1hmK5M9Tyn4PRNNjEcXV9j8X9PHQPLlRV
 FCU3qiXrrfvlgF0CNS1aw7imeHDPVLVGJhB4kqiWUGaC4jZNqa68fUOOR075Kf+Y5S98
 Zjo1CJAwrdYWwGlFzoD6839RfGyvQI2ue4l2PIoRJ1W7Vf0fjCDeaj0TLPcAFHa8jMc3
 MiK2mt3Dl7rzrG/mQ/MOOiXXzCTaS5dat5W4zYj/AERzXrc5XgRwZ+qCprTOnRQ5ZzOb
 eiaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=44TuELDtNCusYZupj5B8B0t5vnjX1mlerc4abRfeM5Q=;
 b=L0KvbU9TNkuJ2wwJSoJ38O3g8uaCaenhbWBGKBJ5sc2AoZ0KrUmR5Z8ur2q4U/sFm7
 PGn1SLTSTRx3jTt+mYrsQr7oPFRxWLtGikzv92ZDncJbyvw70S/xmEdX2v5cy2uEgCJv
 wkzf+eTDBbPkkJrRfgFCNcTfnRexup50YM/zXHt1vuhWUWf5bJwMC7G6KDayt/ZnBq0Y
 4EemLbfUZCvi/QwapFeHOcx6BiH6MLFsiTLdzHLnZL7ptQ/RfqHFV6yIb7m7IxLPVc0J
 i7SItrInfp/noWYUE42QdHm2TPfmLSO8wRD2d1lOVqi8WMTXRuY0w622ogrnB18kIi00
 tuFg==
X-Gm-Message-State: APjAAAXP1VoEL1LDNyc+J2Mry8yiqEuBoYJMDe0wgbuCK14P6z+MmL8a
 55D8sQB1V80Q4jM/8asIf9A=
X-Google-Smtp-Source: APXvYqyy/UEDWZoan35QEd0/+NNFjoMtsEhnijIS1wPhQdHMbMDEHQjZNxamZHffRDjdA8nBUhNxeQ==
X-Received: by 2002:adf:e90d:: with SMTP id f13mr18611162wrm.104.1570906147711; 
 Sat, 12 Oct 2019 11:49:07 -0700 (PDT)
Received: from Red.localdomain ([2a01:cb1d:147:7200:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id a13sm33670580wrf.73.2019.10.12.11.49.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 12 Oct 2019 11:49:07 -0700 (PDT)
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: catalin.marinas@arm.com, davem@davemloft.net, herbert@gondor.apana.org.au,
 linux@armlinux.org.uk, mark.rutland@arm.com, mripard@kernel.org,
 robh+dt@kernel.org, wens@csie.org, will@kernel.org
Subject: [PATCH v4 08/11] ARM64: dts: allwinner: sun50i: Add Crypto Engine
 node on H6
Date: Sat, 12 Oct 2019 20:48:49 +0200
Message-Id: <20191012184852.28329-9-clabbe.montjoie@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191012184852.28329-1-clabbe.montjoie@gmail.com>
References: <20191012184852.28329-1-clabbe.montjoie@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191012_114909_013020_6B5386EE 
X-CRM114-Status: UNSURE (   9.71  )
X-CRM114-Notice: Please train this message.
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

This patch enables the Crypto Engine on the Allwinner H6 SoC Device-tree.

Signed-off-by: Corentin Labbe <clabbe.montjoie@gmail.com>
---
 arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
index 5d7ab540b950..89d09b441abc 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
@@ -149,6 +149,15 @@
 			allwinner,sram = <&ve_sram 1>;
 		};
 
+		crypto: crypto@1904000 {
+			compatible = "allwinner,sun50i-h6-crypto";
+			reg = <0x01904000 0x1000>;
+			interrupts = <GIC_SPI 87 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&ccu CLK_BUS_CE>, <&ccu CLK_CE>, <&ccu CLK_MBUS_CE>;
+			clock-names = "bus", "mod", "ram";
+			resets = <&ccu RST_BUS_CE>;
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
