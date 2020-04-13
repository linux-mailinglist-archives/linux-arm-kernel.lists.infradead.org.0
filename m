Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 158B81A66D1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Apr 2020 15:18:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:
	In-Reply-To:Date:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eV7FwTBqEkL+UmFnPx4nxoBgRRQcKVbzc5Rpuy9zX6E=; b=A/SOPXXhZq+DPn
	inQFgQoSvp1gvjF7hTwJszpjjvcJiZE4GNugf6KhEm2hc4KPiwHHgAofB6LmjwOUlfva6Zst+i4x1
	K53hla4V6q6YEuhSMIR7iH1dznSx/5BLdrLa7cy4kdEEs0l8sjYOLblsgdsn5XmRUsJMqZlBrBVEy
	ZB+nLYM5EzdyHxTGbc79C5GmHZI7sCAl3Je0K0wrvi4heE0yIyOJhwTGdDn3zFNH6qWxWI4lkZ6pd
	3z0mcKdu96CT02DYCxpyI8wAegYP/HieCeZxgaKqrwieY14EbwAbEWA9sKnDKxA9ZlyIlg5X9JBNB
	FCejQFesp6BKd4svx8dQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNyzA-0003A6-9Q; Mon, 13 Apr 2020 13:18:48 +0000
Received: from out03.mta.xmission.com ([166.70.13.233])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNyz1-000393-DK; Mon, 13 Apr 2020 13:18:40 +0000
Received: from in01.mta.xmission.com ([166.70.13.51])
 by out03.mta.xmission.com with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.90_1)
 (envelope-from <ebiederm@xmission.com>)
 id 1jNyyi-0008LQ-H8; Mon, 13 Apr 2020 07:18:20 -0600
Received: from ip68-227-160-95.om.om.cox.net ([68.227.160.95]
 helo=x220.xmission.com) by in01.mta.xmission.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.87)
 (envelope-from <ebiederm@xmission.com>)
 id 1jNyyh-0001pU-MR; Mon, 13 Apr 2020 07:18:20 -0600
From: ebiederm@xmission.com (Eric W. Biederman)
To: Baoquan He <bhe@redhat.com>
References: <34274b02-60ba-eb78-eacd-6dc1146ed3cd@arm.com>
 <80e4d1d7-f493-3f66-f700-86f18002d692@redhat.com>
 <dfacf85f-d79d-8742-7a13-1ac0a67bad04@arm.com>
 <ba481c82-c69e-043c-4b66-2d2c7732cf07@redhat.com>
 <20200410121013.03b609fd572504c03a666f4a@linux-foundation.org>
 <20200411034414.GH2129@MiWiFi-R3L-srv>
 <20200411093009.GH25745@shell.armlinux.org.uk>
 <20200412053507.GA4247@MiWiFi-R3L-srv>
 <20200412080836.GM25745@shell.armlinux.org.uk>
 <87wo6klbw0.fsf@x220.int.ebiederm.org>
 <20200413023701.GA20265@MiWiFi-R3L-srv>
Date: Mon, 13 Apr 2020 08:15:23 -0500
In-Reply-To: <20200413023701.GA20265@MiWiFi-R3L-srv> (Baoquan He's message of
 "Mon, 13 Apr 2020 10:37:01 +0800")
Message-ID: <871rorjzmc.fsf@x220.int.ebiederm.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
X-XM-SPF: eid=1jNyyh-0001pU-MR; ; ; mid=<871rorjzmc.fsf@x220.int.ebiederm.org>;
 ; ; hst=in01.mta.xmission.com; ; ; ip=68.227.160.95; ; ;
 frm=ebiederm@xmission.com; ; ; spf=neutral
