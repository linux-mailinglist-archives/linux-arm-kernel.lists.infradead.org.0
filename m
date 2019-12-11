Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E13C211BDF9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 21:32:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=l5J8+otcrXd1oNEUWIF+btEMw/JMNGVTgETYm0woWTA=; b=L0XLuRv8xJVNlb2BzfLP4iHMLj
	97t+c1pYcH+5eXzR+GxZeROHoSRpuYSn52EQP4SyuZfdmTFysfyaWoSUZBC6sVnpf770QTOv9GAuT
	yd+P4w5KECuWfR28hDabzdqrxMSmr41mlrS2HpABdeOZxv8ar8xiX3F4rzNcqOyGorAmrW2Mo0pPz
	G+kkGaZR3npZXR+wGLTTVoU5kl4fZDPwiWmOkhSIv9KY++fwYB9z77NLbOi/+7vB1N/EpAryeMUgJ
	wiuDU3jqSCZU+dTE3BI4Ntv8QZzLEK5RJZxcZaNUIUPB4Z5nxK152MjUcGdJeP+DEzqirTrZGYZ5d
	nkduNMrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if8fH-0000Ti-Mu; Wed, 11 Dec 2019 20:32:55 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if8eO-0008G0-VR
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 20:32:02 +0000
Received: by mail-pj1-x1042.google.com with SMTP id ep17so40772pjb.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Dec 2019 12:32:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=/SGLTAdZJn5EJy2JzHgzjK5/AJ+qkCVgDvB3ahQxnHQ=;
 b=b7yOoaL4G/ALvz/vNUlr2OeqNIasR8tlfumfduHUCFAHMOnxwtwF3SoUwldWsEaQ4R
 LvW812GkycQioVyIoAeViSehBhLN1Q1fYMklkMS1CLAqfAfhQa7oJFT7DMvMrZaKAb7j
 NmDSJEeyjRRMw6m2gmWMK31DqM0KmM1u85/KojBSQKtdXCVhFcQZgfC3jqKuJ9EC8KLf
 eG1TR6a96w3YAz3FtgejTRo7Cs4j71tlDnUpbI3criKCOOGkRDoPZfN/+hysMy4D7IAw
 CMLHltGp9hLhs0O75keqJ074R+i9CYm6esB68cymsYt+Q3mKtu4NS5r/EJ7VPoC6ETh0
 o+og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=/SGLTAdZJn5EJy2JzHgzjK5/AJ+qkCVgDvB3ahQxnHQ=;
 b=b8bDrVh35MA/ZlrZtMau29wFLipPTqWj7jgNMkkIWJTkYCjO9yZscTKJE4Yves8URu
 kXERdVa3m0BiwwHqWpNlRSUeujGZ0S/UIN3GseST6l0TPnyJ8380bVtT1FnCms+iv9kS
 O2eW388C4WJrRcZggSNaESeM1TIzh4Y0sQttH98hE7JDvEQ70RwZeXTOp4mxgR3wnBcK
 jaVCIpDceYiBRm9I/p83aekEOER86JbluhqNu3WBFUxY374bQ5b7Usia5HXWXNbFtyRD
 OUUdaLzXqlbp0Mgxlb/LonjwYcXVqfxUbkiKdET4wL8JXTtX3UNoKOVpXDsDXBq7bQoQ
 nydQ==
X-Gm-Message-State: APjAAAWa5DUvclsnV6PQSLoNhrCB0L4WWF6pt393kLnDwh7hPTtPuLsI
 J4qsp9XEZwTUDfWCLAQ2PbUHvZ9r
X-Google-Smtp-Source: APXvYqx/G7SPF+0fLJkFR2jINi/QVILifYW6VvhXLrfs0TC+JDl93K7sIkMmJpc9bSFgNrKj/zRX8g==
X-Received: by 2002:a17:90a:7bc3:: with SMTP id
 d3mr5804634pjl.86.1576096319788; 
 Wed, 11 Dec 2019 12:31:59 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id a19sm917570pju.11.2019.12.11.12.31.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Dec 2019 12:31:59 -0800 (PST)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-arm-kernel@lists.infradead.org,
	daniel.lezcano@linaro.org
Subject: [PATCH v2 3/6] dt-bindings: thermal: Define BCM7216 thermal sensor
 compatible
Date: Wed, 11 Dec 2019 12:31:40 -0800
Message-Id: <20191211203143.2952-4-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191211203143.2952-1-f.fainelli@gmail.com>
References: <20191211203143.2952-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_123201_069662_53D58300 
X-CRM114-Status: GOOD (  11.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Amit Kucheria <amit.kucheria@verdurent.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 "open list:BROADCOM STB AVS TMON DRIVER" <linux-pm@vger.kernel.org>,
 open list <linux-kernel@vger.kernel.org>,
 Eduardo Valentin <edubezval@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 "maintainer:BROADCOM STB AVS TMON DRIVER"
 <bcm-kernel-feedback-list@broadcom.com>, Markus Mayer <mmayer@broadcom.com>,
 Zhang Rui <rui.zhang@intel.com>
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
