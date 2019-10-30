Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10E3CE998D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 10:54:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:To:Subject:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Bb76KCJ7I7a6FkcHN24vUy96vzcgKJ5T3HqfoythGyE=; b=gJLpqTys7R5yISReTpwH/1zxPT
	4bwjoVhka9U28GurFkcug2WSP6ZvlFWNKzNnXynQKD0MQsTFvYzTtfeM3eXybO9wXh7xBSQDAjvzN
	jUiENzglt3F3abUtVzxOPGoljaIDry4RsSglzf4AmyPe7HEoWOaY5upeAG89U/MkTsYMnpooQJUZG
	LZHiAi91lOIDYC4MfHuCBRX8BgRK0snjUMFWdzjQBwke/rFtapK4tDZAZXPXYL44CyW+ZhrS1lsU/
	RRxsOLL/whMa2IC1ZUjN5IlNa0LPv5YsXlVDCdBTXVYNHtnDWW8Z0BIOpfzpVLUnakQe2LqSz5230
	h7ML+6vA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPkgQ-0002K4-PK; Wed, 30 Oct 2019 09:54:30 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPkgF-0002Il-7c
 for linux-arm-kernel@lists.infradead.org; Wed, 30 Oct 2019 09:54:20 +0000
Received: from DGGEMS405-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 4176DD480CB890633236;
 Wed, 30 Oct 2019 17:54:17 +0800 (CST)
Received: from [127.0.0.1] (10.57.101.250) by DGGEMS405-HUB.china.huawei.com
 (10.3.19.205) with Microsoft SMTP Server id 14.3.439.0; Wed, 30 Oct 2019
 17:54:09 +0800
From: Wei Xu <xuwei5@hisilicon.com>
Subject: [GIT PULL] Hisilicon driver updates for v5.5
To: <soc@kernel.org>, "arm@kernel.org" <arm@kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, Olof Johansson <olof@lixom.net>,
 "Arnd Bergmann" <arnd@arndb.de>
Message-ID: <5DB95DC1.50900@hisilicon.com>
Date: Wed, 30 Oct 2019 17:54:09 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:38.0) Gecko/20100101
 Thunderbird/38.2.0
MIME-Version: 1.0
X-Originating-IP: [10.57.101.250]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_025419_449616_C894C117 
X-CRM114-Status: GOOD (  10.84  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Salil Mehta <salil.mehta@huawei.com>, jinying@hisilicon.com,
 Tangkunshan <tangkunshan@huawei.com>, John Garry <john.garry@huawei.com>,
 Linuxarm <linuxarm@huawei.com>,
 Shameerali Kolothum Thodi <shameerali.kolothum.thodi@huawei.com>,
 huangdaode <huangdaode@hisilicon.com>, "xuwei \(O\)" <xuwei5@huawei.com>,
 Jonathan Cameron <jonathan.cameron@huawei.com>,
 "Liguozhu \(Kenneth\)" <liguozhu@hisilicon.com>,
 Zhangyi ac <zhangyi.ac@huawei.com>, Shiju Jose <shiju.jose@huawei.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi ARM-SoC team,

Please consider to pull the following changes.
Thanks!

Best Regards,
Wei

---
The following changes since commit 54ecb8f7028c5eb3d740bb82b0f1d90f2df63c5c:

   Linux 5.4-rc1 (2019-09-30 10:35:40 -0700)

are available in the Git repository at:

   git://github.com/hisilicon/linux-hisi.git tags/hisi-drivers-for-5.5

for you to fetch changes up to e9541b372b229f6babd93afcc623e5428b4026a3:

   logic_pio: Build into a library (2019-10-28 20:46:05 +0800)

----------------------------------------------------------------
ARM64: hisi: SoC driver updates for 5.5

- check the LOGIC_PIO_INDIRECT region ops at registration instead of
   in the IO port accessors to optimise the lib/ligic_pio.c

- add the hisi LPC driver to the build test for the other architectures
   by updating the hisi LPC Kconfig and adding a dummy PIO_INDIRECT_SIZE

- clean the sparse complains of the hisi LPC driver

- build logic_pio into a lib to avoid including in the vmlinux when not
   referenced

----------------------------------------------------------------
John Garry (5):
       lib: logic_pio: Enforce LOGIC_PIO_INDIRECT region ops are set at 
registration
       logic_pio: Define PIO_INDIRECT_SIZE for !CONFIG_INDIRECT_PIO
       bus: hisi_lpc: Clean some types
       bus: hisi_lpc: Expand build test coverage
       logic_pio: Build into a library

  drivers/bus/Kconfig       |  4 ++--
  drivers/bus/hisi_lpc.c    |  9 ++++-----
  include/linux/logic_pio.h |  4 ++--
  lib/Makefile              |  2 +-
  lib/logic_pio.c           | 14 ++++++++------
  5 files changed, 17 insertions(+), 16 deletions(-)




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
