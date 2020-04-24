Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8CE31B6CFE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 07:03:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zjOhruZ8Fm8UAyhvt4emV5B/jo9T5Dv06cBidQk5/WA=; b=bj8C9+WDvdsoH7
	NaX6ZEiXpHuWmgNSF3F3anLxWgNOuo6cMhTKme4v5U8K3CgDtBUGme6jKoeHEp5JH6/giz4KZy2Qd
	2Id5qJWsCirYdhCbOIfwtPYsfx5q13JD4OhS7L5tSRUlvhEkOl+wy3Wg1bFwBxqinmf2kqkVFlisC
	yKu6eg1993C1efVk/RG5xMVGD9TBOzAiFa6ol28ICMKg2tBIfk+HnScQvWsBWmQsgyyzA4eAkNQio
	xeEAAeQrw58HDLESRI5bqCrp+Um/9U3PNsNc9qBCP9lg7sLFzSfyouyyTW3yZ2+jKoyilUF8VDbsn
	1XhuHFQzlJ0PwaTzKnaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRqUN-0000Vw-Gy; Fri, 24 Apr 2020 05:02:59 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRqUG-0000Ui-Dm
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 05:02:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1587704570;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=hH9lbE6SFnNo0tAhCp7KPnS9UdSxpybxkGRDirKuis4=;
 b=fgNnWdwWstWNHcJEWrSVzzSALGCnLFqWqvUiD8qAryAtzaGpR10u+P2Q79vtnttYE8UETT
 ZKNLMR3eGeJ7n439ztf+lwk2vpyTHggzwhg05eax4aC28uEglaoiaApY4cyosnsxHVGW/T
 soRMa9CBFTr01sQWYD5z2MJvD6i9riA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-310-VDaNjlOSO9uzyF2A73z_CQ-1; Fri, 24 Apr 2020 01:02:45 -0400
X-MC-Unique: VDaNjlOSO9uzyF2A73z_CQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 07EA91800D42;
 Fri, 24 Apr 2020 05:02:44 +0000 (UTC)
Received: from localhost.localdomain.com (vpn2-54-127.bne.redhat.com
 [10.64.54.127])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 745765C1C8;
 Fri, 24 Apr 2020 05:02:40 +0000 (UTC)
From: Gavin Shan <gshan@redhat.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64/kernel: Fix range on invalidating dcache for boot page
 tables
Date: Fri, 24 Apr 2020 15:02:30 +1000
Message-Id: <20200424050230.16720-1-gshan@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_220252_535949_16E8889F 
X-CRM114-Status: UNSURE (   7.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: mark.rutland@arm.com, steve.capper@arm.com, catalin.marinas@arm.com,
 linux-kernel@vger.kernel.org, broonie@kernel.org, shan.gavin@gmail.com,
 will@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The MMU is disabled when __create_page_tables() is called. The data
cache corresponding to these two page tables, which are tracked by
@idmap_pg_dir and @init_pg_dir, is invalidated after the page tables
are populated. However, the wrong or inappropriate size have been used
and more data cache are invalidated than it need.

This fixes the issue by invalidating the data cache for these two
page tables separately as they aren't necessarily physically adjacent.

Signed-off-by: Gavin Shan <gshan@redhat.com>
---
 arch/arm64/kernel/head.S | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/kernel/head.S b/arch/arm64/kernel/head.S
index 57a91032b4c2..66947873c9e7 100644
--- a/arch/arm64/kernel/head.S
+++ b/arch/arm64/kernel/head.S
@@ -398,6 +398,10 @@ SYM_FUNC_START_LOCAL(__create_page_tables)
 	 * tables again to remove any speculatively loaded cache lines.
 	 */
 	adrp	x0, idmap_pg_dir
+	mov	x1, #IDMAP_DIR_SIZE
+	dmb	sy
+	bl	__inval_dcache_area
+	adrp	x0, init_pg_dir
 	adrp	x1, init_pg_end
 	sub	x1, x1, x0
 	dmb	sy
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
