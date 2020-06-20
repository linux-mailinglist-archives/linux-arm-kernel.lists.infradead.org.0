Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6481C202576
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 20 Jun 2020 19:02:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W0qi5wkjyzqi5IN0ASkVvcK9E5i0XIMEzuIeWuI4dks=; b=GkODtn6FtX7YBA
	/UfKUr1nj8zCtp3lR8t4BzykLUqORbR65FT9EfswioRwRh9YuCHHIVbTd1BuRZS6U69Y+PG9BQGn+
	PnGVLUSAly+3WFxvcKOsMIPmg1B/ecd7c9jPFsKMbAxGVJVntK0qjdYyTctWmF4OiHSvUJ5zAuQwf
	whmAW9jIwY0B5U7X+NUuUysH2EzeMEtI3/r8g/4gSujcVMnyaEfuQhsTnUFn7fr6kN93ORzfU7sW+
	dQNsqGrraaWO/AXR9bUW/ucMIlkG9DxlaVnxdVAa8uMQjXEpkVAIG5osltu5Pjjt81riX6HMSOA83
	HLqepyMjnjhOJOXb9prw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmgsz-0006KJ-FL; Sat, 20 Jun 2020 17:02:33 +0000
Received: from mail-pf1-f195.google.com ([209.85.210.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmgsp-0006Jw-V0
 for linux-arm-kernel@lists.infradead.org; Sat, 20 Jun 2020 17:02:25 +0000
Received: by mail-pf1-f195.google.com with SMTP id b5so6075330pfp.9
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 20 Jun 2020 10:02:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=hkYGXZYFNkz40ca5bdh2l8rwBQsGz5Dfq7lbQQ/ZMb4=;
 b=pR3n15c0vY6Tj2T5U/+zTF8diO3zLufK7Fimn394AB8CGYqUDcRTCAI3sNjax5UXwI
 jY3uNAXHhrOiA0S25M9+ijSX+CjLUf92i/Q7A/bBSqZGXD59H+Pe/wAca10BOZYBIdzf
 0TEXVbFIJFbzKvQoEZ8hLMlT9pSLHv4TrAS1uFzGktBzzBTSHV5L+AEIEI6G3QQvGYc1
 JFy09wow4s4L6WBqAs5K0wwyTjrkhqmg41AyfcOd94Zsl+QCS5EBEMvHMVOWDhWdBUls
 W5y8Hha+K9HanCC6zx6uaqoJpKBp0SHNldGjRDIFje2XKq3nm/rzrUePqhvf/KlG/UxL
 WAeg==
X-Gm-Message-State: AOAM532ir8v21XP2c6Rzu9/qNYYWIRro+2mYjNkBd5TmBDTmGXiO+FOV
 d/lgfC8v5vpTumkRYno2alY=
X-Google-Smtp-Source: ABdhPJw4cY69dDBjGxi+dEmU+lne2Jaj+Kt7j3+OOL+ZesgQbK+T06ayny/Nuk+eU5cbc92qa9tynQ==
X-Received: by 2002:a63:7c5e:: with SMTP id l30mr7050243pgn.276.1592672542711; 
 Sat, 20 Jun 2020 10:02:22 -0700 (PDT)
Received: from 42.do-not-panic.com (42.do-not-panic.com. [157.230.128.187])
 by smtp.gmail.com with ESMTPSA id x18sm9195784pfr.106.2020.06.20.10.02.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 20 Jun 2020 10:02:20 -0700 (PDT)
Received: by 42.do-not-panic.com (Postfix, from userid 1000)
 id B439940430; Sat, 20 Jun 2020 17:02:19 +0000 (UTC)
Date: Sat, 20 Jun 2020 17:02:19 +0000
From: Luis Chamberlain <mcgrof@kernel.org>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH 6/6] kernel: add a kernel_wait helper
Message-ID: <20200620170219.GT11244@42.do-not-panic.com>
References: <20200618144627.114057-1-hch@lst.de>
 <20200618144627.114057-7-hch@lst.de>
 <20200619211700.GS11244@42.do-not-panic.com>
 <20200620063538.GA2408@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200620063538.GA2408@lst.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200620_100223_999407_5B738616 
X-CRM114-Status: GOOD (  21.73  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.195 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mcgrof[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.195 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: linux-arch@vger.kernel.org, linux-s390@vger.kernel.org,
 linux-parisc@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, x86@kernel.org,
 linux-mips@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, Al Viro <viro@zeniv.linux.org.uk>,
 Brian Gerst <brgerst@gmail.com>, sparclinux@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Jun 20, 2020 at 08:35:38AM +0200, Christoph Hellwig wrote:
> On Fri, Jun 19, 2020 at 09:17:00PM +0000, Luis Chamberlain wrote:
> > On Thu, Jun 18, 2020 at 04:46:27PM +0200, Christoph Hellwig wrote:
> > > --- a/kernel/exit.c
> > > +++ b/kernel/exit.c
> > > @@ -1626,6 +1626,22 @@ long kernel_wait4(pid_t upid, int __user *stat_addr, int options,
> > >  	return ret;
> > >  }
> > >  
> > > +int kernel_wait(pid_t pid, int *stat)
> > > +{
> > > +	struct wait_opts wo = {
> > > +		.wo_type	= PIDTYPE_PID,
> > > +		.wo_pid		= find_get_pid(pid),
> > > +		.wo_flags	= WEXITED,
> > > +	};
> > > +	int ret;
> > > +
> > > +	ret = do_wait(&wo);
> > > +	if (ret > 0 && wo.wo_stat)
> > > +		*stat = wo.wo_stat;
> > 
> > Since all we care about is WEXITED, that could be simplified
> > to something like this:
> > 
> > if (ret > 0 && KWIFEXITED(wo.wo_stat)
> >  	*stat = KWEXITSTATUS(wo.wo_stat)
> > 
> > Otherwise callers have to use W*() wrappers.
> > 
> > > +	put_pid(wo.wo_pid);
> > > +	return ret;
> > > +}
> > 
> > Then we don't get *any* in-kernel code dealing with the W*() crap.
> > I just unwrapped this for the umh [0], given that otherwise we'd
> > have to use KW*() callers elsewhere. Doing it upshot one level
> > further would be even better.
> > 
> > [0] https://lkml.kernel.org/r/20200610154923.27510-1-mcgrof@kernel.org              
> Do you just want to pick this patch up, add your suggested bits and
> add it to the beginning of your series?  That should clean the whole
> thing up a bit.  Nothing else in this series depends on the patch.

Sure but let's wait to hear from the NFS folks.

I'm waiting to hear from NFS folks if the one place where the UMH is
fixed for the error code (on fs/nfsd/nfs4recover.c we never were
disabling the upcall as the error code of -ENOENT or -EACCES was *never*
properly checked for) to see how critical that was. If it can help
stable kernels the fix can go in as I proposed, followed by this patch
to further take the KWEXITSTATUS() up further, and ensure we *never*
deal with this in-kernel. If its not a fix stable kernels should care
for what you suggest of taking this patch first would be best and I'd be
happy to do that.

  Luis

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
