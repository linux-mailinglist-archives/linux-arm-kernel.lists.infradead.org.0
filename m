Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07596C0125
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Sep 2019 10:28:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=UlFy3udGy7tDl+nciqZfwmHhwO0uU8DyLUn03XzdgAk=; b=cvcKvS9c2rVyfPuiPmpd4020qv
	0eC44WljJQXAklU2NivWJsyLrAjRkPFczdkYdQ5cbghyKrRl5DMMfhHUWJYGkYMajal0vV4EnGg04
	RoD3vw2KnoHCFba7X1zVg3f+Tr9ptmKt/7+hUcA+Kt9VuC+TnWt4vmsCyw12yIKJOxEcz7bFvvHZf
	Djap32tSjA0Xe2fzXt0x5awRZzuDwrmXmPAqyaKer36Ymtwo6xGV6ru7IDAL67H0gmf8yT36sijiN
	1T9SXv2VYu7L43z2HrU0JkA0DoI0OYudXQNNGovWNde+2dyC4b21ekzAO7pPzmfJorGBErDtk3Xr/
	61eTBs+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDlcL-00083p-Lf; Fri, 27 Sep 2019 08:28:45 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDlbl-0007n0-JW
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Sep 2019 08:28:10 +0000
Received: by mail-pl1-x644.google.com with SMTP id k7so796098pll.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 27 Sep 2019 01:28:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :in-reply-to:references;
 bh=kup3jsm2T4Dp1CMpcneLGkz+TmvPB+cIre+Bt8N3oes=;
 b=rpICZtHUVuixBVO9d63gc3dXlVxb5YYThUJCocG9ApQJYbNo/LxFKtQU5BHzYCzDwc
 wCoL5g5ttpMFs/gbhX3z9ojugOa2fWlQFa7Rd0LuJWQlT+IQe4lH4qxsWUOIMVSwqUXT
 uTT4JjV0ZBtr/GFzstQh90Zi5rpxlUijH+SZbUin3I289fbhcDde8eQaG1MamGu5F0NA
 wl2mgKMeTLY+dmDZmccS56NY/VpJT6knhUULKFmcsBQ6XqF6r8Wdez3brkUpGhmQgTpU
 HxHA3lwnbreMfHFCPN3M+6mSIcAEFwH/l6t4MELLMgZMOTXY+TMC3qRQLibaDWs44W2H
 c71w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:in-reply-to:references;
 bh=kup3jsm2T4Dp1CMpcneLGkz+TmvPB+cIre+Bt8N3oes=;
 b=BVAADbpSP3xy7tdV+71+j0AZ83rCKWb1ZmF/uoUa7YA3MMVbRKPkhg9Q20CBkzorzB
 oZPsG6GcLg9XL/ukCH9z/qPwJnk3WrwGpfK2O6HNxtaNJ1MfRGzqEAvYt1N9wBO/in9F
 lRy+8pUAlH+612uK8Yv7K3UHaa7Hd0N7n/u9LC08xuFlGW2afmm9Sz0JJMSVJwWd+3kY
 O5fRgUYFAvOIsMFP8y3VZcTtrS/vso3RAjFCQ14UxJC0pT6HTwik2sa6dzuLAWRUpk47
 HJNyTehzP5XH4qM7on1L15rzuyMUn00Fpndj/YzezFBMnRwTdk7forfyf2thFvDiArxy
 20TQ==
X-Gm-Message-State: APjAAAWPjPE41gsCWCmn57KWPgaT55lnXRpI6KBT455BPwoAY9+xt5SK
 YhOp48vJj/esQQkBJijuWCcbow==
X-Google-Smtp-Source: APXvYqwYq8FcmeV1WLMy2kTsH58CPZftMErROYm+5CSFzop11lr8v6sNzDkPXayoOGA7AOSxCrihcQ==
X-Received: by 2002:a17:902:a985:: with SMTP id
 bh5mr3242251plb.107.1569572889229; 
 Fri, 27 Sep 2019 01:28:09 -0700 (PDT)
