Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01D09188416
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 13:27:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+LvWYY6fGWwcWbb6QzMsRsiQgOTzrwrf2XRjaYBLBOg=; b=TnIKmbU7+mENra
	ipLiKsrI0//z4oj961FfPkTLCfX5lakVwE5vPRg0uatNAQn5I7x5SPk7feUK/Gj8ktjaYOEeCkffa
	ktI2gRfD1A3HpVqMkCOm33fjOHTkSL4Eu9g/XesWhkVU7ZKnGwHzHTI2L5Y5r8QS3t+n43wHLHru3
	jNaFSaGZNAOaeX3fPins5N1P7tuieEHXmjAFk1Yadf043OVMf+yZIuJtwlyDqt9NwKbE0enjepJ5l
	xMThKqLQOtlesk9QGedsQW96dvm9mrWQ+sqZa2h9RU7CgISlQ+Cn03VLQeon63nRKDkAbdylY1AVM
	UilmcmO9e6+m3aGs3qgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEBJt-0002rh-4O; Tue, 17 Mar 2020 12:27:41 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEBG3-0006C5-Ef
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Mar 2020 12:23:45 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id F396430E;
 Tue, 17 Mar 2020 05:23:42 -0700 (PDT)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com
 [10.1.196.72])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id ADB583F534;
 Tue, 17 Mar 2020 05:23:39 -0700 (PDT)
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
To: linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
 linux-mips@vger.kernel.org, x86@kernel.org
Subject: [PATCH v4 16/26] scripts: Fix the inclusion order in modpost
Date: Tue, 17 Mar 2020 12:22:10 +0000
Message-Id: <20200317122220.30393-17-vincenzo.frascino@arm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200317122220.30393-1-vincenzo.frascino@arm.com>
References: <20200317122220.30393-1-vincenzo.frascino@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_052343_545865_30D7458B 
X-CRM114-Status: GOOD (  14.46  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <Mark.Rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Dmitry Safonov <0x7f454c46@gmail.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 kbuild test robot <lkp@intel.com>, Marc Zyngier <maz@kernel.org>,
 Masahiro Yamada <masahiroy@kernel.org>, Russell King <linux@armlinux.org.uk>,
 Ingo Molnar <mingo@redhat.com>, Kees Cook <keescook@chromium.org>,
 Arnd Bergmann <arnd@arndb.de>, Will Deacon <will.deacon@arm.com>,
 Borislav Petkov <bp@alien8.de>, Andy Lutomirski <luto@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, Peter Collingbourne <pcc@google.com>,
 Michal Marek <michal.lkml@markovi.net>, Andrei Vagin <avagin@openvz.org>,
 Stephen Boyd <sboyd@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>,
 Mark Salyzyn <salyzyn@android.com>, Paul Burton <paul.burton@mips.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In the process of creating the source file of a module modpost injects a
set of includes that are not required if the compilation unit is
statically built into the kernel.

The order of inclusion of the headers can cause redefinition problems
(e.g.):

   In file included from include/linux/elf.h:5:0,
                    from include/linux/module.h:18,
                    from crypto/arc4.mod.c:2:
>> arch/parisc/include/asm/elf.h:324:0: warning: "ELF_OSABI" redefined
    #define ELF_OSABI  ELFOSABI_LINUX

   In file included from include/linux/elfnote.h:62:0,
                    from include/linux/build-salt.h:4,
                    from crypto/arc4.mod.c:1:
   include/uapi/linux/elf.h:363:0: note: this is the location of
   the previous definition
    #define ELF_OSABI ELFOSABI_NONE

The issue was exposed during the development of the series [1].

[1] https://lore.kernel.org/lkml/20200306133242.26279-1-vincenzo.frascino@arm.com/

Reported-by: kbuild test robot <lkp@intel.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>
Cc: Michal Marek <michal.lkml@markovi.net>
Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
---
 scripts/mod/modpost.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/scripts/mod/modpost.c b/scripts/mod/modpost.c
index 7edfdb2f4497..0f354b1ee2aa 100644
--- a/scripts/mod/modpost.c
+++ b/scripts/mod/modpost.c
@@ -2251,8 +2251,12 @@ static int check_modname_len(struct module *mod)
  **/
 static void add_header(struct buffer *b, struct module *mod)
 {
-	buf_printf(b, "#include <linux/build-salt.h>\n");
 	buf_printf(b, "#include <linux/module.h>\n");
+	/*
+	 * Include build-salt.h after module.h in order to
+	 * inherit the definitions.
+	 */
+	buf_printf(b, "#include <linux/build-salt.h>\n");
 	buf_printf(b, "#include <linux/vermagic.h>\n");
 	buf_printf(b, "#include <linux/compiler.h>\n");
 	buf_printf(b, "\n");
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
