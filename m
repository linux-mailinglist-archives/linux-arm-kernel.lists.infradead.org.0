Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2373E1C0DDD
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 May 2020 07:44:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=lxV/ZRhF8zc0S/C8sVTNYc+X2I2ECjwv2jIQPAT6CoI=; b=U94WjrguShVekTDkhHJw3X7FH
	FjZpSeAgoW7pcMl43nA9UMkNYWqIfp7lrl6h045mxPZFvg9f3aI3JGvVNvBTx2m0PY1kcPC6laZTL
	1wXzBOh0BtOlq3LVQ0bT5a3rrHJaDivFJ2CKJ0lm//HYcD+k+I2unn+m6Ox4I500RfJJTFDcBkU0B
	KMZ6Kr1tWOrC8W8NbBpU+Lpb5q11jHqzpg66VyHAUes4ks6Pr9GECNRXF3t4jLlDER7MRD5Ez80g5
	U6dU/qFVfXfiNNBtFxMCvccdPiBBpViv7IF4ayPe116o6fuLVHUIDvPYgzSvByLLGzsl7/EIMqZgh
	Lg8gDenbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUOTV-0006CX-FP; Fri, 01 May 2020 05:44:37 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUOTN-0006B4-7n
 for linux-arm-kernel@lists.infradead.org; Fri, 01 May 2020 05:44:30 +0000
Received: from [10.44.0.192] (unknown [103.48.210.53])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DEAF820731;
 Fri,  1 May 2020 05:44:20 +0000 (UTC)
From: Greg Ungerer <gerg@linux-m68k.org>
Subject: Re: [PATCH v2 0/5] Fix ELF / FDPIC ELF core dumping, and use mmap_sem
 properly in there
To: "Eric W. Biederman" <ebiederm@xmission.com>,
 Linus Torvalds <torvalds@linux-foundation.org>
References: <20200429214954.44866-1-jannh@google.com>
 <20200429215620.GM1551@shell.armlinux.org.uk>
 <CAHk-=wgpoEr33NJwQ+hqK1dz3Rs9jSw+BGotsSdt2Kb3HqLV7A@mail.gmail.com>
 <31196268-2ff4-7a1d-e9df-6116e92d2190@linux-m68k.org>
 <CAHk-=wjau_zmdLaFDLcY3xnqiFaC7VZDXnnzFG9QDHL4kqStYQ@mail.gmail.com>
 <87imhgyeqt.fsf@x220.int.ebiederm.org>
Message-ID: <9dd76936-0009-31e4-d869-f64d01886642@linux-m68k.org>
Date: Fri, 1 May 2020 15:44:03 +1000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <87imhgyeqt.fsf@x220.int.ebiederm.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_224429_318534_FDF43E0C 
X-CRM114-Status: GOOD (  27.93  )
X-Spam-Score: -4.8 (----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-4.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Mark Salter <msalter@redhat.com>, Rich Felker <dalias@libc.org>,
 linux-c6x-dev@linux-c6x.org, Yoshinori Sato <ysato@users.sourceforge.jp>,
 Nicolas Pitre <nico@fluxnic.net>, Linux-sh list <linux-sh@vger.kernel.org>,
 Jann Horn <jannh@google.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Linux-MM <linux-mm@kvack.org>, Alexander Viro <viro@zeniv.linux.org.uk>,
 Oleg Nesterov <oleg@redhat.com>, linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Aurelien Jacquiot <jacquiot.aurelien@gmail.com>,
 Christoph Hellwig <hch@lst.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 1/5/20 5:07 am, Eric W. Biederman wrote:
> Linus Torvalds <torvalds@linux-foundation.org> writes:
> 
>> On Thu, Apr 30, 2020 at 7:10 AM Greg Ungerer <gerg@linux-m68k.org> wrote:
> 
>>>> Most of that file goes back to pre-git days. And most of the commits
>>>> since are not so much about binfmt_flat, as they are about cleanups or
>>>> changes elsewhere where binfmt_flat was just a victim.
>>>
>>> I'll have a look at this.
>>
>> Thanks.
>>
>>> Quick hack test shows moving setup_new_exec(bprm) to be just before
>>> install_exec_creds(bprm) works fine for the static binaries case.
>>> Doing the flush_old_exec(bprm) there too crashed out - I'll need to
>>> dig into that to see why.
>>
>> Just moving setup_new_exec() would at least allow us to then join the
>> two together, and just say "setup_new_exec() does the credential
>> installation too".
> 
> But it is only half a help if we allow failure points between
> flush_old_exec and install_exec_creds.
> 
> Greg do things work acceptably if install_exec_creds is moved to right
> after setup_new_exec? (patch below)

Yes, confirmed. Worked fine with that patch applied.


> Looking at the code in load_flat_file after setup_new_exec it looks like
> the kinds of things that in binfmt_elf.c we do after install_exec_creds
> (aka vm_map).  So I think we want install_exec_creds sooner, instead
> of setup_new_exec later.
> 
>> But if it's true that nobody really uses the odd flat library support
>> any more and there are no testers, maybe we should consider ripping it
>> out...
> 
> I looked a little deeper and there is another reason to think about
> ripping out the flat library loader.  The code is recursive, and
> supports a maximum of 4 shared libraries in the entire system.
> 
> load_flat_binary
> 	load_flat_file
>          	calc_reloc
>                  	load_flat_shared_libary
>                          	load_flat_file
>                                  	....
> 
> I am mystified with what kind of system can survive with a grand total
> of 4 shared libaries.  I think my a.out slackware system that I ran on
> my i486 had more shared libraries.

The kind of embedded systems that were built with this stuff 20 years
ago didn't have lots of applications and libraries. I think we found
back then that most of your savings were from making libc shared.
Less significant gains from making other libraries shared. And there
was a bit of extra pain in setting them up with the shared library
code generation options (that had to be unique for each one).

The whole mechanism is a bit of hack, and there was a few other
limitations with the way it worked (I don't recall what they were
right now).

I am definitely in favor of removing it.

Regards
Greg



> Having read just a bit more it is definitely guaranteed (by the code)
> that the first time load_flat_file is called id 0 will be used (aka id 0
> is guaranteed to be the binary), and the ids 1, 2, 3 and 4 will only be
> used if a relocation includes that id to reference an external shared
> library.  That part of the code is drop dead simple.
> 
> ---
> 
> This is what I was thinking about applying.
> 
> diff --git a/fs/binfmt_flat.c b/fs/binfmt_flat.c
> index 831a2b25ba79..1a1d1fcb893f 100644
> --- a/fs/binfmt_flat.c
> +++ b/fs/binfmt_flat.c
> @@ -541,6 +541,7 @@ static int load_flat_file(struct linux_binprm *bprm,
>   		/* OK, This is the point of no return */
>   		set_personality(PER_LINUX_32BIT);
>   		setup_new_exec(bprm);
> +		install_exec_creds(bprm);
>   	}
>   
>   	/*
> @@ -963,8 +964,6 @@ static int load_flat_binary(struct linux_binprm *bprm)
>   		}
>   	}
>   
> -	install_exec_creds(bprm);
> -
>   	set_binfmt(&flat_format);
>   
>   #ifdef CONFIG_MMU
> 
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
