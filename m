Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FD8418A016
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 17:01:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bezSi7osx0W7obK5OsQq2yqSndpvEOX2USUzm9CabiU=; b=jzxGiw1yDhs5O/
	U5I6CavnrYhaNGUwiYpF3kmjexQaNfwlS7IDX/0gvwhPWVL1rTOEz4KiAv8AC0wLdYlffBJ2NvsqU
	fZuUhbg1MfTw0v2+u1A+tYvG9T9bb7KcnkZzWz183QCkRBnRBZIeB5oaRyP8HfYDRt1ThXQL6g2TW
	dJ8hRCfdzEBPuEg0/KjXDe/zh13VC9cfTLURG4BCzTW5qtuIJm5xvBeu7dLpryv5MvafPyMIvEChg
	n3jZKTEUsi22onBE+/JCOcqH9V4yMfM/6myEp8AX0cY1JHbuKpEnJ0m30jp+C2gn6cCC9TczTNN28
	clCHlOkVUYGfcPwkx5Kw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEb7n-00007G-6H; Wed, 18 Mar 2020 16:00:55 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEb6p-0006dx-Li
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Mar 2020 15:59:58 +0000
Received: from DGGEMS408-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id A2418FC2FB6FF7DC0FC8;
 Wed, 18 Mar 2020 23:59:49 +0800 (CST)
Received: from localhost.localdomain (10.69.192.58) by
 DGGEMS408-HUB.china.huawei.com (10.3.19.208) with Microsoft SMTP Server id
 14.3.487.0; Wed, 18 Mar 2020 23:59:39 +0800
From: John Garry <john.garry@huawei.com>
To: <xuwei5@huawei.com>, <arnd@arndb.de>
Subject: [PATCH 0/3] io.h,
 logic_pio: Allow barriers for inX() and outX() be overridden
Date: Wed, 18 Mar 2020 23:55:32 +0800
Message-ID: <1584546935-75393-1-git-send-email-john.garry@huawei.com>
X-Mailer: git-send-email 2.8.1
MIME-Version: 1.0
X-Originating-IP: [10.69.192.58]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_085956_283518_6E883B56 
X-CRM114-Status: UNSURE (   6.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
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

John Garry (3):
  io: Provide _inX() and _outX()
  logic_pio: Improve macro argument name
  logic_pio: Use _inX() and _outX()

 include/asm-generic/io.h | 64 +++++++++++++++++++++++++++++++++---------------
 lib/logic_pio.c          | 22 ++++++++---------
 2 files changed, 55 insertions(+), 31 deletions(-)

-- 
2.12.3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
