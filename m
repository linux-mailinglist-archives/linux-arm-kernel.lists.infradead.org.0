Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65BE64955E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 00:45:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xLtlLXgGm7Pg/dbI8nLhIvVyMz3v5przQfxhBEssdoY=; b=NF+iXI6tOykXeJ
	OSMJkrdp355Wj7tkPmMX3QAtXcBg0sLOGg5KZyRR/yhWHXrS1lzs86e4DzKxRXI4/4DMJMULSY+0n
	zUuIM3EyBugVq9IlgbIqXZGWxCt9E6wAbepdwPBpBAjEnaC5LSFK0EUNDDNWVCF80wxfKTtWwO8HX
	N0ya2aItUC5Q+99eyk780Fb1VWuDjAs9mnITl5aMERIyX4RgEuySbRUR7kHy8aDzaCPvETuBDrFi2
	tsmuUOa7YewadNZLRUrhtgVwQwlRpYruQkWPal+Zp9FQQFqNuQt3Gv1iG8dWZjaxLS0J/Ro8I3CSE
	3YTf8tfygM6WVJw6WrXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hd0Mz-000157-QY; Mon, 17 Jun 2019 22:44:57 +0000
Received: from mail-qt1-f195.google.com ([209.85.160.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hd0Mp-0000iw-IU
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 22:44:48 +0000
Received: by mail-qt1-f195.google.com with SMTP id i34so7626710qta.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 17 Jun 2019 15:44:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=nRzVa7Rxo9onTKHWMxR+EUp51dFEj/RYKU1N172ZZjo=;
 b=t7oZ8HJtvvACYXU5HgMRD21gGRKk4YKkLdke+SlSDwbHUOoXytR3SXnMj0v8E9o9vN
 KdSLyN0u1jF/FBk3cTpcG6CNvnzXIXuP2BWeZx4PONkjWQRLE7taJbrQFpoIzr26BLQF
 Kji/9fCt3IcBDP8Zr9cKAwOdfyskq2Biyse6/nxQdGXSpbGHEgXZ6otsY+JJ4pXLfjy4
 BF1YKRcfIVuKeat6bHF8th+gpiAAjlBzjhVX2ogfu3iTysmNSbEfwfcj5Qg3t2xI3YdV
 eT/avDcL9u//Bpx/58O73OzaKaGSCZU4DIe9ve/PQFxsaLapF3wnx568mFo1qaGoYGfN
 7XNg==
X-Gm-Message-State: APjAAAUJE+Umg1lofss8rmZuDSbJPdo0rAdxjrGTuxeLGXJo81u7rDPe
 28K2ii//N1OHSgo5soyTQw==
X-Google-Smtp-Source: APXvYqxk9Ah0pN0gqCu9ZbrDP8GPrr0L2THz+8oXUrhYY4sP046DpeyOnUUu/eGLvJ3bNY6+2E0rhQ==
X-Received: by 2002:a0c:d237:: with SMTP id m52mr23039036qvh.160.1560811486439; 
 Mon, 17 Jun 2019 15:44:46 -0700 (PDT)
Received: from localhost.localdomain ([64.188.179.192])
 by smtp.googlemail.com with ESMTPSA id y42sm9918935qtc.66.2019.06.17.15.44.45
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 17 Jun 2019 15:44:46 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: devicetree@vger.kernel.org
Subject: [PATCH] dt-bindings: arm: fsl: Add missing schemas for i.MX1/31/35
Date: Mon, 17 Jun 2019 16:42:44 -0600
Message-Id: <20190617224244.30818-1-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_154447_621463_5CEB5194 
X-CRM114-Status: UNSURE (   8.14  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.195 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Shawn Guo <shawnguo@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The SoC/board bindings for i.MX1/31/35 are undocumented. Add the missing
bindings to the schema.

Cc: Shawn Guo <shawnguo@kernel.org>
Signed-off-by: Rob Herring <robh@kernel.org>
---
 .../devicetree/bindings/arm/fsl.yaml          | 26 +++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 0a6b4eba2bb2..e73cc11acdfb 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -15,6 +15,13 @@ properties:
     const: '/'
   compatible:
     oneOf:
+      - description: i.MX1 based Boards
+        items:
+          - enum:
+              - armadeus,imx1-apf9328
+              - fsl,imx1ads
+          - const: fsl,imx1
+
       - description: i.MX23 based Boards
         items:
           - enum:
@@ -51,6 +58,25 @@ properties:
           - const: i2se,duckbill-2
           - const: fsl,imx28
 
+      - description: i.MX31 based Boards
+        items:
+          - enum:
+              - buglabs,imx31-bug
+              - logicpd,imx31-lite
+          - const: fsl,imx31
+
+      - description: i.MX35 based Boards
+        items:
+          - enum:
+              - fsl,imx35-pdk
+          - const: fsl,imx35
+
+      - description: i.MX35 Eukrea CPUIMX35 Board
+        items:
+          - const: eukrea,mbimxsd35-baseboard
+          - const: eukrea,cpuimx35
+          - const: fsl,imx35
+
       - description: i.MX50 based Boards
         items:
           - enum:
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
