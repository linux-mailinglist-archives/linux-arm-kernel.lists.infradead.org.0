Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF34A1CFAFD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 18:38:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=l/KQpjTUrBE/Nq6fKG+awadFVxEjYiLJ7ECvNM8AdjY=; b=TDmh3RLXbFDVn7FCuprC1lfgct
	urTptiPAtVL2vYVKKLREugNfsH21C7oFsHKkXbLGo3XfAFdGUl4Nx0A29gh+gYMiTa/xN5dvDQ4qV
	+ChGrkuMAKxXKw7v0y2pHJnGysSzvBJXcwdeTcYiqKPq2oWTRtzCVzkeGeinXcOPm1hufw7CdTs6I
	nlYJLohmY45eWj0a5s8S+WZDvGyzrU41CA969AZJFWeKw74yw0O5N929A0MGjCjtvec1G/xA8YUUQ
	t33+VBjHUcjq/SRTx4Ls1QhxnJvdCNjBSJj7JXmhIBt+eq0g3RhpQnwT1iie8X8yFon56ZjUa73P7
	zZPO/Qfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYXv8-000882-55; Tue, 12 May 2020 16:38:18 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYXud-0007qd-SM
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 16:37:49 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7C404D6E;
 Tue, 12 May 2020 09:37:47 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id CA7123F305;
 Tue, 12 May 2020 09:37:46 -0700 (PDT)
From: Dave Martin <Dave.Martin@arm.com>
To: mtk.manpages@gmail.com
Subject: [PATCH 02/14] prctl.2: Add health warning
Date: Tue, 12 May 2020 17:36:47 +0100
Message-Id: <1589301419-24459-3-git-send-email-Dave.Martin@arm.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1589301419-24459-1-git-send-email-Dave.Martin@arm.com>
References: <1589301419-24459-1-git-send-email-Dave.Martin@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_093747_952936_2322BABB 
X-CRM114-Status: UNSURE (   9.18  )
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

In reality, almost every prctl interferes with assumptions that the
compiler and C library / runtime rely on.  prctl() can therefore
make userspace explode in a variety ways that are likely to be hard
to debug.

This is not obvious to the uninitiated, so add a warning.

Signed-off-by: Dave Martin <Dave.Martin@arm.com>
---
 man2/prctl.2 | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/man2/prctl.2 b/man2/prctl.2
index 7932ada..a35b748 100644
--- a/man2/prctl.2
+++ b/man2/prctl.2
@@ -66,6 +66,11 @@ prctl \- operations on a process or thread
 manipulates various aspects of the behavior
 of the calling thread or process.
 .PP
+Note that careless use of
+.BR prctl ()
+can confuse the userspace run-time environment,
+so these operations should be used with care (if at all).
+.PP
 .BR prctl ()
 is called with a first argument describing what to do
 (with values defined in \fI<linux/prctl.h>\fP), and further
-- 
2.1.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
