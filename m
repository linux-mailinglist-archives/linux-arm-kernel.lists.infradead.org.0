Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 637261C0DF1
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 May 2020 08:01:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1lkLYV1ciCcZetXs1ekVwwGywoFvJ1T9lDuq1hBfm4Q=; b=I40s+yeumlhAAw+ZRPNRiguBy
	/vG1j22Zha4RLcI1wDY/SiFAcrF6mCeF3KRkt+3Bwn3h7Y9VZcmCm2IQOkai7RbJC/3fcEktMnGEy
	s+wA3Lm/nRkgB3tI/XHPpz5p74/vQuPCGo2efj+pobYYeVtZUEtFwfaY9zdgvjradVnPT0MR4UAYW
	fZiiH5Ay1Ksd5Keu42zREqTzSX8bxJGKtSgyXqJaNFeG8RejmnYUSz1i95dM38H5PW9yVDdwkxltT
	D2YVXYqyBeI0K99Ycx2DRp93GlHGyeuFcfYsU8MdgBdDxYrDbl6Co/FL54epmpxk9ZjCT6nu2DLZD
	jHS3Z0UDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUOj8-0001ir-1P; Fri, 01 May 2020 06:00:46 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUOix-0001hx-Sk
 for linux-arm-kernel@lists.infradead.org; Fri, 01 May 2020 06:00:37 +0000
Received: from [192.168.0.106] (unknown [202.53.39.250])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BE2482070B;
 Fri,  1 May 2020 06:00:30 +0000 (UTC)
Subject: Re: [PATCH v2 0/5] Fix ELF / FDPIC ELF core dumping, and use mmap_sem
 properly in there
To: Rich Felker <dalias@libc.org>
References: <20200429214954.44866-1-jannh@google.com>
 <20200429215620.GM1551@shell.armlinux.org.uk>
 <CAHk-=wgpoEr33NJwQ+hqK1dz3Rs9jSw+BGotsSdt2Kb3HqLV7A@mail.gmail.com>
 <31196268-2ff4-7a1d-e9df-6116e92d2190@linux-m68k.org>
 <20200430145123.GE21576@brightrain.aerifal.cx>
From: Greg Ungerer <gerg@linux-m68k.org>
Message-ID: <6dd187b4-1958-fc40-73c4-3de53ed69a1e@linux-m68k.org>
Date: Fri, 1 May 2020 16:00:28 +1000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200430145123.GE21576@brightrain.aerifal.cx>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_230035_963999_A2D751CB 
X-CRM114-Status: GOOD (  23.08  )
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
Cc: Mark Salter <msalter@redhat.com>, linux-c6x-dev@linux-c6x.org,
 Yoshinori Sato <ysato@users.sourceforge.jp>, Nicolas Pitre <nico@fluxnic.net>,
 Linux-sh list <linux-sh@vger.kernel.org>, Jann Horn <jannh@google.com>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux-MM <linux-mm@kvack.org>, Alexander Viro <viro@zeniv.linux.org.uk>,
 Oleg Nesterov <oleg@redhat.com>, linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Aurelien Jacquiot <jacquiot.aurelien@gmail.com>,
 Linus Torvalds <torvalds@linux-foundation.org>, Christoph Hellwig <hch@lst.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 "Eric W . Biederman" <ebiederm@xmission.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 1/5/20 12:51 am, Rich Felker wrote:
> On Fri, May 01, 2020 at 12:10:05AM +1000, Greg Ungerer wrote:
>>
>>
>> On 30/4/20 9:03 am, Linus Torvalds wrote:
>>> On Wed, Apr 29, 2020 at 2:57 PM Russell King - ARM Linux admin
>>> <linux@armlinux.org.uk> wrote:
>>>>
>>>> I've never had any reason to use FDPIC, and I don't have any binaries
>>>> that would use it.  Nicolas Pitre added ARM support, so I guess he
>>>> would be the one to talk to about it.  (Added Nicolas.)
>>>
>>> While we're at it, is there anybody who knows binfmt_flat?
>>>
>>> It might be Nicolas too.
>>>
>>> binfmt_flat doesn't do core-dumping, but it has some other oddities.
>>> In particular, I'd like to bring sanity to the installation of the new
>>> creds, and all the _normal_ binfmt cases do it largely close together
>>> with setup_new_exec().
>>>
>>> binfmt_flat is doing odd things. It's doing this:
>>>
>>>          /* Flush all traces of the currently running executable */
>>>          if (id == 0) {
>>>                  ret = flush_old_exec(bprm);
>>>                  if (ret)
>>>                          goto err;
>>>
>>>                  /* OK, This is the point of no return */
>>>                  set_personality(PER_LINUX_32BIT);
>>>                  setup_new_exec(bprm);
>>>          }
>>>
>>> in load_flat_file() - which is also used to loading _libraries_. Where
>>> it makes no sense at all.
>>
>> I haven't looked at the shared lib support in there for a long time,
>> but I thought that "id" is only 0 for the actual final program.
>> Libraries have a slot or id number associated with them.
> 
> This sounds correct. My understanding of FLAT shared library support
> is that it's really bad and based on having preassigned slot indices
> for each library on the system, and a global array per-process to give
> to data base address for each library. Libraries are compiled to know
> their own slot numbers so that they just load from fixed_reg[slot_id]
> to get what's effectively their GOT pointer.
> 
> I'm not sure if anybody has actually used this in over a decade. Last
> time I looked the tooling appeared broken, but in this domain lots of
> users have forked private tooling that's not publicly available or at
> least not publicly indexed, so it's hard to say for sure.

Be at least 12 or 13 years since I last had a working shared library
build for m68knommu. I have not bothered with it since then, not that I
even used it much when it worked. Seemed more pain than it was worth.

Regards
Greg



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
