Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 494A4DA40A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 04:51:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tBrsA+ENenSnfYH7FsQrfWuyxxz05Z/BQE4QS7Ut1KI=; b=BZVyUrDdUPivpP
	jWPzm6L1yADBRyOEl13RlSQJjIBgqcttVh8VU1ACYB8+l0p4HfhdQFOgy49eD/WmyIHM+GZklO/ji
	RnWtQi88v2bX5enBff2MSRMHkWTm98Urhdc5CU1nN+scl7td75G64S8E+zfu56OCXnhYT0yiWuraB
	l9ZPmMXjoMp3tIbrcfsnWZ456q2Z2HLRTrUudi/8JwXVDCGshdejAnf9pt1o9khrG1/afIcJatMvQ
	gfQpdkynC2UuxVzdZojl38XieSHTes0Sid38MPdmyjfl/tPySiS5kWS17Jm3NA3IHu6JEH80VhP1+
	7MlSO96FoOUfM1Q50HlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKvsk-0008NQ-FJ; Thu, 17 Oct 2019 02:51:18 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKvsd-0008Mq-BY
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 02:51:12 +0000
Received: by mail-pf1-x444.google.com with SMTP id q7so622125pfh.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 16 Oct 2019 19:51:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=cORw/M2PPp+G7rfLzx7vrbHpIQU4gk/+aw+cEPBwgBE=;
 b=jrel5m/j9YYL8XOd6Xr8q9NmzTehtbTTdMqdGRHxdtRsYMBnhkDhv5LrfkTCXuvQD3
 zrHnNFFX1lZ4euDIoHgnqyGJwMgJSzSVyBKObtskju4sMZtvDrgXz7RexHwNPyzfxTnF
 zHbuPp+QOQz1BshXp2joY6vJfGaDX4q0FFsWjUG4vFMag7VFtc8CRrmWG3Mas9KsmI7c
 SlzATMivqx7PCUhJqu/yMwHNQusEvNdS2HYqwo4VNOhZ78m6PiIBRwWunZv5yzhvDqNX
 bWK6CF5rZouXsk4jeTWWSUTnRg5+caJcC4bxgjGQusjFi1+kQp5oKF9Rab/4iSxALM8A
 Glmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=cORw/M2PPp+G7rfLzx7vrbHpIQU4gk/+aw+cEPBwgBE=;
 b=evQP5SLYGz3Fk+QxdomgQLIPVYms3Eyu2ReeUE5EUKXcEzqe64wJA39dQbqm52k7Y3
 ogG8q/x+DCzai72qb/fHqiqCLSl3RjVTRAxEt+upydMJ8at0PpP0k3YnTzP6p8U06miz
 x9bOXtPBYp9V3v2J2/R0rqK8o6t/xbu6u01bENdUJpEUt0xjjk0WNgycrdCYzuAiiaUh
 I1ei/d7EAeI+kbCDrlfktU9d9lO9VMgp/+4NdGyfXQ1t2AxpM6ov2dOvRAp6dt6W8tPm
 VvSzy9nw8N64ek8hHLxfMTI3om3cR2ncc9X4iIsMDiuVSWOe93oRqN5SDFhG4LjLyKpc
 4SkA==
X-Gm-Message-State: APjAAAWbqSs02a+i+8yzlo+RQ+/xFh4/cUNDb/tppLHo4HUjyywUZG+x
 vnr5E16SOwa0NSyGPHoyhRw=
X-Google-Smtp-Source: APXvYqzEbs4jwr7g2mmEteoXN2Odjtn7PvD5Fn29n0LJ5zjtrDt5FDJmgMvZZEnW/+K7NTgnLeP62w==
X-Received: by 2002:a17:90a:17c4:: with SMTP id
 q62mr1348383pja.83.1571280669181; 
 Wed, 16 Oct 2019 19:51:09 -0700 (PDT)
Received: from suzukaze.ipads-lab.se.sjtu.edu.cn ([89.31.126.54])
 by smtp.gmail.com with ESMTPSA id a17sm467374pfi.178.2019.10.16.19.51.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Oct 2019 19:51:08 -0700 (PDT)
From: Chuhong Yuan <hslester96@gmail.com>
To: 
Subject: [PATCH] spi: pxa2xx: Add missed security checks
Date: Thu, 17 Oct 2019 10:50:58 +0800
Message-Id: <20191017025058.31528-1-hslester96@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_195111_396308_AB1A5385 
X-CRM114-Status: UNSURE (   8.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (hslester96[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (hslester96[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Chuhong Yuan <hslester96@gmail.com>, linux-kernel@vger.kernel.org,
 Haojian Zhuang <haojian.zhuang@gmail.com>, linux-spi@vger.kernel.org,
 Mark Brown <broonie@kernel.org>, Daniel Mack <daniel@zonque.org>,
 Robert Jarzmik <robert.jarzmik@free.fr>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

pxa2xx_spi_init_pdata misses checks for devm_clk_get and
platform_get_irq.
Add checks for them to fix the bugs.

Signed-off-by: Chuhong Yuan <hslester96@gmail.com>
---
 drivers/spi/spi-pxa2xx.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/spi/spi-pxa2xx.c b/drivers/spi/spi-pxa2xx.c
index bb6a14d1ab0f..2e73d75a6ac5 100644
--- a/drivers/spi/spi-pxa2xx.c
+++ b/drivers/spi/spi-pxa2xx.c
@@ -1565,7 +1565,13 @@ pxa2xx_spi_init_pdata(struct platform_device *pdev)
 #endif
 
 	ssp->clk = devm_clk_get(&pdev->dev, NULL);
+	if (IS_ERR(ssp->clk))
+		return NULL;
+
 	ssp->irq = platform_get_irq(pdev, 0);
+	if (ssp->irq < 0)
+		return NULL;
+
 	ssp->type = type;
 	ssp->pdev = pdev;
 	ssp->port_id = pxa2xx_spi_get_port_id(adev);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
