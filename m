Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED15C13E303
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 17:59:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HrPWToTbprXUEx4rljIDs/NA27wpTy5ULPeCIs6Mfy8=; b=PyjQLP5q98ZnKi
	m7sDR0nm5ddRcsQGEQttcqWc3B/HtXHwLBsorNhB5jVSEtkDJAjlvIs2kAKCgfWXkd8qnJCP1sPq2
	SYWWDJtTjsk7X3lZb3vV6w073KM0LLndpipkEsb6S+E+Xp96UVMpWvU5xp4yJZA19JShY6v4Xpb7L
	uPGdT3jbC5UkvSDKMINrd1o9un1GogBeAiFXOZ3+vd3LCeyl9jls+9Eg2djmfyC4So1wwronejmnB
	CtmwcyfvHbnGnuhgRvLJ5ffU8jsOE6xm+f++MoEwC0aVKnipCvfUHgKS59Q64inOKGh0vGbX7jJRh
	w4r7PnbQCAslemW9gmTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is8UM-0006mO-Bq; Thu, 16 Jan 2020 16:59:22 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is8Po-0001GY-0X
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 16:54:43 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A1A9E214AF;
 Thu, 16 Jan 2020 16:54:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579193679;
 bh=VXkXkjK1OcAV5Ex2Khfw/MtuZoMJCOIv3Gy5tPbePYs=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=GDtFyByddKmLOOTo6UC2wf6wRYBuDIuf822H+REQ6fCIwr4LTUlhb0YoWbpQbvmBt
 nnDzcFywUNIXyavHRpCZzWqFYbvk8HYBJyYG0Ec/sxbj4eyM+fB/ADSSw+MSxBDfry
 UUPHkAfDEZdzdeiUgnkW7a6uV1O3xNp08aCMNbjU=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 203/205] gpio: aspeed: avoid return type warning
Date: Thu, 16 Jan 2020 11:42:58 -0500
Message-Id: <20200116164300.6705-203-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200116164300.6705-1-sashal@kernel.org>
References: <20200116164300.6705-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_085440_090221_34AE5B82 
X-CRM114-Status: GOOD (  11.68  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Sasha Levin <sashal@kernel.org>, linux-aspeed@lists.ozlabs.org,
 Arnd Bergmann <arnd@arndb.de>, linux-gpio@vger.kernel.org,
 Andrew Jeffery <andrew@aj.id.au>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Arnd Bergmann <arnd@arndb.de>

[ Upstream commit 11e299de3aced4ea23a9fb1fef6c983c8d516302 ]

gcc has a hard time tracking whether BUG_ON(1) ends
execution or not:

drivers/gpio/gpio-aspeed-sgpio.c: In function 'bank_reg':
drivers/gpio/gpio-aspeed-sgpio.c:112:1: error: control reaches end of non-void function [-Werror=return-type]

Use the simpler BUG() that gcc knows cannot continue.

Fixes: f8b410e3695a ("gpio: aspeed-sgpio: Rename and add Kconfig/Makefile")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Acked-by: Andrew Jeffery <andrew@aj.id.au>
Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/gpio/sgpio-aspeed.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpio/sgpio-aspeed.c b/drivers/gpio/sgpio-aspeed.c
index 7e99860ca447..8319812593e3 100644
--- a/drivers/gpio/sgpio-aspeed.c
+++ b/drivers/gpio/sgpio-aspeed.c
@@ -107,7 +107,7 @@ static void __iomem *bank_reg(struct aspeed_sgpio *gpio,
 		return gpio->base + bank->irq_regs + GPIO_IRQ_STATUS;
 	default:
 		/* acturally if code runs to here, it's an error case */
-		BUG_ON(1);
+		BUG();
 	}
 }
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
