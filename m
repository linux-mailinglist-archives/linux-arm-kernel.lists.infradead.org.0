Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFDE41D3A0A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 20:54:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QxkHKlDAtgJBLIVYeYtXpIWt9MEp+/Nu8bREioQANU0=; b=QAckc7Iq6Ora8V
	xT/1Ff3+QlQrkzoMNIeqsuDjHSw/KOtqU/6WGS7W/bO2KH85oB6+04WAMDiguTXgYYE0knaYcGrEk
	tGjxhe4QPC/F0cR8LxafNDITrdGH3V+jSrcxUOPIpZCB0hFzUKfmmiOFeCN9HUlPknSCEOFEwuJI5
	r/edAd/hozsxhUK8Nh79QvKK6w0MKnxNlqvkYI7VsQ1BSd63NdVAjnVF5FS0gVfGksELp7hwogDdV
	uaCSuLntquP23ebZ80+X/cogpTMFxbxkcIQU4Rw4r2spWppQd2612ZGYNJKpTvbeKPROrEdEYZtdb
	X901Nyh03DP5GWZlpskg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZJ08-00032W-1O; Thu, 14 May 2020 18:54:36 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZIzY-0002hF-D9
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 18:54:02 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 15C71206F1;
 Thu, 14 May 2020 18:53:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589482439;
 bh=a4jLj5YoajADdtK8+YqM4haJAzib1te6w43IqWap+Bs=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=uA5rGnctLtMy+uB9mKBbVn0NHeAHkR54j4ERSYWfwbFGUEMskzcvx8Tnp5mjTpGqp
 ada/xD4azGn8cFMkvi7VY+16la7xkn9QBxAPDyyDVwSnZvRvUFvRuBBJTRCAfHbGPf
 1oMnbn1y60b89M+FRXFAUfPsNKywby9cP3EeNXJY=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 39/49] ARM: futex: Address build warning
Date: Thu, 14 May 2020 14:53:00 -0400
Message-Id: <20200514185311.20294-39-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200514185311.20294-1-sashal@kernel.org>
References: <20200514185311.20294-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_115400_488997_8F25A5B2 
X-CRM114-Status: GOOD (  16.50  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sasha Levin <sashal@kernel.org>, Stephen Rothwell <sfr@canb.auug.org.au>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Thomas Gleixner <tglx@linutronix.de>

[ Upstream commit 8101b5a1531f3390b3a69fa7934c70a8fd6566ad ]

Stephen reported the following build warning on a ARM multi_v7_defconfig
build with GCC 9.2.1:

kernel/futex.c: In function 'do_futex':
kernel/futex.c:1676:17: warning: 'oldval' may be used uninitialized in this function [-Wmaybe-uninitialized]
 1676 |   return oldval == cmparg;
      |          ~~~~~~~^~~~~~~~~
kernel/futex.c:1652:6: note: 'oldval' was declared here
 1652 |  int oldval, ret;
      |      ^~~~~~

introduced by commit a08971e9488d ("futex: arch_futex_atomic_op_inuser()
calling conventions change").

While that change should not make any difference it confuses GCC which
fails to work out that oldval is not referenced when the return value is
not zero.

GCC fails to properly analyze arch_futex_atomic_op_inuser(). It's not the
early return, the issue is with the assembly macros. GCC fails to detect
that those either set 'ret' to 0 and set oldval or set 'ret' to -EFAULT
which makes oldval uninteresting. The store to the callsite supplied oldval
pointer is conditional on ret == 0.

The straight forward way to solve this is to make the store unconditional.

Aside of addressing the build warning this makes sense anyway because it
removes the conditional from the fastpath. In the error case the stored
value is uninteresting and the extra store does not matter at all.

Reported-by: Stephen Rothwell <sfr@canb.auug.org.au>
Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
Link: https://lkml.kernel.org/r/87pncao2ph.fsf@nanos.tec.linutronix.de
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm/include/asm/futex.h | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/arch/arm/include/asm/futex.h b/arch/arm/include/asm/futex.h
index 83c391b597d45..fdc4ae3e7378d 100644
--- a/arch/arm/include/asm/futex.h
+++ b/arch/arm/include/asm/futex.h
@@ -164,8 +164,13 @@ arch_futex_atomic_op_inuser(int op, int oparg, int *oval, u32 __user *uaddr)
 	preempt_enable();
 #endif
 
-	if (!ret)
-		*oval = oldval;
+	/*
+	 * Store unconditionally. If ret != 0 the extra store is the least
+	 * of the worries but GCC cannot figure out that __futex_atomic_op()
+	 * is either setting ret to -EFAULT or storing the old value in
+	 * oldval which results in a uninitialized warning at the call site.
+	 */
+	*oval = oldval;
 
 	return ret;
 }
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
