Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5719B159776
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 18:59:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WHwUB5tZaGImxqipZnAVAbYx7QDPuim0C/3QwwT/kN4=; b=sErn0khl7cEYQK
	vLYMABbd6kDWaOFFujtTEuIth4YQYxUQXHj8oW4191/JKp0MIxZxG2AfL6MM7Xj+i6nQGEY0AE829
	d2y8o0/ZFM4/0eNUgvyD00ak5tQVZbVp4cDoVK7OFUcSwB+7YTlEk0rYkiEDoVg/YZvDKT/pWCnQB
	BQLYphUqehEjGGoNKlo4s+NTfwewUtz9RM09W/CdO/xK+pI/50Wswl+IWcDmyRrDLNKQpX2dt+sQC
	US5wDHQ2+tTLXQdUnG/bgXPotIm6OLX9lwPJM1KvAg76TupXu5sRVCsjAJIhOAd6yeFQFI4oDgcEg
	HMFY7LW68N/3LjUdc9tg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1ZoT-0000em-Jr; Tue, 11 Feb 2020 17:59:09 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1Zh9-0001mE-71
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 17:51:38 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D14EA20870;
 Tue, 11 Feb 2020 17:51:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581443494;
 bh=nuQ0MN9/FGm7i28EpIRwCZK8BlzSNLL3qWI84G027to=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=rolyyoPuIhxBuyT6P+LDNWJEt7S0gbHBnRuxoO3pDpiT1W3uvPTj54mfLnzGvNJn+
 KGORkhoUe9fKJI85d88XUE62BTUZwT1FxXGoyWmWoujF8nsrfh+zkCLbhaVjmtYsnp
 xDROX7tA1ILiT/6yP4V63hBMwenL6EBKRL7IXBU0=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1j1Zfp-004O7k-5C; Tue, 11 Feb 2020 17:50:13 +0000
From: Marc Zyngier <maz@kernel.org>
To: linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org
Subject: [PATCH v2 34/94] KVM: arm64: nv: Use ARMv8.5-GTG to advertise
 supported Stage-2 page sizes
Date: Tue, 11 Feb 2020 17:48:38 +0000
Message-Id: <20200211174938.27809-35-maz@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200211174938.27809-1-maz@kernel.org>
References: <20200211174938.27809-1-maz@kernel.org>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org, andre.przywara@arm.com,
 christoffer.dall@arm.com, Dave.Martin@arm.com, jintack@cs.columbia.edu,
 alexandru.elisei@arm.com, james.morse@arm.com, julien.thierry.kdev@gmail.com,
 suzuki.poulose@arm.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_095135_420352_EC5D4E7C 
X-CRM114-Status: GOOD (  12.68  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>,
 Andre Przywara <andre.przywara@arm.com>,
 Christoffer Dall <christoffer.dall@arm.com>, Dave Martin <Dave.Martin@arm.com>,
 James Morse <james.morse@arm.com>, Alexandru Elisei <alexandru.elisei@arm.com>,
 Jintack Lim <jintack@cs.columbia.edu>,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

ARMv8.5-GTG gives the opportunity to advertize the supported Stage-2
page sizes to hypervisors, and allow them to differ from the page sizes
supported at Stage-1.

As KVM cannot support guest Stage-2 page sizes that are smaller than
PAGE_SIZE (it would break the guest's isolation guarantees), let's use
this feature to let the guest know (assuming it has been told about
ARMv8.5-GTG).

Signed-off-by: Marc Zyngier <maz@kernel.org>
---
 arch/arm64/include/asm/sysreg.h |  3 +++
 arch/arm64/kvm/nested.c         | 29 +++++++++++++++++++++++++++++
 2 files changed, 32 insertions(+)

diff --git a/arch/arm64/include/asm/sysreg.h b/arch/arm64/include/asm/sysreg.h
index 360ef9e8dfe4..a167219e42f4 100644
--- a/arch/arm64/include/asm/sysreg.h
+++ b/arch/arm64/include/asm/sysreg.h
@@ -701,6 +701,9 @@
 #define ID_AA64ZFR0_SVEVER_SVE2		0x1
 
 /* id_aa64mmfr0 */
+#define ID_AA64MMFR0_TGRAN4_2_SHIFT	40
+#define ID_AA64MMFR0_TGRAN64_2_SHIFT	36
+#define ID_AA64MMFR0_TGRAN16_2_SHIFT	32
 #define ID_AA64MMFR0_TGRAN4_SHIFT	28
 #define ID_AA64MMFR0_TGRAN64_SHIFT	24
 #define ID_AA64MMFR0_TGRAN16_SHIFT	20
diff --git a/arch/arm64/kvm/nested.c b/arch/arm64/kvm/nested.c
index cecea8d91196..c40bf753ead9 100644
--- a/arch/arm64/kvm/nested.c
+++ b/arch/arm64/kvm/nested.c
@@ -95,6 +95,35 @@ void access_nested_id_reg(struct kvm_vcpu *v, struct sys_reg_params *p,
 		break;
 
 	case SYS_ID_AA64MMFR0_EL1:
+		/* Hide unsupported S2 page sizes */
+		switch (PAGE_SIZE) {
+		case SZ_64K:
+			val &= ~FEATURE(ID_AA64MMFR0_TGRAN16_2);
+			val |= FIELD_PREP(FEATURE(ID_AA64MMFR0_TGRAN16_2), 0b0001);
+			/* Fall through */
+		case SZ_16K:
+			val &= ~FEATURE(ID_AA64MMFR0_TGRAN4_2);
+			val |= FIELD_PREP(FEATURE(ID_AA64MMFR0_TGRAN4_2), 0b0001);
+			/* Fall through */
+		case SZ_4K:
+			/* Support everything */
+			break;
+		}
+		/* Advertize supported S2 page sizes */
+		switch (PAGE_SIZE) {
+		case SZ_4K:
+			val &= ~FEATURE(ID_AA64MMFR0_TGRAN4_2);
+			val |= FIELD_PREP(FEATURE(ID_AA64MMFR0_TGRAN4_2), 0b0010);
+			/* Fall through */
+		case SZ_16K:
+			val &= ~FEATURE(ID_AA64MMFR0_TGRAN16_2);
+			val |= FIELD_PREP(FEATURE(ID_AA64MMFR0_TGRAN16_2), 0b0010);
+			/* Fall through */
+		case SZ_64K:
+			val &= ~FEATURE(ID_AA64MMFR0_TGRAN64_2);
+			val |= FIELD_PREP(FEATURE(ID_AA64MMFR0_TGRAN64_2), 0b0010);
+			break;
+		}
 		/* Cap PARange to 40bits */
 		tmp = FIELD_GET(FEATURE(ID_AA64MMFR0_PARANGE), val);
 		if (tmp > 0b0010) {
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
