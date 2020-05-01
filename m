Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E93451C0E85
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 May 2020 09:15:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=XIYWS2DJaEDD/1SCLKOKTrEjyuw5a8ESd9MzA68E7VM=; b=j/1UPD8eozOqaRJj1c0mpRuz2
	Zlt9AGk8Hc0rjQ1DefoCZP0wYJD/m5AJ/08ohSsTsQLwPP+o6RhGeMMpKUSgdiOlBAyFaEywUtHVW
	Fx8U51fmA35ryCYJvtZQBDloEZy36d36FKq5Xu7WmvaPd66TIL18V/NGu/V3PdlV7gNpWmuFJmcrY
	oQr1q7SuP99i0dHZX27JHKiNBxFlq94eLAtEiBhQJTOAMwbSyc/prZNbRkygvx1Q9iGAwF7FhPz/8
	rsWofxZCfLaP63920PToS7ErnTqsu1KnV9x6zZVRHnDyPV1IqIfP/UIkbDIVo2Oyvv4C0T/0WGLIt
	sKqh6XtvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUPsx-0004iX-2r; Fri, 01 May 2020 07:14:59 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUPsp-0004hr-I2
 for linux-arm-kernel@lists.infradead.org; Fri, 01 May 2020 07:14:52 +0000
Received: from [192.168.0.106] (unknown [202.53.39.250])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 752A5208C3;
 Fri,  1 May 2020 07:14:46 +0000 (UTC)
Subject: Re: [PATCH v2 0/5] Fix ELF / FDPIC ELF core dumping, and use mmap_sem
 properly in there
To: Linus Torvalds <torvalds@linux-foundation.org>
References: <20200429214954.44866-1-jannh@google.com>
 <20200429215620.GM1551@shell.armlinux.org.uk>
 <CAHk-=wgpoEr33NJwQ+hqK1dz3Rs9jSw+BGotsSdt2Kb3HqLV7A@mail.gmail.com>
 <31196268-2ff4-7a1d-e9df-6116e92d2190@linux-m68k.org>
 <CAHk-=wjau_zmdLaFDLcY3xnqiFaC7VZDXnnzFG9QDHL4kqStYQ@mail.gmail.com>
From: Greg Ungerer <gerg@linux-m68k.org>
Message-ID: <9d4a2520-f41c-aed1-4ce0-274370eb4503@linux-m68k.org>
Date: Fri, 1 May 2020 17:14:43 +1000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <CAHk-=wjau_zmdLaFDLcY3xnqiFaC7VZDXnnzFG9QDHL4kqStYQ@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_001451_635339_99AAD29F 
X-CRM114-Status: GOOD (  25.37  )
X-Spam-Score: -4.8 (----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-4.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Linux-MM <linux-mm@kvack.org>, Alexander Viro <viro@zeniv.linux.org.uk>,
 Oleg Nesterov <oleg@redhat.com>, linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Aurelien Jacquiot <jacquiot.aurelien@gmail.com>,
 Christoph Hellwig <hch@lst.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 "Eric W . Biederman" <ebiederm@xmission.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 1/5/20 2:54 am, Linus Torvalds wrote:
> On Thu, Apr 30, 2020 at 7:10 AM Greg Ungerer <gerg@linux-m68k.org> wrote:
>>
>>> in load_flat_file() - which is also used to loading _libraries_. Where
>>> it makes no sense at all.
>>
>> I haven't looked at the shared lib support in there for a long time,
>> but I thought that "id" is only 0 for the actual final program.
>> Libraries have a slot or id number associated with them.
> 
> Yes, that was my assumption, but looking at the code, it really isn't
> obvious that that is the case at all.
> 
> 'id' gets calculated from fields that very much look like they could
> be zero (eg by taking the top bits from another random field).
> 
>>> Most of that file goes back to pre-git days. And most of the commits
>>> since are not so much about binfmt_flat, as they are about cleanups or
>>> changes elsewhere where binfmt_flat was just a victim.
>>
>> I'll have a look at this.
> 
> Thanks.
> 
>> Quick hack test shows moving setup_new_exec(bprm) to be just before
>> install_exec_creds(bprm) works fine for the static binaries case.
>> Doing the flush_old_exec(bprm) there too crashed out - I'll need to
>> dig into that to see why.
> 
> Just moving setup_new_exec() would at least allow us to then join the
> two together, and just say "setup_new_exec() does the credential
> installation too".
> 
> So to some degree, that's the important one.
> 
> But that flush_old_exec() does look odd in load_flat_file(). It's not
> like anything but executing a binary should flush the old exec.
> Certainly not loading a library, however odd that flat library code
> is.
> 
> My _guess_ is that the reason for this is that "load_flat_file()" also
> does a lot of verification of the file and does that whole "return
> -ENOEXEC if the file format isn't right". So we don't want to flush
> the old exec before that is done, but we obviously also don't want to
> flush the old exec after we've actually loaded the new one into
> memory..

Yeah, that is what it looks like. Looking at the history, the introduction
of setup_new_exec() [in commit 221af7f87b974] was probably just
added where the the existing flush_old_exec() was.


> So the location of flush_old_exec() makes that kind of sense, but it
> would have made it better if that flat file support had a clear
> separation of "check the file" from "load the file".
> 
> Oh well. As mentioned, the whole "at least put setup_new_exec() and
> install_exec_creds() together" is the bigger thing.
> 
> But if it's true that nobody really uses the odd flat library support
> any more and there are no testers, maybe we should consider ripping it
> out...

I am for that. If nobody pipes up and complains I'll look at taking it out.

Regards
Greg


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
