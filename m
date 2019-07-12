Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E118066ACE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 12:17:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R+Gq+722jS2aouIow12yEWE0LLT4SGPEX1e9VQwf4zw=; b=TDSKqLlRc6qqqu
	CGx5RVxOHPb60YmUc8nYTsO3y/dM+LjB7PKpAsAfkv6sJO4wFhEe2PUmbKIpZEcI9ZLGga1t2Sw2L
	aiXJRNiRjRsj5BClOgqhK8WXLyny7t/NRrnT879Yjcaz4nFQZoG6gKhWxw7jstF9zXAL0ibl6Ir4M
	z1gsSgA+++1kWmZEHITqg/ROQrD60gdibDWGF0F3BSqPhGw2Y+y0CsUESWKtmArfiiSF4Xtw8H1LP
	sZ7dpC8Kk7Mh7wjaG34AK3eUv6Jqj9sM8OYz9/NhlrHa8O7kTiRQDsgarf+//UVKis7QJnoU6Q28N
	5ciMKkNYW6nauPY9hPCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlsc4-00064H-Bd; Fri, 12 Jul 2019 10:17:12 +0000
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlsbi-0005xm-7v
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jul 2019 10:16:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1562926610; x=1594462610;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=PGuUZOvPqeH8cfH1ZCqYrXfrlJmayJeW4a2GOMCC7mE=;
 b=ii74Sl8zCxLSSABsWtSwAoqYaYrZZSRxcS9fg9ZHNFhHEJ7ahYsFxzfj
 aUljNozyq3vZb3GB13qZk0RhAqeX09sodFvSPOxRcIaUShsqfq0gHzlB7
 s6/9oTO5JAdrmFWUoMqD9JuQVyBJB/E94QIzVPFevJLipe2TAt0mf4Y1n
 I8M7ffnfNvPIRZ+v9xpDhzxqK/dU9M2/CJARWPF0cs0SyZ/LED1xbV9G7
 qqlRHo6U0b62x28zQb02CJnS8+HzN6a9Y3H8a2upCL49m5YXIvt2MeS8c
 RUc2J8oNbSny8+c15OYtYiJMMn+copuHcS5RRw7WHPOtCy7XPs6YMgHvP w==;
IronPort-SDR: uoTjAqptLWXH2Nw/Atc440GNQ3fz4qE111m5SO8xaVwvlY6LLB9qlWe40wyTGH7T87g9YLuAFF
 im4HggnAfISN1F8Ck/Z+Do8+sCC0xcuXaEpR7ERxyX6zkReH8mKeQATwXB2UohLPUOGiC0gR3R
 OqUrtZf3mWKtZsiGwSd0PthcPKztv82+J7N4XTx0jkOqbWkjI60hhBm0ASvZ1EexUgsM35/bBD
 1Se6Wpza9t/kiiBmqOnw8cW9VDOJM9s63JQ3hKY0qUebfIdwbfu3eV8SQhAfMYdL62xuaDkyPI
 jrE=
X-IronPort-AV: E=Sophos;i="5.63,482,1557158400"; d="scan'208";a="114023432"
Received: from uls-op-cesaip02.wdc.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 12 Jul 2019 18:16:50 +0800
IronPort-SDR: LymMPLN/chC34dYNsBFfgO+2JoQihdZ1BKMyl00cNhI+JjLJ3x3ZMuVI24iX7Kn5nMw5pnx9jt
 VaaSnahowhNRUkUsNLW8E6GJNVByeLvwcsOyqWfpfGSxandolqrd7NKX9RiYCor9Gbqh1QUjEg
 bRsF4/tEfHlsrLnbxhBNGlrjvPOGr/uE+feQnrsFKJx0FsKSqTbOGwI4P2JkOdzLDq2VONIiuO
 p/4IQmpeiXah82lOfRimfKqC2/aHA+UvYA/MB2rXPlRj/Nbxf5aKLLTGxCnHmV0YKc9mv1qRQA
 c8wB3+gmuPGMXsfmPhyzVT9S
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep02.wdc.com with ESMTP; 12 Jul 2019 03:15:25 -0700
IronPort-SDR: bRBvx4E7fSDpWJTso1KTOfIWHdz7gAqqjueqfEORwydlIAUkrEAaWYLnznr8SdQ9nM3pPIuML3
 YfhvGb9/ueFfK+/grzW32AXWDxuhzc4FC6WpCN2NLKo8q4CpwB8kQZvaUIipt9fvjrRGIVuuVC
 vMfCEvWWeEZ+NDm4AAadLLWJiU5B9P7Q8QJhDxTj+sZRxUH7tVCbe6kcofwK0i8rpmokhvpCWQ
 nbKluPVuuhggE20FWOojHejOnepS9YeKvcpJC2L6ixwcc0Wl7TSW6h/h44yu/kq//kMA9jeTsP
 tKI=
