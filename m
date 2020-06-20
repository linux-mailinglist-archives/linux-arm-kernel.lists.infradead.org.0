Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D70B2021F2
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 20 Jun 2020 08:35:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BumiaBEA6YWiuSj3p/+/ZmmJDufqpdGyypzEHUI2jrc=; b=ocWAUfTGiszO5h
	SK7/R5OtpwnO8fApAbL7MSz/99DaXjUo/uWXvt9848OMCwVTpAGI00AM+fYZiSldxO1+IqmRypQmZ
	Q4YIrCkJJX8E3VqbTqtozHQwlWTSpwG9+7u589t1eQqk2OD8nDA6t5BNTA2n4Ez69Sr7RETNhPXX7
	gk2r1Q47GGVucUvVavtuhpYJRuPL4UhSNTqSkdqrSuscGwWHrPOuxQaW0Eg/xLosoaJi8BPKZam8E
	9g0Ox0A4uXq+qowIKueMzDrfGgJylV+bGWap9BfDxDAeeYkoJA1KrZqgZpzeLavcyG0MxV+EJOaGb
	UuI19WhA6jtphpOvVqWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmX6U-0006hi-Gm; Sat, 20 Jun 2020 06:35:50 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmX6L-0006hL-R5
 for linux-arm-kernel@lists.infradead.org; Sat, 20 Jun 2020 06:35:43 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id D6CC268CEC; Sat, 20 Jun 2020 08:35:38 +0200 (CEST)
Date: Sat, 20 Jun 2020 08:35:38 +0200
From: Christoph Hellwig <hch@lst.de>
To: Luis Chamberlain <mcgrof@kernel.org>
Subject: Re: [PATCH 6/6] kernel: add a kernel_wait helper
Message-ID: <20200620063538.GA2408@lst.de>
References: <20200618144627.114057-1-hch@lst.de>
 <20200618144627.114057-7-hch@lst.de>
 <20200619211700.GS11244@42.do-not-panic.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200619211700.GS11244@42.do-not-panic.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_233542_025845_84833FC2 
X-CRM114-Status: GOOD (  15.89  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-arch@vger.kernel.org, linux-s390@vger.kernel.org,
 linux-parisc@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, x86@kernel.org,
 linux-mips@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, Al Viro <viro@zeniv.linux.org.uk>,
 Brian Gerst <brgerst@gmail.com>, sparclinux@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 19, 2020 at 09:17:00PM +0000, Luis Chamberlain wrote:
> On Thu, Jun 18, 2020 at 04:46:27PM +0200, Christoph Hellwig wrote:
> > --- a/kernel/exit.c
> > +++ b/kernel/exit.c
> > @@ -1626,6 +1626,22 @@ long kernel_wait4(pid_t upid, int __user *stat_addr, int options,
> >  	return ret;
> >  }
> >  
> > +int kernel_wait(pid_t pid, int *stat)
> > +{
> > +	struct wait_opts wo = {
> > +		.wo_type	= PIDTYPE_PID,
> > +		.wo_pid		= find_get_pid(pid),
> > +		.wo_flags	= WEXITED,
> > +	};
> > +	int ret;
> > +
> > +	ret = do_wait(&wo);
> > +	if (ret > 0 && wo.wo_stat)
> > +		*stat = wo.wo_stat;
> 
> Since all we care about is WEXITED, that could be simplified
> to something like this:
> 
> if (ret > 0 && KWIFEXITED(wo.wo_stat)
>  	*stat = KWEXITSTATUS(wo.wo_stat)
> 
> Otherwise callers have to use W*() wrappers.
> 
> > +	put_pid(wo.wo_pid);
> > +	return ret;
> > +}
> 
> Then we don't get *any* in-kernel code dealing with the W*() crap.
> I just unwrapped this for the umh [0], given that otherwise we'd
> have to use KW*() callers elsewhere. Doing it upshot one level
> further would be even better.
> 
> [0] https://lkml.kernel.org/r/20200610154923.27510-1-mcgrof@kernel.org              
Do you just want to pick this patch up, add your suggested bits and
add it to the beginning of your series?  That should clean the whole
thing up a bit.  Nothing else in this series depends on the patch.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
