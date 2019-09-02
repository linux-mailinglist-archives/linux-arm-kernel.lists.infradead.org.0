Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E196A5BD7
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 19:37:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:
	In-Reply-To:Date:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qau8/LywwPnH2y2ayuP2NFk0MT2ErKhTgg++rubhx2c=; b=i97K7m7BX8BTtd
	Z7uCrT33YE+o9ZqGDQMuM45JjM/cAbtC1lTj4Z3/uMyNa+Fo1S8DjpyIWattgZJYRIoLZ+8zqPc9T
	QZKwB/X7NhdNij2wHok2RMR0AIs4fsje7veAZVsdmZlkjJ8diJ+BfyTzB49QiIk2hKt6+9Wr4XbAk
	vgY/7V4niob6q3R9jq3P5vaoymEbFIT3SjZ+mh/PT2dfNcjJn86sgVYaYuKr+QCvTyj92E63Zzj25
	liNN/k/Y+Vp7YYyxhNTvu8Ps0tY6l0LT9twWSuPNqAOp0AOEl4mnCattVVtPwRMJsd5SZ4DFhaO9D
	d7j6ng5ZyNXga97upvtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4qGp-0003zJ-5n; Mon, 02 Sep 2019 17:37:39 +0000
Received: from out03.mta.xmission.com ([166.70.13.233])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4qGh-0003xs-Oo
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Sep 2019 17:37:33 +0000
Received: from in02.mta.xmission.com ([166.70.13.52])
 by out03.mta.xmission.com with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.87)
 (envelope-from <ebiederm@xmission.com>)
 id 1i4qGO-0002zA-3H; Mon, 02 Sep 2019 11:37:12 -0600
Received: from ip68-227-160-95.om.om.cox.net ([68.227.160.95]
 helo=x220.xmission.com) by in02.mta.xmission.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.87)
 (envelope-from <ebiederm@xmission.com>)
 id 1i4qGM-0001qg-UC; Mon, 02 Sep 2019 11:37:11 -0600
From: ebiederm@xmission.com (Eric W. Biederman)
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
References: <1567171877-101949-1-git-send-email-jingxiangfeng@huawei.com>
 <20190830133522.GZ13294@shell.armlinux.org.uk>
 <87d0gmwi73.fsf@x220.int.ebiederm.org>
 <20190830203052.GG13294@shell.armlinux.org.uk>
 <87y2zav01z.fsf@x220.int.ebiederm.org>
 <20190830222906.GH13294@shell.armlinux.org.uk>
Date: Mon, 02 Sep 2019 12:36:56 -0500
In-Reply-To: <20190830222906.GH13294@shell.armlinux.org.uk> (Russell King's
 message of "Fri, 30 Aug 2019 23:29:06 +0100")
Message-ID: <87mufmioqv.fsf@x220.int.ebiederm.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
X-XM-SPF: eid=1i4qGM-0001qg-UC; ; ; mid=<87mufmioqv.fsf@x220.int.ebiederm.org>;
 ; ; hst=in02.mta.xmission.com; ; ; ip=68.227.160.95; ; ;
 frm=ebiederm@xmission.com; ; ; spf=neutral
X-XM-AID: U2FsdGVkX19m9YGitx9H8/ZuABLUqkLN/nGTTjlMCgw=
X-SA-Exim-Connect-IP: 68.227.160.95
X-SA-Exim-Mail-From: ebiederm@xmission.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on sa08.xmission.com
X-Spam-Level: 
X-Spam-Status: No, score=0.4 required=8.0 tests=ALL_TRUSTED,BAYES_50,
 DCC_CHECK_NEGATIVE,FVGT_m_MULTI_ODD,T_TM2_M_HEADER_IN_MSG,
 T_XMDrugObfuBody_14 autolearn=disabled version=3.4.2
X-Spam-Report: * -1.0 ALL_TRUSTED Passed through trusted hosts only via SMTP
 *  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
 *      [score: 0.5000]
 *  0.0 T_TM2_M_HEADER_IN_MSG BODY: No description available.
 * -0.0 DCC_CHECK_NEGATIVE Not listed in DCC
 *      [sa08 1397; Body=1 Fuz1=1 Fuz2=1]
 *  0.4 FVGT_m_MULTI_ODD Contains multiple odd letter combinations
 *  0.2 T_XMDrugObfuBody_14 obfuscated drug references
