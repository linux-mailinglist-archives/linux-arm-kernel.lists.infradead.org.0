Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 021991D470B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 09:27:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:
	From:To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=abBuc7HFwotJuhB+bKyzrp7Ebu5XLNedybcsP1c4u30=; b=S0Om3ro9fHFgeX
	t7T5T+/e6/JuxQYSSOrA3pVnO0CmFXwnxGAujR1Rr9eucL2Rkb2GwWFzxUFVFJ4GkMFLIWO51bZLM
	89nwO8iUOfnonnlvjj/tRnYQyWsv40+VTmacltHUqJj1G/witT6aOKO6l+y/Q74WwcMbfHFYUmcDy
	aRJlhnpl9Nl6KjNuNEt2fWxtQY/UflrJGMCJBVFp0FuJUnXLcJ/xdPcSj9mgICjQm6Fn00RRqTBd8
	vPmHZL4e3cQxT1bZtcnGwqZoO7G+RDRKPfhc7F/S+4kJDdWwjJnsZgqg7S0t1H72t6oSv0Ny2/ixu
	8FyasJjhLcIWjPP0Uhag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZUkH-0004eu-V6; Fri, 15 May 2020 07:27:01 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZUkA-0004eX-3Y
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 07:26:55 +0000
Received: from DGGEMS412-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 1409B19DE76B665EE01D;
 Fri, 15 May 2020 15:26:52 +0800 (CST)
Received: from [10.57.101.250] (10.57.101.250) by
 DGGEMS412-HUB.china.huawei.com (10.3.19.212) with Microsoft SMTP Server id
 14.3.487.0; Fri, 15 May 2020 15:26:42 +0800
To: <soc@kernel.org>, "arm@kernel.org" <arm@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
From: Wei Xu <xuwei5@hisilicon.com>
Subject: [GIT PULL] Hisilicon driver updates for v5.8
Message-ID: <5EBE4432.4090604@hisilicon.com>
Date: Fri, 15 May 2020 15:26:42 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:38.0) Gecko/20100101
 Thunderbird/38.2.0
MIME-Version: 1.0
X-Originating-IP: [10.57.101.250]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_002654_318831_B85811E1 
X-CRM114-Status: UNSURE (   7.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
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
Cc: song.bao.hua@hisilicon.com, Salil
 Mehta <salil.mehta@huawei.com>, Tangkunshan <tangkunshan@huawei.com>,
 Arnd Bergmann <arnd@arndb.de>, John Garry <john.garry@huawei.com>,
 Linuxarm <linuxarm@huawei.com>,
 Shameerali Kolothum Thodi <shameerali.kolothum.thodi@huawei.com>,
 huangdaode <huangdaode@hisilicon.com>, "xuwei
 \(O\)" <xuwei5@huawei.com>, Jonathan Cameron <jonathan.cameron@huawei.com>,
 Olof Johansson <olof@lixom.net>, "Liguozhu
 \(Kenneth\)" <liguozhu@hisilicon.com>, Zhangyi ac <zhangyi.ac@huawei.com>,
 Shiju Jose <shiju.jose@huawei.com>
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

  git://github.com/hisilicon/linux-hisi.git tags/hisi-drivers-for-5.8

for you to fetch changes up to 4acaa93ef64377417677d777a596e22da68c5e0d:

  logic_pio: Use _inX() and _outX() (2020-05-07 14:54:26 +0800)

----------------------------------------------------------------
ARM64: hisi: SoC driver updates for 5.8

- Generate consistent behaviour for logic_pio by defining and using
  generic _inX() and _outX() in asm-generic/io.h which have per-arch
  overrideable barriers.

----------------------------------------------------------------
John Garry (3):
      io: Provide _inX() and _outX()
      logic_pio: Improve macro argument name
      logic_pio: Use _inX() and _outX()

 include/asm-generic/io.h | 64 +++++++++++++++++++++++++++++++++---------------
 lib/logic_pio.c          | 22 ++++++++---------
 2 files changed, 55 insertions(+), 31 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
