Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0133ABC1E
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 17:19:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GlF3pw7Ra60KHbyJ+nTEYmYyYeveWZx+nRWPsoMqYfw=; b=FW3iB65DsdcPsp
	ThhoWUAV+cr4ZYp4SlbGzQ1WQfgLmbpcyVuHS3Hl5MCv35H+eHQSP0QI5g9OcagVgHEUCoOR8W1DW
	YjUdzg/cQhxGGsGNFxycpKRvIJWAPTORv+jrO32F/UUYH/OVBVqmEL3vWhW5iHFYtD0QSa3Ti6BFG
	EJGGP+/z1DGCJgqnYLS2KRCUxczk5zTa5mj/DljT/NfiZVgJlLMn7SGpsyazav8B1sP2RGRxj+Fkm
	AxzXmNQE3oMOIV2FAH9mhb4nN+UM59bMwE39GUn8FsS5y9l2mTofU+CE72LJflVk+8balmgdw0nNv
	VnKwD3I1CP/il0xbpScA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6G1R-0004Ir-Bs; Fri, 06 Sep 2019 15:19:37 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6G0Q-0003Pd-Kp
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Sep 2019 15:18:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8bq46GmTKpsx8LOoXN7JFbaF/QCbZS6UaHK1xG4ulGU=; b=NW9pkg/ivCAestyk6uSCK0H/m
 sxoxvZ2uQIYHmbnGRazzc6qgfv1AWygDVfyBVWD7GDs0YomZ9UGYQULZK80oieqKBUucUEM5s0cKQ
 Bi3MyJ7qIemO0f9WFEqQ8AOJLa7mITeugvnWJnSLN6cVyPt7et7pEQD4BAFiM2YTX0vZHy9myMDZz
 vRxfd1Mo6JQek9xoEcSr33meD1Q7ivzqZwEWNItQgWc8u4Z6jwhZu0lb4aYb/gYtl0KUNyMfGwFv1
 9xFkzdc9IDpklxp8pLzylTm8gbMecdjRsuDRMO/kO6qBhj4AIm4gG9JO27eCWy0Jq3Gr1F2zphqG1
 KtwItiAbA==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:40404)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1i6Fzy-0000vt-Uh; Fri, 06 Sep 2019 16:18:07 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1i6Fzr-0006Yo-Be; Fri, 06 Sep 2019 16:17:59 +0100
Date: Fri, 6 Sep 2019 16:17:59 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: "Eric W. Biederman" <ebiederm@xmission.com>
Subject: Re: [PATCH] arm: fix page faults in do_alignment
Message-ID: <20190906151759.GM13294@shell.armlinux.org.uk>
References: <1567171877-101949-1-git-send-email-jingxiangfeng@huawei.com>
 <20190830133522.GZ13294@shell.armlinux.org.uk>
 <87d0gmwi73.fsf@x220.int.ebiederm.org>
 <20190830203052.GG13294@shell.armlinux.org.uk>
 <87y2zav01z.fsf@x220.int.ebiederm.org>
 <20190830222906.GH13294@shell.armlinux.org.uk>
 <87mufmioqv.fsf@x220.int.ebiederm.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87mufmioqv.fsf@x220.int.ebiederm.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_081835_101529_538721C0 
