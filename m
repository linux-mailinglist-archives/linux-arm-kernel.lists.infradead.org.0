Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A4C61F9142
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 10:21:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wENlajTzxkvDTYAK2E968vT8arUNTZdSdCy0PBWgJGE=; b=nugzYFczt/q4XQ
	/yRSm9NBykk3vh0+fM0RO5Xq5WIp2PiyVc1kV5EpMaVMqXxawb6fPupxQv1iRDIgg7jA2UKgrRmJG
	qHYcgOiwHBT3aD2cYI2Qmhyur5f3V/UeSi/r097nsKR2QFwlI47TuVoV4QLBrQz1EBSyrJs2KGTq6
	iiy6i0UTgRb/ujWqWezreqc2o4aAsiWwyFqvu1rPuSAsDHiXPnc3dHNuICOfbv84kH4nTMl/NzNVL
	Cie3PEfymbxyzsS5Naz8mGvTUKW7OY+ERxtscI7Hvkfyh3y1Q1Ag9QOzYAZG01ev5dlKCQfLdFrXt
	UzmE7XFPhxTskUeWYHQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkkMQ-0004rs-7p; Mon, 15 Jun 2020 08:20:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkkLe-0003AT-3v
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 08:20:08 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AD0E52068E;
 Mon, 15 Jun 2020 08:20:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592209205;
 bh=IyUoA5HHobhU+zQ+UlsDQmzlUdahHvTQN8l1w3bApgE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=PgiUupTNUC/sx/RLSvYu1ASmHcnr8UkaYGZYaDrk4UdUpIkFVHCImTmiTMiKsKhsN
 aO9QNGCgumztrkR3305CuDdGDtY9T/Bzli2u5ea1wNQ5n8sjGT1QspUzfY3j6GCJHS
 r3SO+n+EYzmgDdWPLcqx0E7HRZPQIYQJa9PveiAM=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=wait-a-minute.lan) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jkkLc-0031ew-81; Mon, 15 Jun 2020 09:20:04 +0100
From: Marc Zyngier <maz@kernel.org>
To: kvm@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu
Subject: [PATCH 2/4] KVM: arm64: Allow ARM64_PTR_AUTH when ARM64_VHE=n
Date: Mon, 15 Jun 2020 09:19:52 +0100
Message-Id: <20200615081954.6233-3-maz@kernel.org>
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
X-CRM114-CacheID: sfid-20200615_012006_186313_5B091633 
X-CRM114-Status: GOOD (  15.05  )
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

We currently prevent PtrAuth from even being built if KVM is selected,
but VHE isn't. It is a bit of a pointless restriction, since we also
check this at run time (rejecting the enabling of PtrAuth for the
vcpu if we're not running with VHE).

Just drop this apparently useless restriction.

Signed-off-by: Marc Zyngier <maz@kernel.org>
---
 arch/arm64/Kconfig | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 31380da53689..d719ea9c596d 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -1516,7 +1516,6 @@ menu "ARMv8.3 architectural features"
 config ARM64_PTR_AUTH
 	bool "Enable support for pointer authentication"
 	default y
-	depends on !KVM || ARM64_VHE
 	depends on (CC_HAS_SIGN_RETURN_ADDRESS || CC_HAS_BRANCH_PROT_PAC_RET) && AS_HAS_PAC
 	# GCC 9.1 and later inserts a .note.gnu.property section note for PAC
 	# which is only understood by binutils starting with version 2.33.1.
@@ -1543,8 +1542,7 @@ config ARM64_PTR_AUTH
 
 	  The feature is detected at runtime. If the feature is not present in
 	  hardware it will not be advertised to userspace/KVM guest nor will it
-	  be enabled. However, KVM guest also require VHE mode and hence
-	  CONFIG_ARM64_VHE=y option to use this feature.
+	  be enabled.
 
 	  If the feature is present on the boot CPU but not on a late CPU, then
 	  the late CPU will be parked. Also, if the boot CPU does not have
-- 
2.27.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
