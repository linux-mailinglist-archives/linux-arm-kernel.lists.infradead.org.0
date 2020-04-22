Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 573BA1B489D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 17:29:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:
	In-Reply-To:Date:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HsXa497hQDef3dtgVyd7Vw1+tKCmOECzB8/bS0uW6cw=; b=nh3lYW8jO08gwZ
	PxQLhKCvk7gVQLP69mrj9e+t5OF/aBtjWPWPCPzIJmI3HXb0DfzGJqKzAWJa23wAI1nTo0f3D1Kmh
	UeCtHr+S95wL4dp/gQYmXXHwkRHYfVUkKw6Crv4RvdZBRw3gaU9p+lzFupQOaZNYRXhNJyo9JtJom
	cj7sW5A1rbiJgGp9y7gMHfCY+qko/zVI5sMqyPC6c4ZPjtgneKjQY9y204MCa0Ikj82PdDzepv3kR
	mIlC6noTOwndQ7IVKAMX/a+rcc+SM7B/eoe+oeTQvyIfJZngFsbwyup/cKLdF/sZBjLXPVQQxG4jh
	pXRMW3Aba9pBrUnysYTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRHJ8-0006f7-26; Wed, 22 Apr 2020 15:29:02 +0000
Received: from out01.mta.xmission.com ([166.70.13.231])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRHIz-0006a8-Gj; Wed, 22 Apr 2020 15:28:54 +0000
Received: from in01.mta.xmission.com ([166.70.13.51])
 by out01.mta.xmission.com with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.90_1)
 (envelope-from <ebiederm@xmission.com>)
 id 1jRHIe-0001td-JZ; Wed, 22 Apr 2020 09:28:32 -0600
Received: from ip68-227-160-95.om.om.cox.net ([68.227.160.95]
 helo=x220.xmission.com) by in01.mta.xmission.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.87)
 (envelope-from <ebiederm@xmission.com>)
 id 1jRHId-0005sE-Dz; Wed, 22 Apr 2020 09:28:32 -0600
From: ebiederm@xmission.com (Eric W. Biederman)
To: James Morse <james.morse@arm.com>
References: <20200326180730.4754-1-james.morse@arm.com>
 <20200326180730.4754-2-james.morse@arm.com>
 <87d088h4k8.fsf@x220.int.ebiederm.org>
 <a694cea6-4449-c77a-98f7-bd7a49cf47fc@arm.com>
Date: Wed, 22 Apr 2020 10:25:23 -0500
In-Reply-To: <a694cea6-4449-c77a-98f7-bd7a49cf47fc@arm.com> (James Morse's
 message of "Wed, 22 Apr 2020 13:28:59 +0100")
Message-ID: <87y2qn1r18.fsf@x220.int.ebiederm.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
X-XM-SPF: eid=1jRHId-0005sE-Dz; ; ; mid=<87y2qn1r18.fsf@x220.int.ebiederm.org>;
 ; ; hst=in01.mta.xmission.com; ; ; ip=68.227.160.95; ; ;
 frm=ebiederm@xmission.com; ; ; spf=neutral
X-XM-AID: U2FsdGVkX18ewIIhIiMLyy3YMgb2p8tOh0hcNPkZn1c=
X-SA-Exim-Connect-IP: 68.227.160.95
X-SA-Exim-Mail-From: ebiederm@xmission.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on sa07.xmission.com
X-Spam-Level: ***
X-Spam-Status: No, score=3.5 required=8.0 tests=ALL_TRUSTED,BAYES_50,
 DCC_CHECK_NEGATIVE,T_TM2_M_HEADER_IN_MSG,T_XMDrugObfuBody_08,
 XMNoVowels,XMSubLong,XM_Body_Dirty_Words autolearn=disabled
 version=3.4.2
X-Spam-Report: * -1.0 ALL_TRUSTED Passed through trusted hosts only via SMTP
 *  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
 *      [score: 0.4090]
 *  1.5 XMNoVowels Alpha-numberic number with no vowels
 *  0.7 XMSubLong Long Subject
 *  0.0 T_TM2_M_HEADER_IN_MSG BODY: No description available.
 * -0.0 DCC_CHECK_NEGATIVE Not listed in DCC
 *      [sa07 1397; Body=1 Fuz1=1 Fuz2=1]
 *  0.5 XM_Body_Dirty_Words Contains a dirty word
 *  1.0 T_XMDrugObfuBody_08 obfuscated drug references
