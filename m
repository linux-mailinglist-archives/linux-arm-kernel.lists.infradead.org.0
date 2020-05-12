Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD8811CFADB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 18:37:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=NlpKo8Fs9CLfRSHks/zGhtP97ac4z0HC95Nv4POGaD0=; b=K9F
	S/JW2brN3Au8dFTF0aI2pIMhwK3G0Hdoi27zKoAkfbijQlIepyalrUzXvUPTwWi+mYBfg+6UTioBq
	L8CvMrGLi/cmymmKqnQjZFe2v07wqHaDkHPW6np3U4i7Uzn9m2ip9OKP/GbUwQnU0+8/B31jhi0SC
	mDGDMT52/wW0+fo9flYpa9C5F8VtoNiGfpdbucIT/tFFz/BvsUf1n1yfetumP4tZT8RuYL/4UdMbW
	2Xlh9SWfPB3DDX4SsU/h7EPKWzF2KaSyRFJugg2+FxQVQKSVk8/glEddt8TmLxSVy24wU7B5q2QJm
	roz6gaCgZ0PrTe068+ccccru0338WtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYXu7-0007aB-Vq; Tue, 12 May 2020 16:37:15 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYXu1-0007ZJ-4E
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 16:37:10 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B40451FB;
 Tue, 12 May 2020 09:37:05 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 4798B3F305;
 Tue, 12 May 2020 09:37:04 -0700 (PDT)
From: Dave Martin <Dave.Martin@arm.com>
To: mtk.manpages@gmail.com
Subject: [PATCH 00/14] prctl.2 man page updates for Linux 5.6
Date: Tue, 12 May 2020 17:36:45 +0100
Message-Id: <1589301419-24459-1-git-send-email-Dave.Martin@arm.com>
X-Mailer: git-send-email 2.1.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_093709_210467_50633A52 
X-CRM114-Status: GOOD (  11.31  )
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
 Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Dave Hansen <dave.hansen@linux.intel.com>,
 Amit Daniel Kachhap <amit.kachhap@arm.com>, Waiman Long <longman@redhat.com>,
 Mark Rutland <mark.rutland@arm.com>, Tim Chen <tim.c.chen@linux.intel.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

A bunch of updates to the prctl(2) man page to fill in the missing
prctls (mostly) up to Linux 5.6 (along with a few other tweaks fixes).

People not Cc'd on the whole series can find the whole series at
https://lore.kernel.org/linux-man/ .

Patches:

 * Patches 1-6 and 8-9 are rather trivial optional tweaks and fixes
   that don't make substantive changes.  I can live with some of these
   being dropped.

 * Patch 7 (removal of the MPX prctls) could use an Ack, but should be
   uncontroversial.

 * Patches 10-11 cover recent extensions to the speculation control
   prctls.

 * Patch 12 adds one particular case Errors for EINVAL, applicable to
   all arch-specific prctls.  I've not tried too hard to be 100%
   comprehensive with the error conditions, since the list in its
   current form looks in need of a major overhaul.

 * Patches 13-14 add the new arm64-specific prctls.
   (PR_SET_TAGGED_ADDR_CTRL requires a bit more discussion and will be
   posted separately.)

Maintainer notes:

 * I'm *asssuming* that the datestamps in .TH are automatically
   updated by maintainer scripts, since maintaining them by hand would
   interact very badly with rebase.  If needed I can go update them by
   hand though.

 * Similarly, in the days of git (and because I see no recent entries)
   I'm assuming that in-file changelogs no longer need to be updated.
   Again, I'm happy to do that if needed.


Dave Martin (14):
  prctl.2: tfix clarify that prctl can apply to threads
  prctl.2: Add health warning
  prctl.2: tfix mis-description of thread ID values in procfs
  prctl.2: srcfix add comments for navigation
  prctl.2: tfix listing order of prctls
  prctl.2: ffix quotation mark tweaks
  prctl.2: Document removal of Intel MPX prctls
  prctl.2: Work around bogus constant "maxsig" in PR_SET_PDEATHSIG
  prctl.2: tfix minor punctuation in SPECULATION_CTRL prctls
  prctl.2: Add PR_SPEC_INDIRECT_BRANCH for SPECULATION_CTRL prctls
  prctl.2: Add PR_SPEC_DISABLE_NOEXEC for SPECULATION_CTRL prctls
  prctl.2: Clarify the unsupported hardware case of EINVAL
  prctl.2: Add SVE prctls (arm64)
  prctl.2: Add PR_PAC_RESET_KEYS (arm64)

 man2/prctl.2 | 496 +++++++++++++++++++++++++++++++++++++++++++++--------------
 1 file changed, 384 insertions(+), 112 deletions(-)

-- 
2.1.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
