Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20A714F06B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 23:18:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=krsohsEsjKbJBhmJp53+s4HcLcZXSwYXf8Ldm1HAyls=; b=oEp8KqZTiBHL/0
	00EKxzrGvW0bcj86UN68LlZ0baFUzYjP80SSer+xHPhUWaBln+CxfrSBiCLYURxilJDDzRDhY+7Rk
	4icDYKaNhWGk8KVTAR1fJo1ph6zAAgOTgpy0fbh5bkZHJ37qEtG2fiakqAeUcpmv1LYEhbhGBd9Ad
	w5cic9CUsgSBIIjGJxbJ/OtSQ8OQqp4+JYiqbSNIBcL2W/JE6QpNJanezeTIIGV1aJtRiKnFBLPbd
	a/fONDMifjweXt7B4vPVmcNDE50xfTN71qGKr/OJrB341nJtdK1rIg3NxX6H0QS/wbi7963L9eu/W
	Itl2t8Hxz7i+Xm4F4KZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heQvd-0000Yh-6u; Fri, 21 Jun 2019 21:18:37 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heQvR-0000YH-8j
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 21:18:26 +0000
X-Originating-IP: 90.65.161.137
Received: from localhost (lfbn-1-1545-137.w90-65.abo.wanadoo.fr
 [90.65.161.137])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id BD8DAE0006;
 Fri, 21 Jun 2019 21:18:11 +0000 (UTC)
Date: Fri, 21 Jun 2019 23:18:11 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
 arm@kernel.org
Subject: [GIT PULL] ARM: at91: SoC for 5.3
Message-ID: <20190621211811.GA29792@piout.net>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.12.0 (2019-05-25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_141825_468356_24F5AEDD 
X-CRM114-Status: GOOD (  10.60  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
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
Cc: Ludovic Desroches <ludovic.desroches@microchip.com>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Arnd, Olof,

A single fix for a warning when compiling with W=1

The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:

  Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/abelloni/linux.git tags/at91-5.3-soc

for you to fetch changes up to 95701b1c3c8fe36368361394e3950094eece4723:

  arm: add missing include platform-data/atmel.h (2019-06-20 12:15:47 +0200)

----------------------------------------------------------------
AT91 SoC for 5.3

 - fix a pm.c warning with W=1

----------------------------------------------------------------
Philippe Mazenauer (1):
      arm: add missing include platform-data/atmel.h

 arch/arm/mach-at91/pm.c | 1 +
 1 file changed, 1 insertion(+)

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
