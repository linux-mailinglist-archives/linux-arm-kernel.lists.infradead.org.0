Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A42C1A1D91
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Apr 2020 10:49:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ckKhPmGmOxTGz6wkk3sxT/5Cn/NbBXHqnfVx2fjRVVQ=; b=geVnhJuHSoGW6Y
	9MmMZkyjd7Xpzb4HM3k7jOo6o72ha1TsHWOCVlfIxBC55t8xQeISwJKQY8KAKh/onfooPaQ+XRwT/
	UQoSJfxVCTblSQ59i+aBsPjq0VhnhvJgp2x+Hmg17b9HpZvKY6Lebd+/RYM1S3Zn+//aFLo8Juyqr
	7zXJQprlEusexy6kjR1Jhd5yvtU52ktBJqfg8PD5X1Uzci4brEoz4bwz8dC2Xdjah9ZHaFoWye1PZ
	UnmGTL24+SNuTsdFiNFFsllNmjoYY62EpoAeTzzxNG2V5e9gDruz4bZRp6URmV6wurg6V4lCEXeXb
	Plyj0ajo0GrP6+gJme6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jM6Oz-0006eu-Ie; Wed, 08 Apr 2020 08:49:41 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jM6Os-0006e0-1e
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Apr 2020 08:49:35 +0000
X-UUID: 6e25e9573e4c484baa6d55e32610be3c-20200408
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=pcxXWb5iQG4wOxAvyRLVWbYi/fyvTtoB5AgaZ19wR60=; 
 b=R/HsOLhiSc64RJr6ITsvdUUniNyyb8dc7e4MQkAyQYCNb/GVHrAjYyR5nSJ8UzIa9x/I4nzFO3xFX3BrzPEs4c3LgoFJeavvZL1HEcRRGoH1OjhLCZeqLSpTcnlWvdOWx6k7ADl1Spx41kglKFNZTWdYgBcEbXFOAhf/x3h2Yhk=;
X-UUID: 6e25e9573e4c484baa6d55e32610be3c-20200408
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <walter-zh.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2038738336; Wed, 08 Apr 2020 00:49:20 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Wed, 8 Apr 2020 01:49:26 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Wed, 8 Apr 2020 16:49:24 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Wed, 8 Apr 2020 16:49:24 +0800
From: Walter Wu <walter-zh.wu@mediatek.com>
To: Thomas Gleixner <tglx@linutronix.de>, Peter Zijlstra
 <peterz@infradead.org>, Ingo Molnar <mingo@kernel.org>, Josh Poimboeuf
 <jpoimboe@redhat.com>, Bart Van Assche <bvanassche@acm.org>, Andrew Morton
 <akpm@linux-foundation.org>
Subject: [PATCH] stacktrace: cleanup inconsistent variable type
Date: Wed, 8 Apr 2020 16:49:03 +0800
Message-ID: <20200408084903.4261-1-walter-zh.wu@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_014934_095923_E79815E7 
X-CRM114-Status: GOOD (  10.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-mm@kvack.org, Walter Wu <walter-zh.wu@mediatek.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 wsd_upstream <wsd_upstream@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The skip in struct stack_trace has inconsistent type with struct
stack_trace_data, it makes a bit confusion in the relationship
between struct stack_trace and stack_trace_data. In theory,
the skip variable type should be unsigned int.

Signed-off-by: Walter Wu <walter-zh.wu@mediatek.com>
Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Ingo Molnar <mingo@kernel.org>
Cc: Josh Poimboeuf <jpoimboe@redhat.com>
Cc: Bart Van Assche <bvanassche@acm.org>
Cc: Andrew Morton <akpm@linux-foundation.org>
---
 include/linux/stacktrace.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/linux/stacktrace.h b/include/linux/stacktrace.h
index 83bd8cb475d7..b7af8cc13eda 100644
--- a/include/linux/stacktrace.h
+++ b/include/linux/stacktrace.h
@@ -64,7 +64,7 @@ void arch_stack_walk_user(stack_trace_consume_fn consume_entry, void *cookie,
 struct stack_trace {
 	unsigned int nr_entries, max_entries;
 	unsigned long *entries;
-	int skip;	/* input argument: How many entries to skip */
+	unsigned int skip;	/* input argument: How many entries to skip */
 };
 
 extern void save_stack_trace(struct stack_trace *trace);
-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
