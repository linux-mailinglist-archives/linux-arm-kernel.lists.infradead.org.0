Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DFA4F13CC49
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 19:43:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tYKoQKCGDxfJqzlmiRXSqWsDBS97d2pNd/owC5XaMmc=; b=G1eXNR4mwyk6rw
	AyWbTB2KgaU/uBILTMtpTavwqlXeP0gQM3kBoxJxekRN21Rs0eSY7ryQ5bTZ/fRf+mH529nzXl8EV
	eaGadhUv6mvCkHz0lhJI4+YwMq1cG4U7XIkTwomZ/bmIx6mVrp6mxlAkmGjDO847E7/ph3WgXSxQz
	Bf3/T5jX2DvWHvJPvR+gufk8dooZvd2Xo1JwzN63PkZzsiRWDe1FL3ySwoi9uui8xThHlpGcobZBJ
	CeTqxlQz/D/NJjLOT/ltp1dvX6R1YFIOgQ3KkaV3zIQ/Nijobvq9cXDkkQrQugksXOCiWjK6FhAWI
	d83uoYmnWPjM6jwzLkIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irndO-0002sc-Sd; Wed, 15 Jan 2020 18:43:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irndG-0002rg-PQ
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 18:43:13 +0000
Received: from localhost.localdomain (236.31.169.217.in-addr.arpa
 [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0175220728;
 Wed, 15 Jan 2020 18:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579113790;
 bh=EYn3cvBA+zKZZyuq+WQ0EKprn8+vzF11tgdyOEbIkzI=;
 h=From:To:Cc:Subject:Date:From;
 b=wGdhWFZoEOrLFAPd1W2WMEt146BJ/gYNPsZfSbluvNygAq1OLb0/3+kF1j7G3j9K5
 wAZgEWbxjWIhoAhSFQPmTDuPVItEyTBWO6KBBdHgzFjzhj2Oe34WKAzaF+TPphkAXi
 2qAIgW2yAh2knZCUz2Xv6m6oImdr1sD9PQlG8878=
From: Will Deacon <will@kernel.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH] Documentation: Call out example SYM_FUNC_* usage as
 x86-specific
Date: Wed, 15 Jan 2020 18:43:05 +0000
Message-Id: <20200115184305.1187-1-will@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_104310_846112_5EC2D368 
X-CRM114-Status: GOOD (  14.52  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: corbet@lwn.net, kernel-team@android.com, linux-doc@vger.kernel.org,
 Mark Brown <broonie@kernel.org>, Jiri Slaby <jslaby@suse.com>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The example given in asm-annotations.rst to describe the constraints that
a function should meet in order to be annotated with a SYM_FUNC_* macro
is x86-specific, and not necessarily applicable to architectures using
branch-and-link style calling conventions such as arm64.

Tweak the example text to call out the x86-specific text.

Cc: Mark Brown <broonie@kernel.org>
Cc: Jiri Slaby <jslaby@suse.com>
Signed-off-by: Will Deacon <will@kernel.org>
---

As an aside: if somebody could explain the high-level guarantees required
here for things like livepatching, then I'd be happy to try to put together
another patch adding an example for arm64. I'm currently not completely sure
about what is required in the face of things like leaf functions and tail calls.

 Documentation/asm-annotations.rst | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/Documentation/asm-annotations.rst b/Documentation/asm-annotations.rst
index f55c2bb74d00..32ea57483378 100644
--- a/Documentation/asm-annotations.rst
+++ b/Documentation/asm-annotations.rst
@@ -73,10 +73,11 @@ The new macros are prefixed with the ``SYM_`` prefix and can be divided into
 three main groups:
 
 1. ``SYM_FUNC_*`` -- to annotate C-like functions. This means functions with
-   standard C calling conventions, i.e. the stack contains a return address at
-   the predefined place and a return from the function can happen in a
-   standard way. When frame pointers are enabled, save/restore of frame
-   pointer shall happen at the start/end of a function, respectively, too.
+   standard C calling conventions. For example, on x86, this means that the
+   stack contains a return address at the predefined place and a return from
+   the function can happen in a standard way. When frame pointers are enabled,
+   save/restore of frame pointer shall happen at the start/end of a function,
+   respectively, too.
 
    Checking tools like ``objtool`` should ensure such marked functions conform
    to these rules. The tools can also easily annotate these functions with
-- 
2.25.0.rc1.283.g88dfdc4193-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
