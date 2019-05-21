Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7487625687
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 19:22:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=YLkuPabRQEDzpYdrKScSGDITJykd1BhhVKweAFXoKWY=; b=n3U
	G7Wu775O7sxJKiT/q1pPYiFnYKawYmgwaHvoqVfcC+ijsuCW3JXZiDVmf5anfXUROG7fLTPutvGfO
	xczKZHsTXsmlJvIVMMheivwC1vSGdbiybrI7/pafRPA7Z6bAfmTld/JBl7SnsldeCrzH/YUBKVuq/
	DrH7YgWcvwTbbnVQM3KNSVg/05pL7Q5Ct0lZ9dZIj8JgBXmRHFfLBmx8JMLGTYFi/44mxqwnQRPX3
	+dSX2cKlIPruGt4W5W1Kgfzbjvj1+WV6IpYG57fIuCVsvfYfcV+X+xqSspcH/L1nP4tLRS9L/9bHZ
	fjQLeKN1JLM9QK7OWHPnJotFFQBrSrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT8Sg-0001Ot-Uu; Tue, 21 May 2019 17:22:02 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT8SZ-0001MS-QG
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 17:21:56 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B619F15A2;
 Tue, 21 May 2019 10:21:52 -0700 (PDT)
Received: from e108454-lin.cambridge.arm.com (e108454-lin.cambridge.arm.com
 [10.1.196.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7E4BC3F718;
 Tue, 21 May 2019 10:21:50 -0700 (PDT)
From: Julien Grall <julien.grall@arm.com>
To: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu
Subject: [PATCH v5 0/3] arm64/fpsimd: Don't disable softirq when touching
 FPSIMD/SVE state
Date: Tue, 21 May 2019 18:21:36 +0100
Message-Id: <20190521172139.21277-1-julien.grall@arm.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_102155_852926_3A4B0D19 
X-CRM114-Status: UNSURE (   9.09  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: ard.biesheuvel@linaro.org, julien.thierry@arm.com, marc.zyngier@arm.com,
 catalin.marinas@arm.com, suzuki.poulose@arm.com, will.deacon@arm.com,
 christoffer.dall@arm.com, Julien Grall <julien.grall@arm.com>,
 james.morse@arm.com, Dave.Martin@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi all,

This patch series keeps softirqs enabled while touching FPSIMD/SVE state.
For more details on the impact see patch #3.

This patch series has been benchmarked on Linux 5.1-rc4 with defconfig.

On Juno2:
    * hackbench 100 process 1000 (10 times)
    * .7% quicker

On ThunderX 2:
    * hackbench 1000 process 1000 (20 times)
    * 3.4% quicker

Note that while the benchmark has been done on 5.1-rc4, the patch series is
based on 5.2-rc1.

Cheers,

Julien Grall (3):
  arm64/fpsimd: Remove the prototype for sve_flush_cpu_state()
  arch/arm64: fpsimd: Introduce fpsimd_save_and_flush_cpu_state() and
    use it
  arm64/fpsimd: Don't disable softirq when touching FPSIMD/SVE state

 arch/arm64/include/asm/fpsimd.h |   5 +-
 arch/arm64/include/asm/simd.h   |  10 +--
 arch/arm64/kernel/fpsimd.c      | 139 +++++++++++++++++++++++++++-------------
 arch/arm64/kvm/fpsimd.c         |   4 +-
 4 files changed, 103 insertions(+), 55 deletions(-)

-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
