Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72A441BFD14
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 16:10:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=daXQqkHQVRbshIAd+//UWbzUFyzQek0sXZhTslE4IxE=; b=iXjDmZXZoa9PnDw19aJzRBuRF
	HBL1W5Wyf97CLLuQJckMvewQ6eVcl+1/CXR0q7TzfU9zdKN3YlpR5+qxVO9wTq8EwME5SVsYAELiI
	mN5VabvprHXg0Ovf1qkPDx/si7qvHPuDRCESdzMQ3C12I42rPC8ORnpO+/uiE4ckJ9UX1oKbwr946
	ywi+GIJ4+3oSxdZCx6wBMX0KPtqe5ne7SiaXktAmfQS2gfLpV5Af9CNx6vAg+70p44V0gEoR011yC
	3EUPwOOUJ0DNDFLEaKAsb+98RwsyGi19sfry4f2Akv5GSI9gpwlPQ6IkUAXlpWissgVEiq6LAzbJQ
	Qg8j+uIHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU9tT-0004E4-Lu; Thu, 30 Apr 2020 14:10:27 +0000
Received: from hfcrelay.icp-osb-irony-out7.external.iinet.net.au
 ([203.59.1.87])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU9tJ-00048U-Bm
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 14:10:19 +0000
X-SMTP-MATCH: 0
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2BiAABi26pe//onNcoNWRwBAQEBAQE?=
 =?us-ascii?q?HAQESAQEEBAEBQIE2BAEBCwGBfIJMhCGPSgEBBAaBCggligSRVgsBAQEBAQE?=
 =?us-ascii?q?BAQE3BAEBhEQCglQ3Bg4CEAEBAQUBAQEBAQUDAYV3hkkBAQEBAgEjFUEFCws?=
 =?us-ascii?q?YAgImAgJXBgEMBgIBAYMiglgFsnh2gTKFUINngUCBDioBjFp5gQeBOAyCXT6?=
 =?us-ascii?q?HYIJgBJB/h3qZPAiCR5JXBoUkCBudBy2PWJ8dgXkzGggoCIMkUCVXkhxuAQi?=
 =?us-ascii?q?NK2I2AgYIAQEDCZJqAQE?=
X-IPAS-Result: =?us-ascii?q?A2BiAABi26pe//onNcoNWRwBAQEBAQEHAQESAQEEBAEBQ?=
 =?us-ascii?q?IE2BAEBCwGBfIJMhCGPSgEBBAaBCggligSRVgsBAQEBAQEBAQE3BAEBhEQCg?=
 =?us-ascii?q?lQ3Bg4CEAEBAQUBAQEBAQUDAYV3hkkBAQEBAgEjFUEFCwsYAgImAgJXBgEMB?=
 =?us-ascii?q?gIBAYMiglgFsnh2gTKFUINngUCBDioBjFp5gQeBOAyCXT6HYIJgBJB/h3qZP?=
 =?us-ascii?q?AiCR5JXBoUkCBudBy2PWJ8dgXkzGggoCIMkUCVXkhxuAQiNK2I2AgYIAQEDC?=
 =?us-ascii?q?ZJqAQE?=
X-IronPort-AV: E=Sophos;i="5.73,336,1583164800"; d="scan'208";a="253537256"
Received: from 202-53-39-250.tpgi.com.au (HELO [192.168.0.106])
 ([202.53.39.250])
 by icp-osb-irony-out7.iinet.net.au with ESMTP; 30 Apr 2020 22:10:07 +0800
Subject: Re: [PATCH v2 0/5] Fix ELF / FDPIC ELF core dumping, and use mmap_sem
 properly in there
To: Linus Torvalds <torvalds@linux-foundation.org>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>
References: <20200429214954.44866-1-jannh@google.com>
 <20200429215620.GM1551@shell.armlinux.org.uk>
 <CAHk-=wgpoEr33NJwQ+hqK1dz3Rs9jSw+BGotsSdt2Kb3HqLV7A@mail.gmail.com>
