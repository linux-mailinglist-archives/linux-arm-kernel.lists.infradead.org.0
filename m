Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DD6E1B6101
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 18:33:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:
	In-Reply-To:Date:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ohZKuMidh+jZGsCJEBdnP2mB+317dAWh147cYwCWA6Q=; b=NZi8ILzURuej5M
	rxELmPeB2Yz29533n4m0tDCXKn/ZMOk2kXR2ICautvQ6yiWQ8j/B6h8AqGX67JOFrO2L1RVmgsYpa
	SNRP0sUenH0yj+oslt8xehwjfrMaxEMn4TOBezHseFVQMj32a43ugKd+pKt+VXcmyxEU7CCwWr/wb
	D+Xn2hHKLS2ujkCy7ZhHcLn/FAguVnIUXDvoOQstUqjhtEeKcmrOPp2dWdYSzFu076EdHpK4k+QkX
	FQy6I/RPdFPe20DuIP7RonSxGUf6iypbm91JZ+ue4P6Y33sMOq7wKoIWLSl6b0E5EjITttEv9X/ze
	jY9XlewSb6ePYywpKjhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRema-00053o-99; Thu, 23 Apr 2020 16:33:00 +0000
Received: from out01.mta.xmission.com ([166.70.13.231])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRemS-0004xc-Ev; Thu, 23 Apr 2020 16:32:53 +0000
Received: from in02.mta.xmission.com ([166.70.13.52])
 by out01.mta.xmission.com with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.90_1)
 (envelope-from <ebiederm@xmission.com>)
 id 1jRem6-0006IM-Tk; Thu, 23 Apr 2020 10:32:30 -0600
Received: from ip68-227-160-95.om.om.cox.net ([68.227.160.95]
 helo=x220.xmission.com) by in02.mta.xmission.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.87)
 (envelope-from <ebiederm@xmission.com>)
 id 1jRem6-00024E-1n; Thu, 23 Apr 2020 10:32:30 -0600
From: ebiederm@xmission.com (Eric W. Biederman)
To: David Hildenbrand <david@redhat.com>
References: <20200326180730.4754-1-james.morse@arm.com>
 <20200326180730.4754-2-james.morse@arm.com>
 <87d088h4k8.fsf@x220.int.ebiederm.org>
 <a694cea6-4449-c77a-98f7-bd7a49cf47fc@arm.com>
 <87y2qn1r18.fsf@x220.int.ebiederm.org>
 <a29beedb-750b-b838-6c2a-6e47ade2186a@redhat.com>
