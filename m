Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E20318C27F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 22:46:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=jyyXwbWfTSf4x6ekhx3aoIEyDfRTqEbk8Eg0lf1klyw=; b=e9j
	sNMIKMHPkyTYjpDDAPb9a3V4G/QmDPLvJ1wNW2ih0uSvuESzPKkJmfRKhzrlKzs+fwbUMnQy0xX8k
	Ah1oPPUN+EQjUWonRGbo6a65TfOMO2w2sFyaYfbWucmqPXA13orEYoextygcHuYxpZMo2uTvRpPHY
	BeNMRohTOWSb4PXwO+LZM4+gAWlPrQJHHx5SURRgMEeGLONsFnN3Ms+6k0t282NeZvtC07yNYRJ71
	N/ypIfHrBu1+INTSpuachwXvMvmCCWlGix5H+KQi8Iu52ELs1Wh4dFXp7LynJ9ekTTFEfDuGL6m2f
	xpV3s6cHFZEvtwTVDUA6CYrdhrDrhAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jF2zP-0004Sw-12; Thu, 19 Mar 2020 21:46:07 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jF2zH-0004Rv-RK
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Mar 2020 21:46:01 +0000
Received: by mail-wm1-x343.google.com with SMTP id d1so4209474wmb.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Mar 2020 14:45:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=N4ZopA6jxYwy2PnkatOwlcBFmsjw5EoOzX8MW2R1axk=;
 b=SCQoUMIyZ8Vbw+wdNtsMzgerp4TLRYoqfv9UdEI8qiiG2yej5r9RHT3QG3KuEakprQ
 QlVMh79lPcgD52TLIjS02rbPaOmN3pzIWtOjDQSPxBl3MG029b9ZhSqcKGQtfFGgB9Nr
 ETOO8pn5WfF8KQgR4ayiEWfDyr5kJU4XUyx3ym3e8SbXbUNGaj9HClhMarzLaoYW7kke
 hO0uQf2m7qGJekB50ULI8hd1uMBqHxhsp47xVxMyyU4Yvj2SKl1kJOhAE6JiDuIpTUO1
 UHa/VY8gHYgzqbeDGJGM0JDufqHDdIfOMD1dH91pSkZKPythVlpFVPy4QxEPTJDcCXgE
 HRuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=N4ZopA6jxYwy2PnkatOwlcBFmsjw5EoOzX8MW2R1axk=;
 b=aA0nPNjeHYKWjk2rI4ypblu7xgm636nQ1+wRwqD9/8BNc7wkapp/AlTPC5a+qAzXjV
 nIWQ7UQyIOq4ZLvzAbw34qpeMHdWVTW5D4u0yWw9X+BKJm6UNbvcnF3N/pgSK2avCCCu
 WyYfB1ioM1BJSGrvZ7ZhZOMft3lQ7RFC2PZNeKrJYf+w0ZgYw6LI89HFKpsxR2lCPwr3
 fXw4PW3VSln5RXCzJsJfMd1tAWE783GI5FMzdAAGQ8uSgqkdQGnyBzOlAbCBPhBd6GmL
 rHsw+e87pA4sA4bvCgzQtvrrLvAhxjHk4Twz49lZdZDB5Fl5T/BjueJfrREQxM50mAN9
 6ZBw==
X-Gm-Message-State: ANhLgQ1D74C1rpM4J6qGVDQYp2BO8xXsBNwFxxeo8zQffj3sUBdLD1lR
 bAxDDnm+0cigh1uJq58YcT0=
X-Google-Smtp-Source: ADFU+vuUf/dMXXmerrEFIGVyIYt/t73qo9oj9x54KMu2VIM2+RSkINpbNE8HG8y9a2oI2vKGuxTOsg==
X-Received: by 2002:a1c:7405:: with SMTP id p5mr6330915wmc.73.1584654354401;
 Thu, 19 Mar 2020 14:45:54 -0700 (PDT)
Received: from localhost.localdomain ([2a02:a58:8532:8700:6c17:119f:1ee1:b2f0])
 by smtp.gmail.com with ESMTPSA id h10sm5360793wrb.24.2020.03.19.14.45.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Mar 2020 14:45:53 -0700 (PDT)
From: Ilie Halip <ilie.halip@gmail.com>
To: Catalin Marinas <catalin.marinas@arm.com>
Subject: [PATCH] arm64: alternative: fix build with clang integrated assembler
Date: Thu, 19 Mar 2020 23:45:28 +0200
Message-Id: <20200319214530.2046-1-ilie.halip@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_144559_884683_000A5148 
X-CRM114-Status: GOOD (  11.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ilie.halip[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Kees Cook <keescook@chromium.org>, Ilie Halip <ilie.halip@gmail.com>,
 Andre Przywara <andre.przywara@arm.com>, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com, Sami Tolvanen <samitolvanen@google.com>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Building an arm64 defconfig with clang's integrated assembler, this error
occurs:
    <instantiation>:2:2: error: unrecognized instruction mnemonic
     _ASM_EXTABLE 9999b, 9f
     ^
    arch/arm64/mm/cache.S:50:1: note: while in macro instantiation
    user_alt 9f, "dc cvau, x4", "dc civac, x4", 0
    ^

While GNU as seems fine with case-sensitive macro instantiations, clang
doesn't, so use the actual macro name (_asm_extable) as in the rest of
the file.

Also checked that the generated assembly matches the GCC output.

Fixes: 290622efc76e ("arm64: fix "dc cvau" cache operation on errata-affected core")
Link: https://github.com/ClangBuiltLinux/linux/issues/924
Signed-off-by: Ilie Halip <ilie.halip@gmail.com>
---
 arch/arm64/include/asm/alternative.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/include/asm/alternative.h b/arch/arm64/include/asm/alternative.h
index 324e7d5ab37e..5e5dc05d63a0 100644
--- a/arch/arm64/include/asm/alternative.h
+++ b/arch/arm64/include/asm/alternative.h
@@ -221,7 +221,7 @@ alternative_endif
 
 .macro user_alt, label, oldinstr, newinstr, cond
 9999:	alternative_insn "\oldinstr", "\newinstr", \cond
-	_ASM_EXTABLE 9999b, \label
+	_asm_extable 9999b, \label
 .endm
 
 /*
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
