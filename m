Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2331617B72F
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 08:09:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:
	From:To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KHIgNaEm0WdPBwK0yZTsHZtIuA+HqEKybhkVHC/2J8Y=; b=ick8W3xUk8n+lg
	ug8S1mNcFiuTZe18B3Q2i/0GrDSlaRrLSkMDHoelJdlWqOYL/EzIqp+vPO/4Y7CyljzHbWqu+0QjJ
	GOAdtaNfmCPX/WlDktJ6YWDE9ulyvKgGE65H65rpAMjbER03hQ0jaZiUu9LyRTRLHf1wyjbcJbAUt
	l0rowptF3kH1CdvN5Bwrpm1gGmlNUfHH5qDU65cdwrn6Q0OzEYK8hbVZu4G4Je3yE1+UA2j/lFumN
	Q9aRplUmJ2EMN09BK2iffAjxp9RI3dPuta6HzruQahqosXBV/In4Aq7mu0Nx3coKfvG1SB9WX2eDj
	ptvU2NqRvtTMLZh5gu2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jA76d-0004Qz-IN; Fri, 06 Mar 2020 07:09:11 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jA76U-0004QH-TJ
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 07:09:05 +0000
Received: from DGGEMS413-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id EC23BC80E5414D967578;
 Fri,  6 Mar 2020 15:08:58 +0800 (CST)
Received: from [127.0.0.1] (10.57.101.250) by DGGEMS413-HUB.china.huawei.com
 (10.3.19.213) with Microsoft SMTP Server id 14.3.439.0; Fri, 6 Mar 2020
 15:08:48 +0800
To: <soc@kernel.org>, "arm@kernel.org" <arm@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
From: Wei Xu <xuwei5@hisilicon.com>
Subject: [GIT PULL] Hisilicon driver updates for v5.7
Message-ID: <5E61F700.5060301@hisilicon.com>
Date: Fri, 6 Mar 2020 15:08:48 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:38.0) Gecko/20100101
 Thunderbird/38.2.0
MIME-Version: 1.0
X-Originating-IP: [10.57.101.250]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_230903_511727_5B202CA8 
X-CRM114-Status: UNSURE (   8.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
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
Cc: Salil Mehta <salil.mehta@huawei.com>, jinying@hisilicon.com,
 Tangkunshan <tangkunshan@huawei.com>, Arnd Bergmann <arnd@arndb.de>,
 John Garry <john.garry@huawei.com>, Linuxarm <linuxarm@huawei.com>,
 Shameerali Kolothum Thodi <shameerali.kolothum.thodi@huawei.com>,
 huangdaode <huangdaode@hisilicon.com>, "xuwei
 \(O\)" <xuwei5@huawei.com>, Jonathan
 Cameron <jonathan.cameron@huawei.com>, Olof Johansson <olof@lixom.net>,
 "Liguozhu
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

The following changes since commit bb6d3fb354c5ee8d6bde2d576eb7220ea09862b9:

  Linux 5.6-rc1 (2020-02-09 16:08:48 -0800)

are available in the Git repository at:

  git://github.com/hisilicon/linux-hisi.git tags/hisi-drivers-for-5.7

for you to fetch changes up to a6dd255bdd7d00bbdbf78ba00bde9fc64f86c3a7:

  bus: hisi_lpc: Fixup IO ports addresses to avoid use-after-free in host removal (2020-02-28 17:30:49 +0800)

----------------------------------------------------------------
ARM64: hisi: SoC driver updates for 5.7

- Fix up the device resources for the broken firmware to avoid
  use-after-free warnings from KASAN in the host removal path

----------------------------------------------------------------
John Garry (1):
      bus: hisi_lpc: Fixup IO ports addresses to avoid use-after-free in host removal

 drivers/bus/hisi_lpc.c | 27 +++++++++++++++++++++++++--
 1 file changed, 25 insertions(+), 2 deletions(-)


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
