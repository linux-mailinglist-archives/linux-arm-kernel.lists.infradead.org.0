Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60E3713B2BB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 20:08:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=l5J8+otcrXd1oNEUWIF+btEMw/JMNGVTgETYm0woWTA=; b=h1nw3J5aVR6clSiP8tR3ZBpVo5
	/iLAR3lZiwJpR4ci/Y+5oveExNcB6N6V7ns+vkQk7SYlGLxh02LOowSeRAodb8TqeDKDZJovYdr4j
	KKGo5zfRbE2bp1NLGO6Obgu9L6swXzYHPCxnKoKNL/kdQzFPR2jDNhGbE3UpwcRVT4VJwTGl826FR
	W9JfH4r3RsJgmc1fzafjTl4aBHrdKl+4PIBrBCGfIcHUiBU6qk9YCFR6yZacnLJhEPCw9y2w8UACw
	/9oIRPGgfHmMTaXTfFA4ryKQQ6PQdhr6pehJxXsCE5q/smkrqVqXHGE2JU85O2WUKO03KUZYDqVMz
	dWbAzAyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irRXl-0006dJ-Ft; Tue, 14 Jan 2020 19:08:01 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irRWF-0005KC-A3
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 19:06:36 +0000
Received: by mail-pg1-x542.google.com with SMTP id b9so6802411pgk.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Jan 2020 11:06:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=/SGLTAdZJn5EJy2JzHgzjK5/AJ+qkCVgDvB3ahQxnHQ=;
 b=Qm5G9CSi8hE6nPnKB0JHoF1ksIp45JPX3HX9vssDTwlZF4Rfy8IWq8WZsIfGUaH9sv
 ZcXt/RoOwAMNw0W+DBimcFz0NHHlEnQjS7yrOba4yZe20ynilMcPvk5aqRF45lXWLZqy
 jZtMMYTV6PHX4WUY+frShmcXUven7WUPwoW36tLU8UVW3noBGff2vxG63s5XrjaXppnB
 hXlqvCjH16cL+ouJBOc87NujrFKXlQ68QlCGDNesz8niUqRtCESi7BQQlwQmEoGdBbSt
 t5iCHJ/WDcw1FOO7PnDvGne5r9CkWnWxx2KVeS9GKtLAwFnYjmfcGyJxkodCXdiJaIhn
 /cFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=/SGLTAdZJn5EJy2JzHgzjK5/AJ+qkCVgDvB3ahQxnHQ=;
 b=cxsrEIghWORzod+51Ncu/y39qPfCBkbYuzF9ogmHKhrQg4jzEK0iGBAm6alWvoQ6fF
 Nmbo/8uLs18IdvoD3OxWXXeuBiiLCKA3Bog+XYeU5jEvcdbjG7v2kBmrQ8XiHeneBmCq
 kOiPTIUHGj7+xORwil/Y4ZfWINUFc0C9kJY76E/0PpePNz5EX3MWW5yQColeRuJTu9Ij
 ji3opDi94n6X/ereWaf58GqWIMUQ2akG3OmeJDkmaoR9MNf+Buj9UQ8Uli2JnzWmNhA5
 GMFN3opj21pbCSgwqIgXdVVUlJ3K6irNgGLG+/a5GATKymEXoiqmolKHKDmc18X50VVN
 bl6Q==
X-Gm-Message-State: APjAAAX3tcMAW1P39kPF1UN+zAaASA0MDMHXSuJEFuLPqKK5hiHMheO5
 HkBC9jyTs7yzSL2qCF4HPsc=
X-Google-Smtp-Source: APXvYqxW4WEv33MceQhvOoDvCOyqNa0lcjz4YBr8Xi3MM+oBNXj+5uUCXiO6j87tYXtC2qT/dxYIrw==
X-Received: by 2002:aa7:8a99:: with SMTP id a25mr26927807pfc.42.1579028786488; 
 Tue, 14 Jan 2020 11:06:26 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id a195sm19284528pfa.120.2020.01.14.11.06.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Jan 2020 11:06:25 -0800 (PST)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-kernel@vger.kernel.org,
	daniel.lezcano@linaro.org
Subject: [PATCH v3 3/6] dt-bindings: thermal: Define BCM7216 thermal sensor
 compatible
Date: Tue, 14 Jan 2020 11:06:04 -0800
Message-Id: <20200114190607.29339-4-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200114190607.29339-1-f.fainelli@gmail.com>
References: <20200114190607.29339-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_110627_344554_B9912793 
X-CRM114-Status: GOOD (  11.04  )
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
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Amit Kucheria <amit.kucheria@verdurent.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 "open list:BROADCOM STB AVS TMON DRIVER" <linux-pm@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, "maintainer:BROADCOM STB AVS TMON DRIVER"
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

Reviewed-by: Rob Herring <robh@kernel.org>
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
