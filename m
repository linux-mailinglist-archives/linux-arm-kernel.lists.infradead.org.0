Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4549F7D790
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 10:27:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kaCblxqdU0sULRQCbX5rPYVN7dG6cNNKO3A8tFLDDhE=; b=ck5/Bigjubzp+z
	HxW89FX/VJP8fclxmcM+0YFhFd7znThKPtoHoEZT1Lf4hLvQUOh/5uviRNP4eMAiBclXapA4+HCO2
	RfkyQ2XPC4R7t/TT0qhDSP6G3EHw+vyw/eOqcTOg160mpN6x5pS3Y0pSX6KDF29JASWLUviZxw55R
	Lh10GrVJfd4RBC6mSqrDiYLJ5XQZWej0P6O1MpLjQGhWJO3a6tVUN7U+HLUuGc3gW1NMshyQOYfrr
	eSOKD2NrWuGjJE2BYcYmowlpRConlQza+ZMPNhO23vrkxaeBub49bZX4yO3eFy9k4zk8qq8IRfKsp
	509eJFGwBWz8JQfHNX0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht6Qm-00040X-Pq; Thu, 01 Aug 2019 08:27:24 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ht6Kl-0003Hn-Gh
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 08:21:13 +0000
Received: by mail-pg1-x544.google.com with SMTP id k189so14686966pgk.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 01 Aug 2019 01:21:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=jbpvQKJEQu6FughKaepmre4Ek2Fg9qHsXyEHlW2kC7A=;
 b=nuPAxY96iM+XwKlBy8anITOo/610vyvWeiY88oH4WhEaRNHJ+4FpcKfNUOq6sORC1n
 bognKJBIWgQngLwGMhYvzwuGBzT4WIu2MfMf8wZwWkZari+WuthCl6e/xY85XPk1O9WS
 W4HJ2d3jp408eScQ9rXt/Og1AIxEp3+gEHIQ+m0RWksDj+hoyuWm7cqTTOVQdSMaDRnh
 QQbblfammaCkWIWdwB9jSxF/XD7zfcPy8fmeA0b3nXznGmJW8355BJcQ4Yb3fU+RSBtP
 xyQgP/CWI3bq3rP9YfrrackmXpNijHi+BWViX2RDCKnE+QVy/UZBD8wV3GkSzbEsMW+v
 EPUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=jbpvQKJEQu6FughKaepmre4Ek2Fg9qHsXyEHlW2kC7A=;
 b=duBAf/T8E6ST6Xu7MJdl5gnWJG8pvH/G7k0HvvqkGYHLbxw/balsOgASFXcq7EimlP
 zqBhi7PKWSuktCFeoojt3fiYJ6yW10QJ95mR5KVw5E84xwaXzkNLQTzpqytaHhfV2Zuf
 lBOEvTj2hmY198R/ZlnQj3/oiyxbAyRS5Ze6lro1ppI4rh5Miub8i9i3Er/W2YEpfwEe
 YizTC80mqkJjpYKftYCTlToDPePGNviqh0K+5gDV559o7l/dzM6hAC9IO/iCROfMuOZQ
 4G/JAaF/76WY1GLHnzcipVjrHU1dSn3ukaK4QhozBYf1Yl7m3qBek/ZPTZTm6j1DebCk
 6ZJg==
X-Gm-Message-State: APjAAAWHCP8SLC71Z5Krs85jd6dYz1Vmc5tYGxeR9ASLdwkKD939nsTg
 X7GeaPhrkvfdFjLejtzIYJKwoQ==
X-Google-Smtp-Source: APXvYqzzclOnJ7hW5Cy9TmZm9TaesjMC0utzsTgWcOSVCJD9TpzTUtFt96KW/izuU1HOlYfsmURQtw==
X-Received: by 2002:a65:53cb:: with SMTP id z11mr1365272pgr.200.1564647670832; 
 Thu, 01 Aug 2019 01:21:10 -0700 (PDT)
