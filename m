Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 656153D09D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 17:20:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=yY5z/Lw2lhJOyZZRDaS8wOU/0nuqSoxYEbjLrwRhmR4=; b=i+8/7Sih6noeebXcwnBaObZlMU
	vnaebKzDB8mDv+u8RPvNUsK7iwjoLV9xv4pxGN8tPNpPReHJ48DrhT9DOdG7tQ8LWtfV/nqL3GC/g
	vRTfSeHNrxmGUZ9Qpuk28gMkQYxg82nLU2xdEdR3BbB6ANpR23SKxPbMfAjeq2MpJp0ViPUqp6TQd
	YBxMF7Mt801h9f6kEjmBUTRF2IFy9Cgkk1yc93DgfOqTEvySPLNrX3DrAUudgEqqnUoTf+l9HYaet
	lbJyJpzHvvGeyijwpzzjHsyWzKlysfDGra3Q3Us18QOwg0Zc7Lx7jk/3RZESSPNgs2dC2YE7mHuSg
	5yMEdEgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haiZl-0005De-VW; Tue, 11 Jun 2019 15:20:42 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haiYo-0003T2-9M
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 15:19:43 +0000
Received: by mail-qt1-x844.google.com with SMTP id i34so14975134qta.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Jun 2019 08:19:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Xk/nUeSwmjb6lEDGBh3mV3CTpCHSAUw0VWDygG78GcY=;
 b=ENnb5DPQJReREn1b0ZGYhCbls9bU6aKjPnMMIT3IDI6TQL/5Z6ccXp8OUmJ9pntjhe
 BXopYGyAbHSZdSYdyck6ZmfLWsHijBIB8zEsuUgr7j6ZREBdo2RFm6qj1JyJt7TQQWaS
 c28gYKAPWXlG/Xh03mKf7GK7+C4oPDcFjTe+nDDgMBjbm780EQu33is/diUiQcIQ4HV9
 BKtQmpq+LjUq0P9BJKzTscvaxSgHu7psnFXFqkDIn5q0fNdGTw7DB8axTTgzkYNCfIAq
 ORZGVpvcwfIilUxX8eO6TkXJk4heEc4JV0dBZ4+w695PDlNBRe5hzWnlu1BHu+oJqNni
 PbrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Xk/nUeSwmjb6lEDGBh3mV3CTpCHSAUw0VWDygG78GcY=;
 b=gBQQA/HGs++6NR9dsJPfqhftl4XZQ8uVYEityaYoiEZa189uAPocrrN6oj6wf7/AyF
 Ktd0I1SEdNUlF2iTq9dNZOBddgd9STgRr60fB7h75lI+x6fX7xVM73qxwgZtb4s+pjdy
 +FVaOsYPX7R4/Dc9DmM4fRlHKOHaCjvSfxGPJKM0JWPfoFTeP1lQzQIiDFnBz1j6bgPf
 FKRvturctGnsQlMfwbxWDIhOsWfs8YhvDIjxEYqeRnIwV+kpu8apCiekSSkG042WgVri
 p6cNkpVJQwX1RWEQR7RvpfYVRSOt7bYNBBUnJ4t4j+W4xmpssB5B8XdprrU5d5PLO73u
 +KKg==
X-Gm-Message-State: APjAAAXpbhx/J34IGme3S2v8KYxEjzbfdDj+MTbkRFzaxMmiBdE/39/U
 uxx5RUGkZkGib7s4ivD29w==
X-Google-Smtp-Source: APXvYqw28toKoVkfyCeZHHVkhZ1hltwnLs7p4JkG/RqFIAuee62sNbitk9iGIz/UO3zf6zppFIJZ9Q==
X-Received: by 2002:ac8:2e5d:: with SMTP id s29mr56136444qta.70.1560266381319; 
 Tue, 11 Jun 2019 08:19:41 -0700 (PDT)
Received: from gabell.bos.redhat.com (nat-pool-bos-t.redhat.com.
 [66.187.233.206])
 by smtp.gmail.com with ESMTPSA id z57sm6538533qta.62.2019.06.11.08.19.40
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 11 Jun 2019 08:19:40 -0700 (PDT)
From: Masayoshi Mizuma <msys.mizuma@gmail.com>
To: Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/2] arm64/mm: show TAINT_CPU_OUT_OF_SPEC warning if the cache
 size is over the spec.
Date: Tue, 11 Jun 2019 11:17:31 -0400
Message-Id: <20190611151731.6135-3-msys.mizuma@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190611151731.6135-1-msys.mizuma@gmail.com>
References: <20190611151731.6135-1-msys.mizuma@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_081942_382879_4BB77E43 
X-CRM114-Status: GOOD (  11.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (msys.mizuma[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Masayoshi Mizuma <m.mizuma@jp.fujitsu.com>,
 Hidetoshi Seto <seto.hidetoshi@jp.fujitsu.com>,
 Masayoshi Mizuma <msys.mizuma@gmail.com>, linux-kernel@vger.kernel.org,
 Zhang Lei <zhang.lei@jp.fujitsu.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Masayoshi Mizuma <m.mizuma@jp.fujitsu.com>

Show the warning and taints as TAINT_CPU_OUT_OF_SPEC if the cache line
size is greater than the maximum.

Signed-off-by: Masayoshi Mizuma <m.mizuma@jp.fujitsu.com>
Reviewed-by: Hidetoshi Seto <seto.hidetoshi@jp.fujitsu.com>
Tested-by: Zhang Lei <zhang.lei@jp.fujitsu.com>
---
 arch/arm64/include/asm/cache.h | 2 ++
 arch/arm64/mm/init.c           | 5 +++++
 2 files changed, 7 insertions(+)

diff --git a/arch/arm64/include/asm/cache.h b/arch/arm64/include/asm/cache.h
index 926434f413fa..636e277fefc9 100644
--- a/arch/arm64/include/asm/cache.h
+++ b/arch/arm64/include/asm/cache.h
@@ -91,6 +91,8 @@ static inline u32 cache_type_cwg(void)
 
 #define __read_mostly __attribute__((__section__(".data..read_mostly")))
 
+#define ARM64_MAX_CACHE_LINE_SIZE	2048
+
 static inline int cache_line_size(void)
 {
 	u32 cwg = cache_type_cwg();
diff --git a/arch/arm64/mm/init.c b/arch/arm64/mm/init.c
index d2adffb81b5d..df621d90b19c 100644
--- a/arch/arm64/mm/init.c
+++ b/arch/arm64/mm/init.c
@@ -562,6 +562,11 @@ void __init mem_init(void)
 		 */
 		sysctl_overcommit_memory = OVERCOMMIT_ALWAYS;
 	}
+
+	WARN_TAINT(cache_line_size() > ARM64_MAX_CACHE_LINE_SIZE,
+		   TAINT_CPU_OUT_OF_SPEC,
+		   "CTR_EL0.CWG is greater than the spec (%d > %d)",
+		   cache_line_size(), ARM64_MAX_CACHE_LINE_SIZE);
 }
 
 void free_initmem(void)
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