X-XM-AID: U2FsdGVkX18IcLGNZ68qGfyWErcGAcIFiPpRDZSTrwA=
X-SA-Exim-Connect-IP: 68.227.160.95
X-SA-Exim-Mail-From: ebiederm@xmission.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on sa08.xmission.com
X-Spam-Level: **
X-Spam-Status: No, score=2.0 required=8.0 tests=ALL_TRUSTED,BAYES_50,
 DCC_CHECK_NEGATIVE,T_TM2_M_HEADER_IN_MSG,XMNoVowels,XMSubLong
 autolearn=disabled version=3.4.2
X-Spam-Report: * -1.0 ALL_TRUSTED Passed through trusted hosts only via SMTP
 *  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
 *      [score: 0.4777] *  0.7 XMSubLong Long Subject
 *  1.5 XMNoVowels Alpha-numberic number with no vowels
 *  0.0 T_TM2_M_HEADER_IN_MSG BODY: No description available.
 * -0.0 DCC_CHECK_NEGATIVE Not listed in DCC
 *      [sa08 1397; Body=1 Fuz1=1 Fuz2=1]
X-Spam-DCC: XMission; sa08 1397; Body=1 Fuz1=1 Fuz2=1 
X-Spam-Combo: **;Baoquan He <bhe@redhat.com>
X-Spam-Relay-Country: 
X-Spam-Timing: total 456 ms - load_scoreonly_sql: 0.05 (0.0%),
 signal_user_changed: 14 (3.1%), b_tie_ro: 12 (2.7%), parse: 1.26
 (0.3%), extract_message_metadata: 6 (1.3%), get_uri_detail_list: 3.6
 (0.8%), tests_pri_-1000: 4.1 (0.9%), tests_pri_-950: 1.64 (0.4%),
 tests_pri_-900: 1.14 (0.2%), tests_pri_-90: 99 (21.8%), check_bayes:
 97 (21.4%), b_tokenize: 10 (2.1%), b_tok_get_all: 12 (2.6%),
 b_comp_prob: 4.7 (1.0%), b_tok_touch_all: 65 (14.3%), b_finish: 1.48
 (0.3%), tests_pri_0: 310 (68.2%), check_dkim_signature: 0.50 (0.1%),
 check_dkim_adsp: 3.1 (0.7%), poll_dns_idle: 1.51 (0.3%), tests_pri_10:
 2.5 (0.6%), tests_pri_500: 6 (1.4%), rewrite_mail: 0.00 (0.0%)
Subject: Re: [PATCH 1/3] kexec: Prevent removal of memory in use by a loaded
 kexec image
