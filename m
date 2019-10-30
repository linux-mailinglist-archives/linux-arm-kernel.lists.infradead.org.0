Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96EAFEA33C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 19:22:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=rSzrxyUulBjAv/EoROCeXqYNIMHs2fxCgAjv1f/Xl0Y=; b=NCgo5M0ydqRVitn85ntf00eJ91
	Zr06G9eoaVYTWNyHmqSii++IM9AG6c7IeTUVvn1R+hWC0SwORFI9Y1bvM9N7km2pZNZg7ZmHvsUN4
	vR+9wleZVXR0fnBd4dFb/R5WCalcjHLpVxh6qLJzDQHCTibBmI6/UdGaRZQ43mhb77Nn6/g+j01Do
	l1/qpPfBPFjVZW/UZjZ7n1Z/ALxP1yzvkvV5cuag+r704i57KmtnoC8EcAh1V3lLpCFsp7YBRiEEK
	eG7kuoXzyy6dgYEW+VQlPrTjHbiK3A6tDa340DYQHNL9F2uzN4AufQF62GTBSBY+z1SGLQnClpGnq
	89fqKD/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPsc8-0004Sq-4c; Wed, 30 Oct 2019 18:22:36 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPsbc-00045D-Az
 for linux-arm-kernel@lists.infradead.org; Wed, 30 Oct 2019 18:22:05 +0000
Received: by mail-pf1-x442.google.com with SMTP id u9so2157790pfn.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 30 Oct 2019 11:22:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=qs16A5XyOAvgOkcD2b8j2UzYSbjI5cdVJZowNpSGRxs=;
 b=VCaF9eufWMcvjXboob2XP8nc+6A40oSy1ga0OjH59Joe+C6zRTYakwyuFGcY9kkPBq
 Em9YGm8M5lYuzsgBne1SD+GuPLDjHsn7IjqI7+LWZaFd3gP6RG/nwdvS2jqMcEcL5gQa
 yVYQUQZ18//BhVG03Ee0b++GrI7BVRpPnBZwK71ksvqNKefdZ6GTGE/dpfjerF52lU9d
 lUetRBA5v28fErEpZHzuowK3loVssYtyCW1GCCX6xgimut/cToiDHsutQ9IHU9A1uR9+
 im2vtSCaFSpIBsBJa/yjjq6gsbvyoHPf/P2mmox514K9tyXPKinubsdPg8M6WloolGe6
 wqzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=qs16A5XyOAvgOkcD2b8j2UzYSbjI5cdVJZowNpSGRxs=;
 b=FaCkFHya7sqoKDMCC9tHAUFoQdayolTMyCXlBKcC0953WIYwAP51+mEJCRlJGtgYwU
 fK0+sozVJviQh5yGxj8o+cBzOeDkOznCiyxLMGj2EN3C75FoeNgkUGbNw7XPT5bc9o1V
 eO4IBG1YpvI3YucNpEZRTlkLzBw4JI0fl5c6b2g2S2OZFMenzgs/uknJpcgkS50PlS4/
 WXLv4CGFKqtlp/PLd95MwjO/6dFGl4W65p2mrK392AxxMP6iMRq5tz39WbGX2uoHE0mu
 kGeZXx+bQHtY4FGITCE2H+CzaOmIcIrLS9XcHZujj5fpuldBcpL3mjbFs1p50XE/biRS
 EMtA==
X-Gm-Message-State: APjAAAUtIQwzLJR4GejoClbsKc6u6zfXUcDacMorIyUZtPPAOZ+LYK1i
 s1cbzkzS5tcZi1DKvo/DGDE=
X-Google-Smtp-Source: APXvYqwvjX/ThoRXznb5SgYpZuHrY59zaN3xyWXKgjoQvOXAPltKe0a3xjdBk/FnBbZsK4E9peBmXw==
X-Received: by 2002:a62:5216:: with SMTP id g22mr750778pfb.78.1572459723302;
 Wed, 30 Oct 2019 11:22:03 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id z5sm521637pgi.19.2019.10.30.11.21.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 30 Oct 2019 11:22:02 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 3/6] dt-bindings: thermal: Define BCM7216 thermal sensor
 compatible
Date: Wed, 30 Oct 2019 11:21:29 -0700
Message-Id: <20191030182132.25763-4-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191030182132.25763-1-f.fainelli@gmail.com>
References: <20191030182132.25763-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_112204_424546_3F2EB828 
X-CRM114-Status: GOOD (  11.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Amit Kucheria <amit.kucheria@verdurent.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 "open list:BROADCOM STB AVS TMON DRIVER" <linux-pm@vger.kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Eduardo Valentin <edubezval@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 "maintainer:BROADCOM STB AVS TMON DRIVER"
 <bcm-kernel-feedback-list@broadcom.com>, Markus Mayer <mmayer@broadcom.com>,
 Zhang Rui <rui.zhang@intel.com>,
 "moderated list:BROADCOM BCM7XXX ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

BCM7216 is a 16nm process STB chip, which requires a different
compatible string to differentiate different temperature formulas.

Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 .../devicetree/bindings/thermal/brcm,avs-tmon.txt         | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/thermal/brcm,avs-tmon.txt b/Documentation/devicetree/bindings/thermal/brcm,avs-tmon.txt
index 43a9ed545944..74a9ef09db8b 100644
--- a/Documentation/devicetree/bindings/thermal/brcm,avs-tmon.txt
+++ b/Documentation/devicetree/bindings/thermal/brcm,avs-tmon.txt
@@ -3,9 +3,13 @@
 Thermal management core, provided by the AVS TMON hardware block.
 
 Required properties:
-- compatible: must be "brcm,avs-tmon" and/or "brcm,avs-tmon-bcm7445"
+- compatible: must be one of:
+	"brcm,avs-tmon-bcm7216"
+	"brcm,avs-tmon-bcm7445"
+	"brcm,avs-tmon"
 - reg: address range for the AVS TMON registers
-- interrupts: temperature monitor interrupt, for high/low threshold triggers
+- interrupts: temperature monitor interrupt, for high/low threshold triggers,
+	      required except for "brcm,avs-tmon-bcm7216"
 - interrupt-names: should be "tmon"
 
 Example:
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
