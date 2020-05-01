Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67A971C1165
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 May 2020 13:17:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:
	In-Reply-To:Date:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=geErVAO9BjYYeIQjhdYqvo7LJZAzelUxDfSSXf93XF4=; b=c4+JMSO3tXOoZV
	ofnV16ePnpFOmZESkXjM2qxY2DSjczyGis4aBSbrEYBiFxKpQf2XEJPQyCRuCDXbc8CGrrDgT+8al
	LRaPBdbiP+7SGzi5jYoYm0WuQnurXbcSauwGUpk/8WcElLlaz7kY1yn2/gSYuOwq3RAuqApixwhvP
	PpYhH6UrwIPZ1bIzQOfKoWpmZVFSlGT53ERydLeyB8sskEo1PSu9OdR3TTYrMyZmcRtqgEBVaxIGz
	SyLfG0sE+KeOjjbEJShJXhsi2akPOisNXoUID2A8OmKrf4CMgzuy6+c0BnWn65yUBUZPjaoB+v7HL
	uH6nyuuw2Qg9yP6vcFdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUTf6-0008Qx-QM; Fri, 01 May 2020 11:16:56 +0000
Received: from out03.mta.xmission.com ([166.70.13.233])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUTez-0008Pg-Nu
 for linux-arm-kernel@lists.infradead.org; Fri, 01 May 2020 11:16:51 +0000
Received: from in02.mta.xmission.com ([166.70.13.52])
 by out03.mta.xmission.com with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.90_1)
 (envelope-from <ebiederm@xmission.com>)
 id 1jUTeu-0007G0-HZ; Fri, 01 May 2020 05:16:44 -0600
Received: from ip68-227-160-95.om.om.cox.net ([68.227.160.95]
 helo=x220.xmission.com) by in02.mta.xmission.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.87)
 (envelope-from <ebiederm@xmission.com>)
 id 1jUTet-0006Wp-Mr; Fri, 01 May 2020 05:16:44 -0600
From: ebiederm@xmission.com (Eric W. Biederman)
To: Greg Ungerer <gerg@linux-m68k.org>
References: <20200429214954.44866-1-jannh@google.com>
 <20200429215620.GM1551@shell.armlinux.org.uk>
 <CAHk-=wgpoEr33NJwQ+hqK1dz3Rs9jSw+BGotsSdt2Kb3HqLV7A@mail.gmail.com>
 <31196268-2ff4-7a1d-e9df-6116e92d2190@linux-m68k.org>
 <CAHk-=wjau_zmdLaFDLcY3xnqiFaC7VZDXnnzFG9QDHL4kqStYQ@mail.gmail.com>
 <87imhgyeqt.fsf@x220.int.ebiederm.org>
 <9dd76936-0009-31e4-d869-f64d01886642@linux-m68k.org>
