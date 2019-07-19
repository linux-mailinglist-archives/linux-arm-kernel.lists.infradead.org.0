Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26CF56E541
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jul 2019 13:53:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VfEbRjoKRB2j/AogVvhqp1u9yk+FeojIEg6YeVuaxno=; b=YOLVrDowA2/GXu
	dElyNDcZ04VM4zPl37mNhFTXaqSOAAjv/pDu28rajCGhE2jHvQS9WncJDcMG7LUnabLs6e8ph5Aae
	dUoGE/3DY2MNhuMEgHY8g7hvxTmS1worvQ/kfFqKgAHW+/niVpBgmVMmrNemqoaA+1sa1Ex55f0RV
	jnmpWnc9vouw/bZAxt4ed6mzs/CBsKzPIw1aAlSpoEcTGS1gaM5mub1c7+EVK4OGRetbnsw/Xu3e/
	m8TbZr8rM1uSCCShXtcFr8et6nTdRJn9i2+AzM53rV9AyUjQ0P3c3/ReJue9dBF3rMNM/eV9O9xbd
	qqOv0JlS9Itwh6VdY83A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoRSI-0001uN-G6; Fri, 19 Jul 2019 11:53:42 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoRS4-0001tz-Sc
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jul 2019 11:53:30 +0000
Received: by mail-pf1-x441.google.com with SMTP id y15so14092666pfn.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 19 Jul 2019 04:53:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=7BQWVFk5xnfvY43V3HP4RUSBIEVm8NfFwU/OWhiUguc=;
 b=m14xS8Ld/wkugydyp1wPJICiD4EZ+GAzIwpCJUIwTOwmHroduRA2AOmXy/2OTSy/OH
 b2nY8TqpAn7eD29M+OJ7jQ0xs2NmYlTleUX8hIvZ4JCn4nOcKyWrTIoxOk7PHqw+2efO
 dVcoDfo17nQotY+imVuy8lIqw3klmXSskBNldqft1gmIyGmG2g8LMgOfs94K9S0arRIf
 88aZ0VvQhi3NEMoQlfBebxeqbKVZTAJhII1aoMMX1cydv8DwmHNwZh2ooqHmwapnuDPy
 aWNzM32UK/trXBmqx3+upJTFRdcUYLqJIoP5BmNjuyTF+4U5ThU/l2qwHix6qP6/il0H
 7N6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=7BQWVFk5xnfvY43V3HP4RUSBIEVm8NfFwU/OWhiUguc=;
 b=ZAe60y2MsDRpxA7dCD7f8PDBGMoXZHpF/5B7URBjWiqdCHQi7X5LnO2dAqAAmjX4if
 GqiBtNkFAD6NBSjPQJ8UUHK5SZbEAyETjlcD74PU+xlhZ/34ufeNxw8KkhJjYZKr72Mc
 3/DhWs94zD7SSaDcAj/W/IGatloxGRmb90qaraRHhdrhQiCliIno1MFDC4aYN2wR2VLK
 ImROhwpJz2PGv7HbOoeEsmuVb2dxPS6IWRQHYIymcyk9xDeJhlCbnP2wN79bvKVKy4g6
 JIJrJNKQIHkntoyoJL6E/0ThJ3VMtDn572irS5km+ImT98A2qx8EKlPgPFP9Sx1KB5tY
 g/eA==
X-Gm-Message-State: APjAAAVODPdy9WHHJI/63FZvRInfBako1cwegbMhRtt0oz/8jvOAqNJR
 kbYzFTYbMcnOAIMfLHx12eM=
X-Google-Smtp-Source: APXvYqwsybHi6eEwHb23QA32buHWpS8rl4ER9/dYM50aRVRtMMZZpWQTfL6OT5LSZ/rAAsXAj618tg==
X-Received: by 2002:a63:4c17:: with SMTP id z23mr14499235pga.167.1563537208055; 
 Fri, 19 Jul 2019 04:53:28 -0700 (PDT)
Received: from suzukaze.ipads-lab.se.sjtu.edu.cn ([89.31.126.54])
 by smtp.gmail.com with ESMTPSA id v184sm30587380pfb.82.2019.07.19.04.53.25
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 19 Jul 2019 04:53:27 -0700 (PDT)
From: Chuhong Yuan <hslester96@gmail.com>
To: 
Subject: [PATCH] Input: touchscreen - Use dev_get_drvdata
Date: Fri, 19 Jul 2019 19:53:08 +0800
Message-Id: <20190719115307.22124-1-hslester96@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190719_045328_951973_20AA42CA 
X-CRM114-Status: UNSURE (   9.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (hslester96[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (hslester96[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Sascha Hauer <s.hauer@pengutronix.de>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Chuhong Yuan <hslester96@gmail.com>, linux-kernel@vger.kernel.org,
 linux-input@vger.kernel.org, Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

dev_get_drvdata is a simpler implementation comparing
to to_platform_device + platform_get_drvdata.
This makes the code simpler.

Signed-off-by: Chuhong Yuan <hslester96@gmail.com>
---
 drivers/input/touchscreen/imx6ul_tsc.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/input/touchscreen/imx6ul_tsc.c b/drivers/input/touchscreen/imx6ul_tsc.c
index e04eecd65bbb..655652f449ec 100644
--- a/drivers/input/touchscreen/imx6ul_tsc.c
+++ b/drivers/input/touchscreen/imx6ul_tsc.c
@@ -507,8 +507,7 @@ static int imx6ul_tsc_probe(struct platform_device *pdev)
 
 static int __maybe_unused imx6ul_tsc_suspend(struct device *dev)
 {
-	struct platform_device *pdev = to_platform_device(dev);
-	struct imx6ul_tsc *tsc = platform_get_drvdata(pdev);
+	struct imx6ul_tsc *tsc = dev_get_drvdata(dev);
 	struct input_dev *input_dev = tsc->input;
 
 	mutex_lock(&input_dev->mutex);
@@ -527,8 +526,7 @@ static int __maybe_unused imx6ul_tsc_suspend(struct device *dev)
 
 static int __maybe_unused imx6ul_tsc_resume(struct device *dev)
 {
-	struct platform_device *pdev = to_platform_device(dev);
-	struct imx6ul_tsc *tsc = platform_get_drvdata(pdev);
+	struct imx6ul_tsc *tsc = dev_get_drvdata(dev);
 	struct input_dev *input_dev = tsc->input;
 	int retval = 0;
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
