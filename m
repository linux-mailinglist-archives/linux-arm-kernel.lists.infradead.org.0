Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9BFF4919F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 22:46:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=iaQJSu7NmV1NOe/6izGT4KqX2zWG47uihd+2K1bgzzc=; b=kYuEcNq4egA66X
	8cntYIHbIEFB9od6hyDucJC37ByJc8oVhiI14z4GSEnIZkQ4tZkHL0z3BNbnD2wgc2xStm9WVnk+e
	+Lf2hoDJijsKlzW5bUgYpKh71cpGH2WDMKE/hgql/62eRMyec8DER8ZdX/YdACoIvIpeTSPEkFJ/R
	AmcOZ/Hu8xnpTyMipm2WKj91NkhJVEYgwgcRzsUkh9Lu+vv7nqYTgBi5IAWUNqPXCZuJ9R71P6Pjf
	KJqsXlxJJ4fFfGJBuLB1ks8gkiHIVidr//V3MiD8rY40OMPtfXNcD63r/9lhvB8ZOPD2niSXss0Jm
	Ahm5nHj9lbY/yHoaDM1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcyWT-0006vo-Uz; Mon, 17 Jun 2019 20:46:37 +0000
Received: from mail-qk1-f193.google.com ([209.85.222.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcyWK-0006rr-8y
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 20:46:29 +0000
Received: by mail-qk1-f193.google.com with SMTP id l128so7125165qke.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 17 Jun 2019 13:46:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=GiyA82DDyFUCVpZ6pfq2uLrTXX3TvWsIIdVhQLD5cEw=;
 b=VmdGizwPXHTWVmwYGCaoDvmbicZlyMxFD4Q1y2IYPzNIP2OSbImUKRZRtuX4DYu1oL
 KYOQ3g7jby0a38unhHfiJ4taeO/cHeXZ7o/TYSs1AUbG3xjkgRe3IpMGiTMhCjj5crKy
 Er8bQ2oYpRb1yRTJCfEmKNfs/NnRyU9KC2gOKnXxvvCrPEjc7jD+LukAAg+znteVQKOC
 4Q9YdEqVdo9NUkD6UvI2ergVK1Da1EYwHiom9moY9j/mPg3TrsvWK2W0XgeWG7wumM6e
 iI0Eo11MvaVBFFY9GAbN7DFo/5Wn4RSHWz+rybbpoAzadEd3OALI9EjR/wVRP46hH5nt
 7YPA==
X-Gm-Message-State: APjAAAUlEO+vMfDpGrDrQGIc9GgztQKtpw04Lxt6PsvUg3yPjjpPexbD
 XU1ZjfQB4UUh6dTaP1Q/p+AtzIk=
X-Google-Smtp-Source: APXvYqyoXU8mBMLTPzc122V2PWEPrBeyXKzYMcHaCampaAHBCffdwJ3yttCNeHjs3buXED16lpvuJQ==
X-Received: by 2002:a37:87c5:: with SMTP id
 j188mr69134935qkd.106.1560804385727; 
 Mon, 17 Jun 2019 13:46:25 -0700 (PDT)
Received: from localhost.localdomain ([64.188.179.192])
 by smtp.googlemail.com with ESMTPSA id i48sm6124263qte.93.2019.06.17.13.46.24
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 17 Jun 2019 13:46:25 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: devicetree@vger.kernel.org
Subject: [PATCH] dt-bindings: arm: Move Emtrion i.MX6 board bindings to schema
Date: Mon, 17 Jun 2019 14:44:23 -0600
Message-Id: <20190617204423.2880-1-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_134628_315389_CF382F1D 
X-CRM114-Status: GOOD (  10.13  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.193 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.193 listed in list.dnswl.org]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Shawn Guo <shawnguo@kernel.org>, Jan Tuerk <jan.tuerk@emtrion.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Emtrion board bindings landed when the i.MX board/SoC bindings were
being converted to DT schema. Add them to the schema and remove the
separate file.

Cc: Jan Tuerk <jan.tuerk@emtrion.com>
Cc: Shawn Guo <shawnguo@kernel.org>
Signed-off-by: Rob Herring <robh@kernel.org>
---
 Documentation/devicetree/bindings/arm/emtrion.txt | 12 ------------
 Documentation/devicetree/bindings/arm/fsl.yaml    |  4 ++++
 2 files changed, 4 insertions(+), 12 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/arm/emtrion.txt

diff --git a/Documentation/devicetree/bindings/arm/emtrion.txt b/Documentation/devicetree/bindings/arm/emtrion.txt
deleted file mode 100644
index 83329aefc483..000000000000
--- a/Documentation/devicetree/bindings/arm/emtrion.txt
+++ /dev/null
@@ -1,12 +0,0 @@
-Emtrion Devicetree Bindings
-===========================
-
-emCON Series:
--------------
-
-Required root node properties
-	- compatible:
-	- "emtrion,emcon-mx6", "fsl,imx6q"; 		: emCON-MX6D or emCON-MX6Q SoM
-	- "emtrion,emcon-mx6-avari", "fsl,imx6q";	: emCON-MX6D or emCON-MX6Q SoM on Avari Base
-	- "emtrion,emcon-mx6", "fsl,imx6dl"; 		: emCON-MX6S or emCON-MX6DL SoM
-	- "emtrion,emcon-mx6-avari", "fsl,imx6dl";	: emCON-MX6S or emCON-MX6DL SoM on Avari Base
diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 407138ebc0d0..fbeb56345b35 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -80,6 +80,8 @@ properties:
       - description: i.MX6Q based Boards
         items:
           - enum:
+              - emtrion,emcon-mx6         # emCON-MX6D or emCON-MX6Q SoM
+              - emtrion,emcon-mx6-avari   # emCON-MX6D or emCON-MX6Q SoM on Avari Base
               - fsl,imx6q-arm2
               - fsl,imx6q-sabreauto
               - fsl,imx6q-sabrelite
@@ -99,6 +101,8 @@ properties:
         items:
           - enum:
               - eckelmann,imx6dl-ci4x10
+              - emtrion,emcon-mx6         # emCON-MX6S or emCON-MX6DL SoM
+              - emtrion,emcon-mx6-avari   # emCON-MX6S or emCON-MX6DL SoM on Avari Base
               - fsl,imx6dl-sabreauto      # i.MX6 DualLite/Solo SABRE Automotive Board
               - fsl,imx6dl-sabresd        # i.MX6 DualLite SABRE Smart Device Board
               - technologic,imx6dl-ts4900
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
