Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F93F7303B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 15:50:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MNkUxrp5njRFa2Sfdaf4jAkrzD0T0elzPjrUVqufo+Q=; b=bsguMJqSXsUXRM
	UkSw7R9ENHxv4pCj6oVevfPlFz2zNm8G96J/WdSExJiUjOuBEiWScO7WYPD2HWJJspe58MV2CKaug
	MEsZPfiiN+Wc9NTnIM99e0m+tEiO4iUbrBGQZEBaUzbosNWEMOaKiWwteyXpN9B8wXK0k5lz4f7NA
	kmggK3smnHS+Q4e+R1HOJvJBHmLu7IHIGXBCg2zDvKlaeITheX/rg2akA8yxOFu1Cs0S1cVOmb9tJ
	2KcnYhNOKVoZ8ycQtAQDRsnni1BUM3htGNd5Y3VcBiLv0omcB/o5zJhoM/GbzH0dZI/k68Jlz+qvc
	P05df1URMTsa71yxkMiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqHes-0000Nv-0S; Wed, 24 Jul 2019 13:50:18 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqHej-0000BJ-Fu
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 13:50:10 +0000
Received: by mail-lj1-x244.google.com with SMTP id d24so44562738ljg.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 24 Jul 2019 06:50:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=GxqeVRAu8+l8yYzPd+gthwrK7cvPO4f9RTksijZqcJM=;
 b=d1/AnXTfzDzVuH3U4c14o6CjsffFRHEIXFK61k8yjmHBtjYsRXCI8J21a3mMiuOZI4
 cqi9X+qktXY7k6uIkJWNTyUqlmX1j5ZE8he8iSQf00NnLzNPDU0YEupQRP3GzB5UH8Bc
 lRzT5SOlICV5aBQRhmR2ENhfOy5p31b14kq9Mi+uUQjM6t+9ODltdwGlXUa2gtRdc9Vs
 8MpubM4sI5gEz3UrdBNEE0K4ArMbranHmxtrcC9qf4fzsvdI8cNhTit/Plb7VmgS7uQg
 3URQ/Yd84UBvEDZhPbwywE7NiULvU6bqY+oLkzJMY4phkWqhRrdlhHBhcxMu9Sm+APVO
 r/rQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=GxqeVRAu8+l8yYzPd+gthwrK7cvPO4f9RTksijZqcJM=;
 b=l6xquGRKUIA1kB8BCycTZ0RF0UEG80k67Oi5oVWZMjkLkvskLCxF77t1ncp1DqYvAA
 xZr73O5DJsulIG5bqUyMy9Mm0LRPzjCx4xuepg+mRjFxcd6S3sL05e4kywTn2+RqbuYl
 nhY1Bkye9SG4fyYkzoDPlfx5Irt+55DVuf8RdsPpDENgNzRkdEm+fSZ+jbg9qVqFK8gp
 +wln5f7BOBDR8Kaf/B2i8BOrnSbb1V83dESJKF1Zn+ngNl0uwlJzDu60Hk7OAMW7n/f3
 aMyTLcHAoshXZIes8Ipj83YPBM73nzphJF+irvTZdWUzXVkSe8XTfmmvtIS4CFzy7CNA
 Jdjg==
X-Gm-Message-State: APjAAAVqUqhOKgt86gNJ2IcmW3bcwrxiffEUrEj7zeNr/P074L2XoN7K
 MhpLXnx33M5d9h6Q1WAtHutzTA==
X-Google-Smtp-Source: APXvYqxzSdpNJ5lm69QpIMQiYQwP+Ttd8WTQhr71TgFYZTiSnOeiyQuQys/rPXrnmuRfo4P1uwlcBQ==
X-Received: by 2002:a2e:9857:: with SMTP id e23mr42374872ljj.217.1563976207815; 
 Wed, 24 Jul 2019 06:50:07 -0700 (PDT)
Received: from genomnajs.ideon.se ([85.235.10.227])
 by smtp.gmail.com with ESMTPSA id v4sm8586483lji.103.2019.07.24.06.50.06
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 24 Jul 2019 06:50:06 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: dri-devel@lists.freedesktop.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Sean Paul <sean@poorly.run>
Subject: [PATCH 1/2] drm/pl111: Deprecate the pads from the DT binding
Date: Wed, 24 Jul 2019 15:49:58 +0200
Message-Id: <20190724134959.2365-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_065009_538810_1A637BAC 
X-CRM114-Status: GOOD (  10.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Pawel Moll <pawel.moll@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>, Liviu Dudau <Liviu.Dudau@arm.com>,
 Sam Ravnborg <sam@ravnborg.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The pads were an earlier workaround for the internal image
pipeline in the Linux fbdev subsystem. As we move to generic
definition of display properties and drivers that no longer
need this to work, deprecate this property.

Cc: Sam Ravnborg <sam@ravnborg.org>
Cc: Pawel Moll <pawel.moll@arm.com>
Cc: Liviu Dudau <Liviu.Dudau@arm.com>
Cc: devicetree@vger.kernel.org
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 Documentation/devicetree/bindings/display/arm,pl11x.txt | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/arm,pl11x.txt b/Documentation/devicetree/bindings/display/arm,pl11x.txt
index 572fa2773ec4..3f977e72a200 100644
--- a/Documentation/devicetree/bindings/display/arm,pl11x.txt
+++ b/Documentation/devicetree/bindings/display/arm,pl11x.txt
@@ -39,9 +39,11 @@ Required sub-nodes:
 
 - port: describes LCD panel signals, following the common binding
 	for video transmitter interfaces; see
-	Documentation/devicetree/bindings/media/video-interfaces.txt;
-	when it is a TFT panel, the port's endpoint must define the
-	following property:
+	Documentation/devicetree/bindings/media/video-interfaces.txt
+
+Deprecated properties:
+	The port's endbpoint subnode had this, now deprecated property
+	in the past. Drivers should be able to survive without it:
 
 	- arm,pl11x,tft-r0g0b0-pads: an array of three 32-bit values,
 		defining the way CLD pads are wired up; first value
@@ -80,7 +82,6 @@ Example:
 		port {
 			clcd_pads: endpoint {
 				remote-endpoint = <&clcd_panel>;
-				arm,pl11x,tft-r0g0b0-pads = <0 8 16>;
 			};
 		};
 
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
