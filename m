Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D207511E7BF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 17:07:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4ylWmV4TFBFygDWbJyJ8yy/73DK1OUNUcBis+oeR7AQ=; b=WFjZs5A8DQPsVr
	u0VqW83ID6eHRazA+oO7Rp1zpnlg40U0vJORw0cpz9Ox1JnJhjjO+zpQGe1C6WX5tSbIxDoxhJhsp
	oc8fIP09cjV80yRmoqxnlQr5ILjw3zJ+4Hs6wUvhoHc+TnHiwdr0+cujYktxw+JwPEgwsMNXaNjlB
	AzR3/wg8qwc0tQiBzVuPL4F6+lLGsY/ud4pkK0BqYaCc9XmwMjfdAniQihauZ4F7mDXiPDjYq1/jl
	+xjzKbfmVASejq/+XgCOJp8JaJgVyZXPcpaWVfqrsblltffSKPmDj9s2Xu2RT2GKlP0ImqQXgPJbG
	ARHrcmaf87XTRsjmzDaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifnTt-0005LP-T9; Fri, 13 Dec 2019 16:07:53 +0000
Received: from mail-yw1-xc43.google.com ([2607:f8b0:4864:20::c43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifnS4-0003nP-9T
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 16:06:02 +0000
Received: by mail-yw1-xc43.google.com with SMTP id d12so15760ywl.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Dec 2019 08:06:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=hCFeVYA6+RMPn0stbhBhFtInrR3a9YnA+SCG0eFw6ss=;
 b=KRu9ZcptwlfRuMpd1K0x3+VKrHELW1DD0NiRUOldvlD6I/wGFYfW+V4R07cIwqFP9P
 qdLunf2YL5iIbPCzuknZ0mbjT4VI4DDihzrlLcMGEUfaUo8JSocxFLSY3Jtg/M2kVFeO
 a66RfOtlN55JbmgVnTcbijLi9/SIfc0DZ5gNsJELJN0L/OGF/3qk5m3SFGApYeIdo+oO
 MBGbnORIl+1COu3Lzv78zTgFU+BfFygtzOWv+6YW1jciCs/DKHA2oJrp47ghkpiH2LYk
 HDs0uzc2hEVIFHcLqnmvSdmR4+PXMrNqkgfqs74IVYjhhJTskxjim8Jx8R2vtL7RZu5/
 6j2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=hCFeVYA6+RMPn0stbhBhFtInrR3a9YnA+SCG0eFw6ss=;
 b=lwc8U0ZmBrpsd9LM3LJOhm838UvpTOg1YBhMgxKHJKUR0VBsnQy7kAl17U0dnf+YvL
 XCdi8jZcPObmFJMdJ0p3DP7ehWE1FWcsNgzPmFjyhZC6czsxoypWNqWvXm5i45qIgtL5
 v1b9Q3wXJjeWPs2XjoqlS9aBDSrRO0ezNVpXsLvcRYG2JuCoJNlpeWFDOoGMPJImlbdB
 O0cPfuzSsSbrdGWl3V5thxGYtnjt6Gicn23fzNLHvqL/y4wWFWIf1+aerDvfQLAsCThV
 VyPn+if4GXp1bLcPUKolgaeHp7o38EXVu/wJX3cnARaFzBuvFsvbAi3ONGRCOc+kB9If
 tXHw==
X-Gm-Message-State: APjAAAWtU7xHdSOMinJouvfWZ/0/I2lNsS1uqiBFOFoTvoL3ZhIP5Tbb
 6hhxiGmDmC1mPosqdACZb9jR1C6j
X-Google-Smtp-Source: APXvYqz5xPZ+LNDsnzedJYC7m3a0/JGAPYzF/1XJcMZ16q7iiHdzl9cWrivtSTB+eePdtQ+NgJB9eQ==
X-Received: by 2002:a81:145:: with SMTP id 66mr4954091ywb.292.1576253158875;
 Fri, 13 Dec 2019 08:05:58 -0800 (PST)
Received: from localhost.localdomain (c-73-37-219-234.hsd1.mn.comcast.net.
 [73.37.219.234])
 by smtp.gmail.com with ESMTPSA id v38sm3984694ywh.63.2019.12.13.08.05.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Dec 2019 08:05:58 -0800 (PST)
From: Adam Ford <aford173@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH V2 4/7] dt-bindings: imx-gpcv2: Update bindings to support
 i.MX8M Mini
Date: Fri, 13 Dec 2019 10:05:39 -0600
Message-Id: <20191213160542.15757-5-aford173@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191213160542.15757-1-aford173@gmail.com>
References: <20191213160542.15757-1-aford173@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_080600_403709_DF1CADF2 
X-CRM114-Status: GOOD (  14.01  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (aford173[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (aford173[at]gmail.com)
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 peng.fan@nxp.com, Fabio Estevam <festevam@gmail.com>, ping.bai@nxp.com,
 Adam Ford <aford173@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The with the recent additions to the driver, the GPCv2 driver can
support the i.MX8M Mini, but it needs updated 'compatible' entry
to use the proper table.

This patch adds the i.MX8MM to the compatible list of devices.

Signed-off-by: Adam Ford <aford173@gmail.com>
---
V2:  No Change

 Documentation/devicetree/bindings/power/fsl,imx-gpcv2.txt | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/power/fsl,imx-gpcv2.txt b/Documentation/devicetree/bindings/power/fsl,imx-gpcv2.txt
index 7c7e972aaa42..576a79097a4c 100644
--- a/Documentation/devicetree/bindings/power/fsl,imx-gpcv2.txt
+++ b/Documentation/devicetree/bindings/power/fsl,imx-gpcv2.txt
@@ -9,6 +9,7 @@ Required properties:
 - compatible: Should be one of:
 	- "fsl,imx7d-gpc"
 	- "fsl,imx8mq-gpc"
+	- "fsl,imx8mm-gpc"
 
 - reg: should be register base and length as documented in the
   datasheet
@@ -24,8 +25,9 @@ which, in turn, is expected to contain the following:
 Required properties:
 
 - reg: Power domain index. Valid values are defined in
-  include/dt-bindings/power/imx7-power.h for fsl,imx7d-gpc and
-  include/dt-bindings/power/imx8m-power.h for fsl,imx8mq-gpc
+  include/dt-bindings/power/imx7-power.h for fsl,imx7d-gpc,
+  include/dt-bindings/power/imx8m-power.h for fsl,imx8mq-gpc, and
+  include/dt-bindings/power/imx8m-power.h for fsl,imx8mm-gpc
 
 - #power-domain-cells: Should be 0
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
