Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8918146E7F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Jan 2020 17:30:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rg27lF8TsqSaeYND/QkCHRzi6T8WRMDpZLIQYj9bl/E=; b=I0GZZv1dWQccqA
	wK1gvfG3NW3aZvm2dnRKypWRCoYPmrk10cVI3YUmBh4ACD4Zdal3rdjWcfDm5R67sNcM5HH+HvZvC
	NjbEYfNZm5Q+jrFEZeYFQepR0iFd7qWPh1yVWDaE5VH4oICwcpZaz083rrxCjnUf0hHvJtMEdFJVS
	r8AQhzxsbTvOFT08eVFikDk0IoGSm+azTaNOxw43uULgt/hnhrLGh0QdKInulxNcsGbHfvIaj+Dxi
	CzZh8j5ypO+hy2FyKq/2PWqAn3Xv1lXriMs+/C6O1ZAam24sx8VolYtLvlAlqdbclYpeWnW4BzUYP
	OOFvuN3Bj4hsMdxeBXGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iufN3-00082f-Qo; Thu, 23 Jan 2020 16:30:17 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iufMm-0007lO-P5
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Jan 2020 16:30:02 +0000
Received: by mail-qk1-x742.google.com with SMTP id q15so3990046qke.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 23 Jan 2020 08:29:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lca.pw; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=vnD7CtKsIUMQZngJBgz/z3z7LZDuTlk1mfUMotJq4ls=;
 b=ITGRhoN8U017VrzMlBw/yrJX8jmgO/FLsQjjj5XEofW+pB8tFjk8wmXr3GwdIMO95/
 TdbtO3PIJ8YnZ2nopdVCMK6Ajh4BMIljNe2MEnw/uHTiwJfiLrFUbyGT/2t6KpFSOkpX
 vfn1n7ptNReviQswLnoPORqii+ccWPX1hrXG9+lrEjDGgnz9ODkEYgRkHFexhcsK48HQ
 URC+C4PUMHEE1no+vyeTkSKzn6uIzycEMlQEpJTgmXu/9V/SUv5ogYGDOJGV9PLlw65+
 bOcVPkI4ecRkzi1FpoqIPVnWw4a1SibDgHBDR+PGF12A3huLUWFgnWWS5KNq61gMQELm
 Ps3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=vnD7CtKsIUMQZngJBgz/z3z7LZDuTlk1mfUMotJq4ls=;
 b=XZFUlp8QB0mqS3KQhDKMAPVc/u4SN2f+ArNSTn2P+Ym5O89s8bOav2pJPPvfrfmZR8
 WXu1oAD4lrkUMPnW5jBBj8TTgsRpx/I6KIlz1yGYMUGHFRIMsNFmIqPCKryL/wTz0Kum
 qkY5/JORNj5GIKY7hp9dkugWoqopCwCO72rGpE08LSRlP6r/3cwa2VR9XFHUGBVNZbTt
 7ROSikYJuFS0XyMPrJchDwxyHdA4QMPYmX+YQR8w8tsw/nCl5uyWfFsI8VgaFBSK0jwl
 KEzqloBxmD+OwbAruh2ScI0TT45FYDJ92EI7dqievK9L2wH6knoutT6pbS+i1GjAqr5b
 7hNA==
X-Gm-Message-State: APjAAAVcO0EZDh+4J7ib48XZDz538MW9eseppYqPJcZH4FGxDcmwBE+X
 4GexQjxtrPqHrxTpWJXbyDJsbw==
X-Google-Smtp-Source: APXvYqwu8j+jB7xvMUwGV0+Vmf+pKoO72oLwOCLj8Yu+pN4KpMhRP/GPYpj7h2IQFwCZYa3ugyl0xg==
X-Received: by 2002:a05:620a:134f:: with SMTP id
 c15mr16463418qkl.115.1579796998789; 
 Thu, 23 Jan 2020 08:29:58 -0800 (PST)
Received: from ovpn-123-97.rdu2.redhat.com
 (pool-71-184-117-43.bstnma.fios.verizon.net. [71.184.117.43])
 by smtp.gmail.com with ESMTPSA id k135sm1121731qke.6.2020.01.23.08.29.56
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 23 Jan 2020 08:29:57 -0800 (PST)
From: Qian Cai <cai@lca.pw>
To: peterz@infradead.org
Subject: [PATCH -next] arm64/spinlock: fix a -Wunused-function warning
Date: Thu, 23 Jan 2020 11:29:45 -0500
Message-Id: <20200123162945.7705-1-cai@lca.pw>
X-Mailer: git-send-email 2.21.0 (Apple Git-122.2)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_083000_847960_1FB51677 
X-CRM114-Status: UNSURE (   9.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: catalin.marinas@arm.com, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com, mingo@redhat.com, Qian Cai <cai@lca.pw>,
 longman@redhat.com, will@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The commit f5bfdc8e3947 ("locking/osq: Use optimized spinning loop for
arm64") introduced a warning from Clang because vcpu_is_preempted() is
compiled away,

kernel/locking/osq_lock.c:25:19: warning: unused function 'node_cpu'
[-Wunused-function]
static inline int node_cpu(struct optimistic_spin_node *node)
                  ^
1 warning generated.

Since vcpu_is_preempted() had already been defined in
include/linux/sched.h as false, just comment out the redundant macro, so
it can still be served for the documentation purpose.

Fixes: f5bfdc8e3947 ("locking/osq: Use optimized spinning loop for arm64")
Signed-off-by: Qian Cai <cai@lca.pw>
---
 arch/arm64/include/asm/spinlock.h | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/include/asm/spinlock.h b/arch/arm64/include/asm/spinlock.h
index 102404dc1e13..b05f82e8ba19 100644
--- a/arch/arm64/include/asm/spinlock.h
+++ b/arch/arm64/include/asm/spinlock.h
@@ -17,7 +17,8 @@
  *
  * See:
  * https://lore.kernel.org/lkml/20200110100612.GC2827@hirez.programming.kicks-ass.net
+ *
+ * #define vcpu_is_preempted(cpu)	false
  */
-#define vcpu_is_preempted(cpu)	false
 
 #endif /* __ASM_SPINLOCK_H */
-- 
2.21.0 (Apple Git-122.2)


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
