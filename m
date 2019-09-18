Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65005B62A3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 14:01:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=cXcqY6uSnrTR9rlNzwBHRw+Hv3q0p6JnANcmwgXf5bk=; b=hle
	X2agGwlvEoILUaFQ61c2xzWfUcJquxqQAPV2nen4sAobmOX3q1LNEkwK0NgmrY+6nmbV5Mj8STy2X
	AmhdgOoffXXHsrH/zc8LXDfksHT+0wmXd5eTVmRG/Fsf8z9fKbcOLZt9PzyL+aJ6RHi6WF2CNyJ/C
	ssuOCXNEelE+PUDy+z7hF/BzjObVdD4kvXaoLPA7P1viW7zKbaD35nJqk3guVzN3KzIROMrgrMqGP
	UeAK6ijw1eEaxS0m6Lk6YWIlsaCkQl/ArJ9KFr7wS750bxjvqBnvxnh9kFH1OEcEbAzmCFG2z3UaI
	V8m81NyVorz5owHRd7T8CUnR8rLBBQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAYeH-0004XO-Ct; Wed, 18 Sep 2019 12:01:29 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAYe4-0004WR-78
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 12:01:17 +0000
Received: by mail-pg1-x542.google.com with SMTP id m29so3953012pgc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Sep 2019 05:01:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=WkQ76CITam9F7JiZEHEwL0RX83IOrZqz3Y++2Xoowf4=;
 b=eCbt59BqCWohhKOx9Y+Z8ftqpShDtgftW5+zz/dI+Ju0QCOAJrpXZrFORiiEptuIvK
 vhaDaD8/3pYuo+FrATD9qYuWzYLvQ0VZhqNfBX0TOh5x+ZjETAmFftVs2GzCGx0ENEIT
 cWJDlROlkMGsN+Ve2tEMn4TINILoLkNIr3ASNBPBbmqflF1dtZsIdyXJ2gFnresOc0Gv
 ZdLO/i7iTr6bC9IZ2eoT2XzBhLm/dwEPnG/8XzWtWbrDlho2sNidw7Xm0l5lEBbJQwi0
 tHitqC51imBnyvE+ZVAsrmvobrsRHw/s2SaB7sDs5bI66RgQkw8ZiHo4PUYTWBAzuAq6
 NJ8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=WkQ76CITam9F7JiZEHEwL0RX83IOrZqz3Y++2Xoowf4=;
 b=RpKtQ7FkURvy4j1Hs7bjzB2E9Qol5/5wTo0QTvNAJ9LNPq/RyLfx9KYQPQczCdZ1jp
 CZOFyI6VO9qgXB2Y1DA3n06qaTHr6JAVzUCR25j37URelCgjFbpRVHn1acRLcQ597j8D
 N+cb44jLT/7svA4+scoX7Z8eq+57yebrdsoWgGNUmP3wDTD7Vd+PDTJ5foJOKLbDku9V
 7qmrnHc6K7+4dFiSB9BjyMvvEpJV1YnOBmy6XkAtPP5z/yazX5K1CUrP9/j1dI+yreIz
 46SrJoJrZwaebG5HJlLFL4vyC3pmnj5YwaYyduEg1IJvEDiaxObH55QagP/niMSIWvIg
 2MGQ==
X-Gm-Message-State: APjAAAXfYAtijC8HjhMcqN5vw3jRziB9XlqI/wVd6BsDD2b5/zPIULjV
 0QJT6ARCBixcqfmpELGvRIC+hg==
X-Google-Smtp-Source: APXvYqybyNmzYSLFX4gGeI++WncUy4zJYIdFMkUqy0VPaTasXIn9sKMgm6+FthWofH2FZyQmGqRg8w==
X-Received: by 2002:a63:5626:: with SMTP id k38mr3667623pgb.134.1568808072722; 
 Wed, 18 Sep 2019 05:01:12 -0700 (PDT)
Received: from pragneshp.open-silicon.com ([114.143.65.226])
 by smtp.gmail.com with ESMTPSA id z13sm6882241pfq.121.2019.09.18.05.01.09
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 18 Sep 2019 05:01:12 -0700 (PDT)
From: Pragnesh Patel <pragnesh.patel@sifive.com>
To: mripard@kernel.org
Subject: [PATCH] media: dt-bindings: Fix building error for dt_binding_check
Date: Wed, 18 Sep 2019 17:31:00 +0530
Message-Id: <1568808060-17516-1-git-send-email-pragnesh.patel@sifive.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_050116_288373_8CD39B5C 
X-CRM114-Status: GOOD (  12.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Pragnesh Patel <pragnesh.patel@sifive.com>, linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

$id doesn't match the actual filename, so update the $id

Signed-off-by: Pragnesh Patel <pragnesh.patel@sifive.com>
---
 Documentation/devicetree/bindings/media/allwinner,sun4i-a10-csi.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/media/allwinner,sun4i-a10-csi.yaml b/Documentation/devicetree/bindings/media/allwinner,sun4i-a10-csi.yaml
index 27f38ee..5dd1cf49 100644
--- a/Documentation/devicetree/bindings/media/allwinner,sun4i-a10-csi.yaml
+++ b/Documentation/devicetree/bindings/media/allwinner,sun4i-a10-csi.yaml
@@ -1,7 +1,7 @@
 # SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
 %YAML 1.2
 ---
-$id: http://devicetree.org/schemas/arm/allwinner,sun4i-a10-csi.yaml#
+$id: http://devicetree.org/schemas/media/allwinner,sun4i-a10-csi.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
 title: Allwinner A10 CMOS Sensor Interface (CSI) Device Tree Bindings
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
