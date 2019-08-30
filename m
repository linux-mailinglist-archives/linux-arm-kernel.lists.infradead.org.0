Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23D58A3F4D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 23:03:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:
	In-Reply-To:Date:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PvoxtF7KBvXe/7HJVeLibXLZMoeihSPgezZsLn+omCQ=; b=okG7xpmyhi4n0Y
	8x1fI5htGoS9N4WC6YdI8focTjpoHEKIX0a3QsZTFzjwgLSwahkRlqv3zMl1MB4fCLCoJDiLLhIe+
	tuDSGKrnYPQM/xck6KOMTdpzi7xfGI0VFeWWCXcJ2PCv15rkpfBqP1XmSo+xJcBpztKTH9nxpD6sf
	pkBCscfC0QD/WwW0E7Lc3I5S/yNyRR/inIohRbEuTPGVpFo+mPluLPKzF++P8fbLoTgispv1/FdeD
	nV+/G0upL7NtO1Oh+RQyOlhHBAu03R/3Iqc0eucdfUeHZFSLudNjF7TDZUX/u5lmNNRTBCuKf1ydH
	R7e7nfVqinNYjIobiYqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3o36-0002VT-Cj; Fri, 30 Aug 2019 21:03:12 +0000
Received: from out02.mta.xmission.com ([166.70.13.232])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3o2x-0002V8-6U
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 21:03:04 +0000
Received: from in02.mta.xmission.com ([166.70.13.52])
 by out02.mta.xmission.com with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.87)
 (envelope-from <ebiederm@xmission.com>)
 id 1i3o2v-0000Ro-4X; Fri, 30 Aug 2019 15:03:01 -0600
Received: from ip68-227-160-95.om.om.cox.net ([68.227.160.95]
 helo=x220.xmission.com) by in02.mta.xmission.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.87)
 (envelope-from <ebiederm@xmission.com>)
 id 1i3o2t-0005hU-RB; Fri, 30 Aug 2019 15:03:00 -0600
From: ebiederm@xmission.com (Eric W. Biederman)
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
References: <1567171877-101949-1-git-send-email-jingxiangfeng@huawei.com>
 <20190830133522.GZ13294@shell.armlinux.org.uk>
 <87d0gmwi73.fsf@x220.int.ebiederm.org>
 <20190830203052.GG13294@shell.armlinux.org.uk>
Date: Fri, 30 Aug 2019 16:02:48 -0500
In-Reply-To: <20190830203052.GG13294@shell.armlinux.org.uk> (Russell King's
 message of "Fri, 30 Aug 2019 21:30:52 +0100")
Message-ID: <87y2zav01z.fsf@x220.int.ebiederm.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
X-XM-SPF: eid=1i3o2t-0005hU-RB; ; ; mid=<87y2zav01z.fsf@x220.int.ebiederm.org>;
 ; ; hst=in02.mta.xmission.com; ; ; ip=68.227.160.95; ; ;
 frm=ebiederm@xmission.com; ; ; spf=neutral
X-XM-AID: U2FsdGVkX1+heHAgu8YHz0osGVnQTuDyPwc40LRgIbA=
X-SA-Exim-Connect-IP: 68.227.160.95
X-SA-Exim-Mail-From: ebiederm@xmission.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on sa03.xmission.com
X-Spam-Level: 
X-Spam-Status: No, score=0.4 required=8.0 tests=ALL_TRUSTED,BAYES_50,
 DCC_CHECK_NEGATIVE,FVGT_m_MULTI_ODD,T_TM2_M_HEADER_IN_MSG,
 T_XMDrugObfuBody_14 autolearn=disabled version=3.4.2
X-Spam-Report: * -1.0 ALL_TRUSTED Passed through trusted hosts only via SMTP
 *  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
 *      [score: 0.4981]
 *  0.0 T_TM2_M_HEADER_IN_MSG BODY: No description available.
 * -0.0 DCC_CHECK_NEGATIVE Not listed in DCC
 *      [sa03 1397; Body=1 Fuz1=1 Fuz2=1]
 *  0.4 FVGT_m_MULTI_ODD Contains multiple odd letter combinations
 *  0.2 T_XMDrugObfuBody_14 obfuscated drug references
