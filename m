Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BC09F1803
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 15:10:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/URSxDsVsb+GoQjhOAxxwF6vuQumxPQF0Hg9AHMHA00=; b=geWPVUB1sBwqD3
	nLj4ZuxO+EZcJSfGHRASnfS1zyujZYYFk/jqSlwsXdWVQ1Sksz8qFhyYpHct1+FODH91DeDGZY/W1
	MezVAUcpbog8zLv/6z3eBMxvX4gYC31o/6q6YYpmKF/j4mwLxve61pimbrR8caRzJXCtfg5Woafx1
	sRBGwlc7wQ86g/tLOpi3zYODSOIcvy31b82aL71iF94npmUjQdGRLiqEhiD/HPdYd97cp7lvTtE4b
	Quvk6/vUC5IKbgsOP3hULGp7qRAY3LLOktbUbYssq6NGA+TVd4bXDz8450Vf8ab7uN+lrkK8O63BT
	hUwnRhXUEI7p6h52f29g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSM0l-0006A0-VZ; Wed, 06 Nov 2019 14:10:15 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSLzZ-0005CA-Tj; Wed, 06 Nov 2019 14:09:03 +0000
Received: by mail-pl1-x643.google.com with SMTP id ay6so4484974plb.0;
 Wed, 06 Nov 2019 06:09:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=FtX1kXBG3vvdaUl4wOoaBRuLdri0yIVtwLf8lR4UWWQ=;
 b=iJJItz+vffO9tQoSQOlwaE50RW26dK4JczW15WHT5J+2/9N3eVa0f9yHMEICb8juR8
 IQ1Ai2MbmbLKBLUaeX2m5RG3VZuJQIpfXA8Q4FeAQ2w63BlC/d1f9BndQbxAsSXm8GeD
 VslHcXTxq91LT4jpeidzeOFR6Qb4ALGFfS+qf50qDzeOWFpiHD60S5AfCp9ATxMzuUcM
 xJIc+vQdYCUHMR9u61Gxt3iIJdupU81bv58oXJ0MQOKX9nLBsdJBL9kE6DmTL762yOFi
 N4FvQkQopxK1HKJjHEWAlOCRIxbQG8ZHk7qRNr6FhpWZTF9P5pojX8jwU0P1uUl1URzv
 PoyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=FtX1kXBG3vvdaUl4wOoaBRuLdri0yIVtwLf8lR4UWWQ=;
 b=cwbfI3Rf+Iz+dNr9QucBS5J8K0oVv9dPVuxoNhBh55emMPJq3/oz+TsBTSLgBRB09f
 zwkFCYcPSzG4fxNa/4dao/YEvBv37hvC6PDndidIUz/XfFLSo+Ei1A+e62df8NMjDVKw
 R8Tvk1nxlJZn1zqe2Z79lzASbehjE0k9KCndAZuc5IxtOOHEXlOXQWfes7w+wrbDyA8A
 44gTSrLB6H2QT3RJ5nmOyP69i26PRYADQ439zN2zEnInKaYcP1zUdBpXKiDCrPFDHm/P
 ghq+I1Jq8jvzzMYgAyVoHXI/IqLNnAVu667eYsyJ9ikmZ9fVbh4KFglb/lbzu9s1oo5L
 lFMg==
X-Gm-Message-State: APjAAAW4zB4EFxX4+YD8dM7TXqAwBkBTlBpms5po7fVPtEL8XoYZqYWg
 tSGmwA64i8iw1Mrzj3qgo7/WRHesdc4=
X-Google-Smtp-Source: APXvYqygts/mak04562X0fgK/vvLZTbkPeSMoZr9mr+mopxFlmJTH31rJNGA97HB0NcP4AgDJFT0HQ==
X-Received: by 2002:a17:902:8348:: with SMTP id
 z8mr2924804pln.130.1573049339919; 
 Wed, 06 Nov 2019 06:08:59 -0800 (PST)
Received: from localhost.localdomain ([2001:19f0:7001:2668:5400:1ff:fe62:2bbd])
 by smtp.gmail.com with ESMTPSA id a16sm4707345pfc.56.2019.11.06.06.08.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 06 Nov 2019 06:08:59 -0800 (PST)
From: Chuanhong Guo <gch981213@gmail.com>
To: linux-mtd@lists.infradead.org
Subject: [PATCH 2/2] dt-bindings: mtd: mtk-quadspi: update bindings for mmap
 flash read
Date: Wed,  6 Nov 2019 22:07:48 +0800
Message-Id: <20191106140748.13100-3-gch981213@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191106140748.13100-1-gch981213@gmail.com>
References: <20191106140748.13100-1-gch981213@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_060902_072736_3A469852 
X-CRM114-Status: GOOD (  14.63  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (gch981213[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (gch981213[at]gmail.com)
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <tudor.ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>, linux-kernel@vger.kernel.org,
 Chuanhong Guo <gch981213@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Miquel Raynal <miquel.raynal@bootlin.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

update register descriptions and add an example binding using it.

Signed-off-by: Chuanhong Guo <gch981213@gmail.com>
---
 .../devicetree/bindings/mtd/mtk-quadspi.txt   | 21 ++++++++++++++++++-
 1 file changed, 20 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/mtd/mtk-quadspi.txt b/Documentation/devicetree/bindings/mtd/mtk-quadspi.txt
index a12e3b5c495d..4860f6e96f5a 100644
--- a/Documentation/devicetree/bindings/mtd/mtk-quadspi.txt
+++ b/Documentation/devicetree/bindings/mtd/mtk-quadspi.txt
@@ -12,7 +12,10 @@ Required properties:
 		  "mediatek,mt7623-nor", "mediatek,mt8173-nor"
 		  "mediatek,mt7629-nor", "mediatek,mt8173-nor"
 		  "mediatek,mt8173-nor"
-- reg: 		  physical base address and length of the controller's register
+- reg: 		  Contains one or two entries, each of which is a tuple consisting of a
+		  physical address and length. The first entry is the address and length
+		  of the controller register set. The optional second entry is the address
+		  and length of the area where the nor flash is mapped to.
 - clocks: 	  the phandle of the clocks needed by the nor controller
 - clock-names: 	  the names of the clocks
 		  the clocks should be named "spi" and "sf". "spi" is used for spi bus,
@@ -48,3 +51,19 @@ nor_flash: spi@1100d000 {
 	};
 };
 
+nor_flash: spi@11014000 {
+	compatible = "mediatek,mt7629-nor",
+		     "mediatek,mt8173-nor";
+	reg = <0x11014000 0xe0>,
+	      <0x30000000 0x10000000>;
+	clocks = <&pericfg CLK_PERI_FLASH_PD>,
+		 <&topckgen CLK_TOP_FLASH_SEL>;
+	clock-names = "spi", "sf";
+	#address-cells = <1>;
+	#size-cells = <0>;
+
+	flash@0 {
+		compatible = "jedec,spi-nor";
+		reg = <0>;
+	};
+};
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