Date: Thu, 23 Apr 2020 11:29:21 -0500
In-Reply-To: <a29beedb-750b-b838-6c2a-6e47ade2186a@redhat.com> (David
 Hildenbrand's message of "Wed, 22 Apr 2020 18:40:22 +0200")
Message-ID: <87ftcuxj1a.fsf@x220.int.ebiederm.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
X-XM-SPF: eid=1jRem6-00024E-1n; ; ; mid=<87ftcuxj1a.fsf@x220.int.ebiederm.org>;
 ; ; hst=in02.mta.xmission.com; ; ; ip=68.227.160.95; ; ;
 frm=ebiederm@xmission.com; ; ; spf=neutral
X-XM-AID: U2FsdGVkX18RRR3Gu40n+RTgF2QTKTSdLGaMeQHjuvg=
X-SA-Exim-Connect-IP: 68.227.160.95
X-SA-Exim-Mail-From: ebiederm@xmission.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on sa03.xmission.com
X-Spam-Level: ***
X-Spam-Status: No, score=3.0 required=8.0 tests=ALL_TRUSTED,BAYES_50,
 DCC_CHECK_NEGATIVE,T_TM2_M_HEADER_IN_MSG,T_XMDrugObfuBody_08,
 XMNoVowels,XMSubLong autolearn=disabled version=3.4.2
X-Spam-Virus: No
X-Spam-Report: * -1.0 ALL_TRUSTED Passed through trusted hosts only via SMTP
 *  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
 *      [score: 0.4990] *  0.7 XMSubLong Long Subject
 *  1.5 XMNoVowels Alpha-numberic number with no vowels
 *  0.0 T_TM2_M_HEADER_IN_MSG BODY: No description available.
 * -0.0 DCC_CHECK_NEGATIVE Not listed in DCC
 *      [sa03 1397; Body=1 Fuz1=1 Fuz2=1]
 *  1.0 T_XMDrugObfuBody_08 obfuscated drug references
X-Spam-DCC: XMission; sa03 1397; Body=1 Fuz1=1 Fuz2=1 
X-Spam-Combo: ***;David Hildenbrand <david@redhat.com>
X-Spam-Relay-Country: 
X-Spam-Timing: total 357 ms - load_scoreonly_sql: 0.03 (0.0%),
 signal_user_changed: 4.3 (1.2%), b_tie_ro: 3.1 (0.9%), parse: 0.69
 (0.2%), extract_message_metadata: 2.8 (0.8%), get_uri_detail_list:
 1.37 (0.4%), tests_pri_-1000: 3.0 (0.8%), tests_pri_-950: 0.99 (0.3%),
 tests_pri_-900: 0.81 (0.2%), tests_pri_-90: 58 (16.2%), check_bayes:
 57 (15.8%), b_tokenize: 6 (1.7%), b_tok_get_all: 8 (2.2%),
 b_comp_prob: 2.1 (0.6%), b_tok_touch_all: 37 (10.5%), b_finish: 0.67
 (0.2%), tests_pri_0: 272 (76.0%), check_dkim_signature: 0.62 (0.2%),
 check_dkim_adsp: 2.2 (0.6%), poll_dns_idle: 0.74 (0.2%), tests_pri_10:
 2.7 (0.7%), tests_pri_500: 7 (1.9%), rewrite_mail: 0.00 (0.0%)
Subject: Re: [PATCH 1/3] kexec: Prevent removal of memory in use by a loaded
 kexec image
X-Spam-Flag: No
X-SA-Exim-Version: 4.2.1 (built Thu, 05 May 2016 13:38:54 -0600)
X-SA-Exim-Scanned: Yes (on in02.mta.xmission.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_093252_499110_C8B56978 
X-CRM114-Status: GOOD (  17.97  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [166.70.13.231 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 linux-mm@kvack.org, James Morse <james.morse@arm.com>,
 Andrew Morton <akpm@linux-foundation.org>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

David Hildenbrand <david@redhat.com> writes:

>> The confusing part was talking about memory being still in use,
>> that is actually scheduled for use in the future.
>
> +1
>
>> 
>>>> Usually somewhere in the loaded image
>>>> is a copy of the memory map at the time the kexec kernel was loaded.
>>>> That will invalidate the memory map as well.
>>>
>>> Ah, unconditionally. Sure, x86 needs this.
>>> (arm64 re-discovers the memory map from firmware tables after kexec)
>
> Does this include hotplugged DIMMs e.g., under KVM?
> [...]

As far as I know.  If the memory map changes we need to drop the loaded
image.


Having thought about it a little more I suspect it would be the
other way and just block all hotplug actions after a kexec_load.
As all we expect to happen is running shutdown scripts.

If blocking the hotplug action uses printk to print a nice message
saying something like: "Hotplug blocked because of a loaded kexec image",
then people will be able to figure out what is going on and
call kexec -u if they haven't started the shutdown scripts yet.


Either way it is something simple and unconditional that will make
things work.

>>>> All of this should be for a very brief window of a few seconds, as
>>>> the loaded kexec image is quite short.
>>>
>>> It seems I'm the outlier anticipating anything could happen between
>>> those syscalls.
>> 
>> The design is:
>> 	sys_kexec_load()
>> 	shutdown scripts
>>         sys_reboot(LINUX_REBOOT_CMD_KEXEC);
>> 
>> There are two system call simply so that the shutdown scripts can run.
>> Now maybe someone somewhere does something different but that is not
>> expected.
>> 
>> Only the kexec on panic kernel is expected to persist somewhat
>> indefinitely.  But that should be in memory that is reserved from boot
>> time, and so the memory hotplug should have enough visibility to not
>> allow that memory to be given up.
>
> Yes, and AFAIK, memory blocks which hold the reserved crashkernel area
> can usually not get offlined and, therefore, the memory cannot get removed.
>
> Interestingly, s390x even has a hotplug notifier for that
>
> arch/s390/kernel/setup.c:kdump_mem_notifier()
>
> (offlining of memory on s390x can result in memory getting depopulated
> in the hypervisor, so after it would have been offlined, it would no
> longer be accessible. I somewhat doubt that this notifier is really
> needed - all pages in the crashkernel area should look like ordinary
> allocated pages when the area is reserved early during boot via the
> memblock allocator, and therefore offlining cannot succeed. But that's a
> different story - and I suspect this is a leftover from pre-memblock times.)

It might be worth seeing if that is true, or if we need to generalize the
s390x code.

Eric


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
