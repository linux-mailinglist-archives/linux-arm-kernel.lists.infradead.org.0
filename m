Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 543FD1BB933
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 10:52:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=ODmaOtvuCapUGqFkJyOdQjRfg9g6gq/01dB0Om9p9xk=; b=Opg
	BQ+v6dwF5loN7EQcghDyWfjVd1u4HzQSPEIV192VLy8humVN9GyaYS4sV014mvGDj7lue16lfuDxG
	Rsdtf+7G47bvoycWxhDBZhBhFpd/KZDmiGUJxoZL2CiIXyH4KUHBijKtHpPSyqvoYAfqx4si6muhe
	p5/5iaNdYUpqTk0NmPW4MUylahjMMKOPHzGEz2tufImuCKZRrpuhayCez95Y6QadnmniSJQsRb36J
	Ya7eoobdb9UxkLRDGJzoCCKa6ih6iMnmig43zgfiDGxvdJmr0kSlcdK4bwq5nhyEdUK6nCMEjWY28
	AfWnmav92AJbJuuE7HKbWQ7PdLwmV5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTLyv-0003OA-ID; Tue, 28 Apr 2020 08:52:45 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTLyn-0003Nj-27
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 08:52:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1588063955;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=YLqa8XysmJQ2FmrXUejsl7PBdYTeSuUtctSn6bNmuso=;
 b=UjrQJE1X5yPceVb3PNs4w32CKujioeJJvZZEnv0asI7zz3bHzaD1/SzGal7Bf0coMP017o
 jVyxD5SuGAdbZDpAkndm8LYpKQ6kpIKj2qavYD6prFTpsd0h+ZW9Rn8GjXbKZlYE9X4sM5
 2xyrJbWfB85W/QgQSuJY3rrOMjpJu54=
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com
 [209.85.214.199]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-342-LJZMplzNNvCW6L6ArdIT4A-1; Tue, 28 Apr 2020 04:52:33 -0400
X-MC-Unique: LJZMplzNNvCW6L6ArdIT4A-1
Received: by mail-pl1-f199.google.com with SMTP id c13so16701222plq.22
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 Apr 2020 01:52:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=T9gujxmIA52XJjJIjJGj47W5lD5i+d6CSCHpkidbk00=;
 b=APwOdjZUPSqglhKc1uHwHw8+UaZ8O1aiuFtZBxef1CjeLKbkffO8eRcZI9eJGRF2a9
 CwBTUFCO16r2wNRSj6ira1QYbqHAY2eoyNrf6prIHZQA/VismKTAHmcbb/pe1FVQmdBG
 NBhy3tdBNmDXT1/Q/1A7PEraP1nzzO6ZRBeNbbTNEwRz1MRclzf5ppO8TjU5k41YE6F4
 vHZXgNM+qP7OHDcJEdty/vvCQSiQbVh77UKDbEbn9/eZQCGfwTP0JqWuliwe/HnRY+Ar
 QoVpaGMFhqXFFSCxASEn+K1BqQduE+00JgEBDbWzMl6x697DDOEVOnNrUWjjWEL1LjLw
 aPKQ==
X-Gm-Message-State: AGi0Pub6Cs1jk2/tJf1sjZtOsrmm0fLWuoNm9wnma2dOTFJ7MNxxGl1R
 Qm77N0WOfxi/okqsh0c4vU6qiP5DNF1DpCiVZqlyPdbYi90ftT728nrL8NN6NBNURfAZPM80qUq
 Rl7r8bJi5O1UVa1yWFUdKbC6T5gIU92+9O70=
X-Received: by 2002:a63:de49:: with SMTP id y9mr26209869pgi.435.1588063952402; 
 Tue, 28 Apr 2020 01:52:32 -0700 (PDT)
X-Google-Smtp-Source: APiQypIW6MPibMiV6lAF4LqnxCmnL0EBPSZPDuGJO/nMe0Ss11xXTYM3/1M7PkWt8OTp5foTs/Jpog==
X-Received: by 2002:a63:de49:: with SMTP id y9mr26209808pgi.435.1588063951198; 
 Tue, 28 Apr 2020 01:52:31 -0700 (PDT)
Received: from localhost ([182.69.228.151])
 by smtp.gmail.com with ESMTPSA id g43sm1544780pje.22.2020.04.28.01.52.29
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 28 Apr 2020 01:52:30 -0700 (PDT)
From: Bhupesh Sharma <bhsharma@redhat.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] hw_breakpoint: Remove unused '__register_perf_hw_breakpoint'
 declaration
Date: Tue, 28 Apr 2020 14:22:17 +0530
Message-Id: <1588063937-5744-1-git-send-email-bhsharma@redhat.com>
X-Mailer: git-send-email 2.7.4
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_015237_175923_1250A073 
X-CRM114-Status: GOOD (  10.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, bhsharma@redhat.com,
 linux-kernel@vger.kernel.org, bhupesh.linux@gmail.com,
 Will Deacon <will@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

commit b326e9560a28 ("hw-breakpoints: Use overflow handler instead of
the event callback") removed '__register_perf_hw_breakpoint' function
usage and replaced it with 'register_perf_hw_breakpoint' function.

Remove the left-over unused '__register_perf_hw_breakpoint' declaration
from 'hw_breakpoint.h' as well.

Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Will Deacon <will@kernel.org>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Signed-off-by: Bhupesh Sharma <bhsharma@redhat.com>
---
 include/linux/hw_breakpoint.h | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/include/linux/hw_breakpoint.h b/include/linux/hw_breakpoint.h
index 6058c3844a76..fe1302da8e0f 100644
--- a/include/linux/hw_breakpoint.h
+++ b/include/linux/hw_breakpoint.h
@@ -72,7 +72,6 @@ register_wide_hw_breakpoint(struct perf_event_attr *attr,
 			    void *context);
 
 extern int register_perf_hw_breakpoint(struct perf_event *bp);
-extern int __register_perf_hw_breakpoint(struct perf_event *bp);
 extern void unregister_hw_breakpoint(struct perf_event *bp);
 extern void unregister_wide_hw_breakpoint(struct perf_event * __percpu *cpu_events);
 
@@ -115,8 +114,6 @@ register_wide_hw_breakpoint(struct perf_event_attr *attr,
 			    void *context)		{ return NULL; }
 static inline int
 register_perf_hw_breakpoint(struct perf_event *bp)	{ return -ENOSYS; }
-static inline int
-__register_perf_hw_breakpoint(struct perf_event *bp) 	{ return -ENOSYS; }
 static inline void unregister_hw_breakpoint(struct perf_event *bp)	{ }
 static inline void
 unregister_wide_hw_breakpoint(struct perf_event * __percpu *cpu_events)	{ }
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
