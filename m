Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3D871EF1FB
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 09:32:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-Id:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=y7YqXJDwbGWvVWB/Le2yhenLp4UBfuAgFsFFB+0VtYc=; b=U7YazTOkosaMom
	gZCcIJRlnpfdRsaf9CoevRkElOhIm+7QxpRkU6d9Cu08W91JCbg9S3wesoQ92UtJPtwzCn/1QTx25
	E9hYFd/r/6MoN9zHW7d70BWoNHKwGSqfHGG9DWae/aMkeB+e7roTHMPcrBajaEwYQFGflZvv3Q7oj
	9IbifhPLPIfvplzqRf5X8M0N+aGwGE4Kruwl9x/3mVcnZj/kVmvkmCO5EfnppKTaWkSda78q/Ou/l
	6pG0VNNt49VnI9kiVumlybKyulXRQl1oR2StY1uMCoHOEVCM33X58XrKt8ht2eaT/471eGZQSACpa
	zAbXAy1xtki5T2/50Qww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jh6q8-0006vm-Kc; Fri, 05 Jun 2020 07:32:32 +0000
Received: from mailout4.samsung.com ([203.254.224.34])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jh6pz-0006vN-HB
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jun 2020 07:32:25 +0000
Received: from epcas2p1.samsung.com (unknown [182.195.41.53])
 by mailout4.samsung.com (KnoxPortal) with ESMTP id
 20200605073219epoutp0448fe5c713265df333b4d5c7dc500b9f6~VlW0xUy8X2611126111epoutp04B
 for <linux-arm-kernel@lists.infradead.org>;
 Fri,  5 Jun 2020 07:32:19 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com
 20200605073219epoutp0448fe5c713265df333b4d5c7dc500b9f6~VlW0xUy8X2611126111epoutp04B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1591342339;
 bh=0XoeIKGVkNXoLpEeZIc3BTZ840LlWIG3F50xHsYdDsc=;
 h=From:To:Cc:Subject:Date:References:From;
 b=iRXQMjFkjfcF9mcSowCNEUUpTj3p067GjptQiRtTPbVEimLJjsEZbzoYiduJq2BZZ
 V8wxvLf3vGQ2eA4LAkpFgTMddwPydKdnwHvNF4vEQuICtaMwWptSReEUiWxUV9BY4b
 lujCybSGW5MAdxhdhVamxpcFLQ2w6O5R9XEMSqWc=
Received: from epsnrtp1.localdomain (unknown [182.195.42.162]) by
 epcas2p3.samsung.com (KnoxPortal) with ESMTP id
 20200605073217epcas2p38f19da5060a0c14b7d3f43d1b70795a7~VlWzNpUEr2888228882epcas2p3X;
 Fri,  5 Jun 2020 07:32:17 +0000 (GMT)
Received: from epsmges2p2.samsung.com (unknown [182.195.40.184]) by
 epsnrtp1.localdomain (Postfix) with ESMTP id 49dZ9C29JhzMqYlv; Fri,  5 Jun
 2020 07:32:15 +0000 (GMT)
Received: from epcas2p1.samsung.com ( [182.195.41.53]) by
 epsmges2p2.samsung.com (Symantec Messaging Gateway) with SMTP id
 22.E5.18874.FF4F9DE5; Fri,  5 Jun 2020 16:32:15 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas2p1.samsung.com (KnoxPortal) with ESMTPA id
 20200605073214epcas2p1576f3f90dbcefaad6180f2559ca5980d~VlWvnWTwF0885808858epcas2p1h;
 Fri,  5 Jun 2020 07:32:14 +0000 (GMT)
