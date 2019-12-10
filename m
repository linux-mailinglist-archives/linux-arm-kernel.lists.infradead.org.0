Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 580331191E8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 21:29:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cdoQK37SuYfdmOiVe+N/D0pziKjQzEWhBmdzK7uneaE=; b=LF5GkPQg3X6pIn
	LGzu3dylXjSBZgSaJONeQDPRY8bj9iTw25I5oPFjqijZkP9DfdqldGciYjtmFDQQCTXUYQ/wr7wkp
	yvc3gOKYGevUIAtEJU+rtKuAXPggPXYBm1+2kKf7PSeOMRo2nQjPANq/lkgYsSD9ZjcrHvPd9kYZ8
	1R8qCjZokdJ6UkMGbjSEnmS/VtR4obzfz74YzLAFj4AM70Ej84ML4h45FVffCNzg6JYzv1Ae3l5aP
	MbHPE6V0XWH8RYLs3KQI0qQuUNuVjycx0PWp4R20XB2uj/Xq5ym48enLzQW2/K1dzqhW0utqXAtld
	MoqlEXuPDyGAyv/mbwhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iem83-0007UM-IO; Tue, 10 Dec 2019 20:29:07 +0000
Received: from mout.kundenserver.de ([212.227.126.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iem7t-0007Tj-Ed
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 20:28:58 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue010 [212.227.15.129]) with ESMTPA (Nemesis) id
 1N8GdE-1hjJuA0Kdk-014Ebs; Tue, 10 Dec 2019 21:28:46 +0100
From: Arnd Bergmann <arnd@arndb.de>
To: Linus Walleij <linus.walleij@linaro.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>
Subject: [PATCH] gpio: aspeed: avoid return type warning
Date: Tue, 10 Dec 2019 21:28:31 +0100
Message-Id: <20191210202842.2546758-1-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:wVxlXYdoiPhUAJZhlt2X1D7PcABmLjxtergfMBgekFChQe6tWpZ
 I8w8dAsL3MhlxAzx3aJut0o8lNQ+huDa+/03lMKZtybCPmqB0AJTOBwNTfynmFBoPF8q11X
 0fl7rzVQ5Q2JVM39J6A/ntiE4ZYpUnCxy8/sdi3n7INo3/32jvI6513Rf/7/e+EF6ypwqMw
 7jpgkIgG3VV33LgyN3ZHw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Y4ivtR1MltI=:StSJ9oDv/HYfCyShHA3Kln
 HJlWZ7FKH4rMnxsdZ2nBl/UW6bh5gdRtvDC7vF0RXZcURVmMYONqK3dKQBoPqnUs6OhRdRvaV
 fGRHQlH3Z4dy1+lh4Usamimlb50nX1pL7c9XXCvkaICeUSQb8GGTdQvjgtx7F0KKDME5TkrrG
 vcp+5d7zxDK4UzkAyOGGEsZkm8a7Lb7eAXSdnHsCYArnYzOVliIUeGcAHVK0/Lu0TCj5hXX7X
 fVbLVxTGXu+UAWIRrGCHtKxuOwtL/a7TQA1fFTMG2QD/PtZ/3n/g9rWSL6dwcbLFmZmqxJnIQ
 chErrX1bOl0U93KPojuBe+zu9gXC02JfzeqL5MrH61EibZylCVWR3xu+FHuLkjaZmXNiDycMn
 6y3zUNhipDojd9jN3Um/lKDi7Cq7OaHbPTDsQGqV8HeUeOcz0OBgMOaASpgoXrWskpkHBWmyW
 TzqkRJsMdb9nxCuAeOdozIL6fP3g8bdnCo3mnXrwKSU03CIdxjC6swqjGA71WzxIz1NzjJoC9
 bCf2p/keV+p7B2b37XKapDRGpDbzrdWy0dSwsYqsF4VuPQWtjRLV3YGHbMocgckkIOG3yWaHn
 54sLNcUWiHO80jq9qRFMPmG8nldxRxceGtieFYJ4M4LfP+q+X+oQSgrnq2xZgRNd4/QvaKGji
 ApkJsGJbhOaXlkdON4aoL2l6aixNE6Gdh14opggsVlJaKt5rkxyIDWFhyuFzXyuSMnFMBnACj
 SARPLDbBB6oLHVI2K3Xe4enmJcz10DTzP2urQVQvpLd+8OHImMx1O7a3tHAPP9GV1e9RE4ZY/
 PeTepEbRI5+/RQ+0bq+NqBLvowYmvTpaLLeP5M1fc3LBgWW32wURRueAs/HhIgpuXzvt6f/OG
 eMl+mUJZ38GzOcZdS6EQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_122857_779314_62136DAF 
X-CRM114-Status: GOOD (  11.08  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.130 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Arnd Bergmann <arnd@arndb.de>, linux-aspeed@lists.ozlabs.org,
 linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org,
 Hongwei Zhang <hongweiz@ami.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

gcc has a hard time tracking whether BUG_ON(1) ends
execution or not:

drivers/gpio/gpio-aspeed-sgpio.c: In function 'bank_reg':
drivers/gpio/gpio-aspeed-sgpio.c:112:1: error: control reaches end of non-void function [-Werror=return-type]

Use the simpler BUG() that gcc knows cannot continue.

Fixes: f8b410e3695a ("gpio: aspeed-sgpio: Rename and add Kconfig/Makefile")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/gpio/gpio-aspeed-sgpio.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpio/gpio-aspeed-sgpio.c b/drivers/gpio/gpio-aspeed-sgpio.c
index 7e99860ca447..8319812593e3 100644
--- a/drivers/gpio/gpio-aspeed-sgpio.c
+++ b/drivers/gpio/gpio-aspeed-sgpio.c
@@ -107,7 +107,7 @@ static void __iomem *bank_reg(struct aspeed_sgpio *gpio,
 		return gpio->base + bank->irq_regs + GPIO_IRQ_STATUS;
 	default:
 		/* acturally if code runs to here, it's an error case */
-		BUG_ON(1);
+		BUG();
 	}
 }
 
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
