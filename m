Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0377012C174
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 29 Dec 2019 09:09:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=wy36iIWzVPScwgMbbJ+/YH2RwIxXAcw6HomIoW1sMBo=; b=BhMFMXrpvtsbMB9ftNFL9TdIhf
	wqI1TLKNXlHc/xOtTnFmf4g/d0gH9tAj/sAE0ZVgRUAaP0RXw6lJ4z0PcnQY+fMvjB+PrrRZekzYo
	/zxAQfmGB4u1Gnfae/4JD7Y/bBdd6OM5jSyN8iA7SokJTUrz7aO7N+GLQpYSBDtLhz4zkwDMmn1IG
	jqtvL7MH74IImz7zP7OT4e70QtgdvQ3x/mfy2qVOMvaZKmZnqN1ofxPw27hTZcDqziECvcoTUWPdM
	j8gKxymRivPwi4f+vpfmNDuYU3N8q98bgrPxQ4NldYfPJAv2LDU4FUs6ay0SU9oL21wQ//Tey5ZT+
	pRLp5tcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilTdn-00030v-HX; Sun, 29 Dec 2019 08:09:35 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilTaj-0000t9-IQ; Sun, 29 Dec 2019 08:06:26 +0000
Received: by mail-pl1-x642.google.com with SMTP id bd4so13499545plb.8;
 Sun, 29 Dec 2019 00:06:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=ANOl3CnPFLyB6riFOKnyBL3T9PtdCr1lGKXikea0YcI=;
 b=dxj3V1IisuDpq2NL5Q6A8NOvQgKXCeunf/9Z/eimC99L8bNK9plw1/sS7HNjHNf+wF
 SfErrsxT1W9JLW5PBYinKjKs7zadepUCWoomPrpTxJFyuSfA3Lw3e72l8FeRCLk8R/ho
 efGwN01DWTe8/K/mFblhsZo8Wm8pU2kGZVBDlD6uyfUF8hrtIiBTrcK/uR2wlxNrT/dL
 fjDYf647oMz3uNYJHyHdbdA94GeFS7ENvCUnjDKSepsLBdGEijoPzNTGUnN03mAXBOq4
 vFN3vRczWJwlZ36qw1+X172TkQT0iP4TPYja+ni8K6yKezKzoqShxtN2bKRf8B/RSiHy
 BaZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=ANOl3CnPFLyB6riFOKnyBL3T9PtdCr1lGKXikea0YcI=;
 b=ZF9DOu2jqGxlfPU9TZCwQKj7TNqDBBqWndARPC7K373wmWRpnXxRHHbotyfWOO5OR6
 hQ5VOFMfPE2i2GoDr6iEiyEX9gWALaNxLqQverQmij9P/0/WTR3W9TGbXOj+pIjfut7S
 cGIMJaOE2jSRTxY8pRlBFkXQjeOsc9DVn4vdmj9Cgso+u2OH9sxCahiMqdkvGA6CIgPc
 nz2YhP4HToqldLEo4S3COi4mRFPNCFRWmeHLH7ke82Zm3eVQD11kSIgW5PtYckbdZqKn
 SaOhDezDXrWdm1b8B4ky/ZPBn04iCONjjyhiLFne/ksls73q3OAK0cs5MS6BJQ6N4Foj
 dRbw==
X-Gm-Message-State: APjAAAUXLfEIcllWWW4eOMOcec6KpylltW4De0MErxRGpaqFQtjDJ9RV
 pp9o2grLVIVBMqPVvRCcvDg=
X-Google-Smtp-Source: APXvYqzZqQph6OcOb8yEENrkWM/eD0nkMWTrwwYH2jNC+yCIcGe4z4tadg45LLsnTqBcHb5E6WeHXw==
X-Received: by 2002:a17:90b:3011:: with SMTP id
 hg17mr37811661pjb.90.1577606783376; 
 Sun, 29 Dec 2019 00:06:23 -0800 (PST)
Received: from localhost ([2001:19f0:6001:12c8:5400:2ff:fe72:6403])
 by smtp.gmail.com with ESMTPSA id q21sm45775431pff.105.2019.12.29.00.06.22
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 29 Dec 2019 00:06:22 -0800 (PST)
From: Yangtao Li <tiny.windzz@gmail.com>
To: claudiu.beznea@microchip.com, thierry.reding@gmail.com,
 u.kleine-koenig@pengutronix.de, nicolas.ferre@microchip.com,
 alexandre.belloni@bootlin.com, ludovic.desroches@microchip.com,
 rjui@broadcom.com, sbranden@broadcom.com,
 bcm-kernel-feedback-list@broadcom.com, f.fainelli@gmail.com,
 nsaenzjulienne@suse.de, shc_work@mail.ru, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 linux-imx@nxp.com, vz@mleia.com, slemieux.tyco@gmail.com,
 khilman@baylibre.com, matthias.bgg@gmail.com, heiko@sntech.de,
 palmer@dabbelt.com, paul.walmsley@sifive.com, mripard@kernel.org,
 wens@csie.org, jonathanh@nvidia.com, linux@prisktech.co.nz,
 linux-arm-kernel@lists.infradead.org, linux-pwm@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rpi-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-riscv@lists.infradead.org,
 linux-tegra@vger.kernel.org
Subject: [PATCH 07/32] pwm: mediatek: convert to devm_platform_ioremap_resource
Date: Sun, 29 Dec 2019 08:05:45 +0000
Message-Id: <20191229080610.7597-7-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191229080610.7597-1-tiny.windzz@gmail.com>
References: <20191229080610.7597-1-tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191229_000625_629124_78CAC5D7 
X-CRM114-Status: UNSURE (   9.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tiny.windzz[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Yangtao Li <tiny.windzz@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use devm_platform_ioremap_resource() to simplify code.

Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
---
 drivers/pwm/pwm-mediatek.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/pwm/pwm-mediatek.c b/drivers/pwm/pwm-mediatek.c
index b94e0d09c300..e4a715d3860c 100644
--- a/drivers/pwm/pwm-mediatek.c
+++ b/drivers/pwm/pwm-mediatek.c
@@ -207,7 +207,6 @@ static const struct pwm_ops pwm_mediatek_ops = {
 static int pwm_mediatek_probe(struct platform_device *pdev)
 {
 	struct pwm_mediatek_chip *pc;
-	struct resource *res;
 	unsigned int i;
 	int ret;
 
@@ -217,8 +216,7 @@ static int pwm_mediatek_probe(struct platform_device *pdev)
 
 	pc->soc = of_device_get_match_data(&pdev->dev);
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	pc->regs = devm_ioremap_resource(&pdev->dev, res);
+	pc->regs = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(pc->regs))
 		return PTR_ERR(pc->regs);
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
