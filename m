Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB94A2D3EE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 04:43:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=6jMXMVpSg/ZtCgKLln7nK8Rkz8EO3QdNy716LDzNH+k=; b=HAW
	gua6ZEMH5wwG6D8HC6UzSqcIHxafJkgSo95HvhjjNlysqssLatOqO8t7gyyV+DzC5bdFFmH82bpd1
	q8M0ZGLfQgB4qE/u/tZMDYvrEAIh7sXes+IOYEizcd3t0FeiQYDMoKDd5/JDFvZjcqm8h9i6toZDK
	njNfXSoRVwHhX0Eir96TwtUlMTDYHd132/zOiQc/KQbFz/hwiU9pja7Yt5hD32JgoqlP4xRbJbMHs
	sYXdOcZzF1SklsC9JhE7ga9C6wslgoD0OZ6XKeKvuebcAatkUSAeOSWr+I1XRdWoDIvLUETfXxjDB
	AlG2lXmEa/+R3Qk2u5rwVsRFmGe4ebQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVoYM-0003ZF-D2; Wed, 29 May 2019 02:42:58 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVoYF-0003Yk-P9
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 02:42:53 +0000
Received: by mail-pl1-x643.google.com with SMTP id w7so382167plz.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 May 2019 19:42:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=2pzbdec/1JzOU+htU9qgwmgzRD0iXkmCaTXRbBzNegE=;
 b=QwH6V4R2xb0vcw3QrTM/J9tendGlR16G/+s3zQPU6a04C3HYdiHIxvYhx1aOcyXWYP
 ooS7hxyjSUzieuw9Qfp2wTMhLpHRVcu90eZ210CjprwDB9BDLDZ0PAJwQqqV7GrUmeBa
 YhrwMkhb1oWnkBplloGHwsZUkPIry9Hh84qj+inm1Me+v66pOlcL2kZhxYX97bJRhSJt
 p5QOVnTMQYQSz2qxoXVvt7APDOtdq/BGiWDtiWSp/wU4MISzFhnrJM5cMWDZjPxq6hD8
 xJD/BfW4NNf5GFpYKuIqgMfg3oGTg6MbO5fwKqi9mzQsu2c6b1qLxDEdKyliwWEUmoKk
 TsOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=2pzbdec/1JzOU+htU9qgwmgzRD0iXkmCaTXRbBzNegE=;
 b=ugNGrAYe+/K2m8jzV9LeqbY4TUSmcTbAA+/lTaq5rnAPaqFJt1MqIBzqi+VgDgOFi8
 O6y5LR5g0r3Cn/ZWeFaET8Q9FhjABJLJ78H50Xn1FddrAZgz69Lcj1ILnXWqDAj3E7BC
 7U+vRBCBEXae+oIypKZa0+0feOP2E1+zF+4PdwbHR3YBzY85lJcTxFW5elirqLAOtb87
 ji0VE76+OBjC+4Rg9n5MBmsA+amOTr+5PdkBiWSN8MktIDpuVz1/HYk713A78dzbWrIZ
 ZrH6uKOkyLPkInTZWJexDMOWIrRt4g5iBfXQz7lJkI+cL507NdvQEXlzLXuiLvmjwQc9
 doqw==
X-Gm-Message-State: APjAAAVUZNrNB0Kb0mMHxUZkm8OmyDBzCdYkqbFevSt5ZPjxkl4lx6Oq
 Vc9Uwf4J4zgxnOtN6am+wLs=
X-Google-Smtp-Source: APXvYqzrEGdW0HPJ6+WGHPma3v3/P3aC8F4tBF+UxqKOyrUZNity4s5dMzo8JslXmym7AtpRbpV/4w==
X-Received: by 2002:a17:902:8f8f:: with SMTP id
 z15mr86941174plo.93.1559097770190; 
 Tue, 28 May 2019 19:42:50 -0700 (PDT)
Received: from xy-data.openstacklocal
 (ecs-159-138-22-150.compute.hwclouds-dns.com. [159.138.22.150])
 by smtp.gmail.com with ESMTPSA id w4sm15152249pfi.87.2019.05.28.19.42.48
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 28 May 2019 19:42:49 -0700 (PDT)
From: Young Xiao <92siuyang@gmail.com>
To: rjui@broadcom.com, sbranden@broadcom.com,
 bcm-kernel-feedback-list@broadcom.com, linus.walleij@linaro.org,
 linux-arm-kernel@lists.infradead.org, linux-gpio@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] pinctrl: ns2: Fix potential NULL dereference
Date: Wed, 29 May 2019 10:43:58 +0800
Message-Id: <1559097838-26070-1-git-send-email-92siuyang@gmail.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_194251_817918_78D556DC 
X-CRM114-Status: GOOD (  10.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (92siuyang[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Young Xiao <92siuyang@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

platform_get_resource() may fail and return NULL, so we should
better check it's return value to avoid a NULL pointer dereference
a bit later in the code.

Signed-off-by: Young Xiao <92siuyang@gmail.com>
---
 drivers/pinctrl/bcm/pinctrl-ns2-mux.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/pinctrl/bcm/pinctrl-ns2-mux.c b/drivers/pinctrl/bcm/pinctrl-ns2-mux.c
index 4b5cf0e..2bf6af7 100644
--- a/drivers/pinctrl/bcm/pinctrl-ns2-mux.c
+++ b/drivers/pinctrl/bcm/pinctrl-ns2-mux.c
@@ -1048,6 +1048,8 @@ static int ns2_pinmux_probe(struct platform_device *pdev)
 		return PTR_ERR(pinctrl->base0);
 
 	res = platform_get_resource(pdev, IORESOURCE_MEM, 1);
+	if (!res)
+		return -EINVAL;
 	pinctrl->base1 = devm_ioremap_nocache(&pdev->dev, res->start,
 					resource_size(res));
 	if (!pinctrl->base1) {
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
