Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78DA91365E9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 04:55:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=5wpd8RflaRpr6gEnDGAhki1sjeAC420gJk0sxKj8Otg=; b=b4E
	BPjDTzwSYEW4YIE+mbMP8vWx2eMt2wwGL0Q9SKdffU7dvEJ7ggbWuwdxDyzxFPsQcjzRz9nN8hBJJ
	mRVijAa5vNKzhBPB6F+PL0m9FR4JMixGctKcska0CFhtmma4YS4gPEfJ0S5toZg/j7aV+znj7xkbW
	/DcOf6XzA2L/N3yMzJIr5s/CW3YiXJVU0DPNURJQUP3cSt86JzJwFffz/vuy4nodFjXsbN1Lxuut9
	VvGrAx1icDOcHGkftpCdHWKRKbRLcm4c8ERuZUjuizEacUgcwX84XrzwTy957IVk1GH/GxnR4A4wp
	jnbx3poKduUrEtvKBborH8w2XYTVjBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iplOl-0004Mq-4J; Fri, 10 Jan 2020 03:55:47 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iplOe-0004Lv-AZ
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 03:55:41 +0000
Received: by mail-wr1-x442.google.com with SMTP id y17so442714wrh.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Jan 2020 19:55:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=kxV5SqlkFgP5zhfbsJuuWIogZXN6mvLl8MHissFHHxg=;
 b=PIFFStt4M2Cz2Rebcs6yKg3KO/1NffcQ2nsyYGiF3v14UXaVwoRU1JK1x+PnCqCias
 74Zj31cQwCO/1M+d7BTwBRHAB4EfVm5qDSnqowwCT+NfnBPsorCxstjYNi4FZ+X5BcOm
 3aYiA/2X+XiQCNOGr+aouB2NYaezcDRqlSh3o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=kxV5SqlkFgP5zhfbsJuuWIogZXN6mvLl8MHissFHHxg=;
 b=KPvpfFsUhhmbJvr0h6JkecsACwyWvE2cByRUwEU9Ce2WdKXdMVYNq/4mEoKMBWe5bR
 jdz+Avpda4MXwQIqa7ArDYwjovdbwNQeme9tTPC9U/HesJbSrw/AHTZ8BPbxSFLhjqxk
 NjjIY+aVUNcuBsIhigmxw7nNTwo0/SsxI5sZIDDdzA/FHV3StjR7l3OO+SC00Vw7lCbB
 LrNyFc9wjiV6uc3TOzwYTH+8fL3NOa6sfG0EvryTVt1eUFgtegoP9FEGpTVpAlGBHce6
 3bPB7ckMUwcm7nTC7Te4IjnxFI+DGheCgoq/pyztRr2UjveXDzMP0+P5IaLTzAchNxVU
 l+4g==
X-Gm-Message-State: APjAAAUDtiqeYnDq7Xo79Kd+245TGwMBM3PbAePpggpGy9c1Z/wpSsim
 kxHPCvT+vvNc7jyUHfITfDfRFA==
X-Google-Smtp-Source: APXvYqwhH4tu3jlKFGUg12Tzi7qWJWfnfZa+c/G1dxcpt5oyAFIOPeAhb3CJjIDnMMTvI/n6+5g50w==
X-Received: by 2002:a5d:6748:: with SMTP id l8mr952505wrw.188.1578628537787;
 Thu, 09 Jan 2020 19:55:37 -0800 (PST)
Received: from rayagonda.dhcp.broadcom.net ([192.19.234.250])
 by smtp.gmail.com with ESMTPSA id e18sm674999wrw.70.2020.01.09.19.55.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Jan 2020 19:55:37 -0800 (PST)
From: Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>
To: Linus Walleij <linus.walleij@linaro.org>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>,
 bcm-kernel-feedback-list@broadcom.com,
 Chris Packham <chris.packham@alliedtelesis.co.nz>,
 Li Jin <li.jin@broadcom.com>, YueHaibing <yuehaibing@huawei.com>,
 linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v1 1/1] pinctrl: iproc: Use platform_get_irq_optional() to
 avoid error message
Date: Fri, 10 Jan 2020 09:25:24 +0530
Message-Id: <20200110035524.23511-1-rayagonda.kokatanur@broadcom.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_195540_368269_E9082298 
X-CRM114-Status: GOOD (  13.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use platform_get_irq_optional() instead of platform_get_irq() to avoid
below error message during probe:

[ 0.589121] iproc-gpio 66424800.gpio: IRQ index 0 not found

Signed-off-by: Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>
---
 drivers/pinctrl/bcm/pinctrl-iproc-gpio.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/pinctrl/bcm/pinctrl-iproc-gpio.c b/drivers/pinctrl/bcm/pinctrl-iproc-gpio.c
index 831a9318c384..0d2bdb818d41 100644
--- a/drivers/pinctrl/bcm/pinctrl-iproc-gpio.c
+++ b/drivers/pinctrl/bcm/pinctrl-iproc-gpio.c
@@ -843,7 +843,7 @@ static int iproc_gpio_probe(struct platform_device *pdev)
 							"gpio-ranges");
 
 	/* optional GPIO interrupt support */
-	irq = platform_get_irq(pdev, 0);
+	irq = platform_get_irq_optional(pdev, 0);
 	if (irq > 0) {
 		struct irq_chip *irqc;
 		struct gpio_irq_chip *girq;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
