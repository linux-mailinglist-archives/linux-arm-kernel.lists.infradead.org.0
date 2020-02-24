Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87B0A16AD93
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 18:33:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=WhTrl9P8Hqw/VyyAYe/ZyFmX/eJGEQMvopTSXJF5dTg=; b=hkJqWRKT4p/kEiYbmiVMTCExre
	b+cmG733LC72j8fwSqDB3h86hGCVgjXEvliVwmnh308PST6Bb5kqLyfX15RsXI34pGA6bGa+80gUb
	mCuZFMKmzTgx5fRxbYVprh7+ziWgzwwlHyj3udWecuWCjqE9tnr2LriQ3CISgx5qyugUMco7djarC
	tuDyzbcyDHMhqgcZgF7GNfLUYIWmqagsFgviX8NepK6rF3Y+52UjZGaifFhM5HNPQQKKzpQL3ap8e
	nKN1glpLMX1JrIL5K4ywn4v9Gre2Cjd2udnMfceIqwrAzCjSgEGHeOts/GEKjLK0D0mkCSoD+eZZJ
	QeO4JOGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6Hbi-0005Xc-LN; Mon, 24 Feb 2020 17:33:26 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6Hb3-000551-7T
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 17:32:47 +0000
Received: by mail-lj1-x242.google.com with SMTP id q23so11066687ljm.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Feb 2020 09:32:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=+9syUnzBYLf5yHfdlePRF5uRaJfhkTqyzyBJCLAmQAg=;
 b=k8mE+37cYEUjGZjgYEHiiqPPAYY9L5zoI4R4BGjWM/a8exAQ5Nb48lR2ec8GEO9e1N
 vngQh+bHp9hMS7S2m5MvAdxWnMuaq9nXE8kgJh1Cmkq2ry3m9GvxkDwkGwIB9MSd0ymV
 lcYt2rbgZxu9vl7m5u6Yn3IUwlrajZ5jdSLMlkebHh0BnWiOOlBa3zviOlksWvLNMrR3
 Pjt3OFvBM0nv9GZk8DnNrVwaq74GY3pKd3Iaij0lyatHXy4WZsJTKDVTZBaeVxoPEyXq
 fBWV+opgChkKQlLzWZyWlYwQF7zHSqkiEA2GAE4w/UUJKWKXSo/reF5fEimS1jAA3cwN
 ggww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=+9syUnzBYLf5yHfdlePRF5uRaJfhkTqyzyBJCLAmQAg=;
 b=YKJ5GIRgWvSshyRQ2HiY4QZOCTmDGJPE1RS/hPZuHewqK7P62A5avk1mfI91Q0be9f
 TaSVUlkZBkGe0xmt++x6lmN2ZiM9n2rlr9d6lVp88jIJ3Wcx//dUldDBOfZ5fo/hm4+U
 gOPT0WKQXVp2KSAxAcGebROqtCRJ6vougyIfPj6hSRQ/F8Pc7w5Gsyi52ODDUWk1djwl
 rmPIH55L2knEfI03j7iCNms3oPBHpEi3NbgCR3Cfy+3/m32dKtO4uHkzv8T8GZtzd8+d
 UD0FHvq3yRXqTqed3jBbYrmZ2g1fFf6ANkBh4b1oZ9jclhzguXjqPbulOtGTXWM9v9VX
 czGg==
X-Gm-Message-State: APjAAAU//3Ico80V2KSRUHKGqV8swHiVu7st59a+diu+WbJX3vwd+XpM
 VPLOEDRY4N8HtnmMrVQktyF1yoZAY6g=
X-Google-Smtp-Source: APXvYqxrW1aIBeGVgKZDhxcgU3BiWTUxtgTHgbIyhU3q2w/N+J94P2PC652dyrc66y0d7mJYZY5rIQ==
X-Received: by 2002:a2e:8745:: with SMTP id q5mr31505913ljj.208.1582565563351; 
 Mon, 24 Feb 2020 09:32:43 -0800 (PST)
