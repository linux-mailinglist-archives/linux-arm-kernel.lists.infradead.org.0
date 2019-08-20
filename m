Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C5E496B18
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 23:05:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=R2CjPpv6Ote+Hn9p7e2FSMgrc123W5D/Su+RquPRhvw=; b=daM9fTYqpTorpr
	RCmjwiT2MOb6r1FejMQq/UeU62csv/Ja4/UeZnhYNwJAwnIo7nyhLVn9Tbxru/nxMaLX7wM/5KVup
	31VQJS21rVP+OCUSuzqR3WuPyYu7SYXcCD0kZ1L20P5LGIwAOiSo2erpD8C9aIUO6+8tZ7skc3bse
	osuvLikbXQSArdnwsd0dIyXcRT4TV5lJu1xEDqjUwmYC+YKRW1ha1o4qZewOpVeBzg0u/6Xjl58Gc
	GcMsE/5CiNwNYvltkY2j7DjEngB7//HadbRfE6jcjy28+qM0URX/hvNCR/ZzljM6S61M/7edZKlk6
	/BSDeOaWqqe21+bOwxnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0BK4-0007r6-VP; Tue, 20 Aug 2019 21:05:45 +0000
Received: from atlmailgw2.ami.com ([63.147.10.42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0BJw-0007qO-Dp
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 21:05:38 +0000
X-AuditID: ac10606f-d27ff70000003324-96-5d5c609dc94e
Received: from atlms1.us.megatrends.com (atlms1.us.megatrends.com
 [172.16.96.144])
 (using TLS with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by atlmailgw2.ami.com (Symantec Messaging Gateway) with SMTP id
 07.00.13092.D906C5D5; Tue, 20 Aug 2019 17:05:33 -0400 (EDT)
Received: from hongweiz-Ubuntu-AMI.us.megatrends.com (172.16.98.93) by
 atlms1.us.megatrends.com (172.16.96.144) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Tue, 20 Aug 2019 17:05:31 -0400
From: Hongwei Zhang <hongweiz@ami.com>
To: Andrew Jeffery <andrew@aj.id.au>, Linus Walleij
 <linus.walleij@linaro.org>, <linux-gpio@vger.kernel.org>
Subject: [v8]  gpio: aspeed: Add SGPIO driver
Date: Tue, 20 Aug 2019 17:05:27 -0400
Message-ID: <1566335128-31498-1-git-send-email-hongweiz@ami.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [172.16.98.93]
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrHLMWRmVeSWpSXmKPExsWyRiBhgu7chJhYgzevJC12Xeaw+DL3FIvF
 /CPnWC1+n//LbDHlz3Imi02Pr7FaNK8+x2yxef4fRovLu+awWSy9fpHJonXvEXYHbo+r7bvY
 PdbMW8Po8f5GK7vHxY/HmD02repk87hzbQ+bx+Yl9R7nZyxk9Pi8SS6AM4rLJiU1J7MstUjf
 LoErY83Hp4wFH9kr/nTPYW1g7GLrYuTkkBAwkWjZ9JW9i5GLQ0hgF5NE895dzBDOYUaJtbP3
 MYFUsQmoSezdPAfMFhHIkzi8/i0rSBGzwCkmiRn7OllBEsICuhJzT99gBrFZBFQlvi7ZwwJi
 8wo4SMzrX8QOsU5O4ua5TmaIuKDEyZlPwGqYBSQkDr54ARYXEpCVuHXoMRNEvYLE877HLBMY
 +WYhaZmFpGUBI9MqRqHEkpzcxMyc9HIjvcTcTL3k/NxNjJAwz9/B+PGj+SFGJg7GQ4wSHMxK
 IrwVc6JihXhTEiurUovy44tKc1KLDzFKc7AoifOuWvMtRkggPbEkNTs1tSC1CCbLxMEp1cB4
 42BnLHv5g70MSy2WzQ4v/H3l96nHfpd3JGdMVjmR6rzsmNCVH7x/LzGkfrlsez5T5pTaVsM/
 bX/LbOoM7XZ+vMr2vv/as6yvh5WFC7sNJQyVGN/5bP/DfchekfnKp2PnXI88S1mV9Fv9Z8PX
 Pv+rOTcDpjlHR4lPytwtzVG+zaXtLn+c47owJZbijERDLeai4kQARbmDwmECAAA=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_140536_532777_C790DCD2 
X-CRM114-Status: UNSURE (   9.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [63.147.10.42 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
 Hongwei Zhang <hongweiz@ami.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

This short series introduce dt-binding document and a driver for the 
Aspeed AST2500 SGPIO controller. Please review.

[v8]:   Changes between v7 and v8:
        - v7 updates based on Linus' feedback 
        - since Linus has already merged sgpio-aspeed.txt, I only include
	  the driver here to avoid confusion.

[v7]:   Changes between v6 and v7:
        - fix missing variable 'reg' assign issue in aspeed_sgpio_set()
        - v6 feedback updates

[v6]:   Changes between v5 and v6:
        - fix a bug in aspeed_sgpio_dir_out()
        - v5 feedback updates, some comments cleanup

The related SGPM pinmux dt-binding document, dts, and pinctrl driver
updates have been accepted and merged:
_http://patchwork.ozlabs.org/patch/1110210/

Hongwei Zhang (1):
  gpio: aspeed: Add SGPIO driver

 drivers/gpio/sgpio-aspeed.c | 533 ++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 533 insertions(+)
 create mode 100644 drivers/gpio/sgpio-aspeed.c

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
