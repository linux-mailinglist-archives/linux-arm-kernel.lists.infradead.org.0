Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16DCB187E20
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 11:20:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=auYyuzCOz3irBVN9XDSI0bw6FU9+ksjjkJ3B95ro6iI=; b=OUq3GDHhN3UStspPhd4bzGsmYV
	nR/qwQB1PH5Qgm35ZObwjqSDm8b89H9OI0p1aJRn5uUGdNxnqPrWjqRbhUxLgtNVa6hX7bc2oTn9h
	CErGw67F9aW/0EGLQBbCwdMz+w8WcidudvorTmV5GKdBKuNj/hm2fB3/v3IKRbwxiqwghQ0LQTH19
	PrdF/LkJQqdRMFGoMDHEB/ZLbYiRy4uO0Mh4YYt07CKIFOqAb7LjL1R0e0qqsOmvShqjvpAAY3vzu
	nMMIKSw4bO81WgRYpeH23U24Gb+e02zprmPAjim5XZdd/XkgId7iThXCN/CH13Cvum+Q76fYAFmzt
	ghPyDRcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jE9L1-0005DN-MT; Tue, 17 Mar 2020 10:20:43 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jE9KV-00052E-A5
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Mar 2020 10:20:12 +0000
Received: by mail-lj1-x244.google.com with SMTP id q19so22067284ljp.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 17 Mar 2020 03:20:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=is8tu01oI9bVkgZplXk42aSakxSz6rAJ1WcVx3M2ffk=;
 b=Lh4VSc3+3zY/FWLvCzmh0TQNEJUxlEFOlhn1AHPyztxgmZdQxYdF3Apjj2bnBQqdaX
 kbMJHjvAgJ4lcLzKANUoDsCdQjLuIzWAOCPxj6SlInXyrgpjKcQlkeQ3pVJTsE6X924i
 vfN5pUd+8raD956VQCFmvv4ps5PeMcmZtiZQ0cDwQTsTYR8gXoX9dEJAOBsp853q9MuF
 Y6EQjriogTV3pBQz7F1PlQdPKh5YoEGIyvgSaEtn/rnsGdlp/UySXWhrJzzuSbDc4VGb
 v8Te7WkzyfqfAPkLRRuLR7zdMVjuwiTflK1AmT9DYFqQK+PdI1JG/LuvVD7f8gDLKJtJ
 oh5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=is8tu01oI9bVkgZplXk42aSakxSz6rAJ1WcVx3M2ffk=;
 b=UR64UPwQLNj2YMvOqv8xmIP0UI7fTkui4G4MouhSfWhrJqs5uBRLb6slI0z0BZKha7
 +RfFpqUDESpA1WjVvMF4xl+JNwaLtdM/6DxtUtXmN02wGeVvYLFOgtO3dVaIdngMv+jg
 X9RdJH0JuB+gpbA46d8A22BD0l32dNm6tw5IwGWZlgTTBUiSgaqw8bA7MUIZUyfUbTia
 YK4dqUftFlpdk+URIDq5p6KpEmA4xIwTjTfgwg5ndjiv0qEnpL4ak8n7J/XrqBMttBOW
 PMjjIoyPDu1f2wO2zaJ4wWtXzZ87JG+KKYItykhoOrrDuRQmwXhXYmx/2Tpy6qtR5Ix6
 lhwg==
X-Gm-Message-State: ANhLgQ2bPL45qWdJEef4zCc+oPP6cW0JWY8WCC4RGSjkl0wNyq3V5GbU
 A5ChFU/3wWO0lXMDUxuDfwHGN6a3Y0M=
X-Google-Smtp-Source: ADFU+vu+oVgM5dB35uttw31MKLJJ+4OpDjdkJkebw92io41NHd3XzDdmhOFlBJyapkSiQSd+Wp2Pqw==
X-Received: by 2002:a2e:7806:: with SMTP id t6mr2326054ljc.292.1584440409165; 
 Tue, 17 Mar 2020 03:20:09 -0700 (PDT)
Received: from localhost (host-176-37-176-139.la.net.ua. [176.37.176.139])
 by smtp.gmail.com with ESMTPSA id t207sm2422878lff.72.2020.03.17.03.20.08
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 17 Mar 2020 03:20:08 -0700 (PDT)
From: Igor Opaniuk <igor.opaniuk@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [RFC PATCH v1 2/5] ARM: dt-bindings: clock: imx6: Dual license adding
 MIT
Date: Tue, 17 Mar 2020 12:19:44 +0200
Message-Id: <20200317101947.27250-2-igor.opaniuk@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200317101947.27250-1-igor.opaniuk@gmail.com>
References: <20200317101947.27250-1-igor.opaniuk@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_032011_346163_DA3DE701 
X-CRM114-Status: GOOD (  13.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [igor.opaniuk[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 Mark Rutland <mark.rutland@arm.com>, Igor Opaniuk <igor.opaniuk@toradex.com>,
 Fabio Estevam <festevam@gmail.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, devicetree@vger.kernel.org,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>, Enrico Weigelt <info@metux.net>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 Stefan Agner <stefan@agner.ch>,
 Oleksandr Suvorov <oleksandr.suvorov@toradex.com>,
 Philippe Schenker <philippe.schenker@toradex.com>,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Max Krummenacher <max.krummenacher@toradex.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Thomas Gleixner <tglx@linutronix.de>, Shawn Guo <shawnguo@kernel.org>,
 Allison Randal <allison@lohutok.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Igor Opaniuk <igor.opaniuk@toradex.com>

Dual license files adding MIT license, which will permit to re-use
bindings and dependent device tree sources in other non-GPL OSS projects.

Signed-off-by: Igor Opaniuk <igor.opaniuk@toradex.com>
---

 include/dt-bindings/clock/imx6qdl-clock.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/dt-bindings/clock/imx6qdl-clock.h b/include/dt-bindings/clock/imx6qdl-clock.h
index e20c43cc36f6..e73b4b329c1e 100644
--- a/include/dt-bindings/clock/imx6qdl-clock.h
+++ b/include/dt-bindings/clock/imx6qdl-clock.h
@@ -1,4 +1,4 @@
-/* SPDX-License-Identifier: GPL-2.0-only */
+/* SPDX-License-Identifier: GPL-2.0-only OR MIT */
 /*
  * Copyright 2014 Freescale Semiconductor, Inc.
  */
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
