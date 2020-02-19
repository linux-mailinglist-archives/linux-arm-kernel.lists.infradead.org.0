Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 572EB164D6B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 19:11:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+qwPkQxWGX35h+xLOLuf50aZbqPYU3zy0KCp6IbWy3I=; b=ODdKurr0gIvkrQ
	NsOEB1c3wKSkkFm3gLeckELXvmbduMd5a6xd2t8Cuoupk8hrHxaj6MLVUMLpPoJao8HSlBHaW5e7A
	ke2hg5MBuGpOkJ9LYnH/z8fGg0gSGMxw2nWVuyJMjBL9PJ7fFI7GBKoFAG3wKoModMEYfVMxjhmYf
	uzIQsHvmWwusdMK6kueQ5o4ior1aR4mjH72ZkmFm0mT9cNiNTztkMGwHngd/Nk8/6h3vycoYj8Lyf
	TXYtxG3GXurqnl06lVL9nbvJh4pp+lVr4Tp5M7ct8hnaHguXFoebSc5C51Z1iRhkSiI7+1JcoL2OZ
	SR9h75jobPqI45KglEpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4Tok-0002H5-VX; Wed, 19 Feb 2020 18:11:26 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4TnQ-0000Fu-Qw
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 18:10:07 +0000
Received: by mail-lj1-x241.google.com with SMTP id w1so1360742ljh.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Feb 2020 10:10:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=4SdNyJxLKQOIopt47a2aKS0SgVzGo+LdVLFJnDNkr60=;
 b=ajPOejSF29nBVw6tbuq0GHQZOGRuvjPON14D3VaeaF1LH6vjeWwa6p0cWZgH6zesTO
 J1Ui38ijhxOoRdm3TfKDF4R7H0HmmLturnRvJa/QM09PzVlT2w1VMf00jpAGKNaPVMda
 I85l8KSzkxhJVo2F6blZ9iRu5HDzG9TpVxzSlDWUcSJJsNw115wPlajnlTjfu3T8/MB/
 um2nDZOxV7QVt9wg+SvolsJC9JibUC3jLBBcslW5qtJwHX3jUQMqxRwef/cxypmFvGGA
 pgEGAO5K85Kz4wINQicpr22O37S0uYBbibEPUUZ84Ss2H83dCNenjyM3p/98A/6tqqie
 LybQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=4SdNyJxLKQOIopt47a2aKS0SgVzGo+LdVLFJnDNkr60=;
 b=Wp4QmynTJ64c5N7BSe/S+E6zLrR32QMKbvMKEq9lTihmS7GrVdZ3IwaJA8MarCB3xa
 Vb4UL6nXx0r5IH8u20/VD6njdEc3tU1pAO4b2WO9pTtt1XmDRuSZ+uLK2V2JyRjdGG3m
 NUQeiCvOYxEkqkxkERRHKFmQAeXh5DtXlnFxODOD6aMFWnbU93+pxvWndOQAZvR5kYgC
 B8oMd50o44IZiTMxlYj4ig/QNsVrV7/pUoMmAwak2PQwwID4vDypeURK/cfx+zNnkMDE
 kTb3A5WoyQcaMHyUzWMdR+ERhXjattTfKSCPxSqTvT7/cQfGw1A6/4adgwZxDt/qNGUH
 FlpA==
X-Gm-Message-State: APjAAAWSeX91mAkkmdv+RZ8zNripsmwAtHH0ee+DzvMi/IZl/P7JNaHb
 jswRn6qM89AsdFReNc8K6OY=
X-Google-Smtp-Source: APXvYqz6P5Gs4MdtlOwx7++w+qdzCPpaUxoDvbr0krs2YjnjQqicU5hmCYwRTr1W7tVRPTxgCIWT0Q==
X-Received: by 2002:a2e:9a04:: with SMTP id o4mr16930038lji.214.1582135802940; 
 Wed, 19 Feb 2020 10:10:02 -0800 (PST)
Received: from localhost.localdomain ([5.20.204.163])
 by smtp.gmail.com with ESMTPSA id 14sm183942lfz.47.2020.02.19.10.10.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 19 Feb 2020 10:10:02 -0800 (PST)
From: Andrey Lebedev <andrey.lebedev@gmail.com>
To: mripard@kernel.org, wens@csie.org, airlied@linux.ie, daniel@ffwll.ch,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 4/5] dt-bindings: display: sun4i: New compatibles for A20 tcons
Date: Wed, 19 Feb 2020 20:08:57 +0200
Message-Id: <20200219180858.4806-5-andrey.lebedev@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200219180858.4806-1-andrey.lebedev@gmail.com>
References: <20200210195633.GA21832@kedthinkpad>
 <20200219180858.4806-1-andrey.lebedev@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_101004_943366_57A08710 
X-CRM114-Status: UNSURE (   9.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [andrey.lebedev[at]gmail.com]
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
Cc: Andrey Lebedev <andrey@lebedev.lt>, linux-sunxi@googlegroups.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Andrey Lebedev <andrey@lebedev.lt>

Document new compatibles used to differentiate between timing
controllers on A20 (sun7i)

Signed-off-by: Andrey Lebedev <andrey@lebedev.lt>
---
 .../bindings/display/allwinner,sun4i-a10-tcon.yaml          | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/allwinner,sun4i-a10-tcon.yaml b/Documentation/devicetree/bindings/display/allwinner,sun4i-a10-tcon.yaml
index 86ad617d2327..c0f6bb16fa34 100644
--- a/Documentation/devicetree/bindings/display/allwinner,sun4i-a10-tcon.yaml
+++ b/Documentation/devicetree/bindings/display/allwinner,sun4i-a10-tcon.yaml
@@ -46,6 +46,12 @@ properties:
           - allwinner,sun50i-h6-tcon-tv
         - const: allwinner,sun8i-a83t-tcon-tv
 
+      - items:
+        - enum:
+          - allwinner,sun7i-a20-tcon0
+          - allwinner,sun7i-a20-tcon1
+        - const: allwinner,sun7i-a20-tcon
+
   reg:
     maxItems: 1
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
