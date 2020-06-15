Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55BF01FA357
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 00:17:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ts7vABXKev5w9QPkxZUpcG/AXR5pM9ucCsOwPY/FpP8=; b=Gl6FeKDHTERWUR
	fN93q2C3nhBubf9F5C63rwRvj+nHBrO7aOjglrO4JtAQ9sahT5MKpknzHh93zacvmbRTdlh1JElXU
	AJqjLUXQSMiXAEOqDelxSLIqasD6hiWD/Y5X7dFFwE9zT0AJxiFm8v1Lw6jbjuE9voZPwEjwqvhxU
	8zUrP9Sf+kar+dYzbtlCZi2SwhO8g8bnBaOYHiaC7Yh/sxYfqzz9sopvZZGj5yoYTBw2DOA3eP3Oy
	tynnwMtkAGIOqvSvBJD+sMAsFGSEyHyGiWLsodO0gf2JzQiIbyAeXoscFYv7YOrstw3yBpATRibsh
	43btEMmcfS3x2rdb0YuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkxPQ-0008US-Ro; Mon, 15 Jun 2020 22:16:52 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkxOx-0008G5-E8
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 22:16:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1592259382;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Ls9QmJCLOm68CvolACOW0xbuhdSZty4Jnv9TrFZw+qw=;
 b=jWGBCE26ipHnzPJXDX6JF58tafabZF16DdvFWfyhGEq4gUckbZSX1L5cIUQGp0j6R94OMV
 lWunxxBW6Q080GO3JDVkhvlCqc0O8DUyC/29I5JM+nIJE+yI7KakZ7aLXtDGFsMY+HXm57
 jicUPpUxH67zZbBbPnPjftQmM/XZ9ws=
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com
 [209.85.219.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-315-gM7EtScfNYyPXqaMHirSVA-1; Mon, 15 Jun 2020 18:16:20 -0400
X-MC-Unique: gM7EtScfNYyPXqaMHirSVA-1
Received: by mail-qv1-f69.google.com with SMTP id r4so14080961qvh.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jun 2020 15:16:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Ls9QmJCLOm68CvolACOW0xbuhdSZty4Jnv9TrFZw+qw=;
 b=nALQDnfXox3S6fhstnQrLJHDSoKCM0QDEB7SYNFwicI1iluFuRZOjoKHeT22vdu8gf
 Fe8+Pae5Dav2L4UMQ5dYDrWYxz+Ai5hJ/lGCVdudLVJBxLzF/WkYJp6RRR3I+yHhytw1
 FEw5LKfQ423HJ9OWi3IvQjy+E/mD5kXwzZ6En7bPxqiCTYNZCe74G58owTBb4dgswDby
 y2LRo2A/urqVNNN5ljRW6q3oZDOp5p0QRDJHKmp6VMPoE+Lc/SebDsJvxX/4eNlG+s6k
 eV8nThl3QnBoo8HsALMsAn8ARr2BM1wL1CV7LySoBMBB3igCJbsELjTYwG8Y/MhR2+Jw
 GcDw==
X-Gm-Message-State: AOAM531D7rYKhZ5YeYkNXq6wzJ+esiIV9qO8YV0cgvfCUDe22UaQBXvT
 c0CfKcUQBH2bgt1kQzTBUiX7ZLfjcub09Abu2yJlDpxK+zkgFjlo6Jzmx8Xi6SXjJKfbpgYevrp
 h7E3K6fkYG5j7GtIu3U9Uj+7Wd6BndvBBYgs=
X-Received: by 2002:a0c:b256:: with SMTP id k22mr4540376qve.115.1592259380199; 
 Mon, 15 Jun 2020 15:16:20 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyPmau1M6QKWc6GHncKWYMz7eFkgSphlbSZomzioBm+KJn2NkIvBOjAdW7fQwymnkxPP7AAIg==
X-Received: by 2002:a0c:b256:: with SMTP id k22mr4540360qve.115.1592259380012; 
 Mon, 15 Jun 2020 15:16:20 -0700 (PDT)
Received: from xz-x1.hitronhub.home ([2607:9880:19c0:32::2])
 by smtp.gmail.com with ESMTPSA id w13sm12351509qkb.91.2020.06.15.15.16.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Jun 2020 15:16:19 -0700 (PDT)
From: Peter Xu <peterx@redhat.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 06/25] mm/arm64: Use mm_fault_accounting()
Date: Mon, 15 Jun 2020 18:15:48 -0400
Message-Id: <20200615221607.7764-7-peterx@redhat.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200615221607.7764-1-peterx@redhat.com>
References: <20200615221607.7764-1-peterx@redhat.com>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_151623_553062_9F5C6C09 
X-CRM114-Status: GOOD (  13.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [207.211.31.120 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Andrea Arcangeli <aarcange@redhat.com>, Will Deacon <will@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>, peterx@redhat.com,
 linux-arm-kernel@lists.infradead.org,
 Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Gerald Schaefer <gerald.schaefer@de.ibm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use the new mm_fault_accounting() helper for page fault accounting.

CC: Catalin Marinas <catalin.marinas@arm.com>
CC: Will Deacon <will@kernel.org>
CC: linux-arm-kernel@lists.infradead.org
Signed-off-by: Peter Xu <peterx@redhat.com>
---
 arch/arm64/mm/fault.c | 17 ++---------------
 1 file changed, 2 insertions(+), 15 deletions(-)

diff --git a/arch/arm64/mm/fault.c b/arch/arm64/mm/fault.c
index c9cedc0432d2..09af7d7a60ec 100644
--- a/arch/arm64/mm/fault.c
+++ b/arch/arm64/mm/fault.c
@@ -484,8 +484,6 @@ static int __kprobes do_page_fault(unsigned long addr, unsigned int esr,
 					 addr, esr, regs);
 	}
 
-	perf_sw_event(PERF_COUNT_SW_PAGE_FAULTS, 1, regs, addr);
-
 	/*
 	 * As per x86, we may deadlock here. However, since the kernel only
 	 * validly references user space from well defined areas of the code,
@@ -535,20 +533,9 @@ static int __kprobes do_page_fault(unsigned long addr, unsigned int esr,
 			      VM_FAULT_BADACCESS)))) {
 		/*
 		 * Major/minor page fault accounting is only done
-		 * once. If we go through a retry, it is extremely
-		 * likely that the page will be found in page cache at
-		 * that point.
+		 * once.
 		 */
-		if (major) {
-			current->maj_flt++;
-			perf_sw_event(PERF_COUNT_SW_PAGE_FAULTS_MAJ, 1, regs,
-				      addr);
-		} else {
-			current->min_flt++;
-			perf_sw_event(PERF_COUNT_SW_PAGE_FAULTS_MIN, 1, regs,
-				      addr);
-		}
-
+		mm_fault_accounting(current, regs, address, major);
 		return 0;
 	}
 
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