X-Spam-DCC: XMission; sa07 1397; Body=1 Fuz1=1 Fuz2=1 
X-Spam-Combo: ***;James Morse <james.morse@arm.com>
X-Spam-Relay-Country: 
X-Spam-Timing: total 648 ms - load_scoreonly_sql: 0.04 (0.0%),
 signal_user_changed: 11 (1.7%), b_tie_ro: 10 (1.5%), parse: 0.86
 (0.1%), extract_message_metadata: 12 (1.8%), get_uri_detail_list: 1.59
 (0.2%), tests_pri_-1000: 9 (1.4%), tests_pri_-950: 1.28 (0.2%),
 tests_pri_-900: 1.01 (0.2%), tests_pri_-90: 316 (48.7%), check_bayes:
 312 (48.1%), b_tokenize: 7 (1.1%), b_tok_get_all: 7 (1.1%),
 b_comp_prob: 2.4 (0.4%), b_tok_touch_all: 291 (44.9%), b_finish: 1.06
 (0.2%), tests_pri_0: 285 (43.9%), check_dkim_signature: 0.52 (0.1%),
 check_dkim_adsp: 2.3 (0.4%), poll_dns_idle: 0.29 (0.0%), tests_pri_10:
 2.1 (0.3%), tests_pri_500: 7 (1.1%), rewrite_mail: 0.00 (0.0%)
Subject: Re: [PATCH 1/3] kexec: Prevent removal of memory in use by a loaded
 kexec image
X-Spam-Flag: No
X-SA-Exim-Version: 4.2.1 (built Thu, 05 May 2016 13:38:54 -0600)
X-SA-Exim-Scanned: Yes (on in01.mta.xmission.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_082853_556905_E93C6C2E 
X-CRM114-Status: GOOD (  13.82  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [166.70.13.231 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [166.70.13.231 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Anshuman Khandual <anshuman.khandual@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Bhupesh Sharma <bhsharma@redhat.com>, kexec@lists.infradead.org,
 linux-mm@kvack.org, Andrew Morton <akpm@linux-foundation.org>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

James Morse <james.morse@arm.com> writes:

> Hi Eric,
>
> On 15/04/2020 21:33, Eric W. Biederman wrote:
>> James Morse <james.morse@arm.com> writes:
>> 
>>> An image loaded for kexec is not stored in place, instead its segments
>>> are scattered through memory, and are re-assembled when needed. In the
>>> meantime, the target memory may have been removed.
>>>
>>> Because mm is not aware that this memory is still in use, it allows it
>>> to be removed.
>>>
>>> Add a memory notifier to prevent the removal of memory regions that
>>> overlap with a loaded kexec image segment. e.g., when triggered from the
>>> Qemu console:
>>> | kexec_core: memory region in use
>>> | memory memory32: Offline failed.
>>>
>>> Signed-off-by: James Morse <james.morse@arm.com>
>> 
>> Given that we are talking about the destination pages for kexec
>> not where the loaded kernel is currently stored the description is
>> confusing.
>
> I think David has some better wording to cover this. I thought I had it with 'scattered
> and re-assembled'.

The confusing part was talking about memory being still in use,
that is actually scheduled for use in the future.

>> Usually somewhere in the loaded image
>> is a copy of the memory map at the time the kexec kernel was loaded.
>> That will invalidate the memory map as well.
>
> Ah, unconditionally. Sure, x86 needs this.
> (arm64 re-discovers the memory map from firmware tables after kexec)
>
> If that's an acceptable change in behaviour, sure, lets do that.

Yes.


>> All of this should be for a very brief window of a few seconds, as
>> the loaded kexec image is quite short.
>
> It seems I'm the outlier anticipating anything could happen between
> those syscalls.

The design is:
	sys_kexec_load()
	shutdown scripts
        sys_reboot(LINUX_REBOOT_CMD_KEXEC);

There are two system call simply so that the shutdown scripts can run.
Now maybe someone somewhere does something different but that is not
expected.

Only the kexec on panic kernel is expected to persist somewhat
indefinitely.  But that should be in memory that is reserved from boot
time, and so the memory hotplug should have enough visibility to not
allow that memory to be given up.

Eric

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
