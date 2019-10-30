Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30660E9955
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 10:41:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:From:To:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=T5XBtqzdBqV0of+8AcEG0FkwhxTjwi7adR3S2Rh7yoo=; b=J8/CVNcMMHOP5SbU7VOWqPxdVY
	rYRgsShcexS9Ff0XcbuPED9YSaD67MD+B45neH+XDmRSpvxs+GZPRbabmFS5WrsFNurK5TN+fVJxZ
	vHuNJfp54imu74lSSE+88BT/DP6XLJsIB58/DJHWVvpiBwUfCmdGVMFEC+uCyq1znvu8wCv4gikRk
	gmSyhwiUDoPGYsshPy7EK5wH8dT+Oym3RH/bigBkIk0NnIVZVvphuk8hH9cq/2rbZ7nJVcIM+PIak
	YDD58Qo1n5bnPms+vOyJqKAHbuzpAagycBDAXon0mdU33x9bUT65x/6YCAfIf5uKVkrhjg8LVE83Z
	BQ6DWG/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPkTg-0005BS-Aw; Wed, 30 Oct 2019 09:41:20 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPkTW-0005B2-9o
 for linux-arm-kernel@lists.infradead.org; Wed, 30 Oct 2019 09:41:11 +0000
Received: from DGGEMS407-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 64FEC989A355AD588CEA;
 Wed, 30 Oct 2019 17:41:08 +0800 (CST)
Received: from [127.0.0.1] (10.57.101.250) by DGGEMS407-HUB.china.huawei.com
 (10.3.19.207) with Microsoft SMTP Server id 14.3.439.0; Wed, 30 Oct 2019
 17:41:00 +0800
To: <soc@kernel.org>, "arm@kernel.org" <arm@kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, Olof Johansson <olof@lixom.net>,
 "Arnd Bergmann" <arnd@arndb.de>
From: Wei Xu <xuwei5@hisilicon.com>
Subject: [GIT PULL] arm64: dts: hisilicon dts updates for v5.5
Message-ID: <5DB95AAB.8060405@hisilicon.com>
Date: Wed, 30 Oct 2019 17:40:59 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:38.0) Gecko/20100101
 Thunderbird/38.2.0
MIME-Version: 1.0
X-Originating-IP: [10.57.101.250]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_024110_502255_3D4CF5D2 
X-CRM114-Status: UNSURE (   8.28  )
X-CRM114-Notice: Please train this message.
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
 Peter Griffin <peter.griffin@linaro.org>, John Stultz <john.stultz@linaro.org>,
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

   git://github.com/hisilicon/linux-hisi.git tags/hisi-arm64-dt-for-5.5

for you to fetch changes up to 37a92df9612265307bee53d423b2d7e7eb0fa985:

   arm64: dts: hisilicon: Add Mali-450 MP4 GPU DT entry (2019-10-26 
15:39:00 +0800)

----------------------------------------------------------------
ARM64: DT: Hisilicon SoCs DT updates for 5.5

- add Mali450 MP4 GPU node in the hi6220 SoC

----------------------------------------------------------------
Peter Griffin (1):
       arm64: dts: hisilicon: Add Mali-450 MP4 GPU DT entry

  arch/arm64/boot/dts/hisilicon/hi6220.dtsi | 38 
+++++++++++++++++++++++++++++++
  1 file changed, 38 insertions(+)



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
