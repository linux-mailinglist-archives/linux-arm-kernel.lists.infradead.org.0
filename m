Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ACF38C25E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 22:55:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=woEomY67Rl+UB1b5p74cvetiLOrus9UVIaa1H2xtrho=; b=BSKPfha6JkHepR
	beAGh7+w/xEUjOgM+BnOiqkkaz36VAKbj4iIxkl/yfuEoWk7IIRIENwF2rPIcp3kwtIDFwP4N3BDb
	uezp4zkG/jbH354X0HYUj+s5i8VTjhAftS44FPRKXxY1YSX6LlCy4c6r9uUO8HZ+bk1U/TLLoQz1q
	ST+ujFjJJNfTaSdppuZ+6k9wEiMRD/mhtCyijAJ2x797mhJK2aMmG9OtB3+UE+pfXyEtYJsLU7kLK
	y+1P/5lpTODS/UnAAc+JRtsWKZnwKOfHUZIEe+t6HxbDHhf7dfRteLlW/eD0bcE9E5OY1ohkQ2pBM
	uTt/vJt7LrTbQHYeEEAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxdpU-0004R3-DZ; Tue, 13 Aug 2019 20:55:40 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxdpL-0004QV-GW
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 20:55:32 +0000
Received: by mail-oi1-f194.google.com with SMTP id a21so658216oie.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 13 Aug 2019 13:55:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=vRcjRzXsLYZcKkMeLECf7vG301P7B0XZvNn+RUsuARg=;
 b=ilVUbbt9I25us9Tsapxwyfal9b9JnfJ+tj79X2QqIL14Oyiutn8fcHozikP0ITFeF+
 ytZkQtBmLc3nc3t/1lxXz0lVYHYgJT9WwbgiwppznEh5sA+oKKA7h9jBjYOwAbyuhwCU
 8wOZJQ+aVOvo0I0kN0Tm++G6UsIFSkouIcDqNOr37akh3fZuAN79n20OEDDhOzVnnpHu
 v9Eawv6c+nnQh8IMUvp8xUaykK/28LhZJva+/Td/Iwq/+tTkhoSZIIeZuLFwE+iZJAje
 Yf8yHLX40zPKvdPiDTHTh9BAAhwxQZeP7G6mKzsiIvForKp1/ThmcEUGKdmpwehox/e/
 HX9g==
X-Gm-Message-State: APjAAAWITmVCDp36LSKYZZQ2F48mS1G5oKbcIL9QkDuagZN5MTkHkQrb
 JLNqF0Ycrh+EGXiO+Xlp0A==
X-Google-Smtp-Source: APXvYqxjYk48K/xApN8bRzF+K+cyfVT+7GZOGNiswrJt4E2UxIRabfgvTQ/6FwmQTxYes48I9p8I+g==
X-Received: by 2002:a02:7121:: with SMTP id n33mr45263919jac.19.1565729730148; 
 Tue, 13 Aug 2019 13:55:30 -0700 (PDT)
Received: from xps15.herring.priv ([64.188.179.254])
 by smtp.googlemail.com with ESMTPSA id
 m10sm204917375ioj.75.2019.08.13.13.55.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 13 Aug 2019 13:55:29 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: devicetree@vger.kernel.org
Subject: [PATCH] dt-bindings: pinctrl: stm32: Fix 'st,syscfg' schema
Date: Tue, 13 Aug 2019 14:55:28 -0600
Message-Id: <20190813205528.16651-1-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_135531_552195_B12DA07B 
X-CRM114-Status: GOOD (  10.82  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Linus Walleij <linus.walleij@linaro.org>, linux-gpio@vger.kernel.org,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The proper way to add additional contraints to an existing json-schema
is using 'allOf' to reference the base schema. Using just '$ref' doesn't
work. Fix this for the 'st,syscfg' property.

Cc: Linus Walleij <linus.walleij@linaro.org>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
Cc: Alexandre Torgue <alexandre.torgue@st.com>
Cc: linux-gpio@vger.kernel.org
Cc: linux-stm32@st-md-mailman.stormreply.com
Cc: linux-arm-kernel@lists.infradead.org
Signed-off-by: Rob Herring <robh@kernel.org>
---
I've got some other fixes queued up and can take this via the DT tree.

Rob

 .../devicetree/bindings/pinctrl/st,stm32-pinctrl.yaml          | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/pinctrl/st,stm32-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/st,stm32-pinctrl.yaml
index 91d3e78b3395..400df2da018a 100644
--- a/Documentation/devicetree/bindings/pinctrl/st,stm32-pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/st,stm32-pinctrl.yaml
@@ -37,7 +37,8 @@ properties:
   hwlocks: true
 
   st,syscfg:
-    $ref: "/schemas/types.yaml#/definitions/phandle-array"
+    allOf:
+      - $ref: "/schemas/types.yaml#/definitions/phandle-array"
     description: Should be phandle/offset/mask
     items:
       - description: Phandle to the syscon node which includes IRQ mux selection.
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
