Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42DC9188C7
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 May 2019 13:12:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Q/GBu9+nvRO75NFkUqxjRNcooPO0OiLs3+tSUQh3aQc=; b=i9D6b60/SWWd7ab2Bwj7a5aMyf
	GKpMG619Tfbg/o57M6+dY0wMCeXLalB2DQZQzq20CQOaeq+2JqA+qDFsOjZBn2MJnJt09sLXxfijR
	1XGiz9IV8ued871ZaGMw+wVmri5/ZTiT6TSHwLgpRuoE92M0Fwg7HUcK/3Q7DDR9prJdtzSI86VIU
	JoXbVn0UlPAMfiAOlTUWN5AfZS5ZMS19oCe0zgcBQm0uiOz+bPBHgFbc6AiS1AMUXEdFc4u63XmOd
	uLoyww76AMoq3PuQtV1KW+qj4qPwcUQApVaON7eQZEwXd7jJFYIpvJsDnasG0z0MGsR6MWqZVHCPK
	3wUkdRYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOgyo-0001EF-Rh; Thu, 09 May 2019 11:12:50 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOgxn-0008U2-PP
 for linux-arm-kernel@lists.infradead.org; Thu, 09 May 2019 11:11:56 +0000
Received: by mail-wr1-x441.google.com with SMTP id s15so2424626wra.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 May 2019 04:11:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=qVGkTtEbJGXMDq9yfYbvGEhm0nTx4/Q5KKy9E6G6Uls=;
 b=Q14zEwAVJ9z1gCyDh7Pvv/+JbG3ARRqKDiD3F+DXQx18zoM6hirJXgkqL3Rz14N6Pk
 jqPs9miT3a4rOXazdPQRMH/N9XjuF7ir7durm/GwimyvozKXr0rn5XtxS3FsxXcEJzdb
 o3UflAShf1SFKF3ROszcWoh+Jh5Y3rFcn6BW3Dyj9oHMBSi9ijUGtjKiWFaDrGpbVJcI
 cxMXl3DKWTIxRGNR7KdaoHTcUYor2syu8T+Kus0ipxh6r1XhGogSgQzSMGmdzzz3DvE2
 zqlBQ8Rw518/FbDSB2migS9IDBFyJFzASEpS0LA24IulsYf3lWUN4lS2G8W6C9tUCdOs
 qxkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=qVGkTtEbJGXMDq9yfYbvGEhm0nTx4/Q5KKy9E6G6Uls=;
 b=tRKRQzvzKQjdqEy01AeTfMIK8th9aXo7zAe4LUaTsYXS8dP+dQhK3K8YYz1jXDvClc
 yCt+biV11nWAYiGNG6mHz+WgNm3zIFhMoXMwIRpLIHKCrPRgc4KytkuuTniKdm2llaUY
 WGsYpPSJ0E1LPwPyxQzOyNx5MVRIO+qdk3rKqESwg+dg9OIwbTrBHakWEiAm87Tqy3FA
 +n8EPklRRQxgaNPuZzZ3IZ6FdA2Vu2g1EDZS+91Bpz/5VDmca0D1GycSgvbQenspyBOW
 YfTBHPRvtqiwBPAdKIhOH+qj05QdTyOSjurb6Bwkd3FWWcMabfQl6q9MRQiMg4wAyMrG
 MT/w==
X-Gm-Message-State: APjAAAWF/GaFyPNC7pKh/gtwO3ewEh8Z4GYtqu26cAGH43gpKYxM8RIL
 dqwSZLPiFdMyrcxPmeyWLCPkpQ==
X-Google-Smtp-Source: APXvYqxmNseiHG6j6CHViU7MdKt23CuoxFMo6eV7NmQGqMcSLVJs7hdMitKEmQksaHnD5UVv3l6ckw==
X-Received: by 2002:a5d:448e:: with SMTP id j14mr2738284wrq.158.1557400306306; 
 Thu, 09 May 2019 04:11:46 -0700 (PDT)
Received: from mai.irit.fr ([141.115.39.235])
 by smtp.gmail.com with ESMTPSA id z7sm2299778wme.26.2019.05.09.04.11.44
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 09 May 2019 04:11:45 -0700 (PDT)
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: tglx@linutronix.de
Subject: [PATCH 15/15] misc: atmel_tclib: Do not probe already used TCBs
Date: Thu,  9 May 2019 13:10:48 +0200
Message-Id: <20190509111048.11151-15-daniel.lezcano@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190509111048.11151-1-daniel.lezcano@linaro.org>
References: <7e786ba3-a664-8fd9-dd17-6a5be996a712@linaro.org>
 <20190509111048.11151-1-daniel.lezcano@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_041148_758904_37A9EDAE 
X-CRM114-Status: GOOD (  11.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Arnd Bergmann <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 "moderated list:MICROCHIP TIMER COUNTER TC AND CLOCKSOURCE DR..."
 <linux-arm-kernel@lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Alexandre Belloni <alexandre.belloni@bootlin.com>

The TCBs that have children are using the proper DT bindings and don't need
to be handled by tclib.

Acked-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>
---
 drivers/misc/atmel_tclib.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/misc/atmel_tclib.c b/drivers/misc/atmel_tclib.c
index 194f774ab3a1..2c6850ef0e9c 100644
--- a/drivers/misc/atmel_tclib.c
+++ b/drivers/misc/atmel_tclib.c
@@ -111,6 +111,9 @@ static int __init tc_probe(struct platform_device *pdev)
 	struct resource	*r;
 	unsigned int	i;
 
+	if (of_get_child_count(pdev->dev.of_node))
+		return -EBUSY;
+
 	irq = platform_get_irq(pdev, 0);
 	if (irq < 0)
 		return -EINVAL;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
