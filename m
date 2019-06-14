Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87097467EE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 20:57:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=aMrk0qJ2ZFEdeKNKjvG6F84ilZeTRfoVDh6XTiZtddU=; b=C92
	zzGva3UijJ7E+eHwZ8riCniCyvE6W9BrmhyjxiRShKhLx6LT/XnZHugMamdnGryyO1JInOwA4oHXH
	egxhzAhp6OCoiwfo7juSFgc3nd1jyzOHifb53k1JXrMacWxM1lfiv92Av1iUIpqpEgkkjtEMc60+j
	l3fzXE03OCiFnPf8L8LwiiGNepOZENL/oQLISMwd2xm81+9+H07ea/S2xCvABSFxgFFWYWPoJXSdI
	8+Kqhkgz2tVoyHIiLkve1o5flMEj2LvPq+ES+HJRlB0x16NYB8bSuIfUnHtnrUzAYXpTdhZ43AorZ
	sHloB0yD1UGJaKq5OITzWlQdNU4ZRng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbrNj-0002ly-7K; Fri, 14 Jun 2019 18:56:59 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbrNX-0002lB-MR
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 18:56:49 +0000
Received: by mail-pf1-x441.google.com with SMTP id 81so1958400pfy.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 14 Jun 2019 11:56:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=kXP6RPbHGxfRHVxshgv418nQMeWFco7bVcG4pxVfdpQ=;
 b=ewW5LVea+JWpRTTQ9Ymq3AhgxtbQ02f34SkC+QSETwdm4+z6yDcvz+zb+e0XxLfrlH
 14a+LuJ+uQL6WLE3nJU72MnrO1/XDgBmc4Xjj5Qml4Jvt6XHo4fMXryaUxQsO+ndf3xk
 2Dz/MV3d6/785nd+1ntM1AhyRXUL6ROs9IyJ7UWlRhOyw+hGnBYS1HsAlvouFDMp1gQq
 qQjH4cuPS7biMshImT86hR1h8o4PqFiBxBDFhu5ClJ70OtUZ/6GDxs9poQK4JP21SwvF
 4YarnjI0rvrp/WkRIT84R3TYrtRYJcoTivp3QGWXAyeCpIPNZ7Iqft45mL7SMo69WNtn
 PghQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=kXP6RPbHGxfRHVxshgv418nQMeWFco7bVcG4pxVfdpQ=;
 b=s57hxreOUkDf6JGqT+HVMkt1DnZNXT7/PeMsBb3iWcYcM65GrooCraNe7hFR4JrtpX
 e4r0R6AYRy1pwu1hiaYOLvh7EoHkCjZZwGoV5c5JxQSNgnqy5UsgKV6l7qagG2L0BXfu
 h+vtkcTiYYxHyEyknD2okEnF2MWHpOE/ZTBVAvIhmtk14WJwTvijGu9oaUKf45PK5LH2
 VIpXDmnIV7lmfITR7nebgz//S8A/yQ7BK0j2KvuyTtZRD9INPu61SMgUioCle2q2c+2P
 eG7fb8prpaqwxzGL1lg2D9LP2Jiglj9ahek8FK1VAy3fnA8oVkv4s0uto1NmQc2ecQ9k
 kkPQ==
X-Gm-Message-State: APjAAAXPx1hUQMoBs5LtcjZDU3MPeIt6YftBUh+6FvgLw/59yBRm80AI
 ivA+1nqMSAZ5VWifi4z6/Z0X17yr
X-Google-Smtp-Source: APXvYqx70/CMTi+44qQfPlpiZj6yXBUe3eSw9DeC4HVnXisOv4Q2JZU9DYQc9Ym0dnZJizUCFkJ2gQ==
X-Received: by 2002:a63:f95d:: with SMTP id q29mr30978918pgk.368.1560538605919; 
 Fri, 14 Jun 2019 11:56:45 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id r9sm3466072pgv.24.2019.06.14.11.56.44
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 14 Jun 2019 11:56:45 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2] arm64: Allow user selection of ARM64_MODULE_PLTS
Date: Fri, 14 Jun 2019 11:56:34 -0700
Message-Id: <20190614185635.6982-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_115647_761493_4969744C 
X-CRM114-Status: GOOD (  13.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Florian Fainelli <f.fainelli@gmail.com>, ard.biesheuvel@linaro.org,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 open list <linux-kernel@vger.kernel.org>,
 bcm-kernel-feedback-list@broadcom.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Make ARM64_MODULE_PLTS a selectable Kconfig symbol, since some people
might have very big modules spilling out of the dedicated module area
into vmalloc. Help text is copied from the ARM 32-bit counterpart and
modified to a mention of KASLR and specific ARM errata workaround(s).

Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
Changes in v2:

- added Ard's paragraph about KASLR
- added a paragraph about specific workarounds also requiring
  ARM64_MODULE_PLTS

 arch/arm64/Kconfig | 22 +++++++++++++++++++++-
 1 file changed, 21 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 697ea0510729..7bfaeeeee9bc 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -1418,8 +1418,28 @@ config ARM64_SVE
 	  KVM in the same kernel image.
 
 config ARM64_MODULE_PLTS
-	bool
+	bool "Use PLTs to allow module memory to spill over into vmalloc area"
 	select HAVE_MOD_ARCH_SPECIFIC
+	help
+	  Allocate PLTs when loading modules so that jumps and calls whose
+	  targets are too far away for their relative offsets to be encoded
+	  in the instructions themselves can be bounced via veneers in the
+	  module's PLT. This allows modules to be allocated in the generic
+	  vmalloc area after the dedicated module memory area has been
+	  exhausted. The modules will use slightly more memory, but after
+	  rounding up to page size, the actual memory footprint is usually
+	  the same.
+
+	  When running with address space randomization (KASLR), the module
+	  region itself may be too far away for ordinary relative jumps and
+	  calls, and so in that case, module PLTs are required and cannot be
+	  disabled.
+
+	  Specific errata workaround(s) might also force module PLTs to be
+	  enabled (ARM64_ERRATUM_843419).
+
+	  Disabling this is usually safe for small single-platform
+	  configurations. If unsure, say y.
 
 config ARM64_PSEUDO_NMI
 	bool "Support for NMI-like interrupts"
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
