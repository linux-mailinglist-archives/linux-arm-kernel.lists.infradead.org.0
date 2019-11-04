Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1BB5EE440
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 16:50:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Nx72V9rxOj9T+g7pJa90jJg1NarM3HAjiS0oN1bKo/I=; b=VQdtZwAenUyrcd
	KXKSafTPFxWhyxSa+dmgXQHsC0sD/LG3cnRPy5TvHchl7X+45uHl67mWVghZ7crzojBLBE8jGVBXe
	PAJeL3V82fDoobOXW5fQCw5IssuQRDZ+aDO3WUdn0Edz/FkOk5+AVy+BIRN5c2BOASiW1k4nHDK8i
	JOQHNB4v7aYlaOaDb0TP0ygFIAYxc1MpQI2F9CMqBiECxrWcC5Za6kaZ3pOwQob0m8hxpt7hT8IDl
	U2/5l9Y93POCKKmC3H0mtHAo7YsqIVZjwRnTj/CvLTZGo0NABrnp/VIiyRLrSm290weYKBDneoW4j
	sYuwm771ipw6j7hVqtJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRecs-0005DI-9s; Mon, 04 Nov 2019 15:50:42 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRecj-0005Ce-0J
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 15:50:34 +0000
Received: by mail-wr1-x443.google.com with SMTP id b3so11900854wrs.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 04 Nov 2019 07:50:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=clU1bKHT6brcxpybdIWScjXO4jR8ML9CYkdJSkfKRuE=;
 b=Yw9n7TwiEYa9fp+A5e/RLb4byJXfyYLBxxAel9gksuFgNn5rPRTZQAALS6u8CTiY3p
 CNxhKo/8GnZzIJawDAPcgoiBSmqrksuYcM27uS5yGZiTDFT2BzpK1LutVBMfLvLA1+s6
 npojTeyELwkekqwg2YHynh7GiuNCKh9TL+Po8U5XLY/7hTORMzvGkFNXIAto1u698GeJ
 vDt/YgSG8zbIF1Cx5iIXusAfukLzSl8L/2i1QmIBWXyjIFRA5pMc81b9YgfJ3q0c1OyL
 N1011f0bgmrFW5HLSyfi8tfvczCcS6Od+ruyvM85nEUNOI8wL0+T/iomvnF48Oqq8xav
 qevQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=clU1bKHT6brcxpybdIWScjXO4jR8ML9CYkdJSkfKRuE=;
 b=qv2NE0aCg8XF9nd3m914gDtL+rUudnt05dR9ewAw3VtYJ7qe++Bm8lYF+VlOK8C2w6
 SyyuvR8ef+yC2UUqwbmDMzKxdJO4Rpu79eimhKK7LwED1jkYzFys3S2B17DdD9lFHqT7
 Hcs9G7HGipko8CUaRfUOhN7/s11BYCUDnqyptoM9EJ9ovP9kG3sfXf0SvBym/BUxqoCH
 5WFqw+v7LWmPXTW/34aTbv9tYCvhnMSDco2mCVluvlTCkri3kwSGBekHuGuuWlaJkXzs
 twb9NJ6TL8Z0CAlCjI8Ers5aq5DITmc3qlP7YBxAlqTiqOFP/ObnjNEZqU8ToH7wSKtz
 +ewQ==
X-Gm-Message-State: APjAAAU5OgZyLhHmQrL5hF5brx7HXBppTBKZGoLtSKSW8O0kuOHDrbAi
 przeoR/XQxejXRmwef/ABZc=
X-Google-Smtp-Source: APXvYqwBJhMarOb9DuoSeD9Eo8Lc26NxpepeppxQG4OIxoUZW28lf16IvA+EqxulYRqvcR8eaU6MUw==
X-Received: by 2002:adf:ab4c:: with SMTP id r12mr20114632wrc.3.1572882631918; 
 Mon, 04 Nov 2019 07:50:31 -0800 (PST)
Received: from suzukaze.ipads-lab.se.sjtu.edu.cn ([202.120.40.82])
 by smtp.gmail.com with ESMTPSA id k4sm19569710wmk.26.2019.11.04.07.50.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 04 Nov 2019 07:50:31 -0800 (PST)
From: Chuhong Yuan <hslester96@gmail.com>
To: 
Subject: [PATCH] rtc: brcmstb-waketimer: add missed clk_disable_unprepare
Date: Mon,  4 Nov 2019 23:50:19 +0800
Message-Id: <20191104155019.9053-1-hslester96@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_075033_045973_7C57782C 
X-CRM114-Status: GOOD (  12.01  )
X-Spam-Score: 1.6 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [202.120.40.82 listed in dnsbl.sorbs.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (hslester96[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (hslester96[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-rtc@vger.kernel.org, Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Chuhong Yuan <hslester96@gmail.com>,
 linux-kernel@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This driver forgets to disable and unprepare clock when remove.
Add a call to clk_disable_unprepare to fix it.

Signed-off-by: Chuhong Yuan <hslester96@gmail.com>
---
 drivers/rtc/rtc-brcmstb-waketimer.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/rtc/rtc-brcmstb-waketimer.c b/drivers/rtc/rtc-brcmstb-waketimer.c
index 3e9800f9878a..06b2bdde584a 100644
--- a/drivers/rtc/rtc-brcmstb-waketimer.c
+++ b/drivers/rtc/rtc-brcmstb-waketimer.c
@@ -277,6 +277,8 @@ static int brcmstb_waketmr_remove(struct platform_device *pdev)
 	struct brcmstb_waketmr *timer = dev_get_drvdata(&pdev->dev);
 
 	unregister_reboot_notifier(&timer->reboot_notifier);
+	if (timer->clk)
+		clk_disable_unprepare(timer->clk);
 
 	return 0;
 }
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
