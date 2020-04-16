Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7369B1AB735
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 07:27:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=FWVs32fj9KiXQqer9fF0YOax2m+3Jkpo7GyjCYldYSY=; b=SFu
	gbaUvV1M+RX7+Xg0jMyGlIwTs4GUToEkfr9mJtIk3fEiDn3wr0hMLHCXPsxAzB7kwmV1j8D+tlODo
	yt8mzQCdm2ecp61EklazQSlSPpaJ7W9X6a+XilkxdlTtCZ6ibRatNbeF//HC7DHMQ/IjBv4EwxsP9
	zxdgwMrop3zcaRmcglIClTKLzWax69yDg9+XLq4lqex1dmRZq/bJT8vXWn3ttWPvRsllknLZi38BX
	N2mvw0cj8Z+ErlfUkD345XdX8mUyQ591dy/JtuCa8pEmXYrT3pmXY50Y6lkFfNAcR397jp4TMsnDW
	PNRKXQgMPwvJE7NiwvzfpWXKaahRG6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOx3B-0006gU-0C; Thu, 16 Apr 2020 05:26:57 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOx2x-0006fV-IF
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 05:26:45 +0000
Received: by mail-pg1-x543.google.com with SMTP id 2so1095106pgp.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Apr 2020 22:26:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=whCb8irywOuOLwB8N8qhV6UwE4acib9+m+so6yyRikQ=;
 b=QELZQSbXoSNyL/seMqWzdkBoeEd+0wFPXQobGjaol+a9xdYz27jWvpgenJ/Qdmuh/m
 /6B7BdeECI7p4ERE4F12hwfMTiJY8wNsI9rN0e+fFZedSRIAZxautnVTbXpeAAlaTFds
 mTgBqLd46BOYrLsQuhkmRedcbuwPV6rASchv1Uc9YVXdiYnFWNG/+tLuJUu4WNKB0osv
 WbLU4sLPwCk7Gs/cKlnu9km7uq+4vOUew5Hl+Q+HuWL7EKBPDSfjNWIJNUehyekMwt+5
 z02QK4tYJxRzG0Yr9nBOsINJYteBRNWLmfzni5xwptZOPAtPYHaOFal1+rJXIRJbA3HJ
 wQBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=whCb8irywOuOLwB8N8qhV6UwE4acib9+m+so6yyRikQ=;
 b=CKY1huICo3MN00sILuaBpsZnRdS1IAjMBPLtIpXdkCab2wHernu3LvQgpjfqk5R0La
 yxkSXeMZhsE+jJ5yIS6pRQ0rrRXPadXAmD0byABXa4zXEvFUXr9DeaUaw5BEPKRyTUzN
 WZQAdDly5VQ3Ey4cg4zB0lqUyEB29FRRj/X3luerl4bzspkiXbsMAF9Uwi5wwR9WOd7j
 g1lSSXKsJBY6QNJ+u/vpBGOZFmyzeqWuMe7TNXE1/+HLNFRfp1dhvwbuhzqDnrlidTQp
 R/9MTQ/Pt02zaWfICG67RbHAooYxgnUH9A2lUv61yajpjySHPxgZMtX3vxNhuWNasIn6
 quZg==
X-Gm-Message-State: AGi0PuanzexnGRk5nPxNoxpnD3zzeEc1B+jdXSdmhpLHCu6yDNFAVnHh
 BUzZyuDFKKOiaOWSH6LEZwo=
X-Google-Smtp-Source: APiQypI0XWGmSYiUQba6K3Au35KB4iQuijM8E5F7+7+sKdq/m068EfL3ofmqOO5Zw7bPDY13fYAwHA==
X-Received: by 2002:a63:8ec7:: with SMTP id k190mr6073705pge.163.1587014801882; 
 Wed, 15 Apr 2020 22:26:41 -0700 (PDT)
Received: from laptop.hsd1.wa.comcast.net
 ([2601:600:817f:a132:df3e:521d:99d5:710d])
 by smtp.gmail.com with ESMTPSA id c21sm53699pjr.2.2020.04.15.22.26.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Apr 2020 22:26:41 -0700 (PDT)
From: Andrei Vagin <avagin@gmail.com>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Subject: [PATCH v3 0/6] arm64: add the time namespace support
Date: Wed, 15 Apr 2020 22:26:12 -0700
Message-Id: <20200416052618.804515-1-avagin@gmail.com>
X-Mailer: git-send-email 2.17.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_222643_628818_FC5A7082 
X-CRM114-Status: GOOD (  13.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [avagin[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Dmitry Safonov <dima@arista.com>,
 linux-kernel@vger.kernel.org, Andrei Vagin <avagin@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Allocate the time namespace page among VVAR pages and add the logic
to handle faults on VVAR properly.

If a task belongs to a time namespace then the VVAR page which contains
the system wide VDSO data is replaced with a namespace specific page
which has the same layout as the VVAR page. That page has vdso_data->seq
set to 1 to enforce the slow path and vdso_data->clock_mode set to
VCLOCK_TIMENS to enforce the time namespace handling path.

The extra check in the case that vdso_data->seq is odd, e.g. a concurrent
update of the VDSO data is in progress, is not really affecting regular
tasks which are not part of a time namespace as the task is spin waiting
for the update to finish and vdso_data->seq to become even again.

If a time namespace task hits that code path, it invokes the corresponding
time getter function which retrieves the real VVAR page, reads host time
and then adds the offset for the requested clock which is stored in the
special VVAR page.

v2: Code cleanups suggested by Vincenzo.
v3: use OPTIMIZER_HIDE_VAR() instead of inline assembly in
    __arch_get_timens_vdso_data.

Cc: Vincenzo Frascino <vincenzo.frascino@arm.com>
Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: Dmitry Safonov <dima@arista.com>

v3 on github (if someone prefers `git pull` to `git am`):
https://github.com/avagin/linux-task-diag/tree/arm64/timens-v3

Andrei Vagin (6):
  arm64/vdso: use the fault callback to map vvar pages
  arm64/vdso: Zap vvar pages when switching to a time namespace
  arm64/vdso: Add time napespace page
  arm64/vdso: Handle faults on timens page
  arm64/vdso: Restrict splitting VVAR VMA
  arm64: enable time namespace support

 arch/arm64/Kconfig                            |   1 +
 .../include/asm/vdso/compat_gettimeofday.h    |  11 ++
 arch/arm64/include/asm/vdso/gettimeofday.h    |   8 ++
 arch/arm64/kernel/vdso.c                      | 134 ++++++++++++++++--
 arch/arm64/kernel/vdso/vdso.lds.S             |   3 +-
 arch/arm64/kernel/vdso32/vdso.lds.S           |   3 +-
 include/vdso/datapage.h                       |   1 +
 7 files changed, 147 insertions(+), 14 deletions(-)

-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
