Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ACACE993F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 10:35:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:To:Subject:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=kycQaBDAkWhn9RPIve5GuR3FoyjYpsHLXVEkRXQozdI=; b=gtJsCBummCgAAYLRcjZhAGo7LV
	RE6JAe0sMEqa51xeoQgSo4KF9TzBCZDcePwWNeisB/isSMz9gwOsf9lH3icW7u85NvPRAaqpjXyvn
	XhUoiMnbFveCKQ0DbT2KtqtGLrpIs68j3crjVQwFOBzmVtCAapzOBe8O0Xms8Oh7viY4BBCXLs3xp
	Wq7ualXvmyV3DogqYJ7GNHd5P/x3JUEuv1rPpi8EkHXd+QoJ1As1/4bXPRtAD5Ey+eGxyhq8j2PLC
	piDw+MzKMiSOJ2HSCelakSK6mA1AixX6XUbW+ZDYrcTJvN5AF+mfDI0+HE8saLADVfv69mwu7/ACK
	fQESv05A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPkNp-0002Sp-B8; Wed, 30 Oct 2019 09:35:17 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPkNa-0001vU-Gi
 for linux-arm-kernel@lists.infradead.org; Wed, 30 Oct 2019 09:35:04 +0000
Received: from DGGEMS413-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 784F44734EC0CD33EFBC;
 Wed, 30 Oct 2019 17:35:00 +0800 (CST)
Received: from [127.0.0.1] (10.57.101.250) by DGGEMS413-HUB.china.huawei.com
 (10.3.19.213) with Microsoft SMTP Server id 14.3.439.0; Wed, 30 Oct 2019
 17:34:54 +0800
From: Wei Xu <xuwei5@hisilicon.com>
Subject: [GIT PULL] Hisilicon ARMv7 SoC updates for v5.5
To: <soc@kernel.org>, "arm@kernel.org" <arm@kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, Olof Johansson <olof@lixom.net>,
 "Arnd Bergmann" <arnd@arndb.de>
Message-ID: <5DB9593D.9050904@hisilicon.com>
Date: Wed, 30 Oct 2019 17:34:53 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:38.0) Gecko/20100101
 Thunderbird/38.2.0
MIME-Version: 1.0
X-Originating-IP: [10.57.101.250]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_023502_755556_4BB16802 
X-CRM114-Status: UNSURE (   7.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
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
Cc: Kefeng Wang <wangkefeng.wang@huawei.com>, jinying@hisilicon.com,
 Tangkunshan <tangkunshan@huawei.com>, Salil Mehta <salil.mehta@huawei.com>,
 John Garry <john.garry@huawei.com>, Linuxarm <linuxarm@huawei.com>,
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

   git://github.com/hisilicon/linux-hisi.git tags/hisi-armv7-soc-for-5.5

for you to fetch changes up to 88ae095b2855c5caf18cc476b03f5b0c96b040a2:

   ARM: hisi: drop useless depend on ARCH_MULTI_V7 (2019-10-26 15:31:22 
+0800)

----------------------------------------------------------------
ARM: mach-hisi: Hisilicon SoC updates for 5.5

- drop the ARCH_MULTI_V7 dependency in the sub-menu of ARCH_HISI
   since ARCH_HISI depends on ARCH_MULTI_V7

----------------------------------------------------------------
Kefeng Wang (1):
       ARM: hisi: drop useless depend on ARCH_MULTI_V7

  arch/arm/mach-hisi/Kconfig | 16 ++++++----------
  1 file changed, 6 insertions(+), 10 deletions(-)



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