Received: from localhost ([122.172.28.117])
 by smtp.gmail.com with ESMTPSA id w4sm90742508pfn.144.2019.08.01.01.21.10
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 01 Aug 2019 01:21:10 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: stable@vger.kernel.org
Subject: [PATCH ARM32 v4.4 V2 37/47] ARM: 8809/1: proc-v7: fix Thumb
 annotation of cpu_v7_hvc_switch_mm
Date: Thu,  1 Aug 2019 13:46:21 +0530
Message-Id: <41ffeadd36b1640c285d4d7b633696cd5ae4f03c.1564646727.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1564646727.git.viresh.kumar@linaro.org>
References: <cover.1564646727.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_012111_573172_4101D75C 
X-CRM114-Status: GOOD (  15.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Julien Thierry <Julien.Thierry@arm.com>, Marc Zyngier <marc.zyngier@arm.com>,
 Viresh Kumar <viresh.kumar@linaro.org>, guohanjun@huawei.com,
 Will Deacon <will.deacon@arm.com>, mark.brown@arm.com,
 Catalin Marinas <catalin.marinas@arm.com>,
 Russell King <rmk+kernel@arm.linux.org.uk>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Ard Biesheuvel <ard.biesheuvel@linaro.org>

Commit 6282e916f774e37845c65d1eae9f8c649004f033 upstream.

Due to what appears to be a copy/paste error, the opening ENTRY()
of cpu_v7_hvc_switch_mm() lacks a matching ENDPROC(), and instead,
the one for cpu_v7_smc_switch_mm() is duplicated.

Given that it is ENDPROC() that emits the Thumb annotation, the
cpu_v7_hvc_switch_mm() routine will be called in ARM mode on a
Thumb2 kernel, resulting in the following splat:

  Internal error: Oops - undefined instruction: 0 [#1] SMP THUMB2
  Modules linked in:
  CPU: 0 PID: 1 Comm: swapper/0 Not tainted 4.18.0-rc1-00030-g4d28ad89189d-dirty #488
  Hardware name: QEMU KVM Virtual Machine, BIOS 0.0.0 02/06/2015
  PC is at cpu_v7_hvc_switch_mm+0x12/0x18
  LR is at flush_old_exec+0x31b/0x570
  pc : [<c0316efe>]    lr : [<c04117c7>]    psr: 00000013
  sp : ee899e50  ip : 00000000  fp : 00000001
  r10: eda28f34  r9 : eda31800  r8 : c12470e0
  r7 : eda1fc00  r6 : eda53000  r5 : 00000000  r4 : ee88c000
  r3 : c0316eec  r2 : 00000001  r1 : eda53000  r0 : 6da6c000
  Flags: nzcv  IRQs on  FIQs on  Mode SVC_32  ISA ARM  Segment none

Note the 'ISA ARM' in the last line.

Fix this by using the correct name in ENDPROC().

Cc: <stable@vger.kernel.org>
Fixes: 10115105cb3a ("ARM: spectre-v2: add firmware based hardening")
Reviewed-by: Dave Martin <Dave.Martin@arm.com>
Acked-by: Marc Zyngier <marc.zyngier@arm.com>
Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
 arch/arm/mm/proc-v7.S | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mm/proc-v7.S b/arch/arm/mm/proc-v7.S
index b6359ce39fa7..90cddff176f6 100644
--- a/arch/arm/mm/proc-v7.S
+++ b/arch/arm/mm/proc-v7.S
@@ -106,7 +106,7 @@ ENTRY(cpu_v7_hvc_switch_mm)
 	hvc	#0
 	ldmfd	sp!, {r0 - r3}
 	b	cpu_v7_switch_mm
-ENDPROC(cpu_v7_smc_switch_mm)
+ENDPROC(cpu_v7_hvc_switch_mm)
 #endif
 ENTRY(cpu_v7_iciallu_switch_mm)
 	mov	r3, #0
-- 
2.21.0.rc0.269.g1a574e7a288b


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