X-Spam-DCC: XMission; sa03 1397; Body=1 Fuz1=1 Fuz2=1 
X-Spam-Combo: ;Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-Spam-Relay-Country: 
X-Spam-Timing: total 792 ms - load_scoreonly_sql: 0.04 (0.0%),
 signal_user_changed: 3.1 (0.4%), b_tie_ro: 2.2 (0.3%), parse: 1.05
 (0.1%), extract_message_metadata: 16 (2.0%), get_uri_detail_list: 2.9
 (0.4%), tests_pri_-1000: 10 (1.3%), tests_pri_-950: 1.07 (0.1%),
 tests_pri_-900: 0.84 (0.1%), tests_pri_-90: 24 (3.0%), check_bayes: 22
 (2.8%), b_tokenize: 6 (0.8%), b_tok_get_all: 8 (1.0%), b_comp_prob:
 2.3 (0.3%), b_tok_touch_all: 3.4 (0.4%), b_finish: 0.65 (0.1%),
 tests_pri_0: 308 (38.9%), check_dkim_signature: 0.38 (0.0%),
 check_dkim_adsp: 3.2 (0.4%), poll_dns_idle: 410 (51.8%), tests_pri_10:
 1.80 (0.2%), tests_pri_500: 423 (53.5%), rewrite_mail: 0.00 (0.0%)
Subject: Re: [PATCH] arm: fix page faults in do_alignment
X-Spam-Flag: No
X-SA-Exim-Version: 4.2.1 (built Thu, 05 May 2016 13:38:54 -0600)
X-SA-Exim-Scanned: Yes (on in02.mta.xmission.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_140303_269440_0804142E 
X-CRM114-Status: GOOD (  20.46  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [166.70.13.232 listed in list.dnswl.org]
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

> On Fri, Aug 30, 2019 at 02:45:36PM -0500, Eric W. Biederman wrote:
>> Russell King - ARM Linux admin <linux@armlinux.org.uk> writes:
>> 
>> > On Fri, Aug 30, 2019 at 09:31:17PM +0800, Jing Xiangfeng wrote:
>> >> The function do_alignment can handle misaligned address for user and
>> >> kernel space. If it is a userspace access, do_alignment may fail on
>> >> a low-memory situation, because page faults are disabled in
>> >> probe_kernel_address.
>> >> 
>> >> Fix this by using __copy_from_user stead of probe_kernel_address.
>> >> 
>> >> Fixes: b255188 ("ARM: fix scheduling while atomic warning in alignment handling code")
>> >> Signed-off-by: Jing Xiangfeng <jingxiangfeng@huawei.com>
>> >
>> > NAK.
>> >
>> > The "scheduling while atomic warning in alignment handling code" is
>> > caused by fixing up the page fault while trying to handle the
>> > mis-alignment fault generated from an instruction in atomic context.
>> >
>> > Your patch re-introduces that bug.
>> 
>> And the patch that fixed scheduling while atomic apparently introduced a
>> regression.  Admittedly a regression that took 6 years to track down but
>> still.
>
> Right, and given the number of years, we are trading one regression for
> a different regression.  If we revert to the original code where we
> fix up, we will end up with people complaining about a "new" regression
> caused by reverting the previous fix.  Follow this policy and we just
> end up constantly reverting the previous revert.
>
> The window is very small - the page in question will have had to have
> instructions read from it immediately prior to the handler being entered,
> and would have had to be made "old" before subsequently being unmapped.

> Rather than excessively complicating the code and making it even more
> inefficient (as in your patch), we could instead retry executing the
> instruction when we discover that the page is unavailable, which should
> cause the page to be paged back in.

My patch does not introduce any inefficiencies.  It onlys moves the
check for user_mode up a bit.  My patch did duplicate the code.

> If the page really is unavailable, the prefetch abort should cause a
> SEGV to be raised, otherwise the re-execution should replace the page.
>
> The danger to that approach is we page it back in, and it gets paged
> back out before we're able to read the instruction indefinitely.

I would think either a little code duplication or a function that looks
at user_mode(regs) and picks the appropriate kind of copy to do would be
the best way to go.  Because what needs to happen in the two cases for
reading the instruction are almost completely different.

> However, as it's impossible for me to contact the submitter, anything
> I do will be poking about in the dark and without any way to validate
> that it does fix the problem, so I think apart from reviewing of any
> patches, there's not much I can do.

I didn't realize your emails to him were bouncing.  That is odd.  Mine
don't appear to be.

Eric

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