Received: from naota.dhcp.fujisawa.hgst.com (HELO naota.fujisawa.hgst.com)
 ([10.149.53.115])
 by uls-op-cesaip01.wdc.com with ESMTP; 12 Jul 2019 03:16:48 -0700
From: Naohiro Aota <naohiro.aota@wdc.com>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>, linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/2] arm64/vdso: fix flip/flop vdso build bug
Date: Fri, 12 Jul 2019 19:15:56 +0900
Message-Id: <20190712101556.17833-2-naohiro.aota@wdc.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190712101556.17833-1-naohiro.aota@wdc.com>
References: <20190712101556.17833-1-naohiro.aota@wdc.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190712_031650_473733_546331D0 
X-CRM114-Status: GOOD (  11.30  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.144 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Naohiro Aota <naohiro.aota@wdc.com>, Peter Collingbourne <pcc@google.com>,
 Catalin Marinas <catalin.marinas@arm.com>, x86@kernel.org,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Andy Lutomirski <luto@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Running "make" on an already compiled kernel tree will rebuild the kernel
even without any modifications:

$ make ARCH=arm64 CROSS_COMPILE=/usr/bin/aarch64-unknown-linux-gnu-
arch/arm64/Makefile:58: CROSS_COMPILE_COMPAT not defined or empty, the compat vDSO will not be built
  CALL    scripts/checksyscalls.sh
  CALL    scripts/atomic/check-atomics.sh
  VDSOCHK arch/arm64/kernel/vdso/vdso.so.dbg
  VDSOSYM include/generated/vdso-offsets.h
  CHK     include/generated/compile.h
  CC      arch/arm64/kernel/signal.o
  CC      arch/arm64/kernel/vdso.o
  CC      arch/arm64/kernel/signal32.o
  LD      arch/arm64/kernel/vdso/vdso.so.dbg
  OBJCOPY arch/arm64/kernel/vdso/vdso.so
  AS      arch/arm64/kernel/vdso/vdso.o
  AR      arch/arm64/kernel/vdso/built-in.a
  AR      arch/arm64/kernel/built-in.a
  GEN     .version
  CHK     include/generated/compile.h
  UPD     include/generated/compile.h
  CC      init/version.o
  AR      init/built-in.a
  LD      vmlinux.o

This is the same bug fixed in commit 92a4728608a8 ("x86/boot: Fix
if_changed build flip/flop bug"). We cannot use two "if_changed" in one
target. Fix this build bug by merging two commands into one function.

Cc: Masahiro Yamada <yamada.masahiro@socionext.com>
Fixes: 28b1a824a4f4 ("arm64: vdso: Substitute gettimeofday() with C implementation")
Signed-off-by: Naohiro Aota <naohiro.aota@wdc.com>
---
 arch/arm64/kernel/vdso/Makefile | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/kernel/vdso/Makefile b/arch/arm64/kernel/vdso/Makefile
index 4ab863045188..068c614b1231 100644
--- a/arch/arm64/kernel/vdso/Makefile
+++ b/arch/arm64/kernel/vdso/Makefile
@@ -57,8 +57,7 @@ $(obj)/vdso.o : $(obj)/vdso.so
 
 # Link rule for the .so file, .lds has to be first
 $(obj)/vdso.so.dbg: $(obj)/vdso.lds $(obj-vdso) FORCE
-	$(call if_changed,ld)
-	$(call if_changed,vdso_check)
+	$(call if_changed,ld_and_vdso_check)
 
 # Strip rule for the .so file
 $(obj)/%.so: OBJCOPYFLAGS := -S
@@ -77,6 +76,9 @@ include/generated/vdso-offsets.h: $(obj)/vdso.so.dbg FORCE
 quiet_cmd_vdsocc = VDSOCC   $@
       cmd_vdsocc = $(CC) $(a_flags) $(c_flags) -c -o $@ $<
 
+quiet_cmd_ld_and_vdso_check = LD      $@
+      cmd_ld_and_vdso_check = $(cmd_ld); $(cmd_vdso_check)
+
 # Install commands for the unstripped file
 quiet_cmd_vdso_install = INSTALL $@
       cmd_vdso_install = cp $(obj)/$@.dbg $(MODLIB)/vdso/$@
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