X-Spam-DCC: XMission; sa08 1397; Body=1 Fuz1=1 Fuz2=1 
X-Spam-Combo: ;Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-Spam-Relay-Country: 
X-Spam-Timing: total 695 ms - load_scoreonly_sql: 0.06 (0.0%),
 signal_user_changed: 7 (1.0%), b_tie_ro: 6 (0.8%), parse: 1.14 (0.2%),
 extract_message_metadata: 17 (2.4%), get_uri_detail_list: 3.4 (0.5%),
 tests_pri_-1000: 9 (1.4%), tests_pri_-950: 1.49 (0.2%),
 tests_pri_-900: 1.31 (0.2%), tests_pri_-90: 38 (5.4%), check_bayes: 35
 (5.1%), b_tokenize: 11 (1.6%), b_tok_get_all: 12 (1.7%), b_comp_prob:
 4.2 (0.6%), b_tok_touch_all: 4.5 (0.6%), b_finish: 0.96 (0.1%),
 tests_pri_0: 602 (86.6%), check_dkim_signature: 0.63 (0.1%),
 check_dkim_adsp: 3.4 (0.5%), poll_dns_idle: 0.79 (0.1%), tests_pri_10:
 4.0 (0.6%), tests_pri_500: 10 (1.4%), rewrite_mail: 0.00 (0.0%)
