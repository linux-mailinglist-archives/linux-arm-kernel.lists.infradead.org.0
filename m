Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EE7911F945
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 15 Dec 2019 17:59:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zFCXHzwIXK/MQ4laveAUAeKz3Xr07Wox9Cd0v5DMJtk=; b=unKs4RSath7tm1
	PB7eCXEMEqiKapdEw8KxFoJ3XzStbqvHSWF2ncQrlctxystKhjIX4CpatH0KQvx3A3w3dlU+Acz8J
	a6G6aGxfI/MCEG1+yLXsEHWaZheuzkf1qWkujvK74OO0YDRhStVDJIUVYsswZoNE+W/m9ih/D4qxt
	LV2UpBIeOvZpvKSqfvqCQjGdQJOSAQmgZ1eogKVFUxt/DHyz6EberJWZGd+UnP36/oOzYGFh9x53k
	+ZC1IWYcmlkWyzRe+i9QP7t/pmkrje6T8w/MW14bn/qlPsYTzCXaTp0jpwQ4oWh9akFQul20KU7lK
	+dbOMoEbhCpiU/bUFBog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igXFC-0005mg-MJ; Sun, 15 Dec 2019 16:59:46 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igXF0-0005kM-7z
 for linux-arm-kernel@lists.infradead.org; Sun, 15 Dec 2019 16:59:35 +0000
Received: from wens.tw (mirror2.csie.ntu.edu.tw [140.112.30.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7379A2465B;
 Sun, 15 Dec 2019 16:59:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576429169;
 bh=NPSuZ6u/sK4SlEDJ0oH9si5g4gTkgubMSRdexHBwM4g=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=qIXQlg9wbdGZXjiEkHcQk33NuX/6vZv5AznWEx+QQaKc0cPCRXyWcreLkSlIvrxj+
 6sd709V2okmUuC+zbJ2fGCmk1U8u45MT+uN24eVRFEdfkuV9YqEW7p6hoMhjCep0J1
 fgu9XM1jTDew+Zn1w/QZC4zNpROJWYtxrWrz5pSQ=
Received: by wens.tw (Postfix, from userid 1000)
 id 1BB865F9B4; Mon, 16 Dec 2019 00:59:26 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Maxime Ripard <mripard@kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH 01/14] dt-bindings: media: sun4i-csi: Add compatible for CSI1
 on A10/A20
Date: Mon, 16 Dec 2019 00:59:11 +0800
Message-Id: <20191215165924.28314-2-wens@kernel.org>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191215165924.28314-1-wens@kernel.org>
References: <20191215165924.28314-1-wens@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191215_085934_319526_8C8219F5 
X-CRM114-Status: GOOD (  11.24  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Chen-Yu Tsai <wens@csie.org>, Chen-Yu Tsai <wens@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Chen-Yu Tsai <wens@csie.org>

The CSI1 block has the same structure and layout as the CSI0 block.
Differences include:

  - Only one channel in BT.656 instead of four in CSI0
  - 10-bit raw data input vs 8-bit in CSI0
  - 24-bit RGB888/YUV444 input vs 16-bit RGB565/YUV422 in CSI0
  - No ISP hardware

The hardware found in the A20 is the same as in the A10.

Signed-off-by: Chen-Yu Tsai <wens@csie.org>
---
 .../bindings/media/allwinner,sun4i-a10-csi.yaml       | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/media/allwinner,sun4i-a10-csi.yaml b/Documentation/devicetree/bindings/media/allwinner,sun4i-a10-csi.yaml
index d3e423fcb6c2..221fe630c7d5 100644
--- a/Documentation/devicetree/bindings/media/allwinner,sun4i-a10-csi.yaml
+++ b/Documentation/devicetree/bindings/media/allwinner,sun4i-a10-csi.yaml
@@ -16,7 +16,12 @@ description: |-
 
 properties:
   compatible:
-    const: allwinner,sun7i-a20-csi0
+    oneOf:
+      - const: allwinner,sun4i-a10-csi1
+      - const: allwinner,sun7i-a20-csi0
+      - items:
+        - const: allwinner,sun7i-a20-csi1
+        - const: allwinner,sun4i-a10-csi1
 
   reg:
     maxItems: 1
@@ -25,12 +30,16 @@ properties:
     maxItems: 1
 
   clocks:
+    minItems: 2
+    maxItems: 3
     items:
       - description: The CSI interface clock
       - description: The CSI ISP clock
       - description: The CSI DRAM clock
 
   clock-names:
+    minItems: 2
+    maxItems: 3
     items:
       - const: bus
       - const: isp
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
