Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 494081A7972
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 13:29:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LsyQ85GCiWFBhOv1JBkvV6PIT+H639ldvEDcdl7lmxU=; b=rEkYYQ4Y8K9P8g
	1965B9eVXzP4wyz04lAqamkU5j0ptwnU+z7nPU4azjC02MCxWzWGKwhqIqrOJD/UC67iIsoiQut0s
	rV5pyzoJeEb3fMttUUfB6NyGePMBmJcI/bsBNPWiYkedg/M0fO2WpIph4A5RgLbw1EO3GvsHLuJUU
	eo3Q+mduHI5k5i9OIK1kthKnbEtO2mw0zUgv9M72oOWSi2vq/o3hvlQOeNSOU6BRKZk0vFlemN1AA
	VUXPwTMoe5lNBBEuWP/C5e6CjOti2DCDF3kOxfmAUcxI0oep+tNvq7rkAq0aLEg6N3B6lAASK4Pe5
	qFHQmQIO+UpWStRyIRkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOJlG-0007VH-Uw; Tue, 14 Apr 2020 11:29:50 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOJkZ-00071F-NX
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 11:29:10 +0000
Received: from DGGEMS408-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 44DE362D7C198D4FE206;
 Tue, 14 Apr 2020 19:28:57 +0800 (CST)
Received: from DESKTOP-KKJBAGG.china.huawei.com (10.173.220.25) by
 DGGEMS408-HUB.china.huawei.com (10.3.19.208) with Microsoft SMTP Server id
 14.3.487.0; Tue, 14 Apr 2020 19:28:46 +0800
From: Zhenyu Ye <yezhenyu2@huawei.com>
To: <will@kernel.org>, <catalin.marinas@arm.com>, <suzuki.poulose@arm.com>,
 <maz@kernel.org>, <steven.price@arm.com>, <guohanjun@huawei.com>,
 <olof@lixom.net>
Subject: [RFC PATCH v3 0/2] arm64: tlb: add support for TLBI RANGE instructions
Date: Tue, 14 Apr 2020 19:28:33 +0800
Message-ID: <20200414112835.1121-1-yezhenyu2@huawei.com>
X-Mailer: git-send-email 2.22.0.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.173.220.25]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_042908_326186_CE6AF479 
X-CRM114-Status: UNSURE (   7.16  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-arch@vger.kernel.org, yezhenyu2@huawei.com,
 linux-kernel@vger.kernel.org, xiexiangyou@huawei.com,
 zhangshaokun@hisilicon.com, linux-mm@kvack.org, arm@kernel.org,
 prime.zeng@hisilicon.com, kuhn.chenqun@huawei.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

ARMv8.4-TLBI provides TLBI invalidation instruction that apply to a
range of input addresses. This series add support for this feature.

--
ChangeList:
v3:
rebase this series on Linux 5.7-rc1.

v2:
Link: https://lkml.org/lkml/2019/11/11/348

Zhenyu Ye (2):
  arm64: tlb: Detect the ARMv8.4 TLBI RANGE feature
  arm64: tlb: Use the TLBI RANGE feature in arm64

 arch/arm64/include/asm/cpucaps.h  |   3 +-
 arch/arm64/include/asm/sysreg.h   |   4 ++
 arch/arm64/include/asm/tlbflush.h | 108 +++++++++++++++++++++++++++++-
 arch/arm64/kernel/cpufeature.c    |  11 +++
 4 files changed, 124 insertions(+), 2 deletions(-)

-- 
2.19.1



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
