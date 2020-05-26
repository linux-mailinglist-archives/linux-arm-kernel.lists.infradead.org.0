Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECC671E28D7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 May 2020 19:31:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:Mime-Version:Message-Id
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WCG/zAGfvFYCekW8DUoO7A4Y1hbGfOMBgQEbDSi2x1I=; b=MQ/37Xxccd3dVJ
	pZjuqHbPNLDPoCoWr/WxUc8DnH5klRVQ9VzgmG8QUXB8hCZMB3p8JSYoj7kIHVlawg5h3TMthBm/1
	v8q8BKa3fGxNbTBSl7/VIc5cQRKqk8mUTCTRu3OSE4PyAwS4DCWydprqJbEJm+Rt+flWTdes9p51q
	789SB8urRJXUrEXFeAuDUaQA0xtnAautkAyIQ7uPN2vURwRJTzlSBeS8vcM1KP2nEq0yYQRMZQ3Rf
	OamI/wQjzRyjLsEDwt+4RUWO3j9iVrW1JU7qb3JDZduxq8ZFhS4l+aUgBqjkmPv8WTciVsJPuAi83
	MtFYGj/injfYWem/Qhfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jddQR-00053Z-5j; Tue, 26 May 2020 17:31:39 +0000
Received: from mail-yb1-xb4a.google.com ([2607:f8b0:4864:20::b4a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jddQI-00052s-AR
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 17:31:31 +0000
Received: by mail-yb1-xb4a.google.com with SMTP id e14so21259755ybh.16
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 26 May 2020 10:31:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=KoFGqqU+J4KGd+h8gI8dCMTc7LV+YyRpHvvUmsT31Ks=;
 b=VYy4cIlP+hhv8YRSkFRmXPacxvn/fphatpnJHvQJcUDopkMHzjvMEVgmbi883wi+4u
 saQWPREkP+6SHn2z8P4PgrRxB5qYKdnbuGvGfau1oo9kpTzkMqCd/eJMs6OcKXGKRsn0
 9mAvbxLzQHEfHa2grvlfEgxvmwGxDVcrsq1kxELoJ6V2FOqncQfkPqltlxrARAr/0w0R
 F0iNuxwwQOBS1/mLXkAXbZgyrzF71moh6lhgXPSg6rXyuFI2Nu+uzg/bYoFIJz+BFIlQ
 6Gli5zS5TILjU+FrQ7uMAbacqUQ2ojKJfigmyxdtYuOX4di6w+UGpmrVLp7BgJW2ABki
 804g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=KoFGqqU+J4KGd+h8gI8dCMTc7LV+YyRpHvvUmsT31Ks=;
 b=gXT7cFhCMh9EGuWB+R1ewHEqjShZvAyoZN7THMU+dyX6LwcaGcBQhzhBD2j4HdGrx7
 Vg4VxDwsmymMPZ4LGAKp5bIqfGyH1zG6Z7+EVnDaFkjYD8Ql7GvlYxjaF7HxGrGcG+/E
 uxHQx+GY7IMwzu364avGC+hUcRIXnZ/hV3zPjuoxIasxW47qcrStjFt7vQuXx7efdxr/
 pYo8GDyQvU8uZQwyQIv3dj9IynUiqesRHT0tMdI0HlGXIfj7jNCoCxjCHKxEOk+VY+Va
 TYFEZ5YosjE2YG+QvEwg7360w105LEqn5EoQEoDVfbJBRILTpSQxnNtSYMnv9Kv4gffe
 jNwg==
X-Gm-Message-State: AOAM530piJJTdQIkMGMs1wWwTrorT4fxAg7mbm8DJpiZS0BJf8zCt29M
 BszQxHXgArubNtPvlu5LC43Tn4bSt/IQW6NRXu4=
X-Google-Smtp-Source: ABdhPJy4OvFsDSVA1K5rC0fp9UoOPwc7MTN3yrtauZDF/HHmGAky8cEISS73DZlnG5wfH1U/lI1diXeR+n60OKcrVpI=
X-Received: by 2002:a25:ec3:: with SMTP id 186mr3473690ybo.475.1590514288160; 
 Tue, 26 May 2020 10:31:28 -0700 (PDT)
Date: Tue, 26 May 2020 10:31:14 -0700
Message-Id: <20200526173117.155339-1-ndesaulniers@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.27.0.rc0.183.gde8f92d652-goog
Subject: [PATCH] arm64: vdso32: force vdso32 to be compiled as -marm
From: Nick Desaulniers <ndesaulniers@google.com>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_103130_376652_6D5CE88F 
X-CRM114-Status: UNSURE (   9.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b4a listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Naohiro Aota <naohiro.aota@wdc.com>, Stephen Boyd <swboyd@google.com>,
 Masahiro Yamada <masahiroy@kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 Manoj Gupta <manojgupta@google.com>, Luis Lozano <llozano@google.com>,
 Nathan Chancellor <natechancellor@gmail.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Custom toolchains that modify the default target to -mthumb cannot
compile the arm64 compat vdso32, as
arch/arm64/include/asm/vdso/compat_gettimeofday.h
contains assembly that's invalid in -mthumb.  Force the use of -marm,
always.

Link: https://bugs.chromium.org/p/chromium/issues/detail?id=1084372
Cc: Stephen Boyd <swboyd@google.com>
Reported-by: Luis Lozano <llozano@google.com>
Tested-by: Manoj Gupta <manojgupta@google.com>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
Surgeon General's Warning: changing the compiler defaults is not
recommended and can lead to spooky bugs that are hard to reproduce
upstream.

 arch/arm64/kernel/vdso32/Makefile | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/kernel/vdso32/Makefile b/arch/arm64/kernel/vdso32/Makefile
index 3964738ebbde..c449a293d81e 100644
--- a/arch/arm64/kernel/vdso32/Makefile
+++ b/arch/arm64/kernel/vdso32/Makefile
@@ -104,6 +104,8 @@ VDSO_CFLAGS += -D__uint128_t='void*'
 # (on GCC 4.8 or older, there is unfortunately no way to silence this warning)
 VDSO_CFLAGS += $(call cc32-disable-warning,shift-count-overflow)
 VDSO_CFLAGS += -Wno-int-to-pointer-cast
+# Force vdso to be compiled in ARM mode, not THUMB.
+VDSO_CFLAGS += -marm
 
 VDSO_AFLAGS := $(VDSO_CAFLAGS)
 VDSO_AFLAGS += -D__ASSEMBLY__
-- 
2.27.0.rc0.183.gde8f92d652-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
