Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72F1178296
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 02:01:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=A+EJ5rRbtSI90Kcie99qUGuJx2m9fnEQAuX+tQVZeZA=; b=IiUCvnucPWaJwD
	Yokxn3xXPy707dFhGoj0JnKMKYvtXZQHoVdegARsSRSiaQkwg4LHMtBePV6uXGk2PGNPpuRO0dozn
	f+tIKP1eOY+QR0wLp2ydauwh2TbmziD9nrjtM8r9c26EFiaZ+So0fRADjpQ9UyzEtk3wYOa3g8I69
	fwBKfBgLXryzF/eRKUGz6DobEgT1UQHgD2OifwwyTx/em6uakhtQTI/ESX/f1jE81/3/j9HB/wZ5L
	25lJlOwLZv1wOCe2eoAICp69fOrrtLhW/zKYnLipStrQIhDuiKrFPELcIkrmd+yaK9bsGBzpOX0a8
	0lHCwHvSTgHYHWzrT5zg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrt6d-0002LF-GK; Mon, 29 Jul 2019 00:01:35 +0000
Received: from gateway31.websitewelcome.com ([192.185.143.39])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrt6T-0002Kn-GK
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 00:01:26 +0000
Received: from cm14.websitewelcome.com (cm14.websitewelcome.com [100.42.49.7])
 by gateway31.websitewelcome.com (Postfix) with ESMTP id 0369A14579
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 28 Jul 2019 19:01:25 -0500 (CDT)
Received: from gator4166.hostgator.com ([108.167.133.22]) by cmsmtp with SMTP
 id rt6ShkPtK2qH7rt6Shmwam; Sun, 28 Jul 2019 19:01:25 -0500
X-Authority-Reason: nr=8
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=embeddedor.com; s=default; h=Content-Type:MIME-Version:Message-ID:Subject:
 Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=I9uOKHxVbt8UeBd3GkXgx66REfHuRvFkiJYnkeKfdME=; b=sPPzipz0aQZkir5rbCZc/LsTW4
 7VTuB9XmG+yuadoPyxL4T8CglDxGgDyFw5mYV2qkySG4vU2U8NfGTEBa+D1vDWcMyEQ9Hacr5RdqD
 BVCOy71YUdA8LyKugLGPodqigEha2td6bMTsNkq5V/KPVv5xLxMcO3xJoqSpm21EyYclq322FyuCD
 s6i+a8l4nlqvuykhP3EnQWr+YMnzqD/UlwXeaGJfb1x7wyrgqc5vn/9hgFKlOXavCiJRlXvdJ/vyJ
 1pP+ZNa+9fLhbEFYT9nqyROtbDqYiKuP+JmRhBwvZKFvWuAHn2zpZT9QGCymUsUQLVRIH6N5tV3MW
 4pvmc8DQ==;
Received: from [187.192.11.120] (port=39644 helo=embeddedor)
 by gator4166.hostgator.com with esmtpa (Exim 4.92)
 (envelope-from <gustavo@embeddedor.com>)
 id 1hrt6R-003owE-Nk; Sun, 28 Jul 2019 19:01:23 -0500
Date: Sun, 28 Jul 2019 19:01:23 -0500
From: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
To: Ludovic Desroches <ludovic.desroches@microchip.com>,
 Ulf Hansson <ulf.hansson@linaro.org>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>
Subject: [PATCH] mmc: atmel-mci: Mark expected switch fall-throughs
Message-ID: <20190729000123.GA23902@embeddedor>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator4166.hostgator.com
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - embeddedor.com
X-BWhitelist: no
X-Source-IP: 187.192.11.120
X-Source-L: No
X-Exim-ID: 1hrt6R-003owE-Nk
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: (embeddedor) [187.192.11.120]:39644
X-Source-Auth: gustavo@embeddedor.com
X-Email-Count: 6
X-Source-Cap: Z3V6aWRpbmU7Z3V6aWRpbmU7Z2F0b3I0MTY2Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190728_170125_628310_926D74E3 
X-CRM114-Status: UNSURE (   5.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [192.185.143.39 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Stephen Rothwell <sfr@canb.auug.org.au>, Kees Cook <keescook@chromium.org>,
 "Gustavo A. R. Silva" <gustavo@embeddedor.com>, linux-mmc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Mark switch cases where we are expecting to fall through.

This patch fixes the following warnings:

drivers/mmc/host/atmel-mci.c: In function 'atmci_get_cap':
drivers/mmc/host/atmel-mci.c:2415:30: warning: this statement may fall through [-Wimplicit-fallthrough=]
   host->caps.has_odd_clk_div = 1;
   ~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~
drivers/mmc/host/atmel-mci.c:2416:2: note: here
  case 0x400:
  ^~~~
drivers/mmc/host/atmel-mci.c:2422:28: warning: this statement may fall through [-Wimplicit-fallthrough=]
   host->caps.has_highspeed = 1;
   ~~~~~~~~~~~~~~~~~~~~~~~~~^~~
drivers/mmc/host/atmel-mci.c:2423:2: note: here
  case 0x200:
  ^~~~
drivers/mmc/host/atmel-mci.c:2426:40: warning: this statement may fall through [-Wimplicit-fallthrough=]
   host->caps.need_notbusy_for_read_ops = 1;
   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~
drivers/mmc/host/atmel-mci.c:2427:2: note: here
  case 0x100:
  ^~~~

Reported-by: Stephen Rothwell <sfr@canb.auug.org.au>
Signed-off-by: Gustavo A. R. Silva <gustavo@embeddedor.com>
---
 drivers/mmc/host/atmel-mci.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/mmc/host/atmel-mci.c b/drivers/mmc/host/atmel-mci.c
index 9ee0bc0ce6d0..c26fbe5f2222 100644
--- a/drivers/mmc/host/atmel-mci.c
+++ b/drivers/mmc/host/atmel-mci.c
@@ -2413,6 +2413,7 @@ static void atmci_get_cap(struct atmel_mci *host)
 	case 0x600:
 	case 0x500:
 		host->caps.has_odd_clk_div = 1;
+		/* Fall through */
 	case 0x400:
 	case 0x300:
 		host->caps.has_dma_conf_reg = 1;
@@ -2420,13 +2421,16 @@ static void atmci_get_cap(struct atmel_mci *host)
 		host->caps.has_cfg_reg = 1;
 		host->caps.has_cstor_reg = 1;
 		host->caps.has_highspeed = 1;
+		/* Fall through */
 	case 0x200:
 		host->caps.has_rwproof = 1;
 		host->caps.need_blksz_mul_4 = 0;
 		host->caps.need_notbusy_for_read_ops = 1;
+		/* Fall through */
 	case 0x100:
 		host->caps.has_bad_data_ordering = 0;
 		host->caps.need_reset_after_xfer = 0;
+		/* Fall through */
 	case 0x0:
 		break;
 	default:
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
