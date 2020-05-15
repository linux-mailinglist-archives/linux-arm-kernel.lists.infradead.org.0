Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94D0F1D46F5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 09:22:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:
	From:To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=I9uB3nut6kEG8pG+VicMZ7I0RHl4LigEXvS0pbNM2gM=; b=ocCZ59RGvYRhC9
	QCSu3WyNP4oOGtYSnEAKOUcd0Kjhe/4Rk77UnoQ9me4r2v5q8+roKeWo30PvJpFoDIOn19BgCRQBL
	wVE+upD8LN1yk9hA+5pBKZRGF+QCL/+vpONiT8R1AtnJH3tWc/m7s2APApAug7qyQKTI3Xp9W/8hH
	KmffZk1hvVOfIlMnJCt8fo2mKOBhjCMM5yvLDD8WLYiFiatZ97/qOfb6NoeyJmELv2+7vSo72bXBR
	pPb7hUGfHCRPXMFQEgo726hvB0cHXYfa0llq6WyuOzGPNJUoaZNlko3mVcGnvxTgJ9QXPDEQS4Amo
	nCPwut8My06QSTdpIs9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZUfe-0000Ft-2T; Fri, 15 May 2020 07:22:14 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZUfR-0000FO-Ph
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 07:22:03 +0000
Received: from DGGEMS413-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 6FDD4B761C218209C593;
 Fri, 15 May 2020 15:21:59 +0800 (CST)
Received: from [10.57.101.250] (10.57.101.250) by
 DGGEMS413-HUB.china.huawei.com (10.3.19.213) with Microsoft SMTP Server id
 14.3.487.0; Fri, 15 May 2020 15:21:51 +0800
To: <soc@kernel.org>, "arm@kernel.org" <arm@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
From: Wei Xu <xuwei5@hisilicon.com>
Subject: [GIT PULL] arm64: dts: hisilicon dts updates for v5.8
Message-ID: <5EBE430E.6090508@hisilicon.com>
Date: Fri, 15 May 2020 15:21:50 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:38.0) Gecko/20100101
 Thunderbird/38.2.0
MIME-Version: 1.0
X-Originating-IP: [10.57.101.250]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_002202_409360_C4EB5AF8 
X-CRM114-Status: UNSURE (   9.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Salil Mehta <salil.mehta@huawei.com>,
 Loic Poulain <loic.poulain@linaro.org>, Tangkunshan <tangkunshan@huawei.com>,
 Arnd Bergmann <arnd@arndb.de>, John Garry <john.garry@huawei.com>,
 Linuxarm <linuxarm@huawei.com>, Shameerali
 Kolothum Thodi <shameerali.kolothum.thodi@huawei.com>,
 huangdaode <huangdaode@hisilicon.com>, "xuwei
 \(O\)" <xuwei5@huawei.com>, Jonathan Cameron <jonathan.cameron@huawei.com>,
 Olof Johansson <olof@lixom.net>, Shiju Jose <shiju.jose@huawei.com>,
 "Liguozhu \(Kenneth\)" <liguozhu@hisilicon.com>,
 Zhangyi ac <zhangyi.ac@huawei.com>, Mike Leach <mike.leach@linaro.org>
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

The following changes since commit 8f3d9f354286745c751374f5f1fcafee6b3f3136:

  Linux 5.7-rc1 (2020-04-12 12:35:55 -0700)

are available in the Git repository at:

  git://github.com/hisilicon/linux-hisi.git tags/hisi-arm64-dt-for-5.8

for you to fetch changes up to fd955a7eac362d87f9dcb5c2f2c3e4355726c6fc:

  arm64: dts: hi6220: Add CTI options (2020-05-07 14:44:56 +0800)

----------------------------------------------------------------
ARM64: DT: Hisilicon SoCs DT updates for 5.8

- Add pinconf for spi2 and spi3 nodes and increase the drive
  strength to achieve the max speed for the Hikey960 board
- Add CTI nodes for the Hikey620 board

----------------------------------------------------------------
Loic Poulain (1):
      arm64: dts: hikey960: pinctrl: Fix spi2/spi3 pinconf

Mike Leach (1):
      arm64: dts: hi6220: Add CTI options

 arch/arm64/boot/dts/hisilicon/hi3660.dtsi          |   4 +-
 .../arm64/boot/dts/hisilicon/hi6220-coresight.dtsi | 130 +++++++++++++++++++--
 .../arm64/boot/dts/hisilicon/hikey960-pinctrl.dtsi |   6 +-
 3 files changed, 127 insertions(+), 13 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
