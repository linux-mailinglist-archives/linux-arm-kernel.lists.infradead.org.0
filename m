Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D50AD8900
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 09:09:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fwyZEYPGQm0fOo5bG8wogp72utzI4YvVud7LOxAOmnc=; b=CzQhKsyZGjHbgT
	9JGlS3egAbBR7fRttepEeBQtCDz57WvPAm1FngKqIGVSN7aS89oC6yD3UidZGSAA1SDvJwQvZ2Uls
	/HjsUr0RvElQWUXxKcE1DMx+h2I1E8Q5ZVi4Biy2UQQMdKzLiY8c4bW+8ejgtdV3fiVSl6rj6KyAJ
	lEsaeq2sp0HUz4fsxYQBBrXCK/dNstwCJSFYA8iBu1OmkuXDPZyuUDnyADkjmXMxHPiDdcZdycpyr
	nGvS4wdRs/KZ3VC98Yrm/yCrNjrw2O9KsFlf5S/IAmfCNBVK9pcnfwX5lOWAUO2RV5P2yOhCIYH8Q
	g72gBJBx8oU5tymX6ueQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKdQs-00014D-7m; Wed, 16 Oct 2019 07:09:18 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKdPU-0008PW-Op
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 07:07:54 +0000
Received: by mail-lf1-x144.google.com with SMTP id q12so16486363lfc.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 16 Oct 2019 00:07:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=C5W4rfltqSQyC6633naN9KjlUdmam1uxpZxtzibKLXI=;
 b=kJgCFEaSbYOV78577b0Ifo8DUmHrNrAiSODv6VkpiQ4SsErZ0fDKXWgP+lG+SP68U1
 g2+OJWELlDAWIyzUEeuYCzDkjAIq9q3NuZlY4+DKZHtzZyJpUo1TEJQ5Fze/xCow80pj
 ddwFOQnF3LNlQLSb4GW3fvmmKlH+76ebwhYkbd6muLw/S8pnBs6XTXIiqSZvknfgaFlO
 XmbwblaP0FEOXpl45+rSovSa7Yo7izxRSGTPovF4k2LamxPDIM3EfkqVC3khx+6jqAmm
 PUqxpOc+Ite7T0fqQ9TebPT4SlyZiFo/05lf4kx4j9LSGnOoyFywilVOlGmmTRZOXDuq
 XkqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=C5W4rfltqSQyC6633naN9KjlUdmam1uxpZxtzibKLXI=;
 b=TuB98mSUz14kZ6LUwdTWnE4f1dAGWD5cqbSE+3WDoEIDB5pKau2DZPtfhUxgcG5vAh
 5TSYBvTaDDSbE7K5vfRlxph5Nn/iST+h3rkpsrjZrSGE7qzvlUDPBaNiIT0NzBTG4gWd
 dYj4ONZMdA/Pu4Hw505yQb1aMkbjXqSAQiqT59zA738oVmovcHsXpRlGLXmCGr3biTtN
 TRbysX9lbM2/ar/QxmnVcbU+53vlSaQuVG2R6bxipem2Dk2BSMOIT9cyFNKyYaWxJoKh
 TB1Jesz8Q9ho21vxg8jqSpWsOHQzV609QadrUPy815e+Ssqwu++d0LdRr6cDZKLd8OLo
 8rYw==
X-Gm-Message-State: APjAAAWdAUwHet9zCEJq8aZcOLXvR6TTSsbz0FWsIw3R52lZW8lFeVTg
 89B6WBWEimebFQCnNHifufY=
X-Google-Smtp-Source: APXvYqx587pbMaOeJksPCwQe5cRGVDrtU25sgCJnYB02iQnvoCaKcxZz7a5nKyeK3Eyk3aql8YmWLw==
X-Received: by 2002:ac2:59d0:: with SMTP id x16mr23951110lfn.16.1571209670659; 
 Wed, 16 Oct 2019 00:07:50 -0700 (PDT)
Received: from localhost.localdomain (c213-102-65-51.bredband.comhem.se.
 [213.102.65.51])
 by smtp.gmail.com with ESMTPSA id j191sm1361493lfj.49.2019.10.16.00.07.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Oct 2019 00:07:49 -0700 (PDT)
From: codekipper@gmail.com
To: mripard@kernel.org,
	wens@csie.org,
	linux-sunxi@googlegroups.com
Subject: [PATCH v6 6/7] dt-bindings: ASoC: sun4i-i2s: Add H6 compatible
Date: Wed, 16 Oct 2019 09:07:39 +0200
Message-Id: <20191016070740.121435-7-codekipper@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191016070740.121435-1-codekipper@gmail.com>
References: <20191016070740.121435-1-codekipper@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_000752_863508_6A9C9A12 
X-CRM114-Status: UNSURE (   9.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (codekipper[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Jernej Skrabec <jernej.skrabec@siol.net>, alsa-devel@alsa-project.org,
 Marcus Cooper <codekipper@gmail.com>, lgirdwood@gmail.com,
 linux-kernel@vger.kernel.org, be17068@iperbole.bo.it, broonie@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Jernej Skrabec <jernej.skrabec@siol.net>

H6 I2S is very similar to H3, except that it supports up to 16 channels
and thus few registers have fields on different position.

Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
Signed-off-by: Marcus Cooper <codekipper@gmail.com>
---
 .../devicetree/bindings/sound/allwinner,sun4i-a10-i2s.yaml      | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/allwinner,sun4i-a10-i2s.yaml b/Documentation/devicetree/bindings/sound/allwinner,sun4i-a10-i2s.yaml
index eb3992138eec..6928d0a1dcc8 100644
--- a/Documentation/devicetree/bindings/sound/allwinner,sun4i-a10-i2s.yaml
+++ b/Documentation/devicetree/bindings/sound/allwinner,sun4i-a10-i2s.yaml
@@ -24,6 +24,7 @@ properties:
       - items:
           - const: allwinner,sun50i-a64-i2s
           - const: allwinner,sun8i-h3-i2s
+      - const: allwinner,sun50i-h6-i2s
 
   reg:
     maxItems: 1
@@ -59,6 +60,7 @@ allOf:
               - allwinner,sun8i-a83t-i2s
               - allwinner,sun8i-h3-i2s
               - allwinner,sun50i-a64-codec-i2s
+              - allwinner,sun50i-h6-i2s
 
     then:
       required:
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