X-CRM114-Status: GOOD (  32.50  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: kstewart@linuxfoundation.org, gustavo@embeddedor.com,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 Jing Xiangfeng <jingxiangfeng@huawei.com>, linux-mm@kvack.org,
 sakari.ailus@linux.intel.com, bhelgaas@google.com, tglx@linutronix.de,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Sep 02, 2019 at 12:36:56PM -0500, Eric W. Biederman wrote:
> Russell King - ARM Linux admin <linux@armlinux.org.uk> writes:
> 
> > On Fri, Aug 30, 2019 at 04:02:48PM -0500, Eric W. Biederman wrote:
> >> Russell King - ARM Linux admin <linux@armlinux.org.uk> writes:
> >> 
> >> > On Fri, Aug 30, 2019 at 02:45:36PM -0500, Eric W. Biederman wrote:
> >> >> Russell King - ARM Linux admin <linux@armlinux.org.uk> writes:
> >> >> 
> >> >> > On Fri, Aug 30, 2019 at 09:31:17PM +0800, Jing Xiangfeng wrote:
> >> >> >> The function do_alignment can handle misaligned address for user and
> >> >> >> kernel space. If it is a userspace access, do_alignment may fail on
> >> >> >> a low-memory situation, because page faults are disabled in
> >> >> >> probe_kernel_address.
> >> >> >> 
> >> >> >> Fix this by using __copy_from_user stead of probe_kernel_address.
> >> >> >> 
> >> >> >> Fixes: b255188 ("ARM: fix scheduling while atomic warning in alignment handling code")
> >> >> >> Signed-off-by: Jing Xiangfeng <jingxiangfeng@huawei.com>
> >> >> >
> >> >> > NAK.
> >> >> >
> >> >> > The "scheduling while atomic warning in alignment handling code" is
> >> >> > caused by fixing up the page fault while trying to handle the
> >> >> > mis-alignment fault generated from an instruction in atomic context.
> >> >> >
> >> >> > Your patch re-introduces that bug.
> >> >> 
> >> >> And the patch that fixed scheduling while atomic apparently introduced a
> >> >> regression.  Admittedly a regression that took 6 years to track down but
> >> >> still.
> >> >
> >> > Right, and given the number of years, we are trading one regression for
> >> > a different regression.  If we revert to the original code where we
> >> > fix up, we will end up with people complaining about a "new" regression
> >> > caused by reverting the previous fix.  Follow this policy and we just
> >> > end up constantly reverting the previous revert.
> >> >
> >> > The window is very small - the page in question will have had to have
> >> > instructions read from it immediately prior to the handler being entered,
> >> > and would have had to be made "old" before subsequently being unmapped.
> >> 
> >> > Rather than excessively complicating the code and making it even more
> >> > inefficient (as in your patch), we could instead retry executing the
> >> > instruction when we discover that the page is unavailable, which should
> >> > cause the page to be paged back in.
> >> 
> >> My patch does not introduce any inefficiencies.  It onlys moves the
> >> check for user_mode up a bit.  My patch did duplicate the code.
> >> 
> >> > If the page really is unavailable, the prefetch abort should cause a
> >> > SEGV to be raised, otherwise the re-execution should replace the page.
> >> >
> >> > The danger to that approach is we page it back in, and it gets paged
> >> > back out before we're able to read the instruction indefinitely.
> >> 
> >> I would think either a little code duplication or a function that looks
> >> at user_mode(regs) and picks the appropriate kind of copy to do would be
> >> the best way to go.  Because what needs to happen in the two cases for
> >> reading the instruction are almost completely different.
> >
> > That is what I mean.  I'd prefer to avoid that with the large chunk of
> > code.  How about instead adding a local replacement for
> > probe_kernel_address() that just sorts out the reading, rather than
> > duplicating all the code to deal with thumb fixup.
> 
> So something like this should be fine?
> 
> Jing Xiangfeng can you test this please?  I think this fixes your issue
> but I don't currently have an arm development box where I could test this.

Sorry, only just got around to this again.  What I came up with is this:

8<===
From: Russell King <rmk+kernel@armlinux.org.uk>
Subject: [PATCH] ARM: mm: fix alignment

Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
---
 arch/arm/mm/alignment.c | 44 ++++++++++++++++++++++++++++++++++++--------
 1 file changed, 36 insertions(+), 8 deletions(-)

diff --git a/arch/arm/mm/alignment.c b/arch/arm/mm/alignment.c
index 6067fa4de22b..529f54d94709 100644
--- a/arch/arm/mm/alignment.c
+++ b/arch/arm/mm/alignment.c
@@ -765,6 +765,36 @@ do_alignment_t32_to_handler(unsigned long *pinstr, struct pt_regs *regs,
 	return NULL;
 }
 
+static int alignment_get_arm(struct pt_regs *regs, u32 *ip, unsigned long *inst)
+{
+	u32 instr = 0;
+	int fault;
+
+	if (user_mode(regs))
+		fault = get_user(instr, ip);
+	else
+		fault = probe_kernel_address(ip, instr);
+
+	*inst = __mem_to_opcode_arm(instr);
+
+	return fault;
+}
+
+static int alignment_get_thumb(struct pt_regs *regs, u16 *ip, u16 *inst)
+{
+	u16 instr = 0;
+	int fault;
+
+	if (user_mode(regs))
+		fault = get_user(instr, ip);
+	else
+		fault = probe_kernel_address(ip, instr);
+
+	*inst = __mem_to_opcode_thumb16(instr);
+
+	return fault;
+}
+
 static int
 do_alignment(unsigned long addr, unsigned int fsr, struct pt_regs *regs)
 {
@@ -772,10 +802,10 @@ do_alignment(unsigned long addr, unsigned int fsr, struct pt_regs *regs)
 	unsigned long instr = 0, instrptr;
 	int (*handler)(unsigned long addr, unsigned long instr, struct pt_regs *regs);
 	unsigned int type;
-	unsigned int fault;
 	u16 tinstr = 0;
 	int isize = 4;
 	int thumb2_32b = 0;
+	int fault;
 
 	if (interrupts_enabled(regs))
 		local_irq_enable();
@@ -784,15 +814,14 @@ do_alignment(unsigned long addr, unsigned int fsr, struct pt_regs *regs)
 
 	if (thumb_mode(regs)) {
 		u16 *ptr = (u16 *)(instrptr & ~1);
-		fault = probe_kernel_address(ptr, tinstr);
-		tinstr = __mem_to_opcode_thumb16(tinstr);
+
+		fault = alignment_get_thumb(regs, ptr, &tinstr);
 		if (!fault) {
 			if (cpu_architecture() >= CPU_ARCH_ARMv7 &&
 			    IS_T32(tinstr)) {
 				/* Thumb-2 32-bit */
-				u16 tinst2 = 0;
-				fault = probe_kernel_address(ptr + 1, tinst2);
-				tinst2 = __mem_to_opcode_thumb16(tinst2);
+				u16 tinst2;
+				fault = alignment_get_thumb(regs, ptr + 1, &tinst2);
 				instr = __opcode_thumb32_compose(tinstr, tinst2);
 				thumb2_32b = 1;
 			} else {
@@ -801,8 +830,7 @@ do_alignment(unsigned long addr, unsigned int fsr, struct pt_regs *regs)
 			}
 		}
 	} else {
-		fault = probe_kernel_address((void *)instrptr, instr);
-		instr = __mem_to_opcode_arm(instr);
+		fault = alignment_get_arm(regs, (void *)instrptr, &instr);
 	}
 
 	if (fault) {
-- 
2.7.4

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