Received: from baolinwangubtpc.spreadtrum.com ([117.18.48.82])
 by smtp.gmail.com with ESMTPSA id 6sm2043521pfa.162.2019.09.27.01.28.06
 (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Fri, 27 Sep 2019 01:28:08 -0700 (PDT)
From: Baolin Wang <baolin.wang@linaro.org>
To: linus.walleij@linaro.org,
	ohad@wizery.com,
	bjorn.andersson@linaro.org
Subject: [PATCH 1/3] hwspinlock: u8500_hsem: Change to use
 devm_platform_ioremap_resource()
Date: Fri, 27 Sep 2019 16:27:41 +0800
Message-Id: <e991666ead56cac30a7ef9cec85e802b57d47458.1569572448.git.baolin.wang@linaro.org>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1569572448.git.baolin.wang@linaro.org>
References: <cover.1569572448.git.baolin.wang@linaro.org>
In-Reply-To: <cover.1569572448.git.baolin.wang@linaro.org>
References: <cover.1569572448.git.baolin.wang@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190927_012809_637746_B46B8B21 
X-CRM114-Status: GOOD (  12.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-remoteproc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, baolin.wang@linaro.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use the new helper that wraps the calls to platform_get_resource()
and devm_ioremap_resource() together, which can simpify the code.

Signed-off-by: Baolin Wang <baolin.wang@linaro.org>
---
 drivers/hwspinlock/u8500_hsem.c |   20 +++++---------------
 1 file changed, 5 insertions(+), 15 deletions(-)

diff --git a/drivers/hwspinlock/u8500_hsem.c b/drivers/hwspinlock/u8500_hsem.c
index 572ca79..c247a87 100644
--- a/drivers/hwspinlock/u8500_hsem.c
+++ b/drivers/hwspinlock/u8500_hsem.c
@@ -88,7 +88,6 @@ static int u8500_hsem_probe(struct platform_device *pdev)
 	struct hwspinlock_pdata *pdata = pdev->dev.platform_data;
 	struct hwspinlock_device *bank;
 	struct hwspinlock *hwlock;
-	struct resource *res;
 	void __iomem *io_base;
 	int i, ret, num_locks = U8500_MAX_SEMAPHORE;
 	ulong val;
@@ -96,13 +95,9 @@ static int u8500_hsem_probe(struct platform_device *pdev)
 	if (!pdata)
 		return -ENODEV;
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	if (!res)
-		return -ENODEV;
-
-	io_base = ioremap(res->start, resource_size(res));
-	if (!io_base)
-		return -ENOMEM;
+	io_base = devm_platform_ioremap_resource(pdev, 0);
+	if (IS_ERR(io_base))
+		return PTR_ERR(io_base);
 
 	/* make sure protocol 1 is selected */
 	val = readl(io_base + HSEM_CTRL_REG);
@@ -112,10 +107,8 @@ static int u8500_hsem_probe(struct platform_device *pdev)
 	writel(0xFFFF, io_base + HSEM_ICRALL);
 
 	bank = kzalloc(struct_size(bank, lock, num_locks), GFP_KERNEL);
-	if (!bank) {
-		ret = -ENOMEM;
-		goto iounmap_base;
-	}
+	if (!bank)
+		return -ENOMEM;
 
 	platform_set_drvdata(pdev, bank);
 
@@ -135,8 +128,6 @@ static int u8500_hsem_probe(struct platform_device *pdev)
 reg_fail:
 	pm_runtime_disable(&pdev->dev);
 	kfree(bank);
-iounmap_base:
-	iounmap(io_base);
 	return ret;
 }
 
@@ -156,7 +147,6 @@ static int u8500_hsem_remove(struct platform_device *pdev)
 	}
 
 	pm_runtime_disable(&pdev->dev);
-	iounmap(io_base);
 	kfree(bank);
 
 	return 0;
-- 
1.7.9.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
