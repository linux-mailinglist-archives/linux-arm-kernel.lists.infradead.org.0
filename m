Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13D361F37DF
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 12:20:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Dr9E859O6loCFKjo+RsFBVTKf/JCvnatK4s2nF37Kpw=; b=Lx6+W8xo1pHeT3vZveQQ89abtC
	VnAJCgfDFVvOf6NqudvR8W298P2VeZ8E/WSrZbtZOXUCuY7lh9qjwyk9BnGIPdBuAR2drrYK/J0Yr
	YAXsyM4dVaXRdCenE/nkNnwEsi2f63pG6Sv3k0zI4KwuAgwncokE3CT8rHqHbYlvjV3e5LZjsUdso
	ZM1KXSw9iveaKKgjSclszW3xhB4th9LmminRyWp+Lxq2I12qw9a66MrobKolYJzCT5EY/W+POqchU
	njE4wNxMXEgwrGiqBhTK8T/GzPVn9asJYwG3VySTXmmKSnCmquh/u/YsOFrv+fPjHMjQz8i8mYpqs
	t8dxeJFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jibMb-00079Q-Bf; Tue, 09 Jun 2020 10:20:13 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jibKe-0005Wb-P7; Tue, 09 Jun 2020 10:18:24 +0000
Received: by mail-pf1-x441.google.com with SMTP id b201so9894096pfb.0;
 Tue, 09 Jun 2020 03:18:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=qaHu+lOS4HqMUllo0B6KB/Pk6c1pWihOMSjOnZMBY2o=;
 b=l9BnxJDWnTVW0ldCRykjgn3+ZK5jr2hKHSQC3wuOOOq641E3KtzhoKiKXH4DNa/Mdq
 tir9iHBpkf/GSIa2iVepQFFm/DAG+CPrBLr2vzJe0bpg7DnK5tUFzxu9uw1UfJT1/WH2
 v7hNmIGPHl7JNNaUXEzDaCWVBhNf6VtcLcus4u+UjQpVChbzcsPRMOuvShN5YiO1/Vuk
 eqBRwwvofY2VKAQ68vBFo8Jg+8prA6kzpXMfFC9yCc2vM/Z5+rXWSHgJF2LTFlDlWayl
 dYgKRrz8Mn3V2e3g1RVnHBMX0IfsVFcajWbJOiWuG8evaEvOgni4Q6K1p44ggSqpvg52
 DgJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=qaHu+lOS4HqMUllo0B6KB/Pk6c1pWihOMSjOnZMBY2o=;
 b=a6mVlSYgs37YYz+bu9hrDhQrBUBCjt3o25d10lCkiESXsKsaOSUR8r5HhJXCeo9rbM
 wb4OepUBmxJ/eQ7OK++lZSDqIxZB7HX4UHt0eU05uSd+bWzVIzgT/VNDqDg6cm4F5ldk
 qeFYwY+yS/tFAmVAaCbM+dkBx1+cp9DESq/rzJTnOLtK07VlexARtNxSEmfIrGby7cFp
 tPOURHYR7lmnw6j3jstnAx7CIHH7F3Cry5JlT65gXFqqnyntMO7jMifcXHNme3UrLfqT
 aPetJgzCyoiPTHFMDdtvGjlWkMEnFE6W68+cgCzT2Be2c5z7Tp5KxXorvcP7z6eQxp2h
 Zqtg==
X-Gm-Message-State: AOAM530F9oFhQqLZtO7SFpFY0nbNRnO8eI/qqZ4kr94iIwKyCoM7gO/p
 GzwUkmAaV6dR/BTlAaxvIu4=
X-Google-Smtp-Source: ABdhPJx27IQ3ZXDqGg5+M5DgRVC4TvnofbEo9tRZjpSBxaauw9aXPaH3TmIiJOC6henWCBEiB/LNdg==
X-Received: by 2002:a63:f804:: with SMTP id n4mr9504183pgh.302.1591697891572; 
 Tue, 09 Jun 2020 03:18:11 -0700 (PDT)
Received: from localhost.localdomain ([223.190.87.90])
 by smtp.gmail.com with ESMTPSA id d189sm9637253pfc.51.2020.06.09.03.18.07
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 09 Jun 2020 03:18:10 -0700 (PDT)
From: Amit Singh Tomar <amittomer25@gmail.com>
To: andre.przywara@arm.com, afaerber@suse.de, manivannan.sadhasivam@linaro.org,
 robh+dt@kernel.org
Subject: [PATCH v4 08/10] dt-bindings: mmc: owl: add compatible string actions,
 s700-mmc
Date: Tue,  9 Jun 2020 15:47:08 +0530
Message-Id: <1591697830-16311-9-git-send-email-amittomer25@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1591697830-16311-1-git-send-email-amittomer25@gmail.com>
References: <1591697830-16311-1-git-send-email-amittomer25@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_031812_869925_49EE5BB6 
X-CRM114-Status: GOOD (  10.30  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [amittomer25[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [amittomer25[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, linux-actions@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 cristian.ciocaltea@gmail.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The commit adds a new SoC specific compatible string "actions,s700-mmc"
in combination with more generic string "actions,owl-mmc".

Placement order of these strings should abide by the principle of
"from most specific to most general".

Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Amit Singh Tomar <amittomer25@gmail.com>
---
Changes since v3:
        * No change.
Changes since v2:
        * Added Rob's Reviewed-by tag

* Newly added patch in v2.
---
 Documentation/devicetree/bindings/mmc/owl-mmc.yaml | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/mmc/owl-mmc.yaml b/Documentation/devicetree/bindings/mmc/owl-mmc.yaml
index 1380501fb8f0..5eab25ccf7ae 100644
--- a/Documentation/devicetree/bindings/mmc/owl-mmc.yaml
+++ b/Documentation/devicetree/bindings/mmc/owl-mmc.yaml
@@ -14,7 +14,11 @@ maintainers:
 
 properties:
   compatible:
-    const: actions,owl-mmc
+    oneOf:
+      - const: actions,owl-mmc
+      - items:
+          - const: actions,s700-mmc
+          - const: actions,owl-mmc
 
   reg:
     maxItems: 1
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
