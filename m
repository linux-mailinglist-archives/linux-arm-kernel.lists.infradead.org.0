Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A5401CC1EA
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  9 May 2020 15:50:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bm9Rn38babucuSto/kYNgRVVdqW4RvnZse4gYg7t4nk=; b=CQr53vKljw7nVL
	y3lvmwNdNDyfKWYqDrh8ecQyU4j4NsWuDc+hUKanMTTK4iNIzErJkDIa7e4RSEUQC1Ghg2eYD/yyi
	1+ZIw0J+AQNEihjmbjS3KmXvf9hc0p38kQ6dcINEzHQ1gBTLIKtamyBQfTGI35CzXGpeq4f0Hs402
	MC/juOe510FKpRkix042PrU6djaHckEOqHrNn7Iv2iUQQ1/9hf5j0QVtO1CLawtr+HKXFxNYvIbgr
	I39PjKQi2t6XnLe+QCzerrBbWL0O7cDPMEuSc39T3jeUK3n9RzkyuruLV9hSGJVy9DH4kf3ZxtjmI
	GqGwvyX+35S1Zwigj9Hg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXPrk-000865-UK; Sat, 09 May 2020 13:50:08 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXPr4-0007YG-QH
 for linux-arm-kernel@lists.infradead.org; Sat, 09 May 2020 13:49:29 +0000
Received: from DGGEMS412-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 156EF275F844D64B3B40;
 Sat,  9 May 2020 21:49:09 +0800 (CST)
Received: from euler.huawei.com (10.175.101.6) by
 DGGEMS412-HUB.china.huawei.com (10.3.19.212) with Microsoft SMTP Server id
 14.3.487.0; Sat, 9 May 2020 21:49:07 +0800
From: Wei Li <liwei391@huawei.com>
To: <daniel.thompson@linaro.org>, <jason.wessel@windriver.com>,
 <dianders@chromium.org>, <maz@kernel.org>, <mark.rutland@arm.com>,
 <mhiramat@kernel.org>, <davem@davemloft.net>, <will@kernel.org>,
 <catalin.marinas@arm.com>
Subject: [PATCH 0/4] arm64: kgdb/kdb: Fix single-step debugging issues
Date: Sun, 10 May 2020 05:41:55 +0800
Message-ID: <20200509214159.19680-1-liwei391@huawei.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.175.101.6]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200509_064927_827657_FDDDD607 
X-CRM114-Status: UNSURE (   6.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.190 listed in wl.mailspike.net]
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 DATE_IN_FUTURE_06_12   Date: is 6 to 12 hours after Received: date
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: liwei1412@163.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch set is to fix several issues of single-step debugging
in kgdb/kdb on arm64.

It seems that these issues have been shelved a very long time,
but i still hope to solve them, as the single-step debugging
is an useful feature.

Note:
Based on patch "arm64: cacheflush: Fix KGDB trap detection",
https://www.spinics.net/lists/arm-kernel/msg803741.html

Wei Li (4):
  arm64: kgdb: Fix single-step exception handling oops
  arm64: Extract kprobes_save_local_irqflag() and
    kprobes_restore_local_irqflag()
  arm64: kgdb: Fix single-stepping into the irq handler wrongly
  arm64: kgdb: Set PSTATE.SS to 1 to reenable single-step

 arch/arm64/include/asm/debug-monitors.h |  6 ++++++
 arch/arm64/kernel/debug-monitors.c      | 28 ++++++++++++++++++++++++-
 arch/arm64/kernel/kgdb.c                | 16 +++++++++++---
 arch/arm64/kernel/probes/kprobes.c      | 28 ++-----------------------
 4 files changed, 48 insertions(+), 30 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