Subject: Re: [PATCH] arm: fix page faults in do_alignment
X-Spam-Flag: No
X-SA-Exim-Version: 4.2.1 (built Thu, 05 May 2016 13:38:54 -0600)
X-SA-Exim-Scanned: Yes (on in02.mta.xmission.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_103731_837134_F42E64DA 
X-CRM114-Status: GOOD (  25.77  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [166.70.13.233 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

Russell King - ARM Linux admin <linux@armlinux.org.uk> writes:

> On Fri, Aug 30, 2019 at 04:02:48PM -0500, Eric W. Biederman wrote:
>> Russell King - ARM Linux admin <linux@armlinux.org.uk> writes:
>> 
>> > On Fri, Aug 30, 2019 at 02:45:36PM -0500, Eric W. Biederman wrote:
>> >> Russell King - ARM Linux admin <linux@armlinux.org.uk> writes:
>> >> 
>> >> > On Fri, Aug 30, 2019 at 09:31:17PM +0800, Jing Xiangfeng wrote:
>> >> >> The function do_alignment can handle misaligned address for user and
>> >> >> kernel space. If it is a userspace access, do_alignment may fail on
>> >> >> a low-memory situation, because page faults are disabled in
>> >> >> probe_kernel_address.
>> >> >> 
>> >> >> Fix this by using __copy_from_user stead of probe_kernel_address.
>> >> >> 
>> >> >> Fixes: b255188 ("ARM: fix scheduling while atomic warning in alignment handling code")
>> >> >> Signed-off-by: Jing Xiangfeng <jingxiangfeng@huawei.com>
>> >> >
>> >> > NAK.
>> >> >
>> >> > The "scheduling while atomic warning in alignment handling code" is
>> >> > caused by fixing up the page fault while trying to handle the
>> >> > mis-alignment fault generated from an instruction in atomic context.
>> >> >
>> >> > Your patch re-introduces that bug.
>> >> 
>> >> And the patch that fixed scheduling while atomic apparently introduced a
>> >> regression.  Admittedly a regression that took 6 years to track down but
>> >> still.
>> >
>> > Right, and given the number of years, we are trading one regression for
>> > a different regression.  If we revert to the original code where we
>> > fix up, we will end up with people complaining about a "new" regression
>> > caused by reverting the previous fix.  Follow this policy and we just
>> > end up constantly reverting the previous revert.
>> >
>> > The window is very small - the page in question will have had to have
>> > instructions read from it immediately prior to the handler being entered,
>> > and would have had to be made "old" before subsequently being unmapped.
>> 
>> > Rather than excessively complicating the code and making it even more
>> > inefficient (as in your patch), we could instead retry executing the
>> > instruction when we discover that the page is unavailable, which should
>> > cause the page to be paged back in.
>> 
>> My patch does not introduce any inefficiencies.  It onlys moves the
>> check for user_mode up a bit.  My patch did duplicate the code.
>> 
>> > If the page really is unavailable, the prefetch abort should cause a
>> > SEGV to be raised, otherwise the re-execution should replace the page.
>> >
>> > The danger to that approach is we page it back in, and it gets paged
>> > back out before we're able to read the instruction indefinitely.
>> 
>> I would think either a little code duplication or a function that looks
>> at user_mode(regs) and picks the appropriate kind of copy to do would be
>> the best way to go.  Because what needs to happen in the two cases for
>> reading the instruction are almost completely different.
>
> That is what I mean.  I'd prefer to avoid that with the large chunk of
> code.  How about instead adding a local replacement for
> probe_kernel_address() that just sorts out the reading, rather than
> duplicating all the code to deal with thumb fixup.

So something like this should be fine?

Jing Xiangfeng can you test this please?  I think this fixes your issue
but I don't currently have an arm development box where I could test this.

diff --git a/arch/arm/mm/alignment.c b/arch/arm/mm/alignment.c
index 04b36436cbc0..b07d17ca0ae5 100644
--- a/arch/arm/mm/alignment.c
+++ b/arch/arm/mm/alignment.c
@@ -767,6 +767,23 @@ do_alignment_t32_to_handler(unsigned long *pinstr, struct pt_regs *regs,
 	return NULL;
 }
 
+static inline unsigned long
+copy_instr(bool umode, void *dst, unsigned long instrptr, size_t size)
+{
+	unsigned long result;
+	if (umode) {
+		void __user *src = (void *)instrptr;
+		result = copy_from_user(dst, src, size);
+	} else {
+		void *src = (void *)instrptr;
+		result = probe_kernel_read(dst, src, size);
+	}
+	/* Convert short reads into -EFAULT */
+	if ((result >= 0) && (result < size))
+		result = -EFAULT;
+	return result;
+}
+
 static int
 do_alignment(unsigned long addr, unsigned int fsr, struct pt_regs *regs)
 {
@@ -778,22 +795,24 @@ do_alignment(unsigned long addr, unsigned int fsr, struct pt_regs *regs)
 	u16 tinstr = 0;
 	int isize = 4;
 	int thumb2_32b = 0;
+	bool umode;
 
 	if (interrupts_enabled(regs))
 		local_irq_enable();
 
 	instrptr = instruction_pointer(regs);
+	umode = user_mode(regs);
 
 	if (thumb_mode(regs)) {
-		u16 *ptr = (u16 *)(instrptr & ~1);
-		fault = probe_kernel_address(ptr, tinstr);
+		unsigned long tinstrptr = instrptr & ~1;
+		fault = copy_instr(umode, &tinstr, tinstrptr, 2);
 		tinstr = __mem_to_opcode_thumb16(tinstr);
 		if (!fault) {
 			if (cpu_architecture() >= CPU_ARCH_ARMv7 &&
 			    IS_T32(tinstr)) {
 				/* Thumb-2 32-bit */
 				u16 tinst2 = 0;
-				fault = probe_kernel_address(ptr + 1, tinst2);
+				fault = copy_instr(umode, &tinst2, tinstrptr + 2, 2);
 				tinst2 = __mem_to_opcode_thumb16(tinst2);
 				instr = __opcode_thumb32_compose(tinstr, tinst2);
 				thumb2_32b = 1;
@@ -803,7 +822,7 @@ do_alignment(unsigned long addr, unsigned int fsr, struct pt_regs *regs)
 			}
 		}
 	} else {
-		fault = probe_kernel_address((void *)instrptr, instr);
+		fault = copy_instr(umode, &instr, instrptr, 4);
 		instr = __mem_to_opcode_arm(instr);
 	}
 
@@ -812,7 +831,7 @@ do_alignment(unsigned long addr, unsigned int fsr, struct pt_regs *regs)
 		goto bad_or_fault;
 	}
 
-	if (user_mode(regs))
+	if (umode)
 		goto user;
 
 	ai_sys += 1;

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
