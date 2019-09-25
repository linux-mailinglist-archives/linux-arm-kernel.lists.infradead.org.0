Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A818BE594
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Sep 2019 21:22:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FqPjRwCcN9ptZBUCmqzV6jR0qWH56tFy3LxDxtxD2Ec=; b=srcnP8YH9nMRYs
	PJglZDT6mKINAOw6L4FI/KHQNyYVWd/JW0mYqgwLEgSkLNm+eH/QWGIUDpDQ83DWoon/FTrCgEFQw
	MMjz6xmpPUtJMyzwp3hq2JHH7XcDaCUHtA+U3qxC67MFFy7mZ7nmG0xzeHqJqZ9ndA6GYOFRz7iHn
	25621Xs3GMQ1/L7bffLxI6+kS5fm97bXyiGzzUNNsb4QiojMMzdqaT0cVeWlbGGigDVVFzSRvqYiP
	4NSDZJnvkGLSTv1lxaZuaogElQrSXlrc3YGEfxWP6v8MWpolu3KDKkV6zqYD4L5jjshUkD5yANuJR
	taC1Q3Ej10eTzrc/wgJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDCs3-0005Ye-RY; Wed, 25 Sep 2019 19:22:39 +0000
Received: from atlmailgw2.ami.com ([63.147.10.42])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDCrq-0005Y1-Pn
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Sep 2019 19:22:28 +0000
X-AuditID: ac10606f-35bff7000000187d-ce-5d8bbe713dbc
Received: from atlms1.us.megatrends.com (atlms1.us.megatrends.com
 [172.16.96.144])
 (using TLS with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by atlmailgw2.ami.com (Symantec Messaging Gateway) with SMTP id
 3A.7C.06269.17EBB8D5; Wed, 25 Sep 2019 15:22:25 -0400 (EDT)
Received: from hongweiz-Ubuntu-AMI.us.megatrends.com (172.16.98.93) by
 atlms1.us.megatrends.com (172.16.96.144) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Wed, 25 Sep 2019 15:22:24 -0400
From: Hongwei Zhang <hongweiz@ami.com>
To: Andrew Jeffery <andrew@aj.id.au>, Linus Walleij
 <linus.walleij@linaro.org>, <linux-gpio@vger.kernel.org>, Joel Stanley
 <joel@jms.id.au>
Subject: [v2, 0/2] gpio: dts: aspeed: Add SGPIO driver 
Date: Wed, 25 Sep 2019 15:22:15 -0400
Message-ID: <1569439337-10482-1-git-send-email-hongweiz@ami.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [172.16.98.93]
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprBIsWRmVeSWpSXmKPExsWyRiBhgm7hvu5YgwX7rCzmrF/DZrHrMofF
 /w+7GS2+75/FavF30jF2i6ZDp9gsvsw9xWIx/8g5Vovf5/8yW0z5s5zJYtPja6wWzavPMVts
 nv+H0eLyrjlsFoem7mW0WHr9IpPF+0+dTBate4+wW9yY0sBmsffeZ0YHEY+r7bvYPdbMW8Po
 cfnaRWaP378mMXq8v9HK7nHx4zFmj02rOtk87lzbw+ZxYsZvFo8Jiw4wemxeUu9xfsZCRo+/
 jV/ZPU5M/87i8XmTXAB/FJdNSmpOZllqkb5dAlfGnI897AUP2Srun5nI1MA4h7WLkZNDQsBE
 4tnDzywgtpDALiaJlsnWEPZhRomfPYUgNpuAmsTezXOYuhi5OEQE+hklFsyZC+YwC2xlldh+
 oAlskrCAucT0a/eZQWwWAVWJ7TPPsYPYvAIOEleW32OG2CYncfNcJzNEXFDi5MwnYJuZBSQk
 Dr54wQyxWVbi1qHHTBD1ChLP+x6zTGDkm4WkZRaSlgWMTKsYhRJLcnITM3PSy430EnMz9ZLz
 czcxQmIvfwfjx4/mhxiZOBgPMUpwMCuJ8M6S6YoV4k1JrKxKLcqPLyrNSS0+xCjNwaIkzrtq
 zbcYIYH0xJLU7NTUgtQimCwTB6dUA6M3E5Ppn1OZtVOCM+7m7ZD7vVx6d3/6RYbl7wX+rpmk
 UuuYvZ+3S49b707Cmd8r+6/Jisq5Rrqrn2XbGF4r+rlR1KnnSuf8orNTp02sEZ7xdXPAj3q+
 H8IpaY+FHH7WnF3nPlNyZqq7H49fwrStmzg3K+t2Xcua8kDEOY7JqKlMMvb/tM98T5RYijMS
 DbWYi4oTAb5SBiarAgAA
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_122226_900157_AC8CF004 
X-CRM114-Status: GOOD (  11.59  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [63.147.10.42 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Arnd Bergmann <arnd@arndb.de>, linux-aspeed@lists.ozlabs.org,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>, linux-kernel@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>, Mike Rapoport <rppt@linux.ibm.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Doug Anderson <armlinux@m.disordat.com>,
 Andrew Morton <akpm@linux-foundation.org>, Hongwei Zhang <hongweiz@ami.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

This short series introduce the Kconfig, Makefile, and dts for the 
Aspeed AST2500 SGPIO controller. This is the last patch set.
Please review.

[v2]:	changes between v1 and v2:
	- split the patches based on review feedback.

[v1]:	Initial commit

The related SGPIO driver has been accepted and merged into v5.4:
_http://patchwork.ozlabs.org/patch/1150357/

The related SGPM pinmux dt-binding document, dts, and pinctrl driver
updates have been accepted and merged:
_http://patchwork.ozlabs.org/patch/1110210/

Thanks!
Hongwei Zhang (1):
  gpio: dts: aspeed: Add SGPIO driver

 arch/arm/Kconfig                 |  2 ++
 arch/arm/boot/dts/aspeed-g5.dtsi | 16 +++++++++++++++-
 drivers/gpio/Kconfig             |  8 ++++++++
 drivers/gpio/Makefile            |  1 +
 4 files changed, 26 insertions(+), 1 deletion(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
