Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A24D1CFB02
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 18:39:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=GUVNE8tVxv9GqdcCkL0YGXu+lmpWMj9FhEFeO35Izp0=; b=LxdxfH/653LCzGKG7KZ7evFZct
	2Opw86eKi+YU9Ma2ciF5JPLLkgt7EAJHFBDWErMsOzA2xufQoY9SOiVZQnvLVY9LsBZ+zAG3SEfG/
	WSRjcRrDLHpY9lPUik8Jr/hO2CIcVyVoFHLqwaGlLgIV90BRLclwV7o2N+jwcvn3jti4jb+Kysf2+
	VN9so1qV9lBkzsm3jrcwSMh7ednsbyhmx4cQgpLO2cQdqMxmTyrT63/whPtP+XmUy0nxUl2Ixlqj3
	g60Tkn1S7XoGPOeoVU/4TjrdSkIL1FZIrfvuLcHQEzUyyq2Oap12JDgCJCV3xbwOh/k3sj5NFvuK5
	rw36uxIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYXwB-0000hR-DF; Tue, 12 May 2020 16:39:23 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYXuj-0007ve-RL
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 16:37:55 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0A1F212FC;
 Tue, 12 May 2020 09:37:53 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 50A783F305;
 Tue, 12 May 2020 09:37:52 -0700 (PDT)
From: Dave Martin <Dave.Martin@arm.com>
To: mtk.manpages@gmail.com
Subject: [PATCH 08/14] prctl.2: Work around bogus constant "maxsig" in
 PR_SET_PDEATHSIG
Date: Tue, 12 May 2020 17:36:53 +0100
Message-Id: <1589301419-24459-9-git-send-email-Dave.Martin@arm.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1589301419-24459-1-git-send-email-Dave.Martin@arm.com>
References: <1589301419-24459-1-git-send-email-Dave.Martin@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_093753_968198_284B214E 
X-CRM114-Status: UNSURE (   9.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-arch@vger.kernel.org, linux-man@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The description of PR_SET_PDEATHSIG refers to "maxsig", which is
apparently intended to stand for the maximum defined signal number.

maxsig seems not to be a thing, even in the kernel.

Reword to use the standard constant NSIG.  (Discussion of SIGRTMIN
and SIGRTMAX seems out of scope here, and anyway is not relevant to
the kernel.)

Signed-off-by: Dave Martin <Dave.Martin@arm.com>
---
 man2/prctl.2 | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/man2/prctl.2 b/man2/prctl.2
index a84fb1d..1e04859 100644
--- a/man2/prctl.2
+++ b/man2/prctl.2
@@ -955,7 +955,9 @@ will operate in the privilege-restricting mode described above.
 .BR PR_SET_PDEATHSIG " (since Linux 2.1.57)"
 Set the parent-death signal
 of the calling process to \fIarg2\fP (either a signal value
-in the range 1..maxsig, or 0 to clear).
+in the range 1 ..
+.BR NSIG " \-"
+1, or 0 to clear).
 This is the signal that the calling process will get when its
 parent dies.
 .IP
-- 
2.1.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
