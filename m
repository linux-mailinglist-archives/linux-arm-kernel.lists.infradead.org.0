Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E58DF7459
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 13:53:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:To:Subject:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=X0VzkRw6Upl50AysrKHh97ob5f3zzVCC0ECkbisDvEE=; b=l3iDP7hurlTnuKB4nQ73ey+Vz4
	U5pbO+2GWqQ/CWtFIwAXsLQZHiD9BkKnCfJo1IQBM2RA1kmT06XNeN2xF7qph0krrw2KTBR69THQx
	TXZJBc38rwGbVMaWoVL2dqEo0V5RQABH6pq0g13DGACWVF5VxEJwIwe9noqlHctGbG1aZ0kkczJba
	+TR6eIGkuCI0irQIWXRBuE6HX7n0VeIDGaceODGJ2cPLJcWh8oyuT3w4lIUs1P4FdEd35ESTtaoKg
	ynNcedXV2bRad+saLg2RTr06QoJwV4rLcmxpqvZaF2iUQqTHA+SfcsS50LH5xiOr23hkoH0GJDLLi
	21ZFTpSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iU9Cf-0003BT-Uh; Mon, 11 Nov 2019 12:53:57 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iU9CY-0003AJ-Fl
 for linux-arm-kernel@lists.infradead.org; Mon, 11 Nov 2019 12:53:52 +0000
Received: from DGGEMS413-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 127483CF316A9869D55E;
 Mon, 11 Nov 2019 20:53:38 +0800 (CST)
Received: from [127.0.0.1] (10.57.101.250) by DGGEMS413-HUB.china.huawei.com
 (10.3.19.213) with Microsoft SMTP Server id 14.3.439.0; Mon, 11 Nov 2019
 20:53:30 +0800
From: Wei Xu <xuwei5@hisilicon.com>
Subject: [GIT PULL v2] Hisilicon driver updates for v5.5
To: <soc@kernel.org>, "arm@kernel.org" <arm@kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, Olof Johansson <olof@lixom.net>,
 "Arnd Bergmann" <arnd@arndb.de>
Message-ID: <5DC959B9.80301@hisilicon.com>
Date: Mon, 11 Nov 2019 20:53:13 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:38.0) Gecko/20100101
 Thunderbird/38.2.0
MIME-Version: 1.0
X-Originating-IP: [10.57.101.250]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_045350_692873_FD3BFB07 
X-CRM114-Status: GOOD (  11.28  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
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

for you to fetch changes up to f361c863b3bfa602da37d7a94d90a5dfee0d08fe:

   logic_pio: Build into a library (2019-11-05 08:48:07 +0800)

----------------------------------------------------------------
ARM64: hisi: SoC driver updates for 5.5

- check the LOGIC_PIO_INDIRECT region ops at registration instead of
   in the IO port accessors to optimise the lib/ligic_pio.c

- add the hisi LPC driver to the build test for the other architectures
   except ALPHA, C6X, HEXAGON and PARISC as they do not define 
{read,write}sb
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

  drivers/bus/Kconfig       |  5 +++--
  drivers/bus/hisi_lpc.c    |  9 ++++-----
  include/linux/logic_pio.h |  4 ++--
  lib/Makefile              |  2 +-
  lib/logic_pio.c           | 14 ++++++++------
  5 files changed, 18 insertions(+), 16 deletions(-)



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