Date: Fri, 01 May 2020 06:13:24 -0500
In-Reply-To: <9dd76936-0009-31e4-d869-f64d01886642@linux-m68k.org> (Greg
 Ungerer's message of "Fri, 1 May 2020 15:44:03 +1000")
Message-ID: <87wo5vx60b.fsf@x220.int.ebiederm.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
X-XM-SPF: eid=1jUTet-0006Wp-Mr; ; ; mid=<87wo5vx60b.fsf@x220.int.ebiederm.org>;
 ; ; hst=in02.mta.xmission.com; ; ; ip=68.227.160.95; ; ;
 frm=ebiederm@xmission.com; ; ; spf=neutral
X-XM-AID: U2FsdGVkX18Ja6ZhJX6gmVl5+uqwyRJT9MkgBLIzECc=
X-SA-Exim-Connect-IP: 68.227.160.95
X-SA-Exim-Mail-From: ebiederm@xmission.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on sa04.xmission.com
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=8.0 tests=ALL_TRUSTED,BAYES_50,
 DCC_CHECK_NEGATIVE,T_TM2_M_HEADER_IN_MSG,T_TooManySym_01,
 T_TooManySym_02,XMSubLong autolearn=disabled version=3.4.2
X-Spam-Report: * -1.0 ALL_TRUSTED Passed through trusted hosts only via SMTP
 *  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
 *      [score: 0.4972] *  0.7 XMSubLong Long Subject
 *  0.0 T_TM2_M_HEADER_IN_MSG BODY: No description available.
 * -0.0 DCC_CHECK_NEGATIVE Not listed in DCC
 *      [sa04 1397; Body=1 Fuz1=1 Fuz2=1]
 *  0.0 T_TooManySym_02 5+ unique symbols in subject
 *  0.0 T_TooManySym_01 4+ unique symbols in subject
X-Spam-DCC: XMission; sa04 1397; Body=1 Fuz1=1 Fuz2=1 
X-Spam-Combo: ;Greg Ungerer <gerg@linux-m68k.org>
X-Spam-Relay-Country: 
X-Spam-Timing: total 439 ms - load_scoreonly_sql: 0.06 (0.0%),
 signal_user_changed: 11 (2.6%), b_tie_ro: 10 (2.2%), parse: 1.55
 (0.4%), extract_message_metadata: 23 (5.3%), get_uri_detail_list: 2.5
 (0.6%), tests_pri_-1000: 22 (5.1%), tests_pri_-950: 1.67 (0.4%),
 tests_pri_-900: 1.32 (0.3%), tests_pri_-90: 68 (15.6%), check_bayes:
 67 (15.2%), b_tokenize: 11 (2.4%), b_tok_get_all: 8 (1.9%),
 b_comp_prob: 2.8 (0.6%), b_tok_touch_all: 41 (9.4%), b_finish: 0.93
 (0.2%), tests_pri_0: 291 (66.2%), check_dkim_signature: 0.83 (0.2%),
 check_dkim_adsp: 3.1 (0.7%), poll_dns_idle: 0.81 (0.2%), tests_pri_10:
 3.9 (0.9%), tests_pri_500: 10 (2.3%), rewrite_mail: 0.00 (0.0%)
Subject: Re: [PATCH v2 0/5] Fix ELF / FDPIC ELF core dumping,
 and use mmap_sem properly in there
X-Spam-Flag: No
X-SA-Exim-Version: 4.2.1 (built Thu, 05 May 2016 13:38:54 -0600)
X-SA-Exim-Scanned: Yes (on in02.mta.xmission.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_041649_779955_E1A48075 
X-CRM114-Status: GOOD (  12.14  )
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
Cc: Mark Salter <msalter@redhat.com>, Rich Felker <dalias@libc.org>,
 linux-c6x-dev@linux-c6x.org, Yoshinori Sato <ysato@users.sourceforge.jp>,
 Nicolas Pitre <nico@fluxnic.net>, Linux-sh list <linux-sh@vger.kernel.org>,
 Jann Horn <jannh@google.com>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux-MM <linux-mm@kvack.org>, Alexander Viro <viro@zeniv.linux.org.uk>,
 Oleg Nesterov <oleg@redhat.com>, linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Aurelien Jacquiot <jacquiot.aurelien@gmail.com>,
 Linus Torvalds <torvalds@linux-foundation.org>, Christoph Hellwig <hch@lst.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Greg Ungerer <gerg@linux-m68k.org> writes:

> On 1/5/20 5:07 am, Eric W. Biederman wrote:
>> Linus Torvalds <torvalds@linux-foundation.org> writes:
>>
>>> On Thu, Apr 30, 2020 at 7:10 AM Greg Ungerer <gerg@linux-m68k.org> wrote:
>>
>>>>> Most of that file goes back to pre-git days. And most of the commits
>>>>> since are not so much about binfmt_flat, as they are about cleanups or
>>>>> changes elsewhere where binfmt_flat was just a victim.
>>>>
>>>> I'll have a look at this.
>>>
>>> Thanks.
>>>
>>>> Quick hack test shows moving setup_new_exec(bprm) to be just before
>>>> install_exec_creds(bprm) works fine for the static binaries case.
>>>> Doing the flush_old_exec(bprm) there too crashed out - I'll need to
>>>> dig into that to see why.
>>>
>>> Just moving setup_new_exec() would at least allow us to then join the
>>> two together, and just say "setup_new_exec() does the credential
>>> installation too".
>>
>> But it is only half a help if we allow failure points between
>> flush_old_exec and install_exec_creds.
>>
>> Greg do things work acceptably if install_exec_creds is moved to right
>> after setup_new_exec? (patch below)
>
> Yes, confirmed. Worked fine with that patch applied.

Good.  Thank you.

That is what we need for other cleanups.  All three of those together.

>> This is what I was thinking about applying.
>>
>> diff --git a/fs/binfmt_flat.c b/fs/binfmt_flat.c
>> index 831a2b25ba79..1a1d1fcb893f 100644
>> --- a/fs/binfmt_flat.c
>> +++ b/fs/binfmt_flat.c
>> @@ -541,6 +541,7 @@ static int load_flat_file(struct linux_binprm *bprm,
>>   		/* OK, This is the point of no return */
>>   		set_personality(PER_LINUX_32BIT);
>>   		setup_new_exec(bprm);
>> +		install_exec_creds(bprm);
>>   	}
>>     	/*
>> @@ -963,8 +964,6 @@ static int load_flat_binary(struct linux_binprm *bprm)
>>   		}
>>   	}
>>   -	install_exec_creds(bprm);
>> -
>>   	set_binfmt(&flat_format);
>>     #ifdef CONFIG_MMU

Eric

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
