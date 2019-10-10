Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F33DAD3050
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 20:25:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rFpnzfpjToSy1wex+ieCM+7bDRYRB/qP778H5mNI0Tk=; b=ggcvaVEkTPKe7Z
	3uu2Tmdq0ty7AWE3AfwLCmbOiiXn2xUkITn+O76mPBT/ApNq8Wa8EROHBICR+J0I3BsbkJ0/vYdJ9
	djTdD5aKAv41VhRLrv2TVMWr4es21CcxBsr9EjPhH4Yxyb6vKj90/+j6AmeiVFPyhzPhO2u94gVSp
	8Ely3AWejZXVpdyARczqAtj14cZwz2+AiYBdcRoaCOSWf2EiyDNM8A9RRVDZBns/EFbM5azFekHFA
	OshWZcs/IpeKimhzLE6+qkkpjn5htiy2DXkN9WXvKBUnNKpUicI3kb4b2g/k0E96rEoeCjbmIPU4h
	TrkuHJ8cC9v997R/QTOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iId88-00052X-C0; Thu, 10 Oct 2019 18:25:40 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iId6X-0002dH-Np
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 18:24:03 +0000
Received: by mail-wm1-x343.google.com with SMTP id b24so7761584wmj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 10 Oct 2019 11:24:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=gDfhtZCLPDiZh+UMPgLmWJp3cqUK6R/GqJrZEV/WY7A=;
 b=HI5JYbO/+oZvLigOOYZezrKnK2wJFmO0mHsbk13fKijaG3qdFAaIy1TsftNv21OH/N
 OIMx019JiO3prdIC14IbegQokiWc4CCJ9v1bBZ4S8naddle7FrqwrkYvlHP/1U40vh9z
 OwdGudcVfrS+CqvK/qAo6+vVfbeNDVta4hL0rGwnKPMTWjzKxvBZaqMY6VTM8rDKR9o6
 ifj82BC91rW1kt2iQI/osiH7aPtseWFRDklGVUZMBkk4eA4Bbi4ctEY6WfWwumA+/hkw
 YgT3VnkisKTK4FExdA7JnwUX8K57ZGzJ75VUfSfM5QxTCl0fZaYb4UsoyEgGfRGwoxhV
 eJ1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=gDfhtZCLPDiZh+UMPgLmWJp3cqUK6R/GqJrZEV/WY7A=;
 b=nULVa1qcSkeTHe6RiuESRzTN5LKoalk3EhGNnSXE4obn1mZ4rj4jLSwS788qx43AQZ
 HZkJBp1hqawRrrA0U7zua5pIcSyZswpvd7acjU7qJLZPrQPn8JzXxnh93I8wG9CQUbXC
 USo4YQ+DCgvehynZKxIzpA6ehdQ2eEwG1tc6uCZ7A/R0UyzYpMXdpiFz/U/br3n7GFBw
 baOWgYWndIVw9wl+TKoarg65Z+Vii9l3qFWICxMDxl4zLYjErhgOlzjuOFxvl89jXZxQ
 DVBS1hnwraDo0vNhXZDHsWUzXTz/WH53oQhXZb+NhWI0Fg8jIA3QYraHWrN0DQ1Lrky5
 PrjQ==
X-Gm-Message-State: APjAAAVRae301G6RQYRtlKCCfujxTOwfZOJMk+bSNv4By75ExY5uxOkQ
 A0Og6LL8ZmuSjPRpyAUqqZQ=
X-Google-Smtp-Source: APXvYqzeZD0H1oDK7XStvFyndivwViMv2OhtPKWW65Oxrr3rQ6RL+LdyP7zHHPxkZS+5ICVwKvG2hg==
X-Received: by 2002:a05:600c:2549:: with SMTP id
 e9mr8090591wma.74.1570731839866; 
 Thu, 10 Oct 2019 11:23:59 -0700 (PDT)
Received: from Red.localdomain ([2a01:cb1d:147:7200:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id
 y186sm11367664wmb.41.2019.10.10.11.23.58
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 10 Oct 2019 11:23:59 -0700 (PDT)
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: catalin.marinas@arm.com, davem@davemloft.net, herbert@gondor.apana.org.au,
 linux@armlinux.org.uk, mark.rutland@arm.com, mripard@kernel.org,
 robh+dt@kernel.org, wens@csie.org, will@kernel.org
Subject: [PATCH v3 05/11] ARM: dts: sun8i: H3: Add Crypto Engine node
Date: Thu, 10 Oct 2019 20:23:22 +0200
Message-Id: <20191010182328.15826-6-clabbe.montjoie@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191010182328.15826-1-clabbe.montjoie@gmail.com>
References: <20191010182328.15826-1-clabbe.montjoie@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_112401_821171_89655D5D 
X-CRM114-Status: GOOD (  13.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
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

The Crypto Engine is a hardware cryptographic accelerator that supports
many algorithms.
It could be found on most Allwinner SoCs.

This patch enables the Crypto Engine on the Allwinner H3 SoC Device-tree.

Signed-off-by: Corentin Labbe <clabbe.montjoie@gmail.com>
---
 arch/arm/boot/dts/sun8i-h3.dtsi | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm/boot/dts/sun8i-h3.dtsi b/arch/arm/boot/dts/sun8i-h3.dtsi
index e37c30e811d3..046a32540b73 100644
--- a/arch/arm/boot/dts/sun8i-h3.dtsi
+++ b/arch/arm/boot/dts/sun8i-h3.dtsi
@@ -153,6 +153,16 @@
 			allwinner,sram = <&ve_sram 1>;
 		};
 
+		crypto: crypto@1c15000 {
+			compatible = "allwinner,sun8i-h3-crypto";
+			reg = <0x01c15000 0x1000>;
+			interrupts = <GIC_SPI 94 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&ccu CLK_BUS_CE>, <&ccu CLK_CE>;
+			clock-names = "bus", "mod";
+			resets = <&ccu RST_BUS_CE>;
+			reset-names = "bus";
+		};
+
 		mali: gpu@1c40000 {
 			compatible = "allwinner,sun8i-h3-mali", "arm,mali-400";
 			reg = <0x01c40000 0x10000>;
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
