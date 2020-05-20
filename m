Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF6B11DB357
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 14:33:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DAQMkDDp5VzP7YirtGwEetWY0/B2lu2NRR1AtLdKJlg=; b=hbyaWMlWg3XCOX
	7ZPMpdwhZFFIBbuSVQgfqIDVprSQUifi1tpMBMFH5aG0OpvSsr0VKWb2gqQZZx8BP+EPZ1Bb3omHH
	0PISSkXSDD5ldrpF1TjxOobT5qjflnfJTlNJTSnDkT7RmdI3gOsocFdXCfH39rM0+hup1YsWI+1v6
	77W5IShFB+l+HJhuHPUjB7b9Io5b2O/gePvSqa4pp/iznCP5Ln3pB1dGXAPZwoXh7KSBzE/znb1Eo
	2VxaF22HlYBW8mMVAThcqt93mWjf6nM+wg3zYif0nBLzEI2etnXo3zBMQCvUmyPTsaH4Pqvdpw0fV
	KVDYV83ysbYR15Iv+6XQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbNuQ-0007b6-R2; Wed, 20 May 2020 12:33:18 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbNuE-0007YJ-W1; Wed, 20 May 2020 12:33:08 +0000
X-UUID: 39d3824974384e8dbf977185e8de22e1-20200520
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=BeLeJJH5ofgcw6vUjWiYK26OxvqDsbWroYEUdxA+t8A=; 
 b=u/jGnoJ4betw2/GYxEKGX7BUWyK5znAeFP8tZnR9yVznoQCGNiWzV6enZDjkJP6biBNQUiMzMsVEfok2xb0AQMEykdqxT1nX3gzszmsuYs194fFxpfY+ag86YEIxPqF9NP2P+kZpXS/kDF4HLabU8DpvEXLnZGMjhuCFsluFdYQ=;
X-UUID: 39d3824974384e8dbf977185e8de22e1-20200520
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <walter-zh.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 240069972; Wed, 20 May 2020 04:33:00 -0800
Received: from MTKMBS06N2.mediatek.inc (172.21.101.130) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Wed, 20 May 2020 05:32:58 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs06n2.mediatek.inc (172.21.101.130) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Wed, 20 May 2020 20:32:55 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Wed, 20 May 2020 20:32:55 +0800
From: Walter Wu <walter-zh.wu@mediatek.com>
To: Andrey Ryabinin <aryabinin@virtuozzo.com>, Alexander Potapenko
 <glider@google.com>, Dmitry Vyukov <dvyukov@google.com>, Matthias Brugger
 <matthias.bgg@gmail.com>, "Paul E . McKenney" <paulmck@kernel.org>, "Josh
 Triplett" <josh@joshtriplett.org>, Mathieu Desnoyers
 <mathieu.desnoyers@efficios.com>, Lai Jiangshan <jiangshanlai@gmail.com>,
 Joel Fernandes <joel@joelfernandes.org>, Andrew Morton
 <akpm@linux-foundation.org>, Andrey Konovalov <andreyknvl@google.com>
Subject: [PATCH v5 0/4] kasan: memorize and print call_rcu stack
Date: Wed, 20 May 2020 20:32:55 +0800
Message-ID: <20200520123255.3839-1-walter-zh.wu@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-TM-SNTS-SMTP: DF741B473EA238CE2AE57D1C416BCAEDDD57C2833C3B4D2DA18BAD5A08D8623E2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_053307_034388_F920DA17 
X-CRM114-Status: GOOD (  10.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 kasan_save_stack+0x24/0x50
 kasan_set_track+0x24/0x38
 kasan_set_free_info+0x18/0x20
 __kasan_slab_free+0x10c/0x170
 kasan_slab_free+0x10/0x18
 kfree+0x98/0x270
 kasan_rcu_reclaim+0x1c/0x60

Last one call_rcu() call stack:
 kasan_save_stack+0x24/0x50
 kasan_record_aux_stack+0xbc/0xd0
 call_rcu+0x8c/0x580
 kasan_rcu_uaf+0xf4/0xf8

Generic KASAN will record the last two call_rcu() call stacks and
print up to 2 call_rcu() call stacks in KASAN report. it is only
suitable for generic KASAN.

This feature considers the size of struct kasan_alloc_meta and
kasan_free_meta, we try to optimize the structure layout and size
, let it get better memory consumption.

[1]https://bugzilla.kernel.org/show_bug.cgi?id=198437
[2]https://groups.google.com/forum/#!searchin/kasan-dev/better$20stack$20traces$20for$20rcu%7Csort:date/kasan-dev/KQsjT_88hDE/7rNUZprRBgAJ

Changes since v2:
- remove new config option, default enable it in generic KASAN
- test this feature in SLAB/SLUB, it is pass.
- modify macro to be more clearly
- modify documentation

Changes since v3:
- change recording from first/last to the last two call stacks
- move free track into kasan free meta
- init slab_free_meta on object slot creation
- modify documentation

Changes since v4:
- change variable name to be more clearly
- remove the redundant condition
- remove init free meta-data and increasing object condition

Changes since v5:
- add a macro KASAN_KMALLOC_FREETRACK in order to check whether
  print free stack
- change printing message
- remove descriptions in Kocong.kasan

Walter Wu (4):
rcu/kasan: record and print call_rcu() call stack
kasan: record and print the free track
kasan: add tests for call_rcu stack recording
kasan: update documentation for generic kasan

Documentation/dev-tools/kasan.rst |  3 +++
include/linux/kasan.h             |  2 ++
kernel/rcu/tree.c                 |  2 ++
lib/test_kasan.c                  | 30 ++++++++++++++++++++++++++++++
mm/kasan/common.c                 | 26 ++++----------------------
mm/kasan/generic.c                | 43 +++++++++++++++++++++++++++++++++++++++++++
mm/kasan/generic_report.c         |  1 +
mm/kasan/kasan.h                  | 23 +++++++++++++++++++++--
mm/kasan/quarantine.c             |  1 +
mm/kasan/report.c                 | 50 ++++++++++++++++++++++++++++----------------------
mm/kasan/tags.c                   | 37 +++++++++++++++++++++++++++++++++++++
11 files changed, 172 insertions(+), 46 deletions(-)
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
