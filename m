Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A2B2179F11
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Mar 2020 06:21:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=vHGLroGrdFanN/4gs+PwX+GD73ITNa5T17ujjQIONZ0=; b=Plb
	NJVWlQEBLYNb7WT5q6nQSjBxopD2jTgY/F8kGmboXpaHJ5AyqQ7hT0Sbq7RkNZZwtCblrCVc6UKmI
	gsGf8TQVQyvzO8xKVIGmufKbCAHk0+WTiZvc+H7S8dfEosQUsNM0Wocq8oJTdvmKuf12LNkLL3nYh
	BjljuG0H1KMQmjsfmwLGIZ47IMf9FLmvRK7IUnTZ3ej84/a3AzE/+rc7z7uNwTUluJ7Bv2RVLNhyl
	xK/6fXtvfm4CYoZu/yNY+MTjgDEg4AEnUYmHq6mVOfdPV3EkF0w7BzsP4uFeYFQZgyqOub+YCeFbR
	Bnf5rbtGtKodpZUM6S7gRNo19jJJ9wA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9ix3-0002iM-0Q; Thu, 05 Mar 2020 05:21:41 +0000
Received: from conuserg-09.nifty.com ([210.131.2.76])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9iww-0002hw-CD
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Mar 2020 05:21:35 +0000
Received: from localhost.localdomain (p14092-ipngnfx01kyoto.kyoto.ocn.ne.jp
 [153.142.97.92]) (authenticated)
 by conuserg-09.nifty.com with ESMTP id 0255Kw6j009985;
 Thu, 5 Mar 2020 14:20:58 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-09.nifty.com 0255Kw6j009985
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1583385659;
 bh=ZAwmm19S9mp5zDydwDwXfFI6adzi2LMYicgGIC+mmNg=;
 h=From:To:Cc:Subject:Date:From;
 b=SEjTa3Q7PJ9eXfMJ6N/c2+bn6ar/e+qtVUy/ALJyJmVeFIJaEnVRHHTjhH3106hWS
 6NdtdXVXUAM8KT/OcEwOfz/22PR+8f/QukN/FFLGLollrb1nS21rBBNTB5/KDD+Ghf
 VB4sDT7LmawKK7Ux5rAqWOTRZvLC4gS+zvqBuJ+IS8t926PfZ7ti0D4HpED8BxCisv
 WnT8V30HGgyfOfzJx62cuQc/Nagy1Tl6TyeL+MPste2HZY6NtT7lllSgT5/A1x66og
 sN6Dy6PTq1MbSFScDNOIiyKElkHLE+qtXlAD+K53q2gczeqzNSp1BqXkwQUjxuSJhd
 1jmX/3RkvjAQQ==
X-Nifty-SrcIP: [153.142.97.92]
From: Masahiro Yamada <masahiroy@kernel.org>
To: linux-arm-kernel@lists.infradead.org,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Subject: [PATCH] arm64: efi: add efi-entry.o to targets instead of
 extra-$(CONFIG_EFI)
Date: Thu,  5 Mar 2020 14:20:52 +0900
Message-Id: <20200305052052.30757-1-masahiroy@kernel.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_212134_773676_7942B043 
X-CRM114-Status: UNSURE (   9.11  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.76 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Masahiro Yamada <masahiroy@kernel.org>,
 linux-kernel@vger.kernel.org, Torsten Duwe <duwe@lst.de>,
 James Morse <james.morse@arm.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Ard Biesheuvel <ardb@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

efi-entry.o is built on demand for efi-entry.stub.o, so you do not have
to repeat $(CONFIG_EFI) here. Adding it to 'targets' is enough.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 arch/arm64/kernel/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/kernel/Makefile b/arch/arm64/kernel/Makefile
index fc6488660f64..4e5b8ee31442 100644
--- a/arch/arm64/kernel/Makefile
+++ b/arch/arm64/kernel/Makefile
@@ -21,7 +21,7 @@ obj-y			:= debug-monitors.o entry.o irq.o fpsimd.o		\
 			   smp.o smp_spin_table.o topology.o smccc-call.o	\
 			   syscall.o
 
-extra-$(CONFIG_EFI)			:= efi-entry.o
+targets			+= efi-entry.o
 
 OBJCOPYFLAGS := --prefix-symbols=__efistub_
 $(obj)/%.stub.o: $(obj)/%.o FORCE
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
