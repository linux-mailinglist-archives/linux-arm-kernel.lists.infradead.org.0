Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D4361605A1
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 16 Feb 2020 19:55:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DeYwgoTDBYp3D1Cgx0RpsYbOLjMeXRrLK2cHBbB9cmw=; b=lq9P7nXdoJLW7o
	mPDRlIaPow77zOp2uJSmUOS+fxJXRO09BlKDgc++GM2mfy/qNDq6CQoHi/oNMTpSi8g+abE4oqwfz
	0kSTuvrScA79NGeRfHQsnx4fbi5NePWAL1csKr5AhMI0YcNm+2LohxKOHswUT1N6xBsPhV7EAy4qk
	gUVbghdiN/VE+VJYnw2ceV+6QbTJJ73MwJXU2lQRNA2EUjdsNM6osm3xAM8TvwJLTOFRxQH8W37ig
	2EOb4gVn61MAicHBptDZNtNm6PUKJIJdNsLf5GdKgHxioM5vI+V4TCSTGedQAySbrIAiUWDciMKZm
	Cq4qalpbc/SHDn67y9Hw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3P47-0003my-Ur; Sun, 16 Feb 2020 18:54:51 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3P2z-0002vl-82
 for linux-arm-kernel@lists.infradead.org; Sun, 16 Feb 2020 18:53:43 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C62B522522;
 Sun, 16 Feb 2020 18:53:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581879220;
 bh=h8Q7AtQVzmQQIR2f94c+ic8PYd9dsaAo6eI6biKkE0A=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=PAaV4yNPdtB97Yr6J92OyDUgth9fPR+izVYUFK6bhaKUOxkAq/IBwhgSP7ZMs8Pbj
 DlwVxMT3KAAp4bQ3s1C43Ekf+DWLBwL5moZ47VM3BrCqu/il0mLwsxqxX61osfrVFE
 3Jfbqbp2KoXGVE582184Oeazi8eGsSz2Xf0CXmCQ=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1j3P2x-005iWD-57; Sun, 16 Feb 2020 18:53:39 +0000
From: Marc Zyngier <maz@kernel.org>
To: linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org
Subject: [PATCH 3/5] kvm: arm64: Limit PMU version to ARMv8.1
Date: Sun, 16 Feb 2020 18:53:22 +0000
Message-Id: <20200216185324.32596-4-maz@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200216185324.32596-1-maz@kernel.org>
References: <20200216185324.32596-1-maz@kernel.org>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org, peter.maydell@linaro.org,
 james.morse@arm.com, julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_105341_299828_115F7838 
X-CRM114-Status: GOOD (  11.08  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Peter Maydell <peter.maydell@linaro.org>, James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Our PMU code is only implementing the ARMv8.1 features, so let's
stick to this when reporting the feature set to the guest.

Signed-off-by: Marc Zyngier <maz@kernel.org>
---
 arch/arm64/kvm/sys_regs.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/kvm/sys_regs.c b/arch/arm64/kvm/sys_regs.c
index 682fedd7700f..06b2d0dc6c73 100644
--- a/arch/arm64/kvm/sys_regs.c
+++ b/arch/arm64/kvm/sys_regs.c
@@ -1093,6 +1093,11 @@ static u64 read_id_reg(const struct kvm_vcpu *vcpu,
 				 FEATURE(ID_AA64ISAR1_GPA) |
 				 FEATURE(ID_AA64ISAR1_GPI));
 		break;
+	case SYS_ID_AA64DFR0_EL1:
+		/* Limit PMU to ARMv8.1 */
+		val &= ~FEATURE(ID_AA64DFR0_PMUVER);
+		val |= FIELD_PREP(FEATURE(ID_AA64DFR0_PMUVER), 4);
+		break;
 	}
 
 	return val;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
