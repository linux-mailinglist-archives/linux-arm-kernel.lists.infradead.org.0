Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3F141CCFCD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 04:34:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lktewrJh3FYeGwwmcYhdS7fWGuSpvAOjlOFeTBRJS4s=; b=S7sqpmSlLLoPny
	9K39cKc8VWyRJ4+8L2hDlloqFBXFi4zK0B49kK4idW3QN0LvQNvBFGX+78pd0FqvAYO2mUBLHd6sr
	5Rm7jWBxe17OS30EhY8CwSLYBWpjHTAQZ4qDWa7Sf7O7PPUsMcdcfNIXa0iPp7NTlfLbSuFdDL6RR
	s8bbamuCSjLMVvKRHWBmBDOvJylxFk+UkFeW0GDCxE2a4wVlwaS14Ldc58/+9oVSZxR2c73JCz0fq
	M6mAmU2vSEEXV9xnqvzap+hARVNrkJLydbl75vWwToNbO8bwQdSy8aH5vqQeZXJfFbo6mPBHokdRp
	OHHnPPh7AxbFEk4HWXNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXyH0-0002GF-Ep; Mon, 11 May 2020 02:34:30 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXyGe-00024p-9C; Mon, 11 May 2020 02:34:09 +0000
X-UUID: b195569c74af4b058bb32914ff936ec4-20200510
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=fxR+3x6dfchTUCq1rEZKfrKVHn0oaDflYS25MJ56o6M=; 
 b=iOtaRZEJrfZrFyp8o9aHZn+PMxZeVo3t20kE6ChrSvpTyTZDSUJiyrJLlityA+jY4uR8fOA5DRxjRpfow1U5+dvfD3slAlEsbP9TKYU/FoCEt1KNHjBaUmSic0S7v5CgmVrgGepsC8uIFNXxf4Jvj8+2f9pSaag6tDH04FYsMKE=;
X-UUID: b195569c74af4b058bb32914ff936ec4-20200510
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <walter-zh.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1961648567; Sun, 10 May 2020 18:34:04 -0800
Received: from MTKMBS01N2.mediatek.inc (172.21.101.79) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Sun, 10 May 2020 19:23:58 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs01n2.mediatek.inc (172.21.101.79) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Mon, 11 May 2020 10:24:00 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Mon, 11 May 2020 10:24:00 +0800
From: Walter Wu <walter-zh.wu@mediatek.com>
To: Andrey Ryabinin <aryabinin@virtuozzo.com>, Alexander Potapenko
 <glider@google.com>, Dmitry Vyukov <dvyukov@google.com>, Matthias Brugger
 <matthias.bgg@gmail.com>, "Paul E . McKenney" <paulmck@kernel.org>, "Josh
 Triplett" <josh@joshtriplett.org>, Mathieu Desnoyers
 <mathieu.desnoyers@efficios.com>, Lai Jiangshan <jiangshanlai@gmail.com>,
 Joel Fernandes <joel@joelfernandes.org>, Andrew Morton
 <akpm@linux-foundation.org>
Subject: [PATCH v2 0/3] kasan: memorize and print call_rcu stack
Date: Mon, 11 May 2020 10:23:59 +0800
Message-ID: <20200511022359.15063-1-walter-zh.wu@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-TM-SNTS-SMTP: B313EB8E7A005151BC9122FE7936DF9B364C35100A83A879C7D0BF8EF3E92D172000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200510_193408_321750_B47AEE71 
X-CRM114-Status: UNSURE (   6.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Walter Wu <walter-zh.wu@mediatek.com>,
 wsd_upstream <wsd_upstream@mediatek.com>, linux-kernel@vger.kernel.org,
 kasan-dev@googlegroups.com, linux-mm@kvack.org,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patchset improves KASAN reports by making them to have
call_rcu() call stack information. It is useful for programmers
to solve use-after-free or double-free memory issue.

The KASAN report was as follows(cleaned up slightly):

BUG: KASAN: use-after-free in kasan_rcu_reclaim+0x58/0x60

Freed by task 0:
 save_stack+0x24/0x50
 __kasan_slab_free+0x110/0x178
 kasan_slab_free+0x10/0x18
 kfree+0x98/0x270
 kasan_rcu_reclaim+0x1c/0x60
 rcu_core+0x8b4/0x10f8
 rcu_core_si+0xc/0x18
 efi_header_end+0x238/0xa6c

First call_rcu() call stack:
 save_stack+0x24/0x50
 kasan_record_callrcu+0xc8/0xd8
 call_rcu+0x190/0x580
 kasan_rcu_uaf+0x1d8/0x278

Last call_rcu() call stack:
(stack is not available)

Generic KASAN will record first and last call_rcu() call stack
and print two call_rcu() call stack in KASAN report.

This feature doesn't increase the cost of memory consumption. It is
only suitable for generic KASAN.

[1]https://bugzilla.kernel.org/show_bug.cgi?id=198437
[2]https://groups.google.com/forum/#!searchin/kasan-dev/better$20stack$20traces$20for$20rcu%7Csort:date/kasan-dev/KQsjT_88hDE/7rNUZprRBgAJ

Changes since v2:
- remove new config option, default enable it in generic KASAN
- test this feature in SLAB/SLUB, it is pass.
- modify macro to be more clearly
- modify documentation

Walter Wu (3):
rcu/kasan: record and print call_rcu() call stack
kasan: record and print the free track
kasan: update documentation for generic kasan

Documentation/dev-tools/kasan.rst |  6 ++++++
include/linux/kasan.h             |  2 ++
kernel/rcu/tree.c                 |  4 ++++
lib/Kconfig.kasan                 |  2 ++
mm/kasan/common.c                 | 26 ++++----------------------
mm/kasan/generic.c                | 50 ++++++++++++++++++++++++++++++++++++++++++++++++++
mm/kasan/kasan.h                  | 23 +++++++++++++++++++++++
mm/kasan/report.c                 | 47 +++++++++++++++++++++--------------------------
mm/kasan/tags.c                   | 37 +++++++++++++++++++++++++++++++++++++
9 files changed, 149 insertions(+), 48 deletions(-)
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
