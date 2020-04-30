Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 607DB1BFF59
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 16:56:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dul5eTASqph19NYXMNKw+6rZT35LXi5JYuayXlsPdt8=; b=JEgGdAo7/jbLQX
	kA6gXZp0V4s4T0B3DQ5B5Sir7YgExjtDoyqxfKoJ5uv+k86kflXYKqFe3ODmm4s/xRX3r4fjv/hZr
	6TVJKGCqW7D0G5HUd/s5+a0DXwwA47SGjdG3T+x52dwzELnrWgCIXixD7pgYEEn2K/O9oUq1Tj9y4
	sj4NjjWp5FVG0z6cAYEV0fayLragTxp9QWyCBdYDvWsgNC4fEVbqos71Hvm3yhHda6Qj3T6Hg7ZEZ
	tS0HRpImYIIj0SHWdPc1E6sPa7c46EnshYLiSobKOSxe6KGRpDpInIQml1vecoFExOuEaz6qckYB+
	Dq1WusXSLf+BceDgWfdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUAby-0005zo-Ad; Thu, 30 Apr 2020 14:56:26 +0000
Received: from brightrain.aerifal.cx ([216.12.86.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUAXC-0007wK-GO
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 14:51:40 +0000
Date: Thu, 30 Apr 2020 10:51:23 -0400
From: Rich Felker <dalias@libc.org>
To: Greg Ungerer <gerg@linux-m68k.org>
Subject: Re: [PATCH v2 0/5] Fix ELF / FDPIC ELF core dumping, and use
 mmap_sem properly in there
Message-ID: <20200430145123.GE21576@brightrain.aerifal.cx>
References: <20200429214954.44866-1-jannh@google.com>
 <20200429215620.GM1551@shell.armlinux.org.uk>
 <CAHk-=wgpoEr33NJwQ+hqK1dz3Rs9jSw+BGotsSdt2Kb3HqLV7A@mail.gmail.com>
 <31196268-2ff4-7a1d-e9df-6116e92d2190@linux-m68k.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <31196268-2ff4-7a1d-e9df-6116e92d2190@linux-m68k.org>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_075130_949853_400C20D6 
X-CRM114-Status: GOOD (  19.67  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 01, 2020 at 12:10:05AM +1000, Greg Ungerer wrote:
> 
> 
> On 30/4/20 9:03 am, Linus Torvalds wrote:
> >On Wed, Apr 29, 2020 at 2:57 PM Russell King - ARM Linux admin
> ><linux@armlinux.org.uk> wrote:
> >>
> >>I've never had any reason to use FDPIC, and I don't have any binaries
> >>that would use it.  Nicolas Pitre added ARM support, so I guess he
> >>would be the one to talk to about it.  (Added Nicolas.)
> >
> >While we're at it, is there anybody who knows binfmt_flat?
> >
> >It might be Nicolas too.
> >
> >binfmt_flat doesn't do core-dumping, but it has some other oddities.
> >In particular, I'd like to bring sanity to the installation of the new
> >creds, and all the _normal_ binfmt cases do it largely close together
> >with setup_new_exec().
> >
> >binfmt_flat is doing odd things. It's doing this:
> >
> >         /* Flush all traces of the currently running executable */
> >         if (id == 0) {
> >                 ret = flush_old_exec(bprm);
> >                 if (ret)
> >                         goto err;
> >
> >                 /* OK, This is the point of no return */
> >                 set_personality(PER_LINUX_32BIT);
> >                 setup_new_exec(bprm);
> >         }
> >
> >in load_flat_file() - which is also used to loading _libraries_. Where
> >it makes no sense at all.
> 
> I haven't looked at the shared lib support in there for a long time,
> but I thought that "id" is only 0 for the actual final program.
> Libraries have a slot or id number associated with them.

This sounds correct. My understanding of FLAT shared library support
is that it's really bad and based on having preassigned slot indices
for each library on the system, and a global array per-process to give
to data base address for each library. Libraries are compiled to know
their own slot numbers so that they just load from fixed_reg[slot_id]
to get what's effectively their GOT pointer.

I'm not sure if anybody has actually used this in over a decade. Last
time I looked the tooling appeared broken, but in this domain lots of
users have forked private tooling that's not publicly available or at
least not publicly indexed, so it's hard to say for sure.

Rich

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
