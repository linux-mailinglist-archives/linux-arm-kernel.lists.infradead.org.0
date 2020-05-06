Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D47711C7609
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 18:14:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8IBeCOWTkYPJj7PGPBTrkVKG2eOBusKXumqzNhgGhR8=; b=I39NyxJ5AOcVPC
	SWYktjxlz/hOjPGoXn4dpOrk0PIpKVjODm88ydOdrHt1BMTPEp53ry+DaFmjYdJChvvkVLmmVksid
	W24PWQYzfapcPWSP2aDW/CYmLSK/HYr6eku6dotns7OeQ6sHyduxs+hC5fZOac3+wyCrCn8G8x8c4
	uhIqqDFqjyjAFxGP+d56XhDFxwt0kuFsX9+IOjhEQs0HVAJYHBe2mvO/Bnwb7600UWHXJ674khncb
	JqcSr9+YkuiLHpgHcxMa9XUoqLIFpIyHeLKTu+5TOMEAQqOXrMPlHOzRmPHM2rUW00m9Hd3K4XV5+
	KEVL0cXU1GOk1Vs6GtMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWMgl-0003my-2T; Wed, 06 May 2020 16:14:27 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWMgd-0003mD-Qr
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 16:14:21 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DDED3D6E;
 Wed,  6 May 2020 09:14:16 -0700 (PDT)
Received: from ewhatever.cambridge.arm.com (ewhatever.cambridge.arm.com
 [10.1.197.1])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7329B3F305;
 Wed,  6 May 2020 09:14:15 -0700 (PDT)
Date: Wed, 6 May 2020 17:14:10 +0100
From: Suzuki K Poulose <Suzuki.Poulose@arm.com>
To: Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: [PATCH v2 1/4] arm64: cpufeature: Extract meta-capability scope
 from list
Message-ID: <20200506161410.GA1776961@ewhatever.cambridge.arm.com>
References: <1586842314-19527-1-git-send-email-amit.kachhap@arm.com>
 <1586842314-19527-2-git-send-email-amit.kachhap@arm.com>
 <20200506145959.GF2878@gaia>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200506145959.GF2878@gaia>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_091419_954653_B437C5A4 
X-CRM114-Status: GOOD (  20.09  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 Mark Brown <broonie@kernel.org>, James Morse <james.morse@arm.com>,
 Amit Daniel Kachhap <amit.kachhap@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>, Will Deacon <will@kernel.org>,
 Dave Martin <Dave.Martin@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 06, 2020 at 04:00:01PM +0100, Catalin Marinas wrote:
> On Tue, Apr 14, 2020 at 11:01:51AM +0530, Amit Daniel Kachhap wrote:
> > This fixes the earlier commit 3ff047f6971d3c ("arm64: cpufeature: Fix
> > meta-capability cpufeature check"). This patch was added to fix the
> > dependency of individual meta-cpucaps checks on the array entry order. This
> > dependency was specifically added for cpufeature of system scope.
> > 
> > However this dependency can occur for cpufeature of boot scope such as
> > ARM64_HAS_ADDRESS_AUTH so this patch renames the helper function
> > __system_matches_cap to __cpufeature_matches_cap and invokes the match
> > handler with the scope fetched from the cpufeatures array list.
> > 
> > Fixes: 3ff047f6971d3c ("arm64: cpufeature: Fix meta-capability cpufeature check")
> > Signed-off-by: Amit Daniel Kachhap <amit.kachhap@arm.com>
> 
> Does this patch need to be merged in 5.7? The fixed commit went in
> 5.7-rc1 but it doesn't look to me like we'd have a problem without this
> fix. Basically we read the sanitised regs with SYSTEM_SCOPE rather than

Yes, this fixes an actual issue. The code is fine for BOOT cpu when we
detect whether the system supports the capability. However, for verifying
the secondary CPUs, this still succeeds as we only check the sanitised
values and a defective CPU could escape from being parked.

I think something like the following is a better idea, to make sure we
do the appropriate checks.


diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
index 9fac745aa7bb..5df74490d7d3 100644
--- a/arch/arm64/kernel/cpufeature.c
+++ b/arch/arm64/kernel/cpufeature.c
@@ -1373,15 +1373,23 @@ static void cpu_clear_disr(const struct arm64_cpu_capabilities *__unused)
 static bool has_address_auth(const struct arm64_cpu_capabilities *entry,
 			     int __unused)
 {
-	return __system_matches_cap(ARM64_HAS_ADDRESS_AUTH_ARCH) ||
-	       __system_matches_cap(ARM64_HAS_ADDRESS_AUTH_IMP_DEF);
+	if (scope == SCOPE_SYSTEM)
+		return __system_matches_cap(ARM64_HAS_ADDRESS_AUTH_ARCH) ||
+		       __system_matches_cap(ARM64_HAS_ADDRESS_AUTH_IMP_DEF);
+	else
+		return this_cpu_has_cap(ARM64_HAS_ADDRESS_AUTH_ARCH) ||
+			this_cpu_has_cap(ARM64_HAS_ADDRESS_AUTH_IMP_DEF);
 }
 
 static bool has_generic_auth(const struct arm64_cpu_capabilities *entry,
-			     int __unused)
+			     int scope)
 {
-	return __system_matches_cap(ARM64_HAS_GENERIC_AUTH_ARCH) ||
-	       __system_matches_cap(ARM64_HAS_GENERIC_AUTH_IMP_DEF);
+	if (scope == SCOPE_SYSTEM)
+		return __system_matches_cap(ARM64_HAS_GENERIC_AUTH_ARCH) ||
+		       __system_matches_cap(ARM64_HAS_GENERIC_AUTH_IMP_DEF);
+	else
+		return this_cpu_has_cap(ARM64_HAS_GENERIC_AUTH_ARCH) ||
+			this_cpu_has_cap(ARM64_HAS_GENERIC_AUTH_IMP_DEF);
 }
 #endif /* CONFIG_ARM64_PTR_AUTH */
 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
