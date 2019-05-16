Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CFBB20BAA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 17:54:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y7szlReKHbh0EZm1W7Hdo8j0tgEYo68CxfvdYnr+hbs=; b=j0fs7+xNGj35ME
	ziapCfVudzO0oeS9zGSKTkWx31DbLI3lQBccQxF8HtB/8B6xpdpr/2G5EwmXW1ROncszsxGaq+YUu
	K8pYRoRY782pcj+tL36XKskq9QJ2D+lFtqVIjMgN9xIEl/T8IklXyoE2k6IDN7chzsc0Pzpaafy6x
	Erwyeo4tqL7XCvQ+AaBDDMeBA/9lKFCIgKbnYP7TKcQ2ervn7oAtlVG/M4bki7vQ6SMzqTXut607O
	umqYD7vdlIucGMbO0TNx6kVYxV+1Ak+I3p3cBjjyQ161bRC0L0V4o/nZCYTtr2T+f0fw9cAnB+uVp
	kueOBTP0zQcj0fU6+8Aw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRIiP-0008OU-KS; Thu, 16 May 2019 15:54:41 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRIhg-0007bb-6E
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 15:53:58 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3DC2119F6;
 Thu, 16 May 2019 08:53:54 -0700 (PDT)
Received: from e119886-lin.cambridge.arm.com (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C882A3F71E;
 Thu, 16 May 2019 08:53:52 -0700 (PDT)
From: Andrew Murray <andrew.murray@arm.com>
To: Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>, Peter Zijlstra <peterz@infradead.org>,
 Ard.Biesheuvel@arm.com
Subject: [PATCH v1 1/5] jump_label: Don't warn on __exit jump entries
Date: Thu, 16 May 2019 16:53:40 +0100
Message-Id: <20190516155344.24060-2-andrew.murray@arm.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190516155344.24060-1-andrew.murray@arm.com>
References: <20190516155344.24060-1-andrew.murray@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_085356_230358_643CF121 
X-CRM114-Status: GOOD (  13.01  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Boqun Feng <boqun.feng@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On architectures that discard .exit.* sections at runtime, a
warning is printed for each jump label that is used within an
in-kernel __exit annotated function:

can't patch jump_label at ehci_hcd_cleanup+0x8/0x3c
WARNING: CPU: 0 PID: 1 at kernel/jump_label.c:395 __jump_label_update+0x140/0x168

As these functions will never get executed (they are free'd along
with the rest of initmem) - we do not need to patch them and should
not display any warnings.

The warning is displayed because the test required to satisfy
jump_entry_is_init is based on init_section_contains (__init_begin to
__init_end) whereas the test in __jump_label_update is based on
init_kernel_text (_sinittext to _einittext) via kernel_text_address).

In addition to fixing this, we also remove an out-of-date comment
and use a WARN instead of a WARN_ONCE.

Fixes: 19483677684b ("jump_label: Annotate entries that operate on __init code earlier")
Signed-off-by: Andrew Murray <andrew.murray@arm.com>
---
 kernel/jump_label.c | 16 +++++++++-------
 1 file changed, 9 insertions(+), 7 deletions(-)

diff --git a/kernel/jump_label.c b/kernel/jump_label.c
index bad96b476eb6..f2e36b4b06a7 100644
--- a/kernel/jump_label.c
+++ b/kernel/jump_label.c
@@ -380,16 +380,18 @@ static void __jump_label_update(struct static_key *key,
 				bool init)
 {
 	for (; (entry < stop) && (jump_entry_key(entry) == key); entry++) {
-		/*
-		 * An entry->code of 0 indicates an entry which has been
-		 * disabled because it was in an init text area.
-		 */
 		if (init || !jump_entry_is_init(entry)) {
 			if (kernel_text_address(jump_entry_code(entry)))
 				arch_jump_label_transform(entry, jump_label_type(entry));
-			else
-				WARN_ONCE(1, "can't patch jump_label at %pS",
-					  (void *)jump_entry_code(entry));
+
+			/*
+			 * kernel_text_address will return 0 for .exit.text
+			 * symbols, we don't need to patch these so suppress
+			 * this warning.
+			 */
+			else if (!jump_entry_is_init(entry))
+				WARN(1, "can't patch jump_label at %pS",
+				     (void *)jump_entry_code(entry));
 		}
 	}
 }
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