Received: from localhost ([194.44.101.147])
 by smtp.gmail.com with ESMTPSA id o20sm4311993lfg.45.2020.02.24.09.32.42
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 24 Feb 2020 09:32:42 -0800 (PST)
From: Igor Opaniuk <igor.opaniuk@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v1 4/5] arm: dts: vf: toradex: re-license GPL-2.0+ to GPL-2.0
Date: Mon, 24 Feb 2020 19:32:27 +0200
Message-Id: <1582565548-20627-4-git-send-email-igor.opaniuk@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1582565548-20627-1-git-send-email-igor.opaniuk@gmail.com>
References: <1582565548-20627-1-git-send-email-igor.opaniuk@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_093245_295427_94C037EC 
X-CRM114-Status: GOOD (  12.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [igor.opaniuk[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Igor Opaniuk <igor.opaniuk@toradex.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, stefan.agner@toradex.com,
 marcel.ziswiler@toradex.com, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 philippe.schenker@toradex.com, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, max.krummenacher@toradex.com,
 Fabio Estevam <festevam@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Igor Opaniuk <igor.opaniuk@toradex.com>

Specify explicitly that GPL-2.0 license can be used and not
GPL-2.0+ (which also includes next less permissive versions of GPL)
in Toradex i.MX7-based SoM device trees.

Signed-off-by: Igor Opaniuk <igor.opaniuk@toradex.com>
---

 arch/arm/boot/dts/imx7-colibri-eval-v3.dtsi | 2 +-
 arch/arm/boot/dts/imx7-colibri.dtsi         | 2 +-
 arch/arm/boot/dts/imx7d-colibri-eval-v3.dts | 2 +-
 arch/arm/boot/dts/imx7d-colibri.dtsi        | 2 +-
 arch/arm/boot/dts/imx7s-colibri-eval-v3.dts | 2 +-
 arch/arm/boot/dts/imx7s-colibri.dtsi        | 2 +-
 6 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm/boot/dts/imx7-colibri-eval-v3.dtsi b/arch/arm/boot/dts/imx7-colibri-eval-v3.dtsi
index 0ec2b81..22ce5c2 100644
--- a/arch/arm/boot/dts/imx7-colibri-eval-v3.dtsi
+++ b/arch/arm/boot/dts/imx7-colibri-eval-v3.dtsi
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0+ OR MIT
+// SPDX-License-Identifier: GPL-2.0 OR MIT
 /*
  * Copyright 2016-2020 Toradex AG
  */
diff --git a/arch/arm/boot/dts/imx7-colibri.dtsi b/arch/arm/boot/dts/imx7-colibri.dtsi
index 70fc3a6..85ccf1b 100644
--- a/arch/arm/boot/dts/imx7-colibri.dtsi
+++ b/arch/arm/boot/dts/imx7-colibri.dtsi
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0+ OR MIT
+// SPDX-License-Identifier: GPL-2.0 OR MIT
 /*
  * Copyright 2016-2020  Toradex AG
  */
diff --git a/arch/arm/boot/dts/imx7d-colibri-eval-v3.dts b/arch/arm/boot/dts/imx7d-colibri-eval-v3.dts
index 8ae4c58..b830383 100644
--- a/arch/arm/boot/dts/imx7d-colibri-eval-v3.dts
+++ b/arch/arm/boot/dts/imx7d-colibri-eval-v3.dts
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0+ OR MIT
+// SPDX-License-Identifier: GPL-2.0 OR MIT
 /*
  * Copyright 2016-2020 Toradex AG
  */
diff --git a/arch/arm/boot/dts/imx7d-colibri.dtsi b/arch/arm/boot/dts/imx7d-colibri.dtsi
index 13331df..b56baa8 100644
--- a/arch/arm/boot/dts/imx7d-colibri.dtsi
+++ b/arch/arm/boot/dts/imx7d-colibri.dtsi
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0+ OR MIT
+// SPDX-License-Identifier: GPL-2.0 OR MIT
 /*
  * Copyright 2016-2020 Toradex AG
  */
diff --git a/arch/arm/boot/dts/imx7s-colibri-eval-v3.dts b/arch/arm/boot/dts/imx7s-colibri-eval-v3.dts
index 1d1b438..7cfb3ed 100644
--- a/arch/arm/boot/dts/imx7s-colibri-eval-v3.dts
+++ b/arch/arm/boot/dts/imx7s-colibri-eval-v3.dts
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0+ OR MIT
+// SPDX-License-Identifier: GPL-2.0 OR MIT
 /*
  * Copyright 2016-2020 Toradex AG
  */
diff --git a/arch/arm/boot/dts/imx7s-colibri.dtsi b/arch/arm/boot/dts/imx7s-colibri.dtsi
index 3b85b0b..df3646d 100644
--- a/arch/arm/boot/dts/imx7s-colibri.dtsi
+++ b/arch/arm/boot/dts/imx7s-colibri.dtsi
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0+ OR MIT
+// SPDX-License-Identifier: GPL-2.0 OR MIT
 /*
  * Copyright 2016-2020 Toradex AG
  */
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
