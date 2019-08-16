Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B04FE8F974
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 16 Aug 2019 05:30:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:To:Subject:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=WDuux1aMqJOwpZkzMI5PCGl2Y0rmfFuNgAF1JMBLijs=; b=sMTj4uGJpIf25+/uJo2pbxIhua
	duZRzzca5nbgEr0YqUJi/RzIrh0ESX9OswDgdsZvmM+roZu2HQkj4x2pq+iarlRRYDOaM0BxtHoyl
	psUiYvcm1GisQjGOubidPCWFVvBA/jnERNNBZTdtAk6FE4EGtpgpTI/qaegVFcpOdlpA++nyWw293
	AhlV+lL5yoft4Qnx2jk0Wr0tX4b/DOAQ1EaEirod7rc7gCeqfZygDWW60sh0WCP6rlFFDNIzbzVDv
	RAxOwuUP/KeG38Rkfg4U9zZ1NC6YLyi9hk/TvXNaoFLdv6g4gbC0z0zQQ2burYYXPCnExYRWIcm1f
	9oRRMcrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hySwf-0004N2-Es; Fri, 16 Aug 2019 03:30:29 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hySwT-0004M8-Et
 for linux-arm-kernel@lists.infradead.org; Fri, 16 Aug 2019 03:30:19 +0000
Received: from DGGEMS409-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id A2D90E5A7ACA03E00971;
 Fri, 16 Aug 2019 11:30:09 +0800 (CST)
Received: from [127.0.0.1] (10.57.101.250) by DGGEMS409-HUB.china.huawei.com
 (10.3.19.209) with Microsoft SMTP Server id 14.3.439.0; Fri, 16 Aug 2019
 11:29:59 +0800
From: Wei Xu <xuwei5@hisilicon.com>
Subject: [GIT PULL] Hisilicon fixes for v5.3
To: <soc@kernel.org>, "arm@kernel.org" <arm@kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, Olof Johansson <olof@lixom.net>,
 "Arnd Bergmann" <arnd@arndb.de>
Message-ID: <5D562335.7000902@hisilicon.com>
Date: Fri, 16 Aug 2019 11:29:57 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:38.0) Gecko/20100101
 Thunderbird/38.2.0
MIME-Version: 1.0
X-Originating-IP: [10.57.101.250]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_203017_670986_B409F890 
X-CRM114-Status: UNSURE (   9.20  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: sashal@kernel.org, Salil Mehta <salil.mehta@huawei.com>,
 jinying@hisilicon.com, Tangkunshan <tangkunshan@huawei.com>,
 linux-pci@vger.kernel.org, John
 Garry <john.garry@huawei.com>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Linuxarm <linuxarm@huawei.com>,
 Shameerali Kolothum Thodi <shameerali.kolothum.thodi@huawei.com>, Linux
 Kernel Mailing List <linux-kernel@vger.kernel.org>,
 huangdaode <huangdaode@hisilicon.com>, "xuwei \(O\)" <xuwei5@huawei.com>,
 Jonathan Cameron <jonathan.cameron@huawei.com>,
 Bjorn Helgaas <bhelgaas@google.com>, stable@vger.kernel.org,
 "Liguozhu \(Kenneth\)" <liguozhu@hisilicon.com>,
 Zhangyi ac <zhangyi.ac@huawei.com>, Shiju Jose <shiju.jose@huawei.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi ARM-SoC team,

Please consider to pull the following fixes.
Thanks!

Best Regards,
Wei

---

The following changes since commit 5f9e832c137075045d15cd6899ab0505cfb2ca4b:

   Linus 5.3-rc1 (2019-07-21 14:05:38 -0700)

are available in the Git repository at:

   git://github.com/hisilicon/linux-hisi.git tags/hisi-fixes-for-5.3

for you to fetch changes up to 10e62b47973b0b0ceda076255bcb147b83e20517:

   bus: hisi_lpc: Add .remove method to avoid driver unbind crash 
(2019-08-13 14:54:34 +0800)

----------------------------------------------------------------
Hisilicon fixes for v5.3-rc

- Fixed RCU usage in logical PIO
- Added a function to unregister a logical PIO range in logical PIO
   to support the fixes in the hisi-lpc driver
- Fixed and optimized hisi-lpc driver to avoid potential use-after-free
   and driver unbind crash

----------------------------------------------------------------
John Garry (5):
       lib: logic_pio: Fix RCU usage
       lib: logic_pio: Avoid possible overlap for unregistering regions
       lib: logic_pio: Add logic_pio_unregister_range()
       bus: hisi_lpc: Unregister logical PIO range to avoid potential 
use-after-free
       bus: hisi_lpc: Add .remove method to avoid driver unbind crash

  drivers/bus/hisi_lpc.c    | 47 ++++++++++++++++++++++++++----
  include/linux/logic_pio.h |  1 +
  lib/logic_pio.c           | 73 
+++++++++++++++++++++++++++++++++++------------
  3 files changed, 96 insertions(+), 25 deletions(-)




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
