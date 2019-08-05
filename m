Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2F3F81A2A
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 15:02:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ykq1ewY7x3kBn6sC6OMW3q6wgl8/ndQ/f8efqIfcpsw=; b=EA97Jo94IffZ5c
	fm/BZhewMd5yWT/1viAeLE5rB1uAWUyrxyf62x79YZyqx2JZpgR6Cof7BBxa0Y2cVscx2Y6de4EsX
	FkNGAEql32f8bfebL49kC5vMFUMsgAF7MzVoYUFg9gM9zR1pzscH9mrrKdbq5QfL7MzWRp0REFTAK
	2/xjsfvseQB6NZLh4G6/H2YsES1yIC6KrVe7kkGB57O6V21R3kJJSyGjiOc3B7QSkUgDu4BYmE0Me
	yC2gALHOJjWUuoAh7nq5G1F1HJKIFjLfqUbtDsFzd4Zonq4QuMfSrt0nQXfaF8re4fZS+UjT3qm/8
	RchhuAuZnGAey03FlYHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hucdF-0006Io-9h; Mon, 05 Aug 2019 13:02:33 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hucd3-0006IG-Ob
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 13:02:23 +0000
Received: by mail-wm1-x344.google.com with SMTP id s3so74638486wms.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 05 Aug 2019 06:02:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=VD+kO2freT4druqcnh49hR6u8OkuGawcql9pBt221gM=;
 b=mjk8vH9McUPXmutExi9LK5ex7zl16u6Y1A29MLJPWpdqRchOSAGR8yhmK2fOTAo0rR
 0sDiFCY/K4jh+admqvlB/o99ab6xeNCWhc+kpHUH51vRLHk1iEDDajMTVrPVdzhGXOez
 b+MOpvwyHe3E8z4ck7Lc0JsxTJblE1HTqoVBH2bnCZr3MsUkmySVvX+rpBLWbpbktUmu
 hP/XHt8UiQrWbTdDNDhsijdtesI8b0m8A9EZshbEb+4cGVeTBIWdn2VjubV1sCDeTZXR
 sMr8q3TOfj4wjtw/b/DQ2XLzpqs0aaxo9LDtJ1wfglDOLg/WFdPVPnB9ccDGeJ8Az1yz
 MGtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=VD+kO2freT4druqcnh49hR6u8OkuGawcql9pBt221gM=;
 b=H53DuaD5dAuDz+kdB4zc726WPqBbQH9m6EZLwFd9cM0qdj3NqFer9nhme2jOPadT2B
 9Q8lco5tzkraSnp4PQ2dS4hQ3bgf7u3ZDYc7Fx1Ht+oHhgXjhpY29a4VGtbD7mapbyGP
 kWW5H+ls/cGx39iMl5eQTu7swosA3+Pojd9W9p/46JKkSf806sApkuzJr6IlnyPum8EO
 nYL0YdlAAgxPNG+LaKIMGYD3VXQXwl01Qm3jxqWobViFvjvDKbpZODalPR8hjazqSNs3
 xt0Wp8x5VCiW4wum8AWCo+GRSTLWIWH0ZnPtIs0zxoCKekLPJE+tihJYKwi/l9kBc9wD
 hikA==
X-Gm-Message-State: APjAAAVeLhY38n1dvwAxk8u+Rm889qNfk2P484uf/pToROTvBACxp4NF
 Kg403ksfKq92OGAHgRxrlwb/FQ==
X-Google-Smtp-Source: APXvYqwxgFax/fM7iqjP2wFpKMs36pqx4aCRyV/P5qvPCozjg2IOFjiFHWnYt60j8Qx7Ktjguvx6VQ==
X-Received: by 2002:a1c:4e14:: with SMTP id g20mr18419431wmh.3.1565010140443; 
 Mon, 05 Aug 2019 06:02:20 -0700 (PDT)
Received: from radium.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id v23sm74950359wmj.32.2019.08.05.06.02.19
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 05 Aug 2019 06:02:19 -0700 (PDT)
From: Fabien Parent <fparent@baylibre.com>
To: robh+dt@kernel.org,
	matthias.bgg@gmail.com
Subject: [PATCH] dt-bindings: rng: mtk-rng: Add documentation for MT8516
Date: Mon,  5 Aug 2019 15:02:15 +0200
Message-Id: <20190805130215.20499-1-fparent@baylibre.com>
X-Mailer: git-send-email 2.23.0.rc1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_060221_801479_6F0B5167 
X-CRM114-Status: UNSURE (   9.19  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Fabien Parent <fparent@baylibre.com>, linux-mediatek@lists.infradead.org,
 linux-crypto@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This commit adds the device-tree documentation for the RNG IP on the
MediaTek MT8516 SoC.

Signed-off-by: Fabien Parent <fparent@baylibre.com>
---
 Documentation/devicetree/bindings/rng/mtk-rng.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/rng/mtk-rng.txt b/Documentation/devicetree/bindings/rng/mtk-rng.txt
index 2bc89f133701..dfdcb5cd2ea8 100644
--- a/Documentation/devicetree/bindings/rng/mtk-rng.txt
+++ b/Documentation/devicetree/bindings/rng/mtk-rng.txt
@@ -6,6 +6,7 @@ Required properties:
 			"mediatek,mt7622-rng", 	"mediatek,mt7623-rng" : for MT7622
 			"mediatek,mt7629-rng",  "mediatek,mt7623-rng" : for MT7629
 			"mediatek,mt7623-rng" : for MT7623
+			"mediatek,mt8516-rng", "mediatek,mt7623-rng" : for MT8516
 - clocks	    : list of clock specifiers, corresponding to
 		      entries in clock-names property;
 - clock-names	    : Should contain "rng" entries;
-- 
2.23.0.rc1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
