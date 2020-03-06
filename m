Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D17E817B716
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 07:55:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:
	From:To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zTVyAymZ6PobyGvE9QG0LYiPSELksHRfKJAczOhp9Nw=; b=UP2t4U40Z6DX0q
	uIYT+md7DSmZOiERVECZiYUVQUGv/F7BkEF0C6FqFIbbmbtQauRv0/7lzRBsozHlCyz9MaIuZ+vnz
	lBjT6HFc7ACXv84rb/Esmwx/S0haVHNFbiP0sVWjXcpZT3COmUXud1awkW+odytcl9KS9q+MzDuoe
	qOPSjZmBfaIDvMYWQ3TMgD4brPzYooe5eY4EKYlKRappntHxLWN19gP1NBo3zjSO5Iz3l+uvsrc3v
	804SIR2mD1lLSWw1i7Y5uN1MbDfJ6KdpT4AtjAhZJrNIhwQzojBVcVHB7EX9pP51NAhg+nkWFLcCd
	y8q6Z30I90NWmtcNCehg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jA6tQ-0008LM-OD; Fri, 06 Mar 2020 06:55:32 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jA6tF-00078D-8j
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 06:55:22 +0000
Received: from DGGEMS403-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 54DECB4E8A1406B514AA;
 Fri,  6 Mar 2020 14:55:08 +0800 (CST)
Received: from [127.0.0.1] (10.57.101.250) by DGGEMS403-HUB.china.huawei.com
 (10.3.19.203) with Microsoft SMTP Server id 14.3.439.0; Fri, 6 Mar 2020
 14:54:57 +0800
To: <soc@kernel.org>, "arm@kernel.org" <arm@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
From: Wei Xu <xuwei5@hisilicon.com>
Subject: [GIT PULL] arm64: defconfig: hisilicon config updates for v5.7
Message-ID: <5E61F3C1.1080909@hisilicon.com>
Date: Fri, 6 Mar 2020 14:54:57 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:38.0) Gecko/20100101
 Thunderbird/38.2.0
MIME-Version: 1.0
X-Originating-IP: [10.57.101.250]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_225521_482462_B561AF53 
X-CRM114-Status: UNSURE (   9.04  )
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
 Shameerali Kolothum Thodi <shameerali.kolothum.thodi@huawei.com>,
 John Garry <john.garry@huawei.com>, Linuxarm <linuxarm@huawei.com>,
 xuwei5@hisilicon.com, huangdaode <huangdaode@hisilicon.com>, Jonathan
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

  git://github.com/hisilicon/linux-hisi.git tags/hisi-arm64-defconfig-for-5.7

for you to fetch changes up to d698e544e2107e3e161ddbb3a28324197ecd537f:

  arm64: defconfig: Enable MEGARAID_SAS (2020-02-28 17:32:19 +0800)

----------------------------------------------------------------
ARM64: hisilicon: defconfig updates for 5.7

- Enable MEGARAID_SAS to be able to boot from
  disk for the D06CS development board

----------------------------------------------------------------
John Garry (1):
      arm64: defconfig: Enable MEGARAID_SAS

 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
