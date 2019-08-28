Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C8D8A08EE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 19:50:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UA8xdUWEoGXGqqRZPEE1/Qj8yna+eWe9DYNKUfbXVhs=; b=Es9bVAfF8IwTWp
	qUfbPR0yg5apI2HK9bNkUa4Vqot4qLr6Tm4XT6qvcMkW44x1+UtBU/njIqe8kf283y3uDNdZcSHii
	WbzrqADTrIi/L2qWUWOI3ZPsFi1oRGBduem9ZGe3xKuq5SOr5SwUr2iD+JnR3OJjameGbOB7b+aQw
	Tf5XTEI56FBESOHVvtbz4FvUnOSCisk8427epbz9WrgOYtOxcMu3CsnWhTd5+QKVulQ5YKjytJNA4
	KVAU5iKEFZFhHAgQcffRI3zukufTiZdNY4uQa3NuLZ5kWbUs8dW5XQTJLZhutrkiOeAmmnwOes2qC
	GNfwr8zZzn4cAiz1l99w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i325p-0006kA-EU; Wed, 28 Aug 2019 17:50:49 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i325K-0006Yf-JA
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 17:50:21 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A43A41570;
 Wed, 28 Aug 2019 10:50:17 -0700 (PDT)
Received: from e119886-lin.cambridge.arm.com (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B4BB63F59C;
 Wed, 28 Aug 2019 10:50:15 -0700 (PDT)
From: Andrew Murray <andrew.murray@arm.com>
To: Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>, Peter Zijlstra <peterz@infradead.org>,
 Ard.Biesheuvel@arm.com
Subject: [PATCH v4 1/5] jump_label: Don't warn on __exit jump entries
Date: Wed, 28 Aug 2019 18:50:05 +0100
Message-Id: <20190828175009.15457-2-andrew.murray@arm.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190828175009.15457-1-andrew.murray@arm.com>
References: <20190828175009.15457-1-andrew.murray@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_105018_672018_39901A37 
X-CRM114-Status: GOOD (  10.75  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Boqun Feng <boqun.feng@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On architectures that discard .exit.* sections at runtime, a
warning is printed for each jump label that is used within an
in-kernel __exit annotated function:

can't patch jump_label at ehci_hcd_cleanup+0x8/0x3c
WARNING: CPU: 0 PID: 1 at kernel/jump_label.c:410 __jump_label_update+0x12c/0x138

As these functions will never get executed (they are free'd along
with the rest of initmem) - we do not need to patch them and should
not display any warnings.

The warning is displayed because the test required to satisfy
jump_entry_is_init is based on init_section_contains (__init_begin to
__init_end) whereas the test in __jump_label_update is based on
init_kernel_text (_sinittext to _einittext) via kernel_text_address).

Fixes: 19483677684b ("jump_label: Annotate entries that operate on __init code earlier")
Signed-off-by: Andrew Murray <andrew.murray@arm.com>
Acked-by: Peter Zijlstra (Intel) <peterz@infradead.org>
Acked-by: Mark Rutland <mark.rutland@arm.com>
---
 kernel/jump_label.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/kernel/jump_label.c b/kernel/jump_label.c
index df3008419a1d..cdb3ffab128b 100644
--- a/kernel/jump_label.c
+++ b/kernel/jump_label.c
@@ -407,7 +407,9 @@ static bool jump_label_can_update(struct jump_entry *entry, bool init)
 		return false;
 
 	if (!kernel_text_address(jump_entry_code(entry))) {
-		WARN_ONCE(1, "can't patch jump_label at %pS", (void *)jump_entry_code(entry));
+		WARN_ONCE(!jump_entry_is_init(entry),
+			  "can't patch jump_label at %pS",
+			  (void *)jump_entry_code(entry));
 		return false;
 	}
 
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
