Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B01A412BD7F
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 28 Dec 2019 12:57:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:MIME-Version:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KuLy9/nfU+KrSODMBq7pF9MyJQaUvIxdDGgnhtGK8JE=; b=AO7mwfRHUdV5M+
	FA8CsqqPEBAVDoMIrMtObz30WJ4uw3yoeJa1a6pKryddqRDCLjfLxqFPwwHmTB7onMOcz8L6WONS4
	QlRbre1IPyFCl1gaNCiCflVXdnD8ONA1ktZDcfXSTh4VaqoEj3reRAFYyNO70un0lDDlpP22JN/Bv
	XKhDMjhDJzBuNg+WSHkAJNnWLNImP2JosrPfSnWrQR+IqJ7FIVbJNdzBi9LZWvIoDcJoC/IKbpQdy
	90rPCGr+ELX0evThSuqcU4acvpX8Vaj0G8bEYg3xOerp9shDMpxWWKopUiX5UQ7JhGGoMvpi+TnPk
	8EVZ6ijEBC2FJdhxplfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilAj1-000631-7O; Sat, 28 Dec 2019 11:57:43 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilAir-00062J-Ni
 for linux-arm-kernel@lists.infradead.org; Sat, 28 Dec 2019 11:57:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Date:Sender:Message-Id:Content-Type:
 Content-Transfer-Encoding:MIME-Version:Subject:Cc:To:From:Reply-To:Content-ID
 :Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:
 Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=OhYQGLzdQ9yun4vHhEYf2Iyi0ficAm5TeZF0stnYdu4=; b=zC5ybyfuAXCMC7/tbtCM2vZn4z
 XixnQKTzELOR++Y7wmN/IsBR6SQDvyD6kBYr5AN/QhzB8juOZeAmxnS5w42rFoHBs1jQemk7LWZzH
 BUE/J/SUC9DyHK8g2u9cmVnsGyQWXLFhKiHwFgun6hN0jviqgxe421UwmARoV5OQ3wSo7qaeYb6j8
 8G5ArBStDb/Orgznwp66b7kiDX0d6dClIxWEc6w5gGsAyBacU/Y3iOrxlWT6rSJBiDtCnrGnLzojU
 wzDpBxsqrFjzBhKOpwwXrK9W4b+cEt0S6x1Qh27bn5u2SdmD5agMo+TyNJieY3XUsZlsgyp28S3qr
 67PrC9yQ==;
Received: from e0022681537dd.dyn.armlinux.org.uk
 ([2001:4d48:ad52:3201:222:68ff:fe15:37dd]:51718 helo=rmk-PC.armlinux.org.uk)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <rmk@armlinux.org.uk>)
 id 1ilAiZ-0007Wf-NM; Sat, 28 Dec 2019 11:57:15 +0000
Received: from rmk by rmk-PC.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <rmk@armlinux.org.uk>)
 id 1ilAiY-0000MA-RG; Sat, 28 Dec 2019 11:57:15 +0000
From: Russell King <rmk+kernel@armlinux.org.uk>
To: Marc Zyngier <maz@kernel.org>
Subject: [PATCH v2] arm64: kvm: fix IDMAP overlap with HYP VA
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <E1ilAiY-0000MA-RG@rmk-PC.armlinux.org.uk>
Date: Sat, 28 Dec 2019 11:57:14 +0000
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191228_035733_931609_9DA88E51 
X-CRM114-Status: GOOD (  14.49  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 arch/arm64/kvm/va_layout.c | 44 ++++++++++++++++----------------------
 1 file changed, 19 insertions(+), 25 deletions(-)

diff --git a/arch/arm64/kvm/va_layout.c b/arch/arm64/kvm/va_layout.c
index 2cf7d4b606c3..1598909afbaf 100644
--- a/arch/arm64/kvm/va_layout.c
+++ b/arch/arm64/kvm/va_layout.c
@@ -22,43 +22,37 @@ static u8 tag_lsb;
 static u64 tag_val;
 static u64 va_mask;
 
+/*
+ * We want to generate a hyp VA with the following format (with V ==
+ * vabits_actual):
+ *
+ *  63 ... V |     V-1    | V-2 .. tag_lsb | tag_lsb - 1 .. 0
+ *  ---------------------------------------------------------
+ * | 0000000 | hyp_va_msb |   random tag   |  kern linear VA |
+ *           |--------- tag_val -----------|----- va_mask ---|
+ *
+ * which does not conflict with the idmap regions.
+ */
 static void compute_layout(void)
 {
 	phys_addr_t idmap_addr = __pa_symbol(__hyp_idmap_text_start);
 	u64 hyp_va_msb;
-	int kva_msb;
 
 	/* Where is my RAM region? */
 	hyp_va_msb  = idmap_addr & BIT(vabits_actual - 1);
 	hyp_va_msb ^= BIT(vabits_actual - 1);
 
-	kva_msb = fls64((u64)phys_to_virt(memblock_start_of_DRAM()) ^
+	tag_lsb = fls64((u64)phys_to_virt(memblock_start_of_DRAM()) ^
 			(u64)(high_memory - 1));
 
-	if (kva_msb == (vabits_actual - 1)) {
-		/*
-		 * No space in the address, let's compute the mask so
-		 * that it covers (vabits_actual - 1) bits, and the region
-		 * bit. The tag stays set to zero.
-		 */
-		va_mask  = BIT(vabits_actual - 1) - 1;
-		va_mask |= hyp_va_msb;
-	} else {
-		/*
-		 * We do have some free bits to insert a random tag.
-		 * Hyp VAs are now created from kernel linear map VAs
-		 * using the following formula (with V == vabits_actual):
-		 *
-		 *  63 ... V |     V-1    | V-2 .. tag_lsb | tag_lsb - 1 .. 0
-		 *  ---------------------------------------------------------
-		 * | 0000000 | hyp_va_msb |    random tag  |  kern linear VA |
-		 */
-		tag_lsb = kva_msb;
-		va_mask = GENMASK_ULL(tag_lsb - 1, 0);
-		tag_val = get_random_long() & GENMASK_ULL(vabits_actual - 2, tag_lsb);
-		tag_val |= hyp_va_msb;
-		tag_val >>= tag_lsb;
+	va_mask = GENMASK_ULL(tag_lsb - 1, 0);
+	tag_val = hyp_va_msb;
+
+	if (tag_lsb != (vabits_actual - 1)) {
+		/* We have some free bits to insert a random tag. */
+		tag_val |= get_random_long() & GENMASK_ULL(vabits_actual - 2, tag_lsb);
 	}
+	tag_val >>= tag_lsb;
 }
 
 static u32 compute_instruction(int n, u32 rd, u32 rn)
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
