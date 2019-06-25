Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15E2952952
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 12:23:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:To:Subject
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Cjg3HuQ1JpgdAXFQfHuLB20yJP47zHIx8z5xap9sbWg=; b=ixz0Z6E7bdCkpN
	e3GXbRw4j6Hv5pbzhHOsT97T5Wn5o9QqxZZfwDpctLPXtNY9isfP4GwRBem8Pokm3l73l4H6JSqyz
	StvMMff9YULfYCVLF7TVZqKqBwofJ6hbdFvBSxqsn6kgrtqDMGS6ZfvNg5NzDFB/F+LvkoC70CC/v
	1G/m2GYKoLzfCPl5gh88ZtZ2VJKfnXiIGYqd6n8/o+Ewrzf6wCFG8PDyKLxfj0W2je4kI9ztAulw5
	y7yPxA62H6e7p1eUqQ6SLhy5+/obDfGVNPcT55CEHDUuVCWDUVl3qrDyQDO2eQistSxnpuEvSas6K
	NLY8DmT6iVmmqVgt0+qQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hficB-0002Ix-Hl; Tue, 25 Jun 2019 10:23:51 +0000
Received: from lhrrgout.huawei.com ([185.176.76.210] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfibx-0002Hq-0V
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 10:23:38 +0000
Received: from LHREML712-CAH.china.huawei.com (unknown [172.18.7.106])
 by Forcepoint Email with ESMTP id 8453260D02D8B346C6FA;
 Tue, 25 Jun 2019 11:23:29 +0100 (IST)
Received: from [127.0.0.1] (10.202.227.157) by LHREML712-CAH.china.huawei.com
 (10.201.108.35) with Microsoft SMTP Server id 14.3.408.0;
 Tue, 25 Jun 2019 11:23:22 +0100
From: Wei Xu <xuwei5@hisilicon.com>
Subject: [GIT PULL] Hisilicon fixes for v5.2
To: <arm@kernel.org>, linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
 Olof Johansson <olof@lixom.net>, <arnd@arndb.de>
Message-ID: <b89ef8f0-d102-7f78-f373-cbcc7faddee3@hisilicon.com>
Date: Tue, 25 Jun 2019 11:23:21 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
Content-Language: en-US
X-Originating-IP: [10.202.227.157]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_032337_202429_E18163BD 
X-CRM114-Status: GOOD (  12.04  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [185.176.76.210 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Salil Mehta <salil.mehta@huawei.com>, jinying@hisilicon.com,
 Tangkunshan <tangkunshan@huawei.com>, linux-pci@vger.kernel.org,
 John Garry <john.garry@huawei.com>, rjw@rjwysocki.net, linuxarm@huawei.com,
 Shameerali Kolothum Thodi <shameerali.kolothum.thodi@huawei.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 huangdaode <huangdaode@hisilicon.com>, "xuwei \(O\)" <xuwei5@huawei.com>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>, bhelgaas@google.com,
 "Liguozhu \(Kenneth\)" <liguozhu@hisilicon.com>,
 Zhangyi ac <zhangyi.ac@huawei.com>, Shiju Jose <shiju.jose@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi ARM-SoC team,

Please consider to pull the following changes.
Thanks!

Best Regards,
Wei

---

The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:

  Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)

are available in the Git repository at:

  git://github.com/hisilicon/linux-hisi.git tags/hisi-fixes-for-5.2

for you to fetch changes up to 07c811af1c00d7b4212eac86900b023b6405a954:

  lib: logic_pio: Enforce LOGIC_PIO_INDIRECT region ops are set at registration (2019-06-25 09:40:42 +0100)

----------------------------------------------------------------
Hisilicon fixes for v5.2-rc

- fixed RCU usage in logical PIO
- Added a function to unregister a logical PIO range in logical PIO
  to support the fixes in the hisi-lpc driver
- fixed and optimized hisi-lpc driver to avoid potential use-after-free
  and driver unbind crash

----------------------------------------------------------------
John Garry (6):
      lib: logic_pio: Fix RCU usage
      lib: logic_pio: Avoid possible overlap for unregistering regions
      lib: logic_pio: Add logic_pio_unregister_range()
      bus: hisi_lpc: Unregister logical PIO range to avoid potential use-after-free
      bus: hisi_lpc: Add .remove method to avoid driver unbind crash
      lib: logic_pio: Enforce LOGIC_PIO_INDIRECT region ops are set at registration

 drivers/bus/hisi_lpc.c    | 43 ++++++++++++++++++++----
 include/linux/logic_pio.h |  1 +
 lib/logic_pio.c           | 86 +++++++++++++++++++++++++++++++++--------------
 3 files changed, 99 insertions(+), 31 deletions(-)


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
