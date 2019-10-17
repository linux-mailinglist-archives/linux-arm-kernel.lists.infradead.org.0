Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41E02DAFD4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 16:21:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kdybCU05jocbqakc9afFBeCoulMyWAFnZzIccYbxXWc=; b=T72wnnN+nc6rfb
	A53YqkrZxkCATcE0HK74PHcBQEKwgz0J6PH1gvseTzY1AOrbY11xADrl6x1dqi8FYHHgplXg6sj1k
	78Mc7tKOi5O16GbSQUg0bRJ6/AQDh81AvY2rlQihw9bCCiuWqwalgheSIvR3fSQzN8N9PZ/7DdRwo
	yIZqStjcqGnHw/RZsSj4nsU8O8+//9vXSx0dYT3jhZPyT3Cn5iIZSdf1gAksTdYvE4woUStQqoDbQ
	2WmkV2FT7AUSsYSuANfI+AudpZthPhrze/zwoRn5j5e2MIvkuLHB68Smoqcj3JS2D83D279wpLihO
	XwmBd9Aa2LFbw4fLXK3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL6f4-0003X6-QZ; Thu, 17 Oct 2019 14:21:54 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL6dj-0002Wc-JV
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 14:20:34 +0000
X-Originating-IP: 86.207.98.53
Received: from localhost
 (aclermont-ferrand-651-1-259-53.w86-207.abo.wanadoo.fr [86.207.98.53])
 (Authenticated sender: gregory.clement@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 533E220005;
 Thu, 17 Oct 2019 14:20:20 +0000 (UTC)
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Mark Brown <broonie@kernel.org>, linux-spi@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 0/7] atmel-spi: Allow using more than 4 GPIOs as CS
Date: Thu, 17 Oct 2019 16:18:39 +0200
Message-Id: <20191017141846.7523-1-gregory.clement@bootlin.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_072031_780602_81D43D01 
X-CRM114-Status: UNSURE (   8.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Gregory CLEMENT <gregory.clement@bootlin.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

the main purpose of this series is allowing to use more than 4 GPIOs
as CS. But while doing it, I also clean-up the code and the comments
to match the actual support of the hardware.

Thanks to this series, it is now more clear to see what can be done
with CS GPIO and native CS. It is also possible to mix native and GPIO
CS as expected by the SPI binding.

In the end even managment of the specific use case for CS0 on
AT91RM9200 has been simplified.

Gregory

Gregory CLEMENT (7):
  spi: atmel: Remove and fix erroneous comments
  spi: atmel: Fix CS high support
  spi: atmel: Configure GPIO per CS instead of by controller
  spi: atmel: Remove useless private field
  spi: atmel: Remove platform data support
  spi: atmel: Improve and fix GPIO CS usage
  spi: atmel: Improve CS0 case support on AT91RM9200

 drivers/spi/Kconfig     |   1 +
 drivers/spi/spi-atmel.c | 154 ++++++++++++++++++++++++----------------
 2 files changed, 92 insertions(+), 63 deletions(-)

-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
