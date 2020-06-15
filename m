Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07EDC1F9141
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 10:20:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zbbE176x3Dv4AlfZvq3UedAl6re2MexpovYtitjTZw8=; b=qEKCq/wUZhXtnz
	ecyOzripqAHJbDXDH41ewK4Wa0FUw1Tl25NfUxxQ/LBV7gxNG6LnXU0Q9uxk6jc0T1M79oIEPLAnS
	ims2T1MID2oiOAq/hsj4kU1XjJ9C/E1G/t1ug1eo+ax3znQDwq1Obef8i/nr4oYj4fNHFw+wQB6VY
	bxq1u44S+4sE/IqdU8WDWu1Ff56CGfDgYnnlwvyTivtnPAQ+/Qjkln16wOQIxiiBQgJ9ByQqdBsoE
	Ynj2rQG1fLd+9vLXblxwFpWX8F1k+mJsjon2B4SOADc26DDcYkDY0fVkR20/PUr9RIW/lCS353U/h
	i8Hdc251337XVPpUfNPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkkM7-0004ij-TX; Mon, 15 Jun 2020 08:20:35 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkkLd-000312-QA
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 08:20:07 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0CA85206E2;
 Mon, 15 Jun 2020 08:20:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592209205;
 bh=3JOu3whXJHagX3A5FXu4YOyMwg0buhIfq0J6saBPEWM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=MSVi3gmPR9xUm2rCakwEj3nJ130UF203cE4RAlDZuI/haaRGRkXWZNddLJefxqnsZ
 V0TFhXghmCZq4V9HsILYwivR5UaqASj/PZe163BnLIJDF5hNmTXWy1sNbEHfZLzoil
 nTRsqhvhoxu5nK9fr7nRde30rwecznbQbbHFG94Q=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=wait-a-minute.lan) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jkkLb-0031ew-Ju; Mon, 15 Jun 2020 09:20:03 +0100
From: Marc Zyngier <maz@kernel.org>
To: kvm@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu
Subject: [PATCH 1/4] KVM: arm64: Enable Pointer Authentication at EL2 if
 available
Date: Mon, 15 Jun 2020 09:19:51 +0100
Message-Id: <20200615081954.6233-2-maz@kernel.org>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200615081954.6233-1-maz@kernel.org>
References: <20200615081954.6233-1-maz@kernel.org>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: kvm@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, james.morse@arm.com,
 julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com, kernel-team@android.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_012005_867590_EAB90BA1 
X-CRM114-Status: UNSURE (   8.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: kernel-team@android.com, James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

While initializing EL2, switch Pointer Authentication if detected
from EL1. We use the EL1-provided keys though.

Signed-off-by: Marc Zyngier <maz@kernel.org>
---
 arch/arm64/kvm/hyp-init.S | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm64/kvm/hyp-init.S b/arch/arm64/kvm/hyp-init.S
index 6e6ed5581eed..81732177507d 100644
--- a/arch/arm64/kvm/hyp-init.S
+++ b/arch/arm64/kvm/hyp-init.S
@@ -104,6 +104,17 @@ alternative_else_nop_endif
 	 */
 	mov_q	x4, (SCTLR_EL2_RES1 | (SCTLR_ELx_FLAGS & ~SCTLR_ELx_A))
 CPU_BE(	orr	x4, x4, #SCTLR_ELx_EE)
+alternative_if ARM64_HAS_ADDRESS_AUTH_ARCH
+	b	1f
+alternative_else_nop_endif
+alternative_if_not ARM64_HAS_ADDRESS_AUTH_IMP_DEF
+	b	2f
+alternative_else_nop_endif
+1:
+	orr	x4, x4, #(SCTLR_ELx_ENIA | SCTLR_ELx_ENIB)
+	orr	x4, x4, #SCTLR_ELx_ENDA
+	orr	x4, x4, #SCTLR_ELx_ENDB
+2:
 	msr	sctlr_el2, x4
 	isb
 
-- 
2.27.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
