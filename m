Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 580D484BD7
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 14:43:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=QlZzZu6nNkpSVnBghJZY6F6PuBrDyH9VHWBDjvqYto8=; b=dav
	x2eaaKDFd8QWoug8kIylZhkqhSqNFi0C+FWXMRkeqh7nKJvXTFyaZWtnMgAbq8PFH67E+b6KgVHJD
	EGGjF+5Q6PsISZFdgf/ZcV0EHN9TncWEjH3wuSh9k3cKG7idaSVaJCYrmmhM2Q9HeHuNE2VGYnmY/
	LKxFX9hZC1S6aE2DmhDo72i8SOAl5soZw3XOWsM4dYPPV37cznhwEVqiqe3tUwxDMOUwoXLokVSO3
	oR+2QnQn8HBA9O5RCv+vAflvDWcsWYRHlZ4Iz6V+NHpm2qtBL0tfJJ87MLia/RBZsZZA0d2jz+txT
	rRY6J5MCw3QfJL7FjbOvI0cjdGZuIFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvLHN-00038E-8P; Wed, 07 Aug 2019 12:42:57 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvLHA-00037P-Dt
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 12:42:45 +0000
Received: by mail-wr1-x442.google.com with SMTP id n4so91312111wrs.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 07 Aug 2019 05:42:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=f84KIsdaJQ9CPJzDHYp5jwwgYBPwNj7/ee/65YueU+Y=;
 b=sabiP0yeVf1UJuKhrWV76NTcVIeg3G1hy4lcORSSNvAo5IcbwP4+v1xx0AljGv5QFu
 whPlMulkqpBJPb4k0W/KkuNms8MYqgDk10yj50rwHjBBZbYrEnhbYCOChvduxiZrZfAs
 ER4oNFJanjAiNilmJGIW8/YCKQe8dOO3LNjGYauz2/pZAnE6eLfTsoiB316JalKVcXgj
 yD66Kc1MeWa3JoPNP1izcj8/JpI4dDDjkDyKiW7FIECG7ud2a+tNprH8aG/RtypGZIPj
 LA4hVsROnNzcqWzbOKJXm2AoA5Q+7s/lrzJmqiJizh6JKiusIe+hmqp79lazlFC3f2zb
 SakQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=f84KIsdaJQ9CPJzDHYp5jwwgYBPwNj7/ee/65YueU+Y=;
 b=DzRJ+Sy4PULCr8SlCm8GMOwynPQVGuqqja9NjWsP0PRQRRQGPJPOswuDcXsQqtk8cu
 UYCEHe9IMDNGS8F3FJdgvrnVScwj+1v/NZHxyhm/5Udz8XCG8uAq3W9cRuZuEP/8+1ty
 EI7G00lj4WvGnmXLj84Qqh7lBALLaoJcBcklg9jp0ARKlHzFNAT+vXJw1sytCpTwW+ZN
 Cuxw1ACARA3JrBZvbeqLpQQOiqBqdV8H5wqKOu8XiW7Im8K602LXGt1Wo730y/AAAlsz
 fMru69ZBpq3xoHt5eZDwHAeMVqHtX0A6hLA9MBCKmnHJp8V4k+MgWT8EMJCS6kV2gXRN
 torQ==
X-Gm-Message-State: APjAAAUgJZ9yYpK2Pd/V50aCZG3a/AnYI05J9sTGy68hII/AT/dLyzSP
 Q2roYPK+0iCmQCeEsSqgc0M=
X-Google-Smtp-Source: APXvYqz9dC7RKAOlqFDZMeGfKlNjJXmRRsx9AY9x/8J/G5S482nwbvIwwIGYOYLQ0ZUUl6azgsxVog==
X-Received: by 2002:a5d:5507:: with SMTP id b7mr10649444wrv.35.1565181762489; 
 Wed, 07 Aug 2019 05:42:42 -0700 (PDT)
Received: from localhost ([193.47.161.132])
 by smtp.gmail.com with ESMTPSA id q20sm9490692wrc.79.2019.08.07.05.42.41
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 07 Aug 2019 05:42:41 -0700 (PDT)
From: Oliver Graute <oliver.graute@gmail.com>
To: aisheng.dong@nxp.com
Subject: [PATCHv1] arm64: dts: imx8qm: add compatible string for usdhc3
Date: Wed,  7 Aug 2019 14:09:25 +0200
Message-Id: <20190807120932.29850-1-oliver.graute@kococonnector.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_054244_473040_CD180C30 
X-CRM114-Status: GOOD (  10.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (oliver.graute[at]gmail.com)
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Ulf Hansson <ulf.hansson@linaro.org>, Fabio Estevam <festevam@gmail.com>,
 oliver.graute@kococonnector.com, linux-kernel@vger.kernel.org,
 Daniel Baluta <daniel.baluta@nxp.com>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

add compatible string for usdhc3
---
This Patch is on top of 10/15 of this series:

https://patchwork.kernel.org/patch/11046343/

[v2,10/15] arm64: dts: imx8qm: add conn ss support

---
 arch/arm64/boot/dts/freescale/imx8qm-ss-conn.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8qm-ss-conn.dtsi b/arch/arm64/boot/dts/freescale/imx8qm-ss-conn.dtsi
index 00ae820d5175..8c33edf0744f 100644
--- a/arch/arm64/boot/dts/freescale/imx8qm-ss-conn.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8qm-ss-conn.dtsi
@@ -19,3 +19,7 @@
 &usdhc2 {
 	compatible = "fsl,imx8qm-usdhc", "fsl,imx7d-usdhc";
 };
+
+&usdhc3 {
+	compatible = "fsl,imx8qm-usdhc", "fsl,imx7d-usdhc";
+};
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