From: Greg Ungerer <gerg@linux-m68k.org>
Message-ID: <31196268-2ff4-7a1d-e9df-6116e92d2190@linux-m68k.org>
Date: Fri, 1 May 2020 00:10:05 +1000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <CAHk-=wgpoEr33NJwQ+hqK1dz3Rs9jSw+BGotsSdt2Kb3HqLV7A@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_071017_640310_E8B11BE8 
X-CRM114-Status: GOOD (  24.33  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [203.59.1.87 listed in list.dnswl.org]
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
Cc: Rich Felker <dalias@libc.org>, linux-c6x-dev@linux-c6x.org,
 Yoshinori Sato <ysato@users.sourceforge.jp>, Nicolas Pitre <nico@fluxnic.net>,
 Linux-sh list <linux-sh@vger.kernel.org>, Jann Horn <jannh@google.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Oleg Nesterov <oleg@redhat.com>, Linux-MM <linux-mm@kvack.org>,
 Alexander Viro <viro@zeniv.linux.org.uk>, Mark Salter <msalter@redhat.com>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Aurelien Jacquiot <jacquiot.aurelien@gmail.com>,
 Christoph Hellwig <hch@lst.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 "Eric W . Biederman" <ebiederm@xmission.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 30/4/20 9:03 am, Linus Torvalds wrote:
> On Wed, Apr 29, 2020 at 2:57 PM Russell King - ARM Linux admin
> <linux@armlinux.org.uk> wrote:
>>
>> I've never had any reason to use FDPIC, and I don't have any binaries
>> that would use it.  Nicolas Pitre added ARM support, so I guess he
>> would be the one to talk to about it.  (Added Nicolas.)
> 
> While we're at it, is there anybody who knows binfmt_flat?
> 
> It might be Nicolas too.
> 
> binfmt_flat doesn't do core-dumping, but it has some other oddities.
> In particular, I'd like to bring sanity to the installation of the new
> creds, and all the _normal_ binfmt cases do it largely close together
> with setup_new_exec().
> 
> binfmt_flat is doing odd things. It's doing this:
> 
>          /* Flush all traces of the currently running executable */
>          if (id == 0) {
>                  ret = flush_old_exec(bprm);
>                  if (ret)
>                          goto err;
> 
>                  /* OK, This is the point of no return */
>                  set_personality(PER_LINUX_32BIT);
>                  setup_new_exec(bprm);
>          }
> 
> in load_flat_file() - which is also used to loading _libraries_. Where
> it makes no sense at all.

I haven't looked at the shared lib support in there for a long time,
but I thought that "id" is only 0 for the actual final program.
Libraries have a slot or id number associated with them.

> It does the
> 
>          install_exec_creds(bprm);
> 
> in load_flat_binary() (which makes more sense: that is only for actual
> binary loading, no library case).
> 
> I would _like_ for every binfmt loader to do
> 
>          /* Flush all traces of the currently running executable */
>          retval = flush_old_exec(bprm);
>          if (retval)
>                  return retval;
> 
>     .. possibly set up personalities here ..
> 
>          setup_new_exec(bprm);
>          install_exec_creds(bprm);
> 
> all together, and at least merge 'setup_new_exec()' with 'install_exec_creds()'.
> 
> And I think all the binfmt handlers would be ok with that, but the
> flat one in particular is really oddly set up.
> 
> *Particularly* with that flush_old_exec/setup_new_exec() being done by
> the same routine that is also loading libraries (and called from
> 'calc_reloc()' from binary loading too).
> 
> Adding Greg Ungerer for m68knommu. Can somebody sort out why that
> flush_old_exec/setup_new_exec() isn't in load_flat_binary() like
> install_exec_creds() is?
> 
> Most of that file goes back to pre-git days. And most of the commits
> since are not so much about binfmt_flat, as they are about cleanups or
> changes elsewhere where binfmt_flat was just a victim.

I'll have a look at this.

Quick hack test shows moving setup_new_exec(bprm) to be just before
install_exec_creds(bprm) works fine for the static binaries case.
Doing the flush_old_exec(bprm) there too crashed out - I'll need to
dig into that to see why.

Regards
Greg



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