Received: from epsmgms1p2.samsung.com (unknown [182.195.42.42]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200605073213epsmtrp2716dd238cbadc8586f1f49b7303af06d~VlWvlyjFf0726507265epsmtrp2g;
 Fri,  5 Jun 2020 07:32:13 +0000 (GMT)
X-AuditID: b6c32a46-519ff700000049ba-5a-5ed9f4ffb23a
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p2.samsung.com (Symantec Messaging Gateway) with SMTP id
 39.1E.08303.DF4F9DE5; Fri,  5 Jun 2020 16:32:13 +0900 (KST)
Received: from rack216.dsn.sec.samsung.com (unknown [12.36.155.216]) by
 epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200605073213epsmtip2e30780d45026586a6f4310b3810bb762~VlWvOQO4F3130031300epsmtip2r;
 Fri,  5 Jun 2020 07:32:13 +0000 (GMT)
From: Wooyeon Kim <wooy88.kim@samsung.com>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Subject: [PATCH] arm64: fpsimd: Added API to manage fpsimd state inside kernel
Date: Fri,  5 Jun 2020 16:30:52 +0900
Message-Id: <20200605073052.23044-1-wooy88.kim@samsung.com>
X-Mailer: git-send-email 2.27.0.rc0
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA01TaVBbVRT2vpe8hFKcR6D1TrqAoTjCGJqkBG9baOuIGKUgNTqdwRF8Q14D
 EkJMQGv9QZSKUFYRrGwFy75U2rAIWKACHRaBylaHpSxTEMvakipdBEx4ZeTf951zvvPdc+4c
 Ls77icPnhqgjaK2aUgmIHazaViepcOPhcICoLdMSFfZn46i0Y52FflzoYqPlogSAvsq5DtBi
 zEUcXav8F0PR+ZUEyn80gqOM6NtsNFhPoYmmYgzNFk4RqHI5l0BtV4YwFJPni7pu6DHUHR+G
 EvOGCDTRHsNGhrsmzUBDNoEK/+jDUH12Jxt118+z0dS9URylLtRiqLirjoUyRkcBqjKk46hx
 /TELnR+TotzRcgzd6L9DoKfXV9koqyOfjYyX4/ETjrKKSxVAlqXvY8kqkydYMkNZHCFb6u3l
 yJpzKjiyqoIo2YOFaY5suWmIkCVVlwGZ0bDfz9Jf5R5MUwpaa0+rg8IVIWqlh8BbHvh6oNRN
 JBaKD6NXBfZqKoz2EHie9BN6hahMWxPYf0qpIk0hP0qnExw85q4Nj4yg7YPDdREeAlqjUGnE
 Yo2LjgrTRaqVLkHhYUfEIpFEaqr8SBXc9OVZzV101rg6henBsssFYMGFpCs0zjaAC2AHl0fW
 ATg50EwwZAXAxPhHbIYYAWxObWdvSZIn154lGgAsGFvhMOQxgE/0MxxzFUE6w8zMNdyMbcmT
 sGZtdNMEJ9Ms4MCDDcKcsCH94FD75c0iFukI438tAGZsRR6FLVNPcMbOASbcyyCYuDXszJhm
 mTFO2sHomizc3BSS/RZw8JfzpjdxTcQTLq6fYrQ2cK69msNgPjQuNRIM/gLm5SdyGG0sgD/E
 tWJM4hCszunCzH1w0glWNhxkWjrAtpFnts/D2NY1DhO2grExPEZ4AK4afiO2nCbn+nGmRAbn
 21XmMI/8EH5dOgdSgF3mtlkyt82S+b9tHsDLwG5aowtT0jqJRrL9Tw1g83CcvepA2uJ9lxaA
 cUELgFxcYGs16zMcwLNSUJ+fo7XhgdpIFa1rAVLTdr/F+buCwk2Xp44IFEslbm6iw1IkdZMg
 wQtWUS/+HsAjlVQEHUrTGlq7pcO4Fnw9pu8us3RxdVB28iW+I31vpqAA3c7b2bnOyYa9G+eM
 988oqrnHHN/Z+Cz90nRyWo1PkRt1J08+Jo8Lfa667X2f2qjG9JdjzrxV5DWZUDWuWbp6y195
 a23YW7wy5y6QjyuTaqNKXhI0VdzkJhYN/Hw10NXOigpO+rPnk45/BlrnrTf4D/2FQkXK6WvG
 5W98v3uv+eg++chcek552Z6Lo9Kq3sCeN1ItZ52v5B9fUXxv7T2+9kpo0gnRPvJdQni6f8/H
 /OXdp2aKw5pKSyTavqz95X+HyhOOW3xAvS0qRatCoGv8a+TIjM2BRY3TrJ3t3psSKNf2pJZ4
 2tWj13Y6SXdlPT002CZg6YIpsTOu1VH/AQp/PkXBBAAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrLIsWRmVeSWpSXmKPExsWy7bCSvO7fLzfjDGY0GFksvTSH2WLliX8s
 FgvfnGK1eL+sh9Giae4eRou3bdOZLTau/8Nk0bx4PZvF4h+3mC1mNl9jtbiyM9Hi/r7lTBbP
 lz5ks1j/fj6bxZG1V5ks2hb4WZw60MBkcaY716J3wVU2i/vH21gtNj0G6rm8aw6bxdLrF5ks
 ds45yWpxZudrVouHL28zW0x6s43JYvmpHSwWM2/fZrTYvGkqs8Xefz9ZLFrumFrMv72ayeLA
 pbtsFr/3fGe1mH1iMavF50XdzA6qHmvmrWH0mN1wkcVjff99Fo9NqzrZPN6dO8fusX/uGnaP
 zUvqPT6+ecLu8X7fVTaPvi2rGD0+b5IL4I7isklJzcksSy3St0vgytjXWFHw2KLi8/eHTA2M
 7/W6GDk5JARMJPof/GXtYuTiEBLYwSjx6N9SRoiElMShhoXsELawxP2WI1BF3xklZm//AlbE
 JqAlMWvWX+YuRg4OEQE/iWfP6kBqmAV2cUq8O7SCCaRGGCi+tWcRG4jNIqAq0X1wCVgvr4C1
 xKGHv5ghFihL9LycyQYRF5Q4OfMJC4jNLCAv0bx1NvMERr5ZSFKzkKQWMDKtYpRMLSjOTc8t
 Niwwykst1ytOzC0uzUvXS87P3cQITgFaWjsY96z6oHeIkYmD8RCjBAezkgjvc9+bcUK8KYmV
 ValF+fFFpTmpxYcYpTlYlMR5v85aGCckkJ5YkpqdmlqQWgSTZeLglGpgCpgY80U4ddt8qb+a
 6Y3GdfXVKlzC3ApHN843mWISnq0gJnPwo/5PW+dbpi2xbO1qe36EFVzexWUYdUhuvbjBiuLb
 et+7FpUe7Q9J2901ryPqDYfxzebEkMbdf9mf/j5490Vl9Uu2OQ++L5aZZrpaW3S/aJTMzapX
 B7OD7uTHGptJiHHvY/8YobawKfb0bJGcNe8P1Tpflr+8sP3wtYv9R1qVVZ6qb3H5unaPdcDh
 lptNW6btrS5Z9CfXd9K3lZ0TW8yuT12R8yJ8bfRJz37zdpFPr6I3z355VdTpdfSvrasZZqus
 TvoW15E6sd8sLcf9k+XR6Tab35jO/G+h5OO3Y+u95kWZh8PP/KiZIqUqqMRSnJFoqMVcVJwI
 AOel60NwAwAA
X-CMS-MailID: 20200605073214epcas2p1576f3f90dbcefaad6180f2559ca5980d
X-Msg-Generator: CA
X-Sendblock-Type: AUTO_CONFIDENTIAL
CMS-TYPE: 102P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20200605073214epcas2p1576f3f90dbcefaad6180f2559ca5980d
References: <CGME20200605073214epcas2p1576f3f90dbcefaad6180f2559ca5980d@epcas2p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_003224_094799_6CA7EF75 
X-CRM114-Status: GOOD (  22.38  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.34 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.254.224.34 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Mark Rutland <mark.rutland@arm.com>, hk92.kim@samsung.com,
 Wooki Min <wooki.min@samsung.com>, Bhupesh Sharma <bhsharma@redhat.com>,
 yb.song@samsung.com, yj.yim@samsung.com, Julien Grall <julien.grall@arm.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Sanghoon Lee <shoon114.lee@samsung.com>, jinsoo37.kim@samsung.com,
 hyewon.ryu@samsung.com, yhwan.joo@samsung.com,
 Anisse Astier <aastier@freebox.fr>, Marc Zyngier <maz@kernel.org>,
 dongww.kim@samsung.com, linux-arm-kernel@lists.infradead.org,
 jihun.kim@samsung.com, Dave Martin <Dave.Martin@arm.com>,
 Kees Cook <keescook@chromium.org>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Sudeep Holla <sudeep.holla@arm.com>,
 Kristina Martsenko <kristina.martsenko@arm.com>, junik.lee@samsung.com,
 sgun.bae@samsung.com, Jeongtae Park <jtp.park@samsung.com>,
 kgene.kim@samsung.com, Wooyeon Kim <wooy88.kim@samsung.com>,
 Thomas Gleixner <tglx@linutronix.de>, Allison Randal <allison@lohutok.net>,
 Steve Capper <steve.capper@arm.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 James Morse <james.morse@arm.com>, hyeyeon5.shim@samsung.com,
 dh.han@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Wooki Min <wooki.min@samsung.com>

     This is an patch to use FPSIMD register in Kernel space.
     It need to manage to use FPSIMD register without damaging it
     of the user task.
     Following items have been implemented and added.

     1. Using FPSIMD in ISR (in_interrupt)
	It can used __efi_fpsimd_begin/__efi_fpsimd_end
	which is already implemented.
	Save fpsimd state before entering ISR,
	and restore fpsimd state after ISR ends.
	For use in external kernel module,
	it is declared as EXPORT_SYMBOL.

     2. User task -> Function in kernel
        Add fpsimd_get/fpsimd_put API to save/restore
	FPSIMD in use by the user.
	In this case, depth variable is used to set fpsimd usage
	depth between User and Kernel space.
	 * fpsimd_get: Save the FPSIMD of the user task.
	 * fpsimd_put: Restore the FPSIMD of the user task.

	 EX> fpsimd_get();
	     API in kernel space();
	     fpsimd_put();

     3. Add kernel task FPSIMD save/restore in "fpsimd_thread_switch"
        It checks the depth value in current task structure and
	does save/restore action for FP/SIMD register used by kernel
	context.

Signed-off-by: Wooki Min <wooki.min@samsung.com>
Signed-off-by: Jeongtae Park <jtp.park@samsung.com>
Signed-off-by: Sanghoon Lee <shoon114.lee@samsung.com>
Signed-off-by: Wooyeon Kim <wooy88.kim@samsung.com>
---
 arch/arm64/include/asm/fpsimd.h      |  6 +++
 arch/arm64/include/asm/processor.h   | 13 +++++
 arch/arm64/include/uapi/asm/ptrace.h |  8 ++++
 arch/arm64/kernel/fpsimd.c           | 71 +++++++++++++++++++++++++---
 4 files changed, 92 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/include/asm/fpsimd.h b/arch/arm64/include/asm/fpsimd.h
index 59f10dd13f12..462c434fc57c 100644
--- a/arch/arm64/include/asm/fpsimd.h
+++ b/arch/arm64/include/asm/fpsimd.h
@@ -167,6 +167,12 @@ static inline void sve_setup(void) { }
 extern void __efi_fpsimd_begin(void);
 extern void __efi_fpsimd_end(void);
 
+void fpsimd_set_task_using(struct task_struct *t);
+void fpsimd_clr_task_using(struct task_struct *t);
+
+void fpsimd_get(void);
+void fpsimd_put(void);
+
 #endif
 
 #endif
diff --git a/arch/arm64/include/asm/processor.h b/arch/arm64/include/asm/processor.h
index 240fe5e5b720..265669456bcb 100644
--- a/arch/arm64/include/asm/processor.h
+++ b/arch/arm64/include/asm/processor.h
@@ -139,6 +139,19 @@ struct thread_struct {
 		unsigned long	tp2_value;
 		struct user_fpsimd_state fpsimd_state;
 	} uw;
+	struct fpsimd_kernel_state fpsimd_kernel_state;
+
+	/*
+	 * indicate the depth of using FP/SIMD registers in kernel mode.
+	 * above kernel state should be preserved at first time
+	 * before FP/SIMD registers be used by other tasks
+	 * and the state should be restored before they be used by own.
+	 *
+	 * a kernel thread which uses FP/SIMD registers have to
+	 * set this depth and it could utilize for a tasks executes
+	 * some NEON instructions without preemption disable.
+	 */
+	atomic_t fpsimd_kernel_depth;
 
 	unsigned int		fpsimd_cpu;
 	void			*sve_state;	/* SVE registers, if any */
diff --git a/arch/arm64/include/uapi/asm/ptrace.h b/arch/arm64/include/uapi/asm/ptrace.h
index 42cbe34d95ce..0327e719721e 100644
--- a/arch/arm64/include/uapi/asm/ptrace.h
+++ b/arch/arm64/include/uapi/asm/ptrace.h
@@ -105,6 +105,14 @@ struct user_hwdebug_state {
 	}		dbg_regs[16];
 };
 
+/* Kernel structure for floating point */
+struct fpsimd_kernel_state {
+	__uint128_t	vregs[32];
+	__u32		fpsr;
+	__u32		fpcr;
+	unsigned int	cpu;
+};
+
 /* SVE/FP/SIMD state (NT_ARM_SVE) */
 
 struct user_sve_header {
diff --git a/arch/arm64/kernel/fpsimd.c b/arch/arm64/kernel/fpsimd.c
index 35cb5e66c504..07597423fcfc 100644
--- a/arch/arm64/kernel/fpsimd.c
+++ b/arch/arm64/kernel/fpsimd.c
@@ -269,9 +269,6 @@ static void sve_free(struct task_struct *task)
  */
 static void task_fpsimd_load(void)
 {
-	WARN_ON(!system_supports_fpsimd());
-	WARN_ON(!have_cpu_fpsimd_context());
-
 	if (system_supports_sve() && test_thread_flag(TIF_SVE))
 		sve_load_state(sve_pffr(&current->thread),
 			       &current->thread.uw.fpsimd_state.fpsr,
@@ -290,9 +287,6 @@ static void fpsimd_save(void)
 		this_cpu_ptr(&fpsimd_last_state);
 	/* set by fpsimd_bind_task_to_cpu() or fpsimd_bind_state_to_cpu() */
 
-	WARN_ON(!system_supports_fpsimd());
-	WARN_ON(!have_cpu_fpsimd_context());
-
 	if (!test_thread_flag(TIF_FOREIGN_FPSTATE)) {
 		if (system_supports_sve() && test_thread_flag(TIF_SVE)) {
 			if (WARN_ON(sve_get_vl() != last->sve_vl)) {
@@ -982,6 +976,10 @@ void do_fpsimd_exc(unsigned int esr, struct pt_regs *regs)
 void fpsimd_thread_switch(struct task_struct *next)
 {
 	bool wrong_task, wrong_cpu;
+	struct fpsimd_kernel_state *cur_kst
+			= &current->thread.fpsimd_kernel_state;
+	struct fpsimd_kernel_state *nxt_kst
+			= &next->thread.fpsimd_kernel_state;
 
 	if (!system_supports_fpsimd())
 		return;
@@ -991,6 +989,16 @@ void fpsimd_thread_switch(struct task_struct *next)
 	/* Save unsaved fpsimd state, if any: */
 	fpsimd_save();
 
+	if (atomic_read(&current->thread.fpsimd_kernel_depth))
+		fpsimd_save_state((struct user_fpsimd_state *)cur_kst);
+
+	if (atomic_read(&next->thread.fpsimd_kernel_depth)) {
+		fpsimd_load_state((struct user_fpsimd_state *)nxt_kst);
+		this_cpu_write(fpsimd_last_state.st,
+				(struct user_fpsimd_state *)nxt_kst);
+		nxt_kst->cpu = smp_processor_id();
+	}
+
 	/*
 	 * Fix up TIF_FOREIGN_FPSTATE to correctly describe next's
 	 * state.  For kernel threads, FPSIMD registers are never loaded
@@ -1233,6 +1241,55 @@ void fpsimd_save_and_flush_cpu_state(void)
 	__put_cpu_fpsimd_context();
 }
 
+void fpsimd_set_task_using(struct task_struct *t)
+{
+	atomic_set(&t->thread.fpsimd_kernel_depth, 1);
+}
+EXPORT_SYMBOL(fpsimd_set_task_using);
+
+void fpsimd_clr_task_using(struct task_struct *t)
+{
+	atomic_set(&t->thread.fpsimd_kernel_depth, 0);
+}
+EXPORT_SYMBOL(fpsimd_clr_task_using);
+
+void fpsimd_get(void)
+{
+	if (in_interrupt())
+		return;
+
+	if (atomic_inc_return(&current->thread.fpsimd_kernel_depth) == 1) {
+		preempt_disable();
+		if (current->mm) {
+			fpsimd_save();
+			fpsimd_flush_task_state(current);
+		}
+		fpsimd_flush_cpu_state();
+		preempt_enable();
+	}
+}
+EXPORT_SYMBOL(fpsimd_get);
+
+void fpsimd_put(void)
+{
+	if (in_interrupt())
+		return;
+
+	WARN_ON(atomic_dec_return(
+		&current->thread.fpsimd_kernel_depth) < 0);
+
+	if (atomic_read(&current->thread.fpsimd_kernel_depth) == 0) {
+		preempt_disable();
+		if (current->mm && test_thread_flag(TIF_FOREIGN_FPSTATE)) {
+			task_fpsimd_load();
+			fpsimd_bind_task_to_cpu();
+			clear_thread_flag(TIF_FOREIGN_FPSTATE);
+		}
+		preempt_enable();
+	}
+}
+EXPORT_SYMBOL(fpsimd_put);
+
 #ifdef CONFIG_KERNEL_MODE_NEON
 
 /*
@@ -1338,6 +1395,7 @@ void __efi_fpsimd_begin(void)
 		__this_cpu_write(efi_fpsimd_state_used, true);
 	}
 }
+EXPORT_SYMBOL(__efi_fpsimd_begin);
 
 /*
  * __efi_fpsimd_end(): clean up FPSIMD after an EFI runtime services call
@@ -1364,6 +1422,7 @@ void __efi_fpsimd_end(void)
 		}
 	}
 }
+EXPORT_SYMBOL(__efi_fpsimd_end);
 
 #endif /* CONFIG_EFI */
 
-- 
2.27.0.rc0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
