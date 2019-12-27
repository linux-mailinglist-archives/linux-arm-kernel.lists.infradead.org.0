Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17EF512B44E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Dec 2019 12:50:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:MIME-Version:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ddNPetLGZ24KveYbG3GHGGAUf0LEkPgoR0YdBhdOrpQ=; b=H/JcQp/NqyIzrU
	rM03xXE+EDcxSJYlFyD8lxEu07pskSwDJTwdMoJ2rjeStcc7HW/WiXJ+h78okhSqNpDtuvnU3P0yO
	6ZcJmBJUlJx6C8a8hTZZvmm85zVsrnzTmbh/MbtW6xDqRo4YhFqvnVsWIgQU5TiSZNDfSyHfkgzbD
	wBAsCXsBRi/uhtBTmPqdT7Bfre5htEnDTo7uDnf7H12SPWgDPyrtod6rjXB8pJVhEyqzWDq5Ce1/J
	jC6+LFAmNMmRGi2YDhR7EyPWLjjjqix1+SSOu3tykYjPJCZrDxwnq1xipvJK2FPLHZoNBed/QyG/M
	GPNC2rlBqmSVV8YrlwLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iko84-0000MG-3L; Fri, 27 Dec 2019 11:50:04 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iko7t-0000Fb-N5
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Dec 2019 11:49:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Date:Sender:Message-Id:Content-Type:
 Content-Transfer-Encoding:MIME-Version:Subject:Cc:To:From:Reply-To:Content-ID
 :Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:
 Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1no8phpfTzatcW/gwrnydyLint2R6VUfkLzlrwbm/iA=; b=dmTtxG7Iu+dPjVm/+fPLJHP6t3
 3zSShnWNOe5Yz+bjlK0GvcUmCeH/ME2Y8CvIFYSqqGPNH0kgEissDyHwh16+wrHSxkpBLdHFMi4kw
 ZXnabGJiQ87tcMBgEDsrD+TtL9S1wpyGznHXwLxAHzQfua8jAxPnKcxAdUuygcap4zMtyVGFljorr
 lw+m4umXE7XYDYrKinQX0ub0nWfKHeAQ46DaSKw6ojUHKBtnG9vukxTdhBjHfVFsv1oJgYEtY8U0d
 RSewGsMcwf2NIewFRVPteiunNe39ouGdzQE8nXUhqNyxZCDXRJWh2FAYPGTDxSg5WcvFIupnvMNxm
 0Fz0cpGQ==;
Received: from e0022681537dd.dyn.armlinux.org.uk
 ([2001:4d48:ad52:3201:222:68ff:fe15:37dd]:46184 helo=rmk-PC.armlinux.org.uk)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <rmk@armlinux.org.uk>)
 id 1iko5g-000199-Mj; Fri, 27 Dec 2019 11:47:36 +0000
Received: from rmk by rmk-PC.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <rmk@armlinux.org.uk>)
 id 1iko5f-0000z2-Tx; Fri, 27 Dec 2019 11:47:35 +0000
From: Russell King <rmk+kernel@armlinux.org.uk>
To: Marc Zyngier <maz@kernel.org>
Subject: [PATCH] arm64: kvm: fix IDMAP overlap with HYP VA
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <E1iko5f-0000z2-Tx@rmk-PC.armlinux.org.uk>
Date: Fri, 27 Dec 2019 11:47:35 +0000
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191227_034953_894105_C8F2200C 
X-CRM114-Status: GOOD (  15.51  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Catalin Marinas <catalin.marinas@arm.com>, James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>, Will Deacon <will@kernel.org>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Booting 5.4 on LX2160A reveals that KVM is non-functional:

kvm: Limiting the IPA size due to kernel Virtual Address limit
kvm [1]: IPA Size Limit: 43bits
kvm [1]: IDMAP intersecting with HYP VA, unable to continue
kvm [1]: error initializing Hyp mode: -22

Debugging shows:

kvm [1]: IDMAP page: 81a26000
kvm [1]: HYP VA range: 0:22ffffffff

as RAM is located at:

80000000-fbdfffff : System RAM
2080000000-237fffffff : System RAM

Comparing this with the same kernel on Armada 8040 shows:

kvm: Limiting the IPA size due to kernel Virtual Address limit
kvm [1]: IPA Size Limit: 43bits
kvm [1]: IDMAP page: 2a26000
kvm [1]: HYP VA range: 4800000000:493fffffff
...
kvm [1]: Hyp mode initialized successfully

which indicates that hyp_va_msb is set, and is always set to the
opposite value of the idmap page to avoid the overlap. This does not
happen with the LX2160A.

Further debugging shows vabits_actual = 39, kva_msb = 38 on LX2160A and
kva_msb = 33 on Armada 8040. Looking at the bit layout of the HYP VA,
there is still one bit available for hyp_va_msb. Set this bit
appropriately. This allows kvm to be functional on the LX2160A, but
without any HYP VA randomisation:

kvm: Limiting the IPA size due to kernel Virtual Address limit
kvm [1]: IPA Size Limit: 43bits
kvm [1]: IDMAP page: 81a24000
kvm [1]: HYP VA range: 4000000000:62ffffffff
...
kvm [1]: Hyp mode initialized successfully

Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
---
 arch/arm64/kvm/va_layout.c | 22 +++++++++++++++-------
 1 file changed, 15 insertions(+), 7 deletions(-)

diff --git a/arch/arm64/kvm/va_layout.c b/arch/arm64/kvm/va_layout.c
index 2cf7d4b606c3..83f8b3f51cf4 100644
--- a/arch/arm64/kvm/va_layout.c
+++ b/arch/arm64/kvm/va_layout.c
@@ -22,6 +22,17 @@ static u8 tag_lsb;
 static u64 tag_val;
 static u64 va_mask;
 
+/*
+ * We want to generate a hyp VA with the following format:
+ *
+ *  63 ... V |     V-1    | V-2 .. tag_lsb | tag_lsb - 1 .. 0
+ *  ---------------------------------------------------------
+ * | 0000000 | hyp_va_msb |    random tag  |  kern linear VA |
+ *
+ * which does not conflict with the idmap regions. This means that hyp_va_msb
+ * must always be present. Luckily, when kva_msb == (vabits_actual - 1) we
+ * still have one bit for this, but no bits for the random tag.
+ */
 static void compute_layout(void)
 {
 	phys_addr_t idmap_addr = __pa_symbol(__hyp_idmap_text_start);
@@ -39,19 +50,16 @@ static void compute_layout(void)
 		/*
 		 * No space in the address, let's compute the mask so
 		 * that it covers (vabits_actual - 1) bits, and the region
-		 * bit. The tag stays set to zero.
+		 * bit.
 		 */
-		va_mask  = BIT(vabits_actual - 1) - 1;
-		va_mask |= hyp_va_msb;
+		tag_lsb = kva_msb;
+		va_mask = BIT(vabits_actual - 1) - 1;
+		tag_val = hyp_va_msb >> tag_lsb;
 	} else {
 		/*
 		 * We do have some free bits to insert a random tag.
 		 * Hyp VAs are now created from kernel linear map VAs
 		 * using the following formula (with V == vabits_actual):
-		 *
-		 *  63 ... V |     V-1    | V-2 .. tag_lsb | tag_lsb - 1 .. 0
-		 *  ---------------------------------------------------------
-		 * | 0000000 | hyp_va_msb |    random tag  |  kern linear VA |
 		 */
 		tag_lsb = kva_msb;
 		va_mask = GENMASK_ULL(tag_lsb - 1, 0);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
