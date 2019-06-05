Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EF6335E53
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 15:50:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X8p6EwXoCjLZBgaxQiHm/80Pm5NyBlXz/exc8aOewLM=; b=HNc2WLI9u1ahaO
	oRpnwJsWJBHdNgURl94kISrtf48wC6tNqt216z4lGMQXuficj5iJrv8G72t5Jz2L921gIu2znU9zz
	Ji+DtgaaQxv/lCgBxisEDi1lujq4OVtqydx8XAkFg7IoUYHDSXd/4x99fC8z4HcrpmkDYnYAOJQbZ
	GVJJFmZgG/yLFllHUCNV4/yEm3JEhKX6fELXPmAYL+j3Lib+ktfW8UEH8ovawK60jp+Bzyx8c/QEd
	+Pno5S1yEmjII5TfQXZzuLP8T65BuUctCA/Qtl6efIL3kyT6G6XsqoSMT3aiLqIsXs2Fa6RBGkVHh
	t0zPEVYw9WHaS6/nNeIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYWIh-0006Cq-EW; Wed, 05 Jun 2019 13:49:59 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYWIa-0006Bl-HS
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 13:49:53 +0000
Received: by mail-wr1-x444.google.com with SMTP id m3so3726699wrv.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 05 Jun 2019 06:49:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=PS+SP8qKjNHVQq+aPqdJmHyqgZlHPN/YqkgQhNa5DEA=;
 b=u9jPeWqR0lwSManzDR+WTQ466I/ii45H2wQR8nPJcgYVoDJ7Y7VZrsVkkiJJBINMe4
 jPCUu3biGGvvtR5GIQYAUHJQhCsg6jfMSTTg3YW564OV7KAkkKoBHC58E57+SvG1zEVH
 BHdA1g1WMAUM89s+QR5jNs/QvmmbRB75nfEokQNAu0YIUicB4RCgd/Ye8ziupDfrXTmA
 5KTsvVxn3+rWWmsbyy/1S12Pt1otunQrAerFHgrygah9G/pxZPbsk7UIJ9GUrDNPfqgo
 8q65pjp8Ns/FR5jSeBqQOjZxqUoge9nqvfgfZ55N5XrMsRMRcF2+oTXhgOWdgVpQEhEW
 N/iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=PS+SP8qKjNHVQq+aPqdJmHyqgZlHPN/YqkgQhNa5DEA=;
 b=l0wu4rbqBZf4H0BRmpemCV5+V9HKXZ8rRCRzjIa/LEciZjrF3pthARUA5uufd7fT5J
 KBDXPNgHsqL34K37cemGOl/olfXrC1tuP/SvOc+GO8muvEoA+2H2yj8yrBJWDMPzxSBT
 +N2CTmk2Kpiesbj0nhvKlqnnx9sNCCyb/m6UBnxuNICGr/OstSyattE4KLtVBsTMtBwI
 FDjg3RNuyehUjZqrtbWq2rCpb1jSt+xZ7sYHCaFA32Z3aXfJc4Ih/ozjXPRnDOiNSwxC
 4JGbQl06o7A7VadDA7+nqNasno1kfEDyRFPggWDAua6W6qCI8qn4s2qJr3+N+lp9rKHe
 kKsA==
X-Gm-Message-State: APjAAAWkqu+r54Fq+2J6KTIV1JQyDbAWTixhG6XcTtKbnKOFLfGSNaoK
 +u5a5cpZ+chUyWvJ6UvLdko=
X-Google-Smtp-Source: APXvYqx1R2ddxjXl2YOzPr7tU7waVJgflYnjWmHroDaShEjCfEmRZikGcNyby1rISNrgfg3TmWlRsg==
X-Received: by 2002:adf:c606:: with SMTP id n6mr24719655wrg.62.1559742586743; 
 Wed, 05 Jun 2019 06:49:46 -0700 (PDT)
Received: from localhost.localdomain
 (dslb-088-067-134-229.088.067.pools.vodafone-ip.de. [88.67.134.229])
 by smtp.gmail.com with ESMTPSA id w14sm4912607wrt.59.2019.06.05.06.49.45
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 05 Jun 2019 06:49:46 -0700 (PDT)
From: Jan Glauber <jglauber@cavium.com>
X-Google-Original-From: Jan Glauber <jglauber@marvell.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH] lockref: Limit number of cmpxchg loop retries
Date: Wed,  5 Jun 2019 15:48:49 +0200
Message-Id: <20190605134849.28108-1-jglauber@marvell.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <CAHk-=wjPqcPYkiWKFc=R3+18DXqEhV+Nfbo=JWa32Xp8Nze67g@mail.gmail.com>
References: <CAHk-=wjPqcPYkiWKFc=R3+18DXqEhV+Nfbo=JWa32Xp8Nze67g@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_064952_581933_ECFF6665 
X-CRM114-Status: GOOD (  12.43  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jan.glauber[at]gmail.com)
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Jan Glauber <jglauber@marvell.com>, Will Deacon <will.deacon@arm.com>,
 Jayachandran Chandrasekharan Nair <jnair@marvell.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The lockref cmpxchg loop is unbound as long as the spinlock is not
taken. Depending on the hardware implementation of compare-and-swap
a high number of loop retries might happen.

Add an upper bound to the loop to force the fallback to spinlocks
after some time. A retry value of 100 should not impact any hardware
that does not have this issue.

With the retry limit the performance of an open-close testcase
improved between 60-70% on ThunderX2.

Suggested-by: Linus Torvalds <torvalds@linux-foundation.org>
Signed-off-by: Jan Glauber <jglauber@marvell.com>
---
 lib/lockref.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/lib/lockref.c b/lib/lockref.c
index 3d468b53d4c9..5b34bbd3eba8 100644
--- a/lib/lockref.c
+++ b/lib/lockref.c
@@ -9,6 +9,7 @@
  * failure case.
  */
 #define CMPXCHG_LOOP(CODE, SUCCESS) do {					\
+	int retry = 100;							\
 	struct lockref old;							\
 	BUILD_BUG_ON(sizeof(old) != 8);						\
 	old.lock_count = READ_ONCE(lockref->lock_count);			\
@@ -21,6 +22,8 @@
 		if (likely(old.lock_count == prev.lock_count)) {		\
 			SUCCESS;						\
 		}								\
+		if (!--retry)							\
+			break;							\
 		cpu_relax();							\
 	}									\
 } while (0)
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
