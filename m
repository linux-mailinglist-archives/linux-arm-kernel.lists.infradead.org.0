Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77DADD51E6
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 12 Oct 2019 20:51:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i1bWN+F15O8yYD9CVjQlqE9SNt0PMF99wklGbAsx7Ik=; b=riuswk65thO+V3
	gQrmxUdQb2Ph9AxsrvIZDgtOLa6DsQhs7Zt0tSIiVw+ch9aLht12S/4iquy/KoBt+ziUeH3paQXid
	+BC4fOES0dC7CYWH02tXy34x1KYFtIdBFGNyH2kPpUeUtUmgZeLkKeOZYcsVedL5s5kiiAETcIxzR
	yI//LKCJLXCe5cOsltmi9rD+AFTyc8OfKE7l11S2vqi9KBhDk9u/6tlrEioYJ5oZDJ+mx+ae/4Ve8
	8vDWv5R4dADTzTtoSuZTIQWOomxkTt1my6F8ph5L51lcdWGdvP0jPKXUbxdjAjh2hhLc/Ju3alync
	NL1OtNG+z5wXzNGvQkbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJMTO-0004JJ-Gu; Sat, 12 Oct 2019 18:50:38 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJMRs-00039H-VC
 for linux-arm-kernel@lists.infradead.org; Sat, 12 Oct 2019 18:49:06 +0000
Received: by mail-wr1-x441.google.com with SMTP id y18so5794885wrn.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 12 Oct 2019 11:49:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=1LcPRSweYpxW+Ru1oGSa20C29+Rhu7RNAj0ZxbDdCTI=;
 b=sG1wbLrhfCmPA9sMp4UCnejNy1F05pyeZ+FsGWDdu+dLe3xTQzlyObBhxWS1Yr89kR
 NfoN+YkwGRs/WWpBrJEcQP3KrXjd119hfJdpa0D6jz0O9trrzkUHyApu0h9Oxh/aYCdB
 QWDL9I+1JjZsUjNQhzsqoQCRNrxY/hqlS8RoWQ2moY0jYeiKcE6Uuum13hjbybI1ULDB
 1Jf5nFypsNrJvzdE9gRCEcyTs8NTqBY8mvrQ18opZlE3ZSKBjRmL9HshMrBQYiDTw6UB
 q7okSL84TMKnErWrjN/7QY4kKil59uvVn62vgdHrczXTEzDb6/DiwprY3vokbQWkquIo
 aEzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=1LcPRSweYpxW+Ru1oGSa20C29+Rhu7RNAj0ZxbDdCTI=;
 b=AJ37qSpBTeOkI7iBGHeF/723EBYqqrQl/OTihD+86FC1UkROuqzXthhsrgYh2hRdAF
 +xLwiE/KsB0pYZRllmwy1DnaZSdRgufRiG8srxy6iRLj//XG+WLSimocQH3bM1bGl3QH
 lyvprfFoQ02/F/1Am67cWjenYp0JijLXfyUWsS0K9Ak+G6J7XdwDlZLToZyd1X3EaRws
 aoaG0gK+e9o1vkBWF3rcJjOk/JUPBpFznvSh6Mjq9zJ8wk39owjhhHzo7+R6917HWDum
 iQC3VGNFwx0C27d76NpZuW030rEEtnHhXvrkJ/eao5eVCibv/nkTPybbtciX3hGd+7LV
 aBlw==
X-Gm-Message-State: APjAAAXfNlnFl/Vv1k0qirUTcoswye6JRwnYAlBy7XGuQxgxCUz6F8Tj
 8SSb7HqUWpZnxeQ1NwyX4t4=
X-Google-Smtp-Source: APXvYqwtrLKWcv3YDlXD+KaX9hjHoMmKua998ejNZOkPLNyFnaF5p1rq+zrAWNsTTVRXnoZpLuo4PA==
X-Received: by 2002:a5d:43c2:: with SMTP id v2mr13103667wrr.153.1570906143880; 
 Sat, 12 Oct 2019 11:49:03 -0700 (PDT)
Received: from Red.localdomain ([2a01:cb1d:147:7200:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id a13sm33670580wrf.73.2019.10.12.11.49.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 12 Oct 2019 11:49:03 -0700 (PDT)
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: catalin.marinas@arm.com, davem@davemloft.net, herbert@gondor.apana.org.au,
 linux@armlinux.org.uk, mark.rutland@arm.com, mripard@kernel.org,
 robh+dt@kernel.org, wens@csie.org, will@kernel.org
Subject: [PATCH v4 05/11] ARM: dts: sun8i: H3: Add Crypto Engine node
Date: Sat, 12 Oct 2019 20:48:46 +0200
Message-Id: <20191012184852.28329-6-clabbe.montjoie@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191012184852.28329-1-clabbe.montjoie@gmail.com>
References: <20191012184852.28329-1-clabbe.montjoie@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191012_114905_010343_24D30F0D 
X-CRM114-Status: GOOD (  10.80  )
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

This patch enables the Crypto Engine on the Allwinner H3 SoC Device-tree.

Signed-off-by: Corentin Labbe <clabbe.montjoie@gmail.com>
---
 arch/arm/boot/dts/sun8i-h3.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm/boot/dts/sun8i-h3.dtsi b/arch/arm/boot/dts/sun8i-h3.dtsi
index e37c30e811d3..78356db14fbb 100644
--- a/arch/arm/boot/dts/sun8i-h3.dtsi
+++ b/arch/arm/boot/dts/sun8i-h3.dtsi
@@ -153,6 +153,15 @@
 			allwinner,sram = <&ve_sram 1>;
 		};
 
+		crypto: crypto@1c15000 {
+			compatible = "allwinner,sun8i-h3-crypto";
+			reg = <0x01c15000 0x1000>;
+			interrupts = <GIC_SPI 94 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&ccu CLK_BUS_CE>, <&ccu CLK_CE>;
+			clock-names = "bus", "mod";
+			resets = <&ccu RST_BUS_CE>;
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
