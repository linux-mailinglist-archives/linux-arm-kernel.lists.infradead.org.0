Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63407172868
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 20:15:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bKKMRrrcwsK1nxvjh6dkdyIIRdAW3bALCeGlPgacex8=; b=mAd010joC10qI9
	upOvdIGBHgEC8gRg/Buew2eCEdD1IDTFemoq1jHZdO6fAi8lLkk673zhpkpEM7zKrI1jj2g+KKcry
	FjF5qBTgPNsg/7Ddyga9BdzxUijH1hhNC87QHM1zewoH2StIU6qdYe75PYC2NFng1IHBo7Euaigcb
	V21EBKwPnmyK2CVdMr1ob6BwiPGxRj64pI+yA12Vpa5yRBIC4C4J9urnaadL68UR20x0006pkKylK
	9OeOFQ7dwy+yIHYnQuuvSROF/XexdC5XzYrBG1x4UZ7blg5LRFy1LhVbpA1YhIxR72tLpgv572YXa
	jDPFiUaXpe6OwRfVJG8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7Ocx-000525-Bb; Thu, 27 Feb 2020 19:15:19 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7Occ-00050w-SI
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 19:15:00 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 332531FB;
 Thu, 27 Feb 2020 11:14:57 -0800 (PST)
Received: from e113632-lin.cambridge.arm.com (e113632-lin.cambridge.arm.com
 [10.1.194.46])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 992CE3F73B;
 Thu, 27 Feb 2020 11:14:55 -0800 (PST)
From: Valentin Schneider <valentin.schneider@arm.com>
To: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 0/2] sched, arm64: enable CONFIG_SCHED_SMT for arm64
Date: Thu, 27 Feb 2020 19:14:31 +0000
Message-Id: <20200227191433.31994-1-valentin.schneider@arm.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_111458_960595_1F0504F1 
X-CRM114-Status: UNSURE (   9.06  )
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

Revisions
=========

v1 -> v2
--------
o Collected Reviewed-by, Acked-by (Dietmar, Quentin)
o Added a warning when disabling EAS due to SMT (Dietmar)

Valentin Schneider (2):
  sched/topology: Don't enable EAS on SMT systems
  arm64: defconfig: enable CONFIG_SCHED_SMT

 arch/arm64/configs/defconfig |  1 +
 kernel/sched/topology.c      | 12 ++++++++++--
 2 files changed, 11 insertions(+), 2 deletions(-)

--
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
