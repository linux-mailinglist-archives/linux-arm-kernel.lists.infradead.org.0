Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EF4015124E
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Feb 2020 23:27:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=uGGtNA0qcJgRBdD3H7O2H8phPQU9gbvSNcXMc2RxXsI=; b=prIMRnbFzKdSNznLK6Sir50L6o
	ksD5wcmyJxFjLnTMM9ZiZEbkLy8mOOglNDLbl/JG/XsPVTWYVtjeNMZRjgkUEQmkAPMuSijXNboqi
	+qhH1eDqtVvf5y0VTi87m1ex6ffrsRuA9zMGYMhU27HMMQeWUiYo3nzqNb92qZNzxT2/oTtHrQGBB
	y5LRMpCS7B2sop5zbqsXmE61xPfBEHM3mgchpwTxAWrbXE9mGPdp/pV/EuJ6M2Y6zoEEm4Rx8rJ7q
	EI0RSGjITaGlaQUr4AZ3UemRnC1rt6z53d8xmXwfpa4DO28MvNu6iTh9TMif/Mi+eWLSUTbNzJaZS
	Aq5xmlVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iykBV-0005Rs-I9; Mon, 03 Feb 2020 22:27:13 +0000
Received: from us-smtp-2.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iykB4-00054U-J0
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Feb 2020 22:26:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1580768804;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=nzHQve4QR6vMUj7Ho1xKspdYKTz7TrOfhvLoqaDqffA=;
 b=HDSTMq5dCiOggfHkvIgHHiTCLGUL6749jncnJZXcaBoiC6kTmVD729OBgZlRWYH2/CdTAn
 0sEo3mpo7FxMpgdEC/Akl8alpglC3XHJ5JUcjygAEQ3ZA8KbWK4p9hB8LrgNdnjeJUVLit
 OtCtfjd7c4U1lEDg4TSOXfGc/SmADLg=
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com
 [209.85.215.198]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-322-n8CcIwPmMUuVY96Bufaq-w-1; Mon, 03 Feb 2020 17:26:41 -0500
Received: by mail-pg1-f198.google.com with SMTP id d9so10354822pgd.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 03 Feb 2020 14:26:40 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Yr95hrNi5JfgkOfoS1PjLAI5Z/W4hgT7UGFvqBbgOxM=;
 b=JIY0X/16TWZWYCK33ePp2V0ruWxsTMlqfTtVZwHeTfkvK3286eVNDItzhW4owSz1x+
 +OERxpN5nvLFJDLwopW1V0m0F8dmY3tOONaQrZoYtZ68+yRvXyZViWKXJ628fMOW+fHX
 nnh9hqb6jbgI7iWT6L+7wBsGM2HLwNufw8Vzac+giDahSrnQDL4LRbQhMZZcURjVRqEF
 mYVEhxO/+Nsb0qCtQGwewZ9Dxird9CxfQko6lyFSY13tVBJgELnt0NZH3LM6VJZ8v2P5
 qeJ0/liw6qh8FUY/OYeAh/r/O48ukPiOT7ExVyRxZipfa/wyBKJ0JLXJi7QpuPEdxK5/
 xizw==
X-Gm-Message-State: APjAAAVRgLtthoFEkGdh2P0knorwA13TDoDlHfY6Ng+TwffSFxKy17Fd
 v9wNSoE+iK8P+F+20QiAWJDjgoFCdQc0Dzw8dWwmEPTMfG25or7OgUr4XLGaaKgZeY2SjFDkjyq
 7wAyIo3h/Yoyds21P0VaSadY4lG/l6BgqcXs=
X-Received: by 2002:a63:d406:: with SMTP id a6mr28302967pgh.264.1580768799554; 
 Mon, 03 Feb 2020 14:26:39 -0800 (PST)
X-Google-Smtp-Source: APXvYqzCYMKSAbNlHwt3YKkhpBg65LATP/cLjqH1DDC2oSxQhzuOsjngoXE8H7XyY+eiYk4eqMEhiA==
X-Received: by 2002:a63:d406:: with SMTP id a6mr28302937pgh.264.1580768799210; 
 Mon, 03 Feb 2020 14:26:39 -0800 (PST)
Received: from localhost ([122.177.227.116])
 by smtp.gmail.com with ESMTPSA id v9sm466061pja.26.2020.02.03.14.26.38
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 03 Feb 2020 14:26:38 -0800 (PST)
From: Bhupesh Sharma <bhsharma@redhat.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/2] perf/arm64: Allow per-task kernel breakpoints
Date: Tue,  4 Feb 2020 03:56:24 +0530
Message-Id: <1580768784-25868-3-git-send-email-bhsharma@redhat.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1580768784-25868-1-git-send-email-bhsharma@redhat.com>
References: <1580768784-25868-1-git-send-email-bhsharma@redhat.com>
X-MC-Unique: n8CcIwPmMUuVY96Bufaq-w-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200203_142646_716599_FFD6786B 
X-CRM114-Status: GOOD (  11.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>, bhsharma@redhat.com,
 linux-kernel@vger.kernel.org, bhupesh.linux@gmail.com,
 Will Deacon <will@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

commit 478fcb2cdb23 ("arm64: Debugging support") disallowed per-task
kernel breakpoints on arm64 since these would have potentially
complicated the stepping code.

However, we now have several use-cases (for e.g. perf) which require
per-task address execution h/w breakpoint to be exercised/set on arm64:

For e.g. we can set address execution h/w breakpoints, using the
format prescribed by 'perf-list' command:
mem:<addr>[/len][:access]                          [Hardware breakpoint]

Without this patch, currently 'perf stat -e' reports that per-task
address execution h/w breakpoints are 'not supported' on arm64. See
below:

$ TEST_FUNC="vfs_read"
$ ADDR=0x`cat /proc/kallsyms | grep -P "\\s$TEST_FUNC\$" | cut -f1 -d' '`
$ perf stat -e mem:$ADDR:x -x';' -- cat /proc/cpuinfo > /dev/null

<not supported>;;mem:0xffff00001031dd68:x;0;100.00;;

After this patch, this use-case can be supported:

$ TEST_FUNC="vfs_read"
$ ADDR=0x`cat /proc/kallsyms | grep -P "\\s$TEST_FUNC\$" | cut -f1 -d' '`
$ perf stat -e mem:$ADDR:x -x';' -- cat /proc/cpuinfo > /dev/null

5;;mem:0xfffffe0010361d20:x;912200;100.00;;

Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Will Deacon <will@kernel.org>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Signed-off-by: Bhupesh Sharma <bhsharma@redhat.com>
---
 arch/arm64/kernel/hw_breakpoint.c | 7 -------
 1 file changed, 7 deletions(-)

diff --git a/arch/arm64/kernel/hw_breakpoint.c b/arch/arm64/kernel/hw_breakpoint.c
index 0b727edf4104..c28f04e02845 100644
--- a/arch/arm64/kernel/hw_breakpoint.c
+++ b/arch/arm64/kernel/hw_breakpoint.c
@@ -562,13 +562,6 @@ int hw_breakpoint_arch_parse(struct perf_event *bp,
 	hw->address &= ~alignment_mask;
 	hw->ctrl.len <<= offset;
 
-	/*
-	 * Disallow per-task kernel breakpoints since these would
-	 * complicate the stepping code.
-	 */
-	if (hw->ctrl.privilege == AARCH64_BREAKPOINT_EL1 && bp->hw.target)
-		return -EINVAL;
-
 	return 0;
 }
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
