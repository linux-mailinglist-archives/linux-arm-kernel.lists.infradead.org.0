Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56DCB203EB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 12:54:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=fPBra5ght+gZrGU7ayHCM2ceSKarj6g/aBep90WrpMk=; b=SzZF7UVkDV+Q0+1qcx5o23AYSY
	igbV86xXDSbXw7wQgGaOjW6XBmx+9sGrEacMmKwZxeeNowarWYZdemcik6Dm/MxrrFB53T2DRc30l
	btmZhAKaoNoIEIjMpXVuwjq+KwqRlsPk0e8q5eM9Ke0xIMZppG/wRJpfoJq4wqMv62jxUdrmI8XA5
	7jdb13RcEcnnwudypNx8Kh2oC3FqZzUVy8AQ3GQ/cMwTmKvJ42rbsnghbd7+dQ0szJ3hCARH4lOTg
	bH7gJB6eiS2YB0zsvQJZtti175Upeq6jR1hLaWnflWjihngEtBpaoS5pMgGQWMUaF8P6YjRRlJ3CH
	jOoyRLCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRE1u-0006qu-3q; Thu, 16 May 2019 10:54:30 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRE1o-0006gi-BH
 for linux-arm-kernel@bombadil.infradead.org; Thu, 16 May 2019 10:54:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=References:In-Reply-To:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=z912eElseHarlLlLSfN0X6jYDSi4HF3peDyqZ/OF9Is=; b=SAQVBQx4A/XSrCPO/csr4zMW0
 2nxGbXyN9q3cENJ49pa/pEKxxirsNHwyI9bAxB1h6fqHxaE4Cp0eaJ8b4lt2uFoU9Q9J2XsiGFTtw
 tfqf4oXXDCexxykT9AhacfmxD6W28ACnlfasznZpWSGQizt3F6UjKO+8lG6McRwNxrKg5SubV3tH3
 6UtTM9/jNJzPReSEO20hIIwfEkvqmROxkpvwvuYg1hSvoAsEhkLo2J3oi7a8akogESFxR/P5fcqmy
 h9a/shov0T+uzpQGq51haw9KQsBZsbLcT8JZPkpDD8vIlOFsavgiigfLHdkJEpxpJ3V6Lu9Rb+grp
 cU1XFY4zA==;
Received: from foss.arm.com ([217.140.101.70])
 by casper.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRDmP-0001x6-Jf
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 10:38:31 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0A3381BB0;
 Thu, 16 May 2019 03:38:29 -0700 (PDT)
Received: from e121650-lin.cambridge.arm.com (e121650-lin.cambridge.arm.com
 [10.1.196.108])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 834C03F703;
 Thu, 16 May 2019 03:38:27 -0700 (PDT)
From: Raphael Gault <raphael.gault@arm.com>
To: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [RFC 16/16] arm64: kernel: Annotate non-standard stack frame functions
Date: Thu, 16 May 2019 11:36:55 +0100
Message-Id: <20190516103655.5509-17-raphael.gault@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190516103655.5509-1-raphael.gault@arm.com>
References: <20190516103655.5509-1-raphael.gault@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_113829_783575_86DC923A 
X-CRM114-Status: UNSURE (   6.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-5.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: julien.thierry@arm.com, peterz@infradead.org, catalin.marinas@arm.com,
 will.deacon@arm.com, Raphael Gault <raphael.gault@arm.com>,
 jpoimboe@redhat.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Annotate assembler functions which are callable but do not
setup a correct stack frame.

Signed-off-by: Raphael Gault <raphael.gault@arm.com>
---
 arch/arm64/kernel/hyp-stub.S | 2 ++
 arch/arm64/kvm/hyp-init.S    | 2 ++
 2 files changed, 4 insertions(+)

diff --git a/arch/arm64/kernel/hyp-stub.S b/arch/arm64/kernel/hyp-stub.S
index 17f325ba831e..ded5a50d95bf 100644
--- a/arch/arm64/kernel/hyp-stub.S
+++ b/arch/arm64/kernel/hyp-stub.S
@@ -53,6 +53,7 @@ ENTRY(__hyp_stub_vectors)
 	ventry	el1_fiq_invalid			// FIQ 32-bit EL1
 	ventry	el1_error_invalid		// Error 32-bit EL1
 ENDPROC(__hyp_stub_vectors)
+asm_stack_frame_non_standard __hyp_stub_vectors
 
 	.align 11
 
@@ -80,6 +81,7 @@ el1_sync:
 9:	mov	x0, xzr
 	eret
 ENDPROC(el1_sync)
+asm_stack_frame_non_standard el1_sync
 
 .macro invalid_vector	label
 \label:
diff --git a/arch/arm64/kvm/hyp-init.S b/arch/arm64/kvm/hyp-init.S
index 4576b86a5579..2ef2e2c51824 100644
--- a/arch/arm64/kvm/hyp-init.S
+++ b/arch/arm64/kvm/hyp-init.S
@@ -129,6 +129,7 @@ CPU_BE(	orr	x4, x4, #SCTLR_ELx_EE)
 	/* Hello, World! */
 	eret
 ENDPROC(__kvm_hyp_init)
+asm_stack_frame_non_standard __kvm_hyp_init
 
 ENTRY(__kvm_handle_stub_hvc)
 	cmp	x0, #HVC_SOFT_RESTART
@@ -170,6 +171,7 @@ reset:
 	eret
 
 ENDPROC(__kvm_handle_stub_hvc)
+asm_stack_frame_non_standard __kvm_handle_stub_hvc
 
 	.ltorg
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
