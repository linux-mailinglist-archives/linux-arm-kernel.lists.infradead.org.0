Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59DB58889F
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 10 Aug 2019 07:31:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=GLrkTl5aqXnX5WK03hDmbGQ6DBLg+U9JAuwPWbk4quE=; b=sytPJD1p4pcFQdOwVRbZxgPWM/
	NDR4eNxeszljiXc2dw9fsXBvYD1uHF9HcPUOZGMiFRycH0+dO41ux7/lzpxVwdsCunYL2L5TRQPTd
	Pds0ShZp52C43IYpRCpIDFfqMXmBHkcdiEeWas+6tWdtNpUBPr0WoueKGFLzWOEJyPc0YIC8T1j1t
	/YqxCNw+ABNEVv1NpfROhpuZ8xVeb2dJnlstQI7vIxdBjd7otM7Z0q5xg4AvZYY1GyXbNqFq9X0/M
	U+rNGFkNgr5OnUvzaFumVe7K+sA0OGL3W9GFX2OyTsRjg3wWmtS0s/kV7aRda3FF+wtKUlwI/ZvP7
	Xt8uGpTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwJyI-0003Wy-O0; Sat, 10 Aug 2019 05:31:18 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwJwf-00014X-UT
 for linux-arm-kernel@lists.infradead.org; Sat, 10 Aug 2019 05:29:39 +0000
Received: by mail-pf1-x443.google.com with SMTP id m30so47130042pff.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 09 Aug 2019 22:29:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=H2tnHPalIp9fh2DhSzr0mzewVRlNnFoVrBrcA4HDoA0=;
 b=osEaRM/awWZ4WLe5JMXKzOCsoTrczswa5Bo5mnVciwewqdioAOOsH0ycz5lcmtSG8f
 8iUp+HhGi6e2ec+73M0lfnzwpuJ/NBfRoXwTcOrxd7y+lgkMqxdrKI2uVd+nzaErnxUk
 iCue7pUwPCkdjFrXVijMnLUcQVP5lv0AZLd4uf36YjJrBuPlU7zH4uPTnbdFC0EnHc23
 UV6pbAxQxIpeQt1KB4AN3p9eWLw4/lQ8Ychsbx9r1t4Kcz4yQmOtd3v8Ngnr+7SYl8xz
 RyAAYI2pbE3Dp78iZHSiAaD4AGhwoyDhG7eLGGqOVgIchH6N2G2njfryjnrjXDh4/9Gz
 OhOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=H2tnHPalIp9fh2DhSzr0mzewVRlNnFoVrBrcA4HDoA0=;
 b=KN4+dgBM0TKVpH4jJ3QZyh/cfP3mCNtvYFd0jk1uWRg/MeETRA05CGehvIKoZfmYO6
 /OjdKysKVf+a2NKeCLpcYNPQVN5+BbzhiirKvsgFp1x5GWd4IkHP49Dmf8Qa3XEdT43B
 sqgxNVagSSm+VbaxJEkh+sPtLGGcmqXJqCby2VnNHn8vIeuOWwuN1MnbEoO8l829ZRV7
 lQvuoYa3rOljs7TWWFiFC87F/ygC0+b80gbjFDT+lZOKpE5dilUNtlPvkUQ/CCxRastX
 V/hFgIUdquZ61a9a2KfgzX9fUX5I7htY8w8Uu+kVk+a5CFjra1AER56yPWer9d16VU9/
 LTdA==
X-Gm-Message-State: APjAAAUP2eF753T1Lfh8Oh3pQzUxFGQ8igoiRijOTs3aFedk6sDLKWbx
 uvO+5LolMx/bWb4RP2FEnNo=
X-Google-Smtp-Source: APXvYqyCyAszXCVppy900Pfp410ttd5Apzw/e8hURBIejOOVEiT7DU9J+hYVzPCVmknr0H7fMYIsiA==
X-Received: by 2002:a17:90a:fb98:: with SMTP id
 cp24mr2640494pjb.48.1565414977200; 
 Fri, 09 Aug 2019 22:29:37 -0700 (PDT)
Received: from localhost ([202.182.106.211])
 by smtp.gmail.com with ESMTPSA id v14sm106463565pfm.164.2019.08.09.22.29.36
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 09 Aug 2019 22:29:36 -0700 (PDT)
From: Yangtao Li <tiny.windzz@gmail.com>
To: rui.zhang@intel.com, edubezval@gmail.com, daniel.lezcano@linaro.org,
 robh+dt@kernel.org, mark.rutland@arm.com, maxime.ripard@bootlin.com,
 wens@csie.org, mchehab+samsung@kernel.org, davem@davemloft.net,
 gregkh@linuxfoundation.org, Jonathan.Cameron@huawei.com,
 nicolas.ferre@microchip.com
Subject: [PATCH v5 06/18] thermal: sun8i: get ths init func from device
 compatible
Date: Sat, 10 Aug 2019 05:28:17 +0000
Message-Id: <20190810052829.6032-7-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190810052829.6032-1-tiny.windzz@gmail.com>
References: <20190810052829.6032-1-tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_222938_380728_EABAED86 
X-CRM114-Status: GOOD (  12.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tiny.windzz[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Yangtao Li <tiny.windzz@gmail.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-pm@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There are some differences in register initialization for
different socs. So we get different initialization functions
from device compatible.

Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
---
 drivers/thermal/sun8i_thermal.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/thermal/sun8i_thermal.c b/drivers/thermal/sun8i_thermal.c
index f338fa25b98e..ad877b54f58e 100644
--- a/drivers/thermal/sun8i_thermal.c
+++ b/drivers/thermal/sun8i_thermal.c
@@ -59,6 +59,7 @@ struct ths_thermal_chip {
 	int		scale;
 	int		ft_deviation;
 	int		temp_data_base;
+	int		(*init)(struct ths_device *tmdev);
 };
 
 struct ths_device {
@@ -356,7 +357,7 @@ static int sun8i_ths_probe(struct platform_device *pdev)
 	if (irq < 0)
 		return irq;
 
-	ret = sun50i_h6_thermal_init(tmdev);
+	ret = tmdev->chip->init(tmdev);
 	if (ret)
 		return ret;
 
@@ -394,6 +395,7 @@ static const struct ths_thermal_chip sun50i_h6_ths = {
 	.scale = -67,
 	.ft_deviation = SUN50I_H6_FT_DEVIATION,
 	.temp_data_base = SUN50I_H6_THS_TEMP_DATA,
+	.init = sun50i_h6_thermal_init,
 };
 
 static const struct of_device_id of_ths_match[] = {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
