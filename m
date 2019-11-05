Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14D61F0216
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 17:01:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=v6PrZbwBbjstoqFZNAERHNDw7asPd+VEnHY7QG7/+dM=; b=r8krmCFPUhAbst
	Y/zQ2fwWu2b/rIuTZgcDrxDg20HkbhCxjgHYYGnPGJvKM//PPvVAvc9X8sWydsygbX1kjpSu7dLh8
	WVM6oqhL3LMKzP+DUBsMsT6Sq873c8aMki9bxTmjJEdBtArvp+t88RktxV/NgBvRLxEz7Gw6gtHBM
	ypvx8gj2tAZrUeeJjN8ma51FLviYeIKu5Nb3t+1RKBWwh7TDj57bySVFVIOa29AE7zroSyzKjEuuM
	JRew1F9eGXsrWM1KsRNtJkAs4O6p34q+SW0dirmsvxOU08yR7NMoWN9ibx3drxIVWMWICVzeYnvaR
	qBYDvkwHi3F+dp1mYrCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS1Gr-0002a4-Ob; Tue, 05 Nov 2019 16:01:29 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS1GO-0002XQ-GR
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 16:01:01 +0000
Received: by mail-wm1-x342.google.com with SMTP id q70so21574573wme.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 Nov 2019 08:00:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=2rC8ggX+aC8YuG4dw8OqC3Cq4cY6/6sYtuLebkBYV4k=;
 b=DvEC2H29tCL+5FSH3h12iT9678mGG5PYHCknN/4DD/qmkbY0zsnvhF6cxSvNZJJaPE
 Fl9dfbN+IA0bbrWN9aTeyBXbqI2E9Xvs32sfb8+unxxZXeZjR6++wQv3Wda8TEqymh0r
 tOeHIIRA9YmwNw7zH0hzB5/qDwSgYNqgnNbzWGS/XFTDp+f3/nBf+b5CUZUNsQIS8Ihc
 F8HHsZHjKlOBkvZDsDB0K7cLtDdFzJdQsMlgrGcse6TuLYRIEj6UKo5SI4HKZMmAWqo2
 O5V3v3eNXvGY2oPub3QLVw4Ui9GxOAkVThPOO65KCuLrOCuQJq8DGyi+VwrwjPUgpjJd
 0oJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=2rC8ggX+aC8YuG4dw8OqC3Cq4cY6/6sYtuLebkBYV4k=;
 b=szyvnitI9Ggca+hRMR8VtZiYYhpkc6LqLcLJXN33OmmArsxwLyPLOMLeAZekoI216c
 31+X1dZwDDvkG+FpCZ//yAUDr+tWQbmC9Zd4MOjibpbAiTXgMTHEgYiXt8IF5NU9ZIR5
 pfmFzcCbfUR35IRuqOoL+x7R4l4Ez4AN1gEm9OL7L62BMQZ0s+UZzKOcF2dibV0tG2+a
 Xx2F1pxFg2yBkY2FCxSAfXtV90PPYIcfvPjzVT4CpgnC4ULq00Bpl4h62lAAQrmQeYSw
 3TQrjArbGMNOCQmcqcV0KrbwSwBqypk5Bk2GeK044xxn2wII15OYkbQbbRw+zd/aCQkz
 81ZA==
X-Gm-Message-State: APjAAAUJWIYedLqHoTxdQNdTQR4Ga+7By4q4i7JdBJO437yPBDSQ37/b
 szJq0O0J9LVhZBYO499hYqs=
X-Google-Smtp-Source: APXvYqwRw/XYWeN4DeCUQgpwYfCK8xy2IpSeVe+Wf+k/ptFsKWKpXASzQ8Y1D3NSGWO9vJ5BJML98A==
X-Received: by 2002:a7b:c4c8:: with SMTP id g8mr4549883wmk.36.1572969658656;
 Tue, 05 Nov 2019 08:00:58 -0800 (PST)
Received: from suzukaze.ipads-lab.se.sjtu.edu.cn ([202.120.40.82])
 by smtp.gmail.com with ESMTPSA id w8sm26805133wrr.44.2019.11.05.08.00.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Nov 2019 08:00:57 -0800 (PST)
From: Chuhong Yuan <hslester96@gmail.com>
To: 
Subject: [PATCH v2] rtc: brcmstb-waketimer: add missed clk_disable_unprepare
Date: Wed,  6 Nov 2019 00:00:43 +0800
Message-Id: <20191105160043.20018-1-hslester96@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_080100_573236_DEECED9B 
X-CRM114-Status: GOOD (  12.02  )
X-Spam-Score: 1.6 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [202.120.40.82 listed in dnsbl.sorbs.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (hslester96[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (hslester96[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Fixes: c4f07ecee22e ("rtc: brcmstb-waketimer: Add Broadcom STB wake-timer")
Signed-off-by: Chuhong Yuan <hslester96@gmail.com>
---
Changes in v2:
  - Remove the check for timer->clk and add fixes tag.

 drivers/rtc/rtc-brcmstb-waketimer.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/rtc/rtc-brcmstb-waketimer.c b/drivers/rtc/rtc-brcmstb-waketimer.c
index 3e9800f9878a..82d2ab0b3e9c 100644
--- a/drivers/rtc/rtc-brcmstb-waketimer.c
+++ b/drivers/rtc/rtc-brcmstb-waketimer.c
@@ -277,6 +277,7 @@ static int brcmstb_waketmr_remove(struct platform_device *pdev)
 	struct brcmstb_waketmr *timer = dev_get_drvdata(&pdev->dev);
 
 	unregister_reboot_notifier(&timer->reboot_notifier);
+	clk_disable_unprepare(timer->clk);
 
 	return 0;
 }
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
