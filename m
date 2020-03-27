Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D5F7195ABF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 17:11:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6767k8a5M/qfoM1pBiF7pdLHEaqgWZsBnopcF/8W7MY=; b=T9hXHhwyh27nN7
	kuXJuu6piuUW4ebWKHbQH59Am+2oMBKTv7Q90TSHTutc3SFB8LL4R9/aF/72cVIQBoqKt6wpg15IG
	qLI2QXFg9K1uGHjao0Lf7zNT/38arx/wW07veM+3rwh9USvJHo+n5f3SfWP5byjPjN+1bW2ybogfr
	ewWGA07aaYVZSUa4E9jmgN90SDM7kN3YNgCLidFYRd8fvcSufjj/KRbaZenN7yeKxpZ/IdXhIz6Cd
	RVgqTMJ3lKKS4wFKe+rQ46SL1za9fn+Bd3QNu7DOCivgzBIkav74RxwrSogazzHtx5VwUen6QAYRI
	iNkTJ6lMUVsVI6E5cGfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHrZr-0003be-90; Fri, 27 Mar 2020 16:11:23 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHrZC-00038b-Au
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Mar 2020 16:10:44 +0000
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id A0F4D6FF656609A32887;
 Sat, 28 Mar 2020 00:10:23 +0800 (CST)
Received: from localhost.localdomain (10.69.192.58) by
 DGGEMS410-HUB.china.huawei.com (10.3.19.210) with Microsoft SMTP Server id
 14.3.487.0; Sat, 28 Mar 2020 00:10:16 +0800
From: John Garry <john.garry@huawei.com>
To: <xuwei5@huawei.com>, <arnd@arndb.de>
Subject: [PATCH v2 0/3] io.h,
 logic_pio: Allow barriers for inX() and outX() be overridden
Date: Sat, 28 Mar 2020 00:06:11 +0800
Message-ID: <1585325174-195915-1-git-send-email-john.garry@huawei.com>
X-Mailer: git-send-email 2.8.1
MIME-Version: 1.0
X-Originating-IP: [10.69.192.58]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_091042_535522_C46EBCA4 
X-CRM114-Status: UNSURE (   7.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-arch@vger.kernel.org, John
 Garry <john.garry@huawei.com>, okaya@kernel.org, linux-kernel@vger.kernel.org,
 jiaxun.yang@flygoat.com, linuxarm@huawei.com, olof@lixom.net,
 bhelgaas@google.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Since commits a7851aa54c0c ("io: change outX() to have their own IO
barrier overrides") and 87fe2d543f81 ("io: change inX() to have their own
IO barrier overrides"), the outX() and inX() functions have memory
barriers which can be overridden per-arch.

However, under CONFIG_INDIRECT_PIO, logic_pio defines its own version of
inX() and outX(), which still use readb et al. For these, the barrier
after a raw read is weaker than it otherwise would be. 

This series generates consistent behaviour for logic_pio, by defining
generic _inX() and _outX() in asm-generic/io.h, and using those in
logic_pio. Generic _inX() and _outX() have per-arch overrideable
barriers.

The topic was discussed there originally:
https://lore.kernel.org/lkml/2e80d7bc-32a0-cc40-00a9-8a383a1966c2@huawei.com/

A small tidy-up patch is included.

I hope that series can go through the arm-soc tree, as with other recent
logic_pio changes.

Hi Arnd,

I added your tag, but please let me know if you have any issue with the
updated change in patch #1.

cheers

- Differences to v1
	- fix x86 clang build by adding extra build swicth for _{in,out}X
	- added Arnd's RB tag

John Garry (3):
  io: Provide _inX() and _outX()
  logic_pio: Improve macro argument name
  logic_pio: Use _inX() and _outX()

 include/asm-generic/io.h | 64 +++++++++++++++++++++++++++++++++---------------
 lib/logic_pio.c          | 22 ++++++++---------
 2 files changed, 55 insertions(+), 31 deletions(-)

-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
