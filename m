Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1FF6119170
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 21:02:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=k214ehJ0na8/vd2xXiPoS4+eE+vNerHnTPFGkYlBiRk=; b=BqYuTS7YDkkEeQ+4IJ9xf34aFQ
	0vI+RBMPDN4hggk05WyfndQ/gHzFH7p5OGVbjstemUkzGzBwoS0Rutlm/PbXVv8OpYfQ1KwcNdBWF
	0ELzbluD5ZzAtZ6Pj3uAomQwpE5g6U4pfm0dT7FoJ5i5qcZgI/uPZp0A3glvJvdGxKwkAvQ1E5aY4
	decP1mV991nyxCkOkVsxyUDSw8HuIrf6rlo464mIGQup8eGVJ1wwhMHZosB+RYLUlxUfHD3zV77mL
	C00+AUK1hfIqgIaOFe+0cW3KURPQz1cjgSIiPDsWYzGyM9DRhpg/8CvqltuyGo67bSAV0R22SK8tv
	b4knQ6OA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ielia-0005MP-8J; Tue, 10 Dec 2019 20:02:48 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ielhU-0004Ip-Ow
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 20:01:42 +0000
Received: by mail-wm1-x344.google.com with SMTP id t14so4574874wmi.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Dec 2019 12:01:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=nmiFtfH4zmI+d20vCYAm1VeLBaZ07Zt3ioT6CWVzqDc=;
 b=bF1BYIQWLFMMrcr24viNLkeckeUBHH/F4yPVsqbPK8jlmb9fsdBmdSJsAvlBFrj+8X
 bRK5OhSveg1c4CMNErYEBv9hSSfW67mHi0GMvz0ZTX6kZ9PS4OX/UlqTsMoFdYsdYS4m
 J1NDuHX00Vr3dreTnl8ciWn0MEh8hE3Rzqcf75YWVnRHhm4rK8bv1ZxdLpjZonbT/Otz
 WOBOwkGPQ9XeYLZDHPZWWeHdZS6HE24WrU1paJYZYlBVmWPZGPe4vHTPJMaSr1r31jnt
 foDxA6RpcP0K2doYXZp6POoqIqed98X+8hIxGNoad+DqwooUjXFGRk7OtpiqbFgdmes/
 E9yA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=nmiFtfH4zmI+d20vCYAm1VeLBaZ07Zt3ioT6CWVzqDc=;
 b=TVYulaSht2OVT6ZmWqd6eVEv/fztc6+0gcBES9IDZq3eK/OlLHpzrQrBW2yZEzC5bG
 irrTcYxG4yVqzD+k+naAjif8b4nwGUmYJGfh+WmKLqqlkkP/eahSxmiW8vAnTm25u4N6
 7hdku+1o6/1U/j9LFs7fmSdIrsh+Ab+RYZ6r7C3IlJADrUUiWEKJmPGYTiWaQpZ/cIrL
 iP6kOvb5CvxATKezrZffFnTy0z1EdXSvb+S5oTvy3q0Gz/1Jo24vXZRsj1noY+FB3leP
 iBsQtF/uchj0PNeMxLBE7T8iswz4qRo1PuYqbtgOJPd4S2uLmiTI4XvH3u6oK72FuhBo
 CPNw==
X-Gm-Message-State: APjAAAUrRVTLBqJ/N8LqE9g904OeX4atCaGWSXcjpJj17so2qtnLLVZV
 bh0QznULzj6ND4NA+fXOxqc=
X-Google-Smtp-Source: APXvYqyxTzQiISiyiySr5mOjJCeNCRcQVLWQj/qvpaAyrCdmqRhSRsupu8PvYO1Bny3Pj3g+m/FjVg==
X-Received: by 2002:a1c:4008:: with SMTP id n8mr6720483wma.121.1576008099430; 
 Tue, 10 Dec 2019 12:01:39 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id z6sm4352255wmz.12.2019.12.10.12.01.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Dec 2019 12:01:38 -0800 (PST)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] dt-bindings: reset: Document BCM7216 RESCAL reset
 controller
Date: Tue, 10 Dec 2019 11:59:02 -0800
Message-Id: <20191210195903.24127-2-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191210195903.24127-1-f.fainelli@gmail.com>
References: <20191210195903.24127-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_120140_864677_05C87B7E 
X-CRM114-Status: GOOD (  12.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh@kernel.org>,
 Florian Fainelli <f.fainelli@gmail.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Jim Quinlan <jim2101024@gmail.com>,
 "maintainer:BROADCOM BCM7XXX ARM ARCHITECTURE"
 <bcm-kernel-feedback-list@broadcom.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 "moderated list:BROADCOM BCM7XXX ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Jim Quinlan <jim2101024@gmail.com>

BCM7216 has a special purpose RESCAL reset controller for its SATA and
PCIe0/1 instances. This is a simple reset controller with #reset-cells
set to 0.

Signed-off-by: Jim Quinlan <jim2101024@gmail.com>
Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 .../reset/brcm,bcm7216-pcie-sata-rescal.txt   | 26 +++++++++++++++++++
 1 file changed, 26 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/reset/brcm,bcm7216-pcie-sata-rescal.txt

diff --git a/Documentation/devicetree/bindings/reset/brcm,bcm7216-pcie-sata-rescal.txt b/Documentation/devicetree/bindings/reset/brcm,bcm7216-pcie-sata-rescal.txt
new file mode 100644
index 000000000000..ceaf7ee58726
--- /dev/null
+++ b/Documentation/devicetree/bindings/reset/brcm,bcm7216-pcie-sata-rescal.txt
@@ -0,0 +1,26 @@
+BCM7216 RESCAL reset controller
+===============================
+
+This document describes the BCM7216 RESCAL reset controller which is
+responsible for controlling the reset of the SATA and PCIe0/1 instances on
+BCM7216.
+
+Please also refer to reset.txt in this directory for common reset controller
+binding usage.
+
+Required properties:
+- compatible: should be brcm,bcm7216-pcie-sata-rescal
+- reg: register base and length
+- #reset-cells: must be set to 0
+
+Example:
+
+rescal: reset {
+	compatible = "brcm,bcm7216-pcie-sata-rescal";
+	reg = <0x8b2c800>;
+	#reset-cells = <0>;
+};
+
+&pcie0 {
+	resets = <&rescal>;
+};
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
