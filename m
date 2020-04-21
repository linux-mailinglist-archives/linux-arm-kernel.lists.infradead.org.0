Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A31BF1B2BA0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 17:51:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=YDBeJQa8lgzaoRxsMitbFnrl787975k3wTJBcVpEn3E=; b=akI
	MO6CnW3YD6FUoQ9RvFOp+P9XcFIBYbfDjQzr1GIXB0HqaqDVmg3CPFiddKeTJ2Ql+SrXFSt7+9pfv
	pdnum2BIsBzp428KczJcFxwecWgkR8Se88lPBUlNb0x6XGKeYqeI4/qLwwqBzcjZaFzJgrOYX8OQY
	vuFFPv/gVk/uK5JRf87wp5sMIkFsjx6ZEJbNcZM6rfBvndZr7lDbDOddQlcfknKWinGwRX3Mqgg7O
	OdzqU3eaeJojKeCEWrqAxM+ci7usJawkWocFN/EerQ/JpsdLUMs1UgbG0VbgFCHnGmjZgZR1U+0IX
	wOGaV4PPRJPAKPqHYMF58BiIrSGoMDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQvBf-0006t4-4p; Tue, 21 Apr 2020 15:51:51 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQvBV-0006rA-G4; Tue, 21 Apr 2020 15:51:44 +0000
Received: by mail-wr1-x444.google.com with SMTP id d17so16976199wrg.11;
 Tue, 21 Apr 2020 08:51:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=kcT8YhRThPhegOm3BQj7wUe66PuL6hDa8ErzC+LQvVA=;
 b=T/PyuRExpYtl18m3qkte0wueAWmWWpHTRgZgK8uwu12i+5YbEWa0GkQnamXwmmz2ym
 HnDhNv2mBoB9JSc/2zO24+fUuBTWzCT81vqx7x/beNBoW2Cd5JlP50LrNaiIDdARVTY8
 9sOn3cfal5fmxmyBKT2JFMwIzpFqAgVi9hKyEoKy3wy+BNKyqoyxTn7bgh02qlQqm7RA
 4jSQfhpNWkjxqAkY0QObUBLau0NXNyECQ6J7+J8P/AnZz/3VYvfv5HOxkawlcQ6q2RQF
 wXBghlmE8m7LWE8EISO7TF1NwV3wItGrFtlorZhTzNRY/p0HaUCSteOWlgJzbn1FNE26
 YtUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=kcT8YhRThPhegOm3BQj7wUe66PuL6hDa8ErzC+LQvVA=;
 b=aIcWd2CtfHFOwQJvgFSutyZ5nIp5vKBNy9Q1KsI8/OR/LzNQcHJdIXTWr9X91t/OII
 xrDNa/RPpJ7Gvz6qtuJsmYxMUZjiJdZCB5XaUvB1o87ZBnoptkasAIMNA9w50WmQW9x7
 qWLT+4UnIKmxcnMr0ScAfT7tdZLf2wgl5ettAAhQGPoIINpOD6ferOq/oxFLHgOMDwgF
 OqbCtpSB1A/SxUHQdyIib2DzEyFFRspWzmh/nTn/ZqyVtMwOy3Y1exPaAbv9sWzEy4ka
 qOGZimqeRCnyZ1uYsXb/HsslqYdWxweEqCAqP1DFX1xAqCPPcn20SK5eVp5+a/eyQcHT
 cXRA==
X-Gm-Message-State: AGi0PuaE5DeLKWV/ZRt2+AME1ag2Ro4XEoJtN5/6gLmSJBa+XiqwkPuS
 SU4YlVMxkcp4aXTAY7GP6lo=
X-Google-Smtp-Source: APiQypLwxUr2g6yIkcRAqbgAzcYzXQ/xaGoq2pE5TKNjpKqN73rSSuaC3AUnTp3g8GDcaDbKPiJI/g==
X-Received: by 2002:a5d:4cd0:: with SMTP id c16mr23192004wrt.98.1587484299782; 
 Tue, 21 Apr 2020 08:51:39 -0700 (PDT)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id v19sm4357664wra.57.2020.04.21.08.51.37
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 21 Apr 2020 08:51:38 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH] dt-bindings: media: rockchip-vpu: fix interrupt-names
Date: Tue, 21 Apr 2020 17:51:31 +0200
Message-Id: <20200421155131.5839-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_085141_537650_E57B27BE 
X-CRM114-Status: GOOD (  10.35  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org, mchehab@kernel.org,
 ezequiel@collabora.com, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

A test with the command below gives for example this error:

arch/arm64/boot/dts/rockchip/rk3328-evb.dt.yaml: video-codec@ff350000:
interrupts: [[0, 9, 4]] is too short
arch/arm64/boot/dts/rockchip/rk3328-evb.dt.yaml: video-codec@ff350000:
interrupt-names: ['vdpu'] is too short
arch/arm64/boot/dts/rockchip/rk3328-evb.dt.yaml: video-codec@ff350000:
interrupt-names:0: 'vepu' was expected

With the conversion of rockchip-vpu.txt to yaml the correct
'interrupt-names' for rk3328 was not included, so add them now.
Also add 'minItems' to 'interrupts'for the completeness.

make ARCH=arm64 dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/media/rockchip-vpu.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 Documentation/devicetree/bindings/media/rockchip-vpu.yaml | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/media/rockchip-vpu.yaml b/Documentation/devicetree/bindings/media/rockchip-vpu.yaml
index d7a42e6f9..27df18ad6 100644
--- a/Documentation/devicetree/bindings/media/rockchip-vpu.yaml
+++ b/Documentation/devicetree/bindings/media/rockchip-vpu.yaml
@@ -24,12 +24,15 @@ properties:
     maxItems: 1
 
   interrupts:
+    minItems: 1
     maxItems: 2
 
   interrupt-names:
-    items:
-      - const: vepu
+    oneOf:
       - const: vdpu
+      - items:
+        - const: vepu
+        - const: vdpu
 
   clocks:
     maxItems: 2
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
