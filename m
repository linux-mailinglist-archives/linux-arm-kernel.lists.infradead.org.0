Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE4C51CFB03
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 18:39:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=2fj6Oy6wRyC4CjwLE6aolQPIguameBsGUZ0jXyTJEgk=; b=n/l5yZ3DdwXTEXDNR0qg4+QnwU
	xzPhuLxC9OICeagDkL4YFOz3ZMlKPeoUn7r5l7JFAC5NWr1NVkt8rMFfrC3otI0D4pdKd9NS9lhcB
	EqAQogY3lpC4ITylAhwd/1NutstTNKPH8xfnjgZkZRMWt9M4licSjR1zh5TYMfjn4OKdSXUwoMzNb
	GHY741VQgV6Rec5YhxmjCikgg/EMk7LL2yjxB+N3w1wxp3vphw6J1vgN/nIcmBZnfgsRM3BXzW9Ei
	mlWSfqtZ7gSeJfsJQsutYOhX93TB8cczaJzxYJPN+H6bm6KPOLsT07eZM71Munsjro/ZhpUzmlPjA
	GkbwctwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYXwQ-0000ur-JB; Tue, 12 May 2020 16:39:38 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYXuk-0007si-K5
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 16:37:56 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EA6B7D6E;
 Tue, 12 May 2020 09:37:53 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 3D0983F305;
 Tue, 12 May 2020 09:37:53 -0700 (PDT)
From: Dave Martin <Dave.Martin@arm.com>
To: mtk.manpages@gmail.com
Subject: [PATCH 09/14] prctl.2: tfix minor punctuation in SPECULATION_CTRL
 prctls
Date: Tue, 12 May 2020 17:36:54 +0100
Message-Id: <1589301419-24459-10-git-send-email-Dave.Martin@arm.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1589301419-24459-1-git-send-email-Dave.Martin@arm.com>
References: <1589301419-24459-1-git-send-email-Dave.Martin@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_093754_718092_32B78256 
X-CRM114-Status: UNSURE (   8.07  )
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

Fix a few very minor bits of punctuation in
PR_SET_SPECULATION_CTRL and PR_GET_SPECULATION_CTRL.

Signed-off-by: Dave Martin <Dave.Martin@arm.com>
---
 man2/prctl.2 | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/man2/prctl.2 b/man2/prctl.2
index 1e04859..e8eaf95 100644
--- a/man2/prctl.2
+++ b/man2/prctl.2
@@ -1175,13 +1175,13 @@ The return value uses bits 0-3 with the following meaning:
 .TP
 .BR PR_SPEC_PRCTL
 Mitigation can be controlled per thread by
-.B PR_SET_SPECULATION_CTRL
+.BR PR_SET_SPECULATION_CTRL .
 .TP
 .BR PR_SPEC_ENABLE
 The speculation feature is enabled, mitigation is disabled.
 .TP
 .BR PR_SPEC_DISABLE
-The speculation feature is disabled, mitigation is enabled
+The speculation feature is disabled, mitigation is enabled.
 .TP
 .BR PR_SPEC_FORCE_DISABLE
 Same as
@@ -1228,11 +1228,11 @@ which is one of the following:
 The speculation feature is enabled, mitigation is disabled.
 .TP
 .BR PR_SPEC_DISABLE
-The speculation feature is disabled, mitigation is enabled
+The speculation feature is disabled, mitigation is enabled.
 .TP
 .BR PR_SPEC_FORCE_DISABLE
 Same as
-.B PR_SPEC_DISABLE
+.BR PR_SPEC_DISABLE ,
 but cannot be undone.
 A subsequent
 .B
-- 
2.1.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