X-Spam-Flag: No
X-SA-Exim-Version: 4.2.1 (built Thu, 05 May 2016 13:38:54 -0600)
X-SA-Exim-Scanned: Yes (on in01.mta.xmission.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_061839_482817_C4F4ACBF 
X-CRM114-Status: GOOD (  28.64  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: David Hildenbrand <david@redhat.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Bhupesh Sharma <bhsharma@redhat.com>,
 Anshuman Khandual <anshuman.khandual@arm.com>, kexec@lists.infradead.org,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>, linux-mm@kvack.org,
 James Morse <james.morse@arm.com>, Andrew Morton <akpm@linux-foundation.org>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Baoquan He <bhe@redhat.com> writes:

> On 04/12/20 at 02:52pm, Eric W. Biederman wrote:
>> 
>> The only benefit of kexec_file_load is that it is simple enough from a
>> kernel perspective that signatures can be checked.
>
> We don't have this restriction any more with below commit:
>
> commit 99d5cadfde2b ("kexec_file: split KEXEC_VERIFY_SIG into KEXEC_SIG
> and KEXEC_SIG_FORCE")
>
> With KEXEC_SIG_FORCE not set, we can use kexec_load_file to cover both
> secure boot or legacy system for kexec/kdump. Being simple enough is
> enough to astract and convince us to use it instead. And kexec_file_load
> has been in use for several years on systems with secure boot, since
> added in 2014, on x86_64.

No.  Actaully kexec_file_load is the less capable interface, and less
flexible interface.  Which is why it is appropriate for signature
verification.

>> kexec_load in every other respect is the more capable and functional
>> interface.  It makes no sense to get rid of it.
>> 
>> It does make sense to reload with a loaded kernel on memory hotplug.
>> That is simple and easy.  If we are going to handle something in the
>> kernel it should simple an automated unloading of the kernel on memory
>> hotplug.
>> 
>> 
>> I think it would be irresponsible to deprecate kexec_load on any
>> platform.
>> 
>> I also suspect that kexec_file_load could be taught to copy the dtb
>> on arm32 if someone wants to deal with signatures.
>> 
>> We definitely can not even think of deprecating kexec_load until
>> architecture that supports it also supports kexec_file_load and everyone
>> is happy with that interface.  That is Linus's no regression rule.
>
> I should pick a milder word to express our tendency and tell our plan
> then 'obsolete'. Even though I added 'gradually', seems it doesn't help
> much. I didn't mean to say 'deprecate' at all when replied.
>
> The situation and trend I understand about kexec_load and kexec_file_load
> are:
>
> 1) Supporting kexec_file_load is suggested to add in ARCHes which don't
> have yet, just as x86_64, arm64 and s390 have done;
>  
> 2) kexec_file_load is suggested to use, and take precedence over
> kexec_load in the future, if both are supported in one ARCH.

The deep problem is that kexec_file_load is distinctly less expressive
than kexec_load.

> 3) Kexec_load is kept being used by ARCHes w/o kexc_file_load support,
> and by ARCHes for back compatibility w/ kexec_file_load support.
>
> For 1) and 2), I think the reason is obvious as Eric said,
> kexec_file_load is simple enough. And currently, whenever we got a bug
> report, we may need fix them twice, for kexec_load and kexec_file_load.
> If kexec_file_load is made by default, e.g on x86_64, we will change it
> in kernel space only, for kexec_file_load. This is what I meant about
> 'obsolete gradually'. I think for arm64, s390, they will do these too.
> Unless there's some critical/blocker bug in kexec_load, to corrupt the
> old kexec_load interface in old product.

Maybe.  The code that kexec_file_load sucked into the kernel is quite
stable and rarely needs changes except during a port of kexec to
another architecture.

Last I looked the real maintenance effor of kexec and kexec on panic was
in the drivers.  So I don't think we can use maintenance to do anything.

> For 3), people can still use kexec_load and develop/fix for it, if no
> kexec_file_load supported. But 32-bit arm should be a different one,
> more like i386, we will leave it as is, and fix anything which could
> break it. But people really expects to improve or add feature to it? E.g
> in this patchset, the mem hotplug issue James raised, I assume James is
> focusing on arm64, x86_64, but not 32-bit arm. As DavidH commented in
> another reply, people even don't agree to continue supporting memory
> hotplug on 32-bit system. We ever took effort to fix a memory hotplug
> bug on i386 with a patch, but people would rather set it as BROKEN.

For memory hotplug just reload.  Userspace already gets good events.

We should not expect anything except a panic kernel to be loaded over a
memory hotplug event. The kexec on panic code should actually be loaded
in a location that we don't reliquish if asked for it.

Quite frankly at this point I would love to see the signature fad die,
which would allow us to remove kexec_file_load.  I still have not seen
the signature code used anywhere except by people anticipating trouble.

Given that Microsoft has already directly signed a malicous bootloader.
(Not in the Linux ecosystem).  I don't even know if any of the reasons
for having kexec_file_load are legtimate.


If someone wants to do the work and ensure everything that is possible
to load with kexec_load is possible to load with kexec_file_load.
Kernels supporting the multi-boot protocol etc.  Then we can consider
deprecating kexec_load.


I think it took me about 15 years to remove the sysctl system call and
it only ever had about 10 users.  If you want to go through that kind of
work to make certain there are no more users and that everything they
could do with the old interface is doable with the new interface then
please be my guest.  Until then we need to fully support kexec_load.

Eric









_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
