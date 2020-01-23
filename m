Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0159A147282
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Jan 2020 21:21:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Lvhd7Dc9kbuTcno+F0FvtsmTyCO82ccWinOYJqPxjFk=; b=kfMjfXB8P+s2GB
	tHSrifu80TL/wNF3Q16o2sYltaqTHRhi7Jm6fp39lZvprReKUxFVGl5i3OigLRH6cbl9pJ2YuOO1o
	9UaJBxTFwHPzqj8aGDzkWKg/Ew/jJ8HTK44e2tokPc2ViyUKW8RLKYiaI1/6Wp+SlPFzZpvJB72Ve
	XTGz7kCIwsNEUmo03idDMgZWNpsAPlGvc4E62YKcejixKW2+mdoQ9N05CQ0vYeMKTl/+OhOjv1Txl
	xWC6P9oUy2pJnaqtG8ysidJqFW4vBmbuE7vzxmOMNQ57Pcw+KN64k2VHB3R+Wo4wiaA5+jc35sVbj
	3EJ2QtG6d/fcbiWhyJWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuiyZ-0003A4-BG; Thu, 23 Jan 2020 20:21:15 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuiyL-00039K-14
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Jan 2020 20:21:02 +0000
Received: by mail-qt1-x841.google.com with SMTP id e12so3575916qto.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 23 Jan 2020 12:20:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lca.pw; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=VWhgf0oxD0MDf+v6PtICDr/Wa9j8E9ftPNdZpQEn1CY=;
 b=fyy3NG0QF3sT8WoIjZ3RdpwdXMbbVnxAdAbhOWWwcZGZn6kDlghZMgOmtownbr5a/R
 9dd3QJI0jmeKj3gvnwrzs24LfejQcty1Mg4IKdDr3yyXfMv85JzkN9h9h9P57KvdlBNr
 3Y4OQid0KpYFFTsyAexT+tKa6eUz13cK54meBJyymYdqS7mTK1aeNRbX5E2iX2hb/hp5
 YUMQBeDvVxunMFMS2J8szaxobk7uE+NG+RFPLymVSdAfEXVmJqMeFZyTUoOkXfa2qB33
 SS5Tsf48R8udSh8krxncIFYTL06Tsn7zPU4mOBxXvJKBk9kDlYEBdGsqOgk4zYIMCMsh
 3g5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=VWhgf0oxD0MDf+v6PtICDr/Wa9j8E9ftPNdZpQEn1CY=;
 b=RKeCsBdgna5eg00IPIai14e4syBHdrXAm3mQ8X/zTHq91fuvi0FBPTnTBdfDU6/8py
 5sWrgYRZV7LhO/oT4Qtv/hgTiFjGrHO3sOKoWkjq4T7Q7BiL6xPQ0wqeVPfWfiRGagoT
 aPeO2j3cDwCRzQv5ym0qXd14I+LvQfbYTUm6256vOv8pDLu3ArFXbIHSRKgK74gZqpGw
 X7iUMdux+2wtsl6NEYny/aJS37KnDC7C4VIeVKNw7pSnCCiTaItRDeWtMSHsV9zGGBXP
 5EVKWbUtxkWVYo0ZlrAYxCFaVfqmA0FrgpJ3j+Qcbg4rwZyCBmiev/ZNZtwJNJ2T9EqN
 b9KQ==
X-Gm-Message-State: APjAAAUoEVx9W5StFdPiXJ+NOUHpWpDjNZQz4aB+Qg1IqugASWosBMV1
 RhIMTNV80OgZxx55pAxsiJ6XsQ==
X-Google-Smtp-Source: APXvYqwoFh27vtWYsfvrPv9tzLqtRlpmDW8J1E3xTi3UWTqCq4KzyekE7Ja8rVBWKWFK6Bgw4QYjUA==
X-Received: by 2002:ac8:768d:: with SMTP id g13mr18191647qtr.7.1579810858874; 
 Thu, 23 Jan 2020 12:20:58 -0800 (PST)
Received: from ovpn-123-97.rdu2.redhat.com
 (pool-71-184-117-43.bstnma.fios.verizon.net. [71.184.117.43])
 by smtp.gmail.com with ESMTPSA id g52sm1649041qta.58.2020.01.23.12.20.57
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 23 Jan 2020 12:20:58 -0800 (PST)
From: Qian Cai <cai@lca.pw>
To: peterz@infradead.org
Subject: [PATCH -next v2] arm64/spinlock: fix a -Wunused-function warning
Date: Thu, 23 Jan 2020 15:20:51 -0500
Message-Id: <20200123202051.8106-1-cai@lca.pw>
X-Mailer: git-send-email 2.21.0 (Apple Git-122.2)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_122101_069032_937D60AD 
X-CRM114-Status: UNSURE (   9.00  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
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

Fix it by converting vcpu_is_preempted() to a static inline function.

Fixes: f5bfdc8e3947 ("locking/osq: Use optimized spinning loop for arm64")
Signed-off-by: Qian Cai <cai@lca.pw>
---

v2: convert vcpu_is_preempted() to a static inline function.

 arch/arm64/include/asm/spinlock.h | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/include/asm/spinlock.h b/arch/arm64/include/asm/spinlock.h
index 102404dc1e13..9083d6992603 100644
--- a/arch/arm64/include/asm/spinlock.h
+++ b/arch/arm64/include/asm/spinlock.h
@@ -18,6 +18,10 @@
  * See:
  * https://lore.kernel.org/lkml/20200110100612.GC2827@hirez.programming.kicks-ass.net
  */
-#define vcpu_is_preempted(cpu)	false
+#define vcpu_is_preempted vcpu_is_preempted
+static inline bool vcpu_is_preempted(int cpu)
+{
+	return false;
+}
 
 #endif /* __ASM_SPINLOCK_H */
-- 
2.21.0 (Apple Git-122.2)


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
