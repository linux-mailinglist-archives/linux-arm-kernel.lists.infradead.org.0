Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75B4917049F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 17:42:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=smSZ7pO/cFWWmJ32NNGtQzdPHvLPgn1nJra2XP5eh7c=; b=DSJFwO4BiBejw+
	eCPsMuJpKQ6ZOkNSHtgbLdojEKQ8sYsiXcL6kKUvQw8oQton1MdJ5ZjLS/YSoVMf8grFRQdc1z43j
	kJhqupRmo36ULorzcNhvvVO7wma8tu/3mE9EhJOltkGrzkT5aivA3FgD6xwLuZ9u4fxKxrUhTTQII
	ndg0S6+zoo5AE4HmQiPfsB+/vF/Rw8YmgHUX6OPMDZxv1ZeIXzYcl6m5jRdpJI03U9qTnZFGRHABq
	0aR+6XyiceD8oH2XWu6Di4wTNbD8cXMTi6YmqMAysMlvvSt3aELjOnhuAsUhX/3qYH15m+7RGwyj1
	KThF8qEL6OxlxLLrseSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6zlf-0004pz-SR; Wed, 26 Feb 2020 16:42:39 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6zlT-0004of-Qx
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 16:42:29 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 86DC230E;
 Wed, 26 Feb 2020 08:42:25 -0800 (PST)
Received: from e113632-lin.cambridge.arm.com (e113632-lin.cambridge.arm.com
 [10.1.194.46])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id E94713F819;
 Wed, 26 Feb 2020 08:42:23 -0800 (PST)
From: Valentin Schneider <valentin.schneider@arm.com>
To: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH 0/2] sched, arm64: enable CONFIG_SCHED_SMT for arm64
Date: Wed, 26 Feb 2020 16:41:16 +0000
Message-Id: <20200226164118.6405-1-valentin.schneider@arm.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_084227_916325_7EE5609E 
X-CRM114-Status: UNSURE (   8.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, qperret@google.com,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, morten.rasmussen@arm.com,
 Will Deacon <will@kernel.org>, Ingo Molnar <mingo@kernel.org>,
 Dietmar Eggemann <dietmar.eggemann@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

Strictly speaking those two patches are independent, but I figured it would
make sense to send them together (since one led to the other).

Patch 1 adds a sanity check against EAS + SMT.
Patch 2 enables CONFIG_SCHED_SMT in the arm64 defconfig.

Cheers,
Valentin

Valentin Schneider (2):
  sched/topology: Don't enable EAS on SMT systems
  arm64: defconfig: enable CONFIG_SCHED_SMT

 arch/arm64/configs/defconfig | 1 +
 kernel/sched/topology.c      | 4 ++++
 2 files changed, 5 insertions(+)

--
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
