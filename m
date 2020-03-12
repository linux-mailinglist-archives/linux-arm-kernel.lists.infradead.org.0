Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6692118294E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 07:48:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=PR4lFWfshv6cxDIA9Dd8pWh9gnXgfakb8skRO5hyPt4=; b=MxAxVRj+cQURrXZ4+GABd48l7p
	KTvAWcaXV9i4Ji0df+qa1udSp1fREkn4B4qpsTdSVxioIM0YRdQu8e/gHaC7cBKl/84f8IbFucnjs
	4U0HHsmBYRyDpnU1MtoZ1e8B+WZLAfrB+C6nL4Q8pFoaulM5hMjQkvI8ztldcyd9sYElrNIMQKbA5
	O7Mr5Zl7K8b0eh+L2RaIM1TFks4FtYdv4n7i1Qvqu/pfkxcftRUXBB76CfYHp3JjacHezYTXGj43e
	SEZymDsAYSUcjXX0Px6/omUf7GPuBA+Y6NwtQ/x7b0o7062AwNZQ5DTZrPU5CT+sZrFgNe/CHrE6J
	awnTq7pQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCHe3-0002ez-L6; Thu, 12 Mar 2020 06:48:39 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCHdv-0002df-7F; Thu, 12 Mar 2020 06:48:32 +0000
Received: by mail-pf1-x443.google.com with SMTP id x2so2393344pfn.9;
 Wed, 11 Mar 2020 23:48:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=lxjxhXNAD3AGywNMl8H5owtCRspegZReTpVXsaoFlvM=;
 b=CHn2t8Gp6E99syTcM5Av0LZWL8jbCoQ5jap7ar2l6fwwQ94ld29tvZ2SQaDyM2UU8G
 PW/TBP58I1SL36LotuxvC8sTUJ6ISHI1Ks+kH0bK09zP46a4aZ3tE9av/ya27yUt8qbU
 XoE7fVdMiU85mCK52RFMbR+nutYGYwxFK1LezC6Hd/PY6kJseH+I6HfBPlAaAtROTs/P
 VTtY/fhkw+1KfQ6s0fqwH3xjOPJE9GLWoYvrPtTJkhSTE0waj6AkPoJPOO+8yybr6HG9
 j5zWZWCdxKJE7YczJZnE4y4AJE04ML1XF5ToDQYzB6fERP0UIHA9gpvlQ4Os0pnmcpIt
 8dYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=lxjxhXNAD3AGywNMl8H5owtCRspegZReTpVXsaoFlvM=;
 b=skKXIfa4hewvayGZlIaS7asS3EisXRdEuwu5pC7MoKjIjG6GuW3p8etSzsUMcPqs5B
 V9D2lEJHAZB4XQJzeh3H1ksrghIJOvufm0BSTkLT4s8Vo3Czm5zPeRok+oxje73eUmAl
 /9AA5r0BLSRmTzzgxXO37lWjy/5VURKIKTffmd4l9qO10eTWJTDlR6hpEb4+DpSrICUZ
 NjfHz68xj3iI4fprp30GeIGTXqGMU/4Jy2mHhWmASFRbNGEd+vi0e8jTwLuFWLwKmhNI
 I/MRvgdR6Yn9BdmxHbSKjE3uk8wc3cKG9GpRuKjiHhj3AzTV5/UAjWH/JKgziKxzHZ30
 +hrw==
X-Gm-Message-State: ANhLgQ0GHOYhDS5GrDl0bTOhmLac1cwvC9/yTar2Z6q0d9fCMDlf0mfe
 6qhxQ/d2qg0frIvH8GG4ELs=
X-Google-Smtp-Source: ADFU+vsZyABanN90ZhdifavscU6wtE4scsZ3AAJ8cEf7mvO9vLvMg7a4MP11N/8+VsKLJKB7fS7zqg==
X-Received: by 2002:a63:4282:: with SMTP id p124mr6575179pga.59.1583995710764; 
 Wed, 11 Mar 2020 23:48:30 -0700 (PDT)
Received: from localhost.localdomain ([106.51.232.35])
 by smtp.gmail.com with ESMTPSA id z20sm23429783pge.62.2020.03.11.23.48.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Mar 2020 23:48:30 -0700 (PDT)
From: afzal mohammed <afzal.mohd.ma@gmail.com>
To: daniel.lezcano@linaro.org
Subject: [PATCH v4] clocksource/drivers/timer-cs5535: request irq with
 non-NULL dev_id
Date: Thu, 12 Mar 2020 12:18:17 +0530
Message-Id: <20200312064817.19000-1-afzal.mohd.ma@gmail.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <e47ba222-bf4e-d13c-fbd3-6e7952097188@linaro.org>
References: <e47ba222-bf4e-d13c-fbd3-6e7952097188@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_234831_286438_43F0E3F1 
X-CRM114-Status: GOOD (  11.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [afzal.mohd.ma[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: kstewart@linuxfoundation.org, linus.walleij@linaro.org, shawnguo@kernel.org,
 festevam@gmail.com, afzal.mohd.ma@gmail.com, f.fainelli@gmail.com,
 khilman@baylibre.com, krzk@kernel.org, kgene@kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-imx@nxp.com,
 u.kleine-koenig@pengutronix.de, rjui@broadcom.com, s.hauer@pengutronix.de,
 linux-samsung-soc@vger.kernel.org, linux-amlogic@lists.infradead.org,
 tglx@linutronix.de, allison@lohutok.net, linux-arm-kernel@lists.infradead.org,
 baohua@kernel.org, sbranden@broadcom.com, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, linux@prisktech.co.nz, kernel@pengutronix.de,
 info@metux.net, nsaenzjulienne@suse.de
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Recently all usages of setup_irq() was replaced by request_irq().
request_irq() does a few sanity checks that were not done in
setup_irq(), if they fail irq registration will fail. One of the check
is to ensure that non-NULL dev_id is passed in the case of shared irq.

Fix it by passing non-NULL dev_id while registering the shared irq.

Fixes: cc2550b421aa ("clocksource: Replace setup_irq() by request_irq()")
Signed-off-by: afzal mohammed <afzal.mohd.ma@gmail.com>
---

Hi Daniel,

i have assumed that you would not rebase your drivers/next tree & put the
SHA-id in Fixes tag.

Regards
afzal

 drivers/clocksource/timer-cs5535.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/clocksource/timer-cs5535.c b/drivers/clocksource/timer-cs5535.c
index 51ea0509fb25..d47acfe848ae 100644
--- a/drivers/clocksource/timer-cs5535.c
+++ b/drivers/clocksource/timer-cs5535.c
@@ -133,6 +133,7 @@ static irqreturn_t mfgpt_tick(int irq, void *dev_id)
 
 static int __init cs5535_mfgpt_init(void)
 {
+	unsigned long flags = IRQF_NOBALANCING | IRQF_TIMER | IRQF_SHARED;
 	struct cs5535_mfgpt_timer *timer;
 	int ret;
 	uint16_t val;
@@ -152,9 +153,7 @@ static int __init cs5535_mfgpt_init(void)
 	}
 
 	/* And register it with the kernel */
-	ret = request_irq(timer_irq, mfgpt_tick,
-			  IRQF_NOBALANCING | IRQF_TIMER | IRQF_SHARED,
-			  DRV_NAME, NULL);
+	ret = request_irq(timer_irq, mfgpt_tick, flags, DRV_NAME, timer);
 	if (ret) {
 		printk(KERN_ERR DRV_NAME ": Unable to set up the interrupt.\n");
 		goto err_irq;
-- 
2.18.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
