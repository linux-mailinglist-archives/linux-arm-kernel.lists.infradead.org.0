Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8C7E1A5EDB
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 12 Apr 2020 15:57:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=65NyyucWOowMcNls6iTtbT/jPw7QfR6bJ9cy/VRYDik=; b=DunRVBST+YZzH9
	i/Lie1vWM7L6SqkbouM5Pzjcsb6xbE4+0+UHqzx6UQ561AmDkZ3T1eTm162vP5hxiJQ6xGtj25PUC
	sqs2UFuu72MSHDjloAs//fBMnoBf/nzumtThw48wvyBRyIG68oC4xhQQY4+k8ym2xQ4oz8zlscVVx
	MuC8xc9Trx+TIRP7rBtefH9ZPizKcRawmZl8FVSvAXtlEJUrKwduMxVNZheAUH5O4+II17eWhsZ6k
	L4QMBY8215AS0fRZTpGmn/KL+IRGDLlRg1f8Q2RZcQ8XxhnOFj8VnkdyhjXEmziMpI3YOJloFvG0k
	2+GONGkh2YJVcFoSQs1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNd6o-0006xz-Ou; Sun, 12 Apr 2020 13:57:14 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNd6f-0006xd-Kg
 for linux-arm-kernel@lists.infradead.org; Sun, 12 Apr 2020 13:57:06 +0000
Received: by mail-pf1-x442.google.com with SMTP id c138so3413986pfc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 12 Apr 2020 06:57:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references;
 bh=88xbndOYpGPe/NGmyaJojaQNXhzRAvoZsI5qqKDeBKc=;
 b=Cz9w5UUrnKe3vHpSv451HrsP+jELlu2KJ/F9ZdaTxYjNFIbLL60xBXWzS9pJNu+q+q
 lt31gX+qh0g1CrqTZrgSp55NNy8CdMq/nPtykmffOMhrDy8XrQLqE59ovGvPg4J8JGml
 mACtcCkJAMRanQLr6NR0vhVb3XZeRfbq69VjdPyUTldcbGRw637Hp83U0dxKzEfOB0bM
 NVmn9PUAB7xJFOOyDwcWwVFP/ohBLiuBjKf7C0GHekrkgUFXEarMHAF2KTG2uHlMJ4vC
 6kBMmic6+mT+IvRReQnlD+hmkjOQHMcnErvBzetcBNKJ49tAkvGy0/Hzn/1wHYdTV85o
 eCLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references;
 bh=88xbndOYpGPe/NGmyaJojaQNXhzRAvoZsI5qqKDeBKc=;
 b=ezV4Je3kyq80Ckvgpkofm8Oj1LMVwcDWLSF3m84Nkst7pWq926fW1LDNEvAXYPsmkS
 pU04ADNC3izmmGjvEJLFx8padp6SrXTs5D9SnzVGptlkjx3iu2f4lWT2Oo2pAauctgFA
 2+uEmO/PALeLrEM7ZZuCfYFaW9k6fk/TZj5p47OqlUyZ7nWV2Q16AU2SrOV0dbtKyuLr
 WYKyeAnwc/oPob6/Gtap8VRZtmYZdgwGxIH7S2I/V69jtkCaKay0UPM3FciJLkYQDFDH
 ilSEr57DRxMZEbToULOpUIjeLX8X9QK5lbpfP5TMKPBUVXZUE4qeYUDFftgc9fzefH4p
 XZMw==
X-Gm-Message-State: AGi0PuYAuITw4NKfvRlN+q6hSwL7IqheuHR94LMaJrvnvNUMOGSptB+V
 xw87eftLxkVhRCrUgOi30WY=
X-Google-Smtp-Source: APiQypKVgCfL7VmfA1bSCl2vQ5+BYxlM/jmWtJJk14l2KcB4YSAQrQ4wq4TxZtKLs407YAEvSYMHiw==
X-Received: by 2002:a62:8343:: with SMTP id h64mr14488459pfe.166.1586699824643; 
 Sun, 12 Apr 2020 06:57:04 -0700 (PDT)
Received: from localhost.localdomain ([2409:4072:992:22ab:f465:67ce:fbea:c439])
 by smtp.gmail.com with ESMTPSA id 139sm6139060pfv.0.2020.04.12.06.56.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 12 Apr 2020 06:57:03 -0700 (PDT)
From: Aishwarya R <aishwaryarj100@gmail.com>
To: Jonathan Cameron <jic23@kernel.org>, Hartmut Knaack <knaack.h@gmx.de>,
 Lars-Peter Clausen <lars@metafoo.de>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Richard Fontana <rfontana@redhat.com>, Stephen Boyd <swboyd@chromium.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Kefeng Wang <wangkefeng.wang@huawei.com>,
 Aishwarya R <aishwaryarj100@gmail.com>, linux-iio@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] iio: adc: at91-adc: Use devm_platform_ioremap_resource
Date: Sun, 12 Apr 2020 19:26:42 +0530
Message-Id: <20200412135644.4027-1-aishwaryarj100@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200409151125.32677-1-aishwaryarj100@gmail.com>
References: <20200409151125.32677-1-aishwaryarj100@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200412_065705_703048_E1888FE2 
X-CRM114-Status: GOOD (  11.51  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [aishwaryarj100[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [aishwaryarj100[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Aishwarya Ramakrishnan <aishwaryarj100@gmail.com>

Use the helper function that wraps the calls to
platform_get_resource() and devm_ioremap_resource()
together. It reduces boilerplate and suggested by coccinelle.

Signed-off-by: Aishwarya Ramakrishnan <aishwaryarj100@gmail.com>
---
 drivers/iio/adc/at91_adc.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/iio/adc/at91_adc.c b/drivers/iio/adc/at91_adc.c
index abe99856c823..0368b6dc6d60 100644
--- a/drivers/iio/adc/at91_adc.c
+++ b/drivers/iio/adc/at91_adc.c
@@ -1152,7 +1152,6 @@ static int at91_adc_probe(struct platform_device *pdev)
 	int ret;
 	struct iio_dev *idev;
 	struct at91_adc_state *st;
-	struct resource *res;
 	u32 reg;
 
 	idev = devm_iio_device_alloc(&pdev->dev, sizeof(struct at91_adc_state));
@@ -1182,9 +1181,7 @@ static int at91_adc_probe(struct platform_device *pdev)
 	if (st->irq < 0)
 		return -ENODEV;
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-
-	st->reg_base = devm_ioremap_resource(&pdev->dev, res);
+	st->reg_base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(st->reg_base))
 		return PTR_ERR(st->reg_base);
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
