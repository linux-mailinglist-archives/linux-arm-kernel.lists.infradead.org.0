Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B131F7D794
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 10:27:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UgYOtyaamy8Mpgwb9/bmtTK7wpwOw5QNyBGBayyTDk0=; b=BXxT9LCeCoEnWQ
	XPJ0mCnAUWUQK5Yoia6RZI8wtgTYvUnqImwsNt+Fv02dRW9+tz1gUnkV5/2AYfvyKzMYD7tatgzJt
	wxd005cEJhiipbvcfIqeskfbnVL/OpZ+Prg0P7sDBW0Nu/vENdwxjA2LEdbVS/Wzpznvx5PmHi9wq
	XFLguOIVXN/Aoj1/fmFnvU8lcBHC/Li0biTFIDc8qXkWplUa2Kv67aZT5JaJemUQ1parcnAFTG3Y/
	XI7Fo33G9lY6unl9rTkfEQUZ4aYox9MLmfFatIwXUXy612pl9w08V60qo+ROd+IMALQdE84E7/Iz4
	YtirYCLCH4MuQZ06EvFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht6R9-0004Y3-4t; Thu, 01 Aug 2019 08:27:47 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ht6Kq-0003Pu-NG
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 08:21:18 +0000
Received: by mail-pf1-x441.google.com with SMTP id r1so33599032pfq.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 01 Aug 2019 01:21:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Ds/lGPMr1EeNlwL4g2s5u78S6SjnXx7V9zy6A/rndeo=;
 b=mrBLXFMWzLa/t7R+RAPTUBkuVhtuO0SSPUQKBcr4iUCBlgaEqHyhHd1/uFMJhGMS4H
 N7XjT/O08TzqMLeVggwfT1HkHWMoa9XZeUoJ2ULmHwCAkn2l0Y5Ub+4RWPx5FREjiOG3
 xUhF0T115Bzb04sIYFubQM6mOq/14QvHEkB5h782l/RJNU1EKnLx/NMzfR0bgMV3We07
 4zuE/xFl23PtDuJ0i3REzyBcqE3BaNSJTNyqxML7FsXc7LTY8qLCZ3zUH+TZ1ypTx/gE
 qFmHoJxAufo87ZLAQx8l988GrmSI8dpXGDOubdDWBDHk030J6NlJEpENvqm9TEq1OThR
 d0hQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Ds/lGPMr1EeNlwL4g2s5u78S6SjnXx7V9zy6A/rndeo=;
 b=P4mcD3L16K74/6PHB9q+9TMQVpKR9GrvCjNl+Q17ZZtkzT/HO2hg1xVI2ktiuT1hlo
 KRBha8PHi7M2Do3AiBN8mjpqPZi1UDw3gaoXly8FxDMB/syTRXVQnb87OkzPmtmLyBwf
 C8gCsRCXQaFkiTEdwWequhaGCa5Epmh9WFqsPQfrbY+ngEgzXYi59mzz6QB4IT9oNKY5
 ES3CjNrrgATZkeByNkhbhycM6q9lMMnhkUou/pZ+0nJiAs9zEpPao8lxQo9XS2xOVJvl
 +4cG1FT96DvLsHzMXABzou0UllT3daIRcw5zF54ZP7l2iZzpu558pDnBNoymBjqCo3gC
 bcZA==
X-Gm-Message-State: APjAAAVofXnB4sBlHSvA3I6KucCK3CQzsvtWlXpRJA4t3ED7wssWC0St
 Bf24vuayjPqiH/0bfaGyqAxRuH8j4ro=
X-Google-Smtp-Source: APXvYqwtKxDMpgoZCbvREEE29QxNQP1W961hLJzisPedFonBaTo+teb/eU6GTFHq0O6jopgGgyalGg==
X-Received: by 2002:a62:642:: with SMTP id 63mr52289837pfg.257.1564647676154; 
 Thu, 01 Aug 2019 01:21:16 -0700 (PDT)
Received: from localhost ([122.172.28.117])
 by smtp.gmail.com with ESMTPSA id v18sm69519775pgl.87.2019.08.01.01.21.15
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 01 Aug 2019 01:21:15 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: stable@vger.kernel.org
Subject: [PATCH ARM32 v4.4 V2 39/47] ARM: make lookup_processor_type()
 non-__init
Date: Thu,  1 Aug 2019 13:46:23 +0530
Message-Id: <8571a7c6a6ff472e0d794311dda2ee4fb64f29eb.1564646727.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1564646727.git.viresh.kumar@linaro.org>
References: <cover.1564646727.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_012116_781641_B85B9C30 
X-CRM114-Status: GOOD (  12.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
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

From: Russell King <rmk+kernel@armlinux.org.uk>

Commit 899a42f836678a595f7d2bc36a5a0c2b03d08cbc upstream.

Move lookup_processor_type() out of the __init section so it is callable
from (eg) the secondary startup code during hotplug.

Reviewed-by: Julien Thierry <julien.thierry@arm.com>
Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
 arch/arm/kernel/head-common.S | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/kernel/head-common.S b/arch/arm/kernel/head-common.S
index 8733012d231f..7e662bdd5cb3 100644
--- a/arch/arm/kernel/head-common.S
+++ b/arch/arm/kernel/head-common.S
@@ -122,6 +122,9 @@ ENDPROC(__mmap_switched)
 	.long	init_thread_union + THREAD_START_SP @ sp
 	.size	__mmap_switched_data, . - __mmap_switched_data
 
+	__FINIT
+	.text
+
 /*
  * This provides a C-API version of __lookup_processor_type
  */
@@ -133,9 +136,6 @@ ENTRY(lookup_processor_type)
 	ldmfd	sp!, {r4 - r6, r9, pc}
 ENDPROC(lookup_processor_type)
 
-	__FINIT
-	.text
-
 /*
  * Read processor ID register (CP#15, CR0), and look up in the linker-built
  * supported processor list.  Note that we can't use the absolute addresses
-- 
2.21.0.rc0.269.g1a574e7a288b


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
