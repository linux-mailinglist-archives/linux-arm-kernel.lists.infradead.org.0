Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C2DE1D46E8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 09:18:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:
	From:To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZT+O5zZYcad8Gi4sQoUg7jDgFBzIxEYfCbY4RwwTtro=; b=VG9K/aaECKMwOE
	dmx+SdXL66NpTetEPW2Og9MkBPOjgae2cvCySrhPWUWL+LL5V8ZJkGX3I+NmaK6NoPWvex2hlCJYJ
	RSd/t5JeTYhc/uyk1QQJ+Ny5iu0y1InRWLKzcjKbTvFcBAVlOBHI4gB30FMX+QjGInMxQWnx081QA
	Dakt14KDqhfiDATSlRHphCr2lzPCd28liaE1wV4kK8ZbSB8ayQxYwdwtr5e8wWkWSNK9/X/1ZwPMj
	1YiYq25Il7sIglRimS6bcu5ta5zdm7gRA80DMnwTKQqDe7G/HRFXT3gvAja/tW43ZVOdoA6dwtrPZ
	wYcmX1tgPrq77YLcsHfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZUba-0005Ux-E2; Fri, 15 May 2020 07:18:02 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZUbS-0005UG-OR
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 07:17:56 +0000
Received: from DGGEMS407-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 4546F540117AF32C657B;
 Fri, 15 May 2020 15:17:51 +0800 (CST)
Received: from [10.57.101.250] (10.57.101.250) by
 DGGEMS407-HUB.china.huawei.com (10.3.19.207) with Microsoft SMTP Server id
 14.3.487.0; Fri, 15 May 2020 15:17:43 +0800
To: <soc@kernel.org>, "arm@kernel.org" <arm@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
From: Wei Xu <xuwei5@hisilicon.com>
Subject: [GIT PULL] arm64: defconfig: hisilicon config updates for v5.8
Message-ID: <5EBE4217.6000900@hisilicon.com>
Date: Fri, 15 May 2020 15:17:43 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:38.0) Gecko/20100101
 Thunderbird/38.2.0
MIME-Version: 1.0
X-Originating-IP: [10.57.101.250]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_001754_960559_62B2298A 
X-CRM114-Status: UNSURE (   8.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.32 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Salil Mehta <salil.mehta@huawei.com>, Tangkunshan <tangkunshan@huawei.com>,
 Arnd Bergmann <arnd@arndb.de>, John Garry <john.garry@huawei.com>,
 Linuxarm <linuxarm@huawei.com>, Shameerali
 Kolothum Thodi <shameerali.kolothum.thodi@huawei.com>,
 "Wangzhou \(B\)" <wangzhou1@hisilicon.com>,
 huangdaode <huangdaode@hisilicon.com>, "xuwei
 \(O\)" <xuwei5@huawei.com>, Jonathan Cameron <jonathan.cameron@huawei.com>,
 Olof Johansson <olof@lixom.net>,
 "Liguozhu \(Kenneth\)" <liguozhu@hisilicon.com>, Zhangyi
 ac <zhangyi.ac@huawei.com>, Shiju Jose <shiju.jose@huawei.com>
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

  git://github.com/hisilicon/linux-hisi.git tags/hisi-arm64-defconfig-for-5.8

for you to fetch changes up to 528443e32a3d53000d30bb8be04a382b04e57470:

  arm64: defconfig: Enable UACCE/PCI PASID/SEC2/HPRE configs (2020-05-15 09:29:47 +0800)

----------------------------------------------------------------
ARM64: hisilicon: defconfig updates for 5.8

- Enable PCI PASID as built-in module and UACCE/SEC2/HPRE as
  loadable modules to support UACCE use case for the D06CS board

----------------------------------------------------------------
Zhou Wang (1):
      arm64: defconfig: Enable UACCE/PCI PASID/SEC2/HPRE configs

 arch/arm64/configs/defconfig | 4 ++++
 1 file changed, 4 insertions(+)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
