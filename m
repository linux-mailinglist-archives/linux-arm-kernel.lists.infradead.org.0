Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D11A78F97E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 16 Aug 2019 05:39:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:From:To:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=PbASoP6LwuJcDj1toQeOdw6GpxfxL5DB6ShUgdTnB3A=; b=JSgrY7xpvqN7urwqcFqdLMgQyJ
	3JeLqEvEPWFQ486od3ptYPdWvdb2JQbR/bm93z3rFaYOzQ05WM1WUCkOdSEN5P1HScEEoGyZMjdPP
	lgBzvlwMrTgwpAqrgPRXTpR3B/y1AZqGmm6WXWr/RikkddsaIW+F19vIRTyV7Z2nmv5ry0y96iH7z
	WodT7lcEdkiZ8I8sN1KOwlUgZVQNPMd3U6ViFaiHcb0IKG7aLBZw7eBfFwo3mgqJhHaENczGyPLvy
	qpadZy627TKvcuBe0f3sAVZ3h9dQnWboEZikihYYwL7wYepbZpyA8cb8uwW/aaDmph+oo2QLcBIHr
	l8rSvkYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyT5j-00067n-Qj; Fri, 16 Aug 2019 03:39:51 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyT5Y-00067P-Hw
 for linux-arm-kernel@lists.infradead.org; Fri, 16 Aug 2019 03:39:41 +0000
Received: from DGGEMS403-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 33E58A74B2D687516248;
 Fri, 16 Aug 2019 11:39:39 +0800 (CST)
Received: from [127.0.0.1] (10.57.101.250) by DGGEMS403-HUB.china.huawei.com
 (10.3.19.203) with Microsoft SMTP Server id 14.3.439.0; Fri, 16 Aug 2019
 11:39:31 +0800
To: <soc@kernel.org>, "arm@kernel.org" <arm@kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, Olof Johansson <olof@lixom.net>,
 "Arnd Bergmann" <arnd@arndb.de>
From: Wei Xu <xuwei5@hisilicon.com>
Subject: [GIT PULL] arm64: defconfig: hisilicon config updates for v5.4
Message-ID: <5D562573.5030604@hisilicon.com>
Date: Fri, 16 Aug 2019 11:39:31 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:38.0) Gecko/20100101
 Thunderbird/38.2.0
MIME-Version: 1.0
X-Originating-IP: [10.57.101.250]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_203940_770916_EBADBA11 
X-CRM114-Status: UNSURE (   8.00  )
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
Cc: Salil Mehta <salil.mehta@huawei.com>, jinying@hisilicon.com,
 Tangkunshan <tangkunshan@huawei.com>, John Garry <john.garry@huawei.com>,
 Linuxarm <linuxarm@huawei.com>,
 Shameerali Kolothum Thodi <shameerali.kolothum.thodi@huawei.com>,
 "Wangzhou \(B\)" <wangzhou1@hisilicon.com>,
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

The following changes since commit 5f9e832c137075045d15cd6899ab0505cfb2ca4b:

   Linus 5.3-rc1 (2019-07-21 14:05:38 -0700)

are available in the Git repository at:

   git://github.com/hisilicon/linux-hisi.git 
tags/hisi-arm64-defconfig-for-5.4

for you to fetch changes up to 0c26a3345b4f402b87d9be00df4d3054cd8ba46f:

   arm64: defconfig: Enable CONFIG_ACPI_APEI_PCIEAER (2019-08-16 
09:36:07 +0800)

----------------------------------------------------------------
ARM64: hisilicon: defconfig updates for v5.4

- Enable ACPI_APEI_PCIEAER for the hisilicon D06 board to
   support PCIe AER error report

----------------------------------------------------------------
Zhou Wang (1):
       arm64: defconfig: Enable CONFIG_ACPI_APEI_PCIEAER

  arch/arm64/configs/defconfig | 1 +
  1 file changed, 1 insertion(+)



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
