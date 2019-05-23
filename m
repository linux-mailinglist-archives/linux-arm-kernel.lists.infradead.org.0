Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AF0527C28
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 13:51:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/IqRq8+WNSipeTRVJsERCte3b1qf2/vom/V5PirFqwQ=; b=apauqQzn440CSH
	bWrRi2GMKAzUwBCiC26O+qnCEIZbMo7SWUHpW8RXETgQxqJHAX1jB+ftp1SXUmHTsHrR4PDA9qMYt
	sSwLX3b3GRvhigxBvWeQeMD3n0eRe3fQnH5ndR5tWrZbRW5nldqopa66Jb2/DIjFn0ii5ymacRxDO
	OL791x+6OpjWgEQBzl6DrPdiz/JPaUmSg6sxS4ywdQcKI440Rpqzc0LEBhELzhVZvx2uHndDH8pPp
	22jstnFm61dYXkB+aJDegy2ljXj8lyIHQ409qmjeXomKY55QTXNUAly7rNfEOP2e9nJtoa16o597W
	Wy6dFmck8J3KKeASK0yw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTmFu-0005Od-G8; Thu, 23 May 2019 11:51:30 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTmFo-0005O4-FF
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 11:51:26 +0000
Received: by mail-ed1-x542.google.com with SMTP id m4so8806875edd.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 23 May 2019 04:51:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=brauner.io; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=DxrwlFYynfpKWcnso1ASEMJy1QePVih8VzbqwCBkVwk=;
 b=S/Ixtxvc2rCTBfYbzQGiR2W1gdfRhjumXOGgdu6z5ZJn93UKfws6k6ee18PWPXzlDD
 34VNSUVl1F53yAPBVRFXImrLpe7sp1R3RWU6ueWOjvI6M8sU1iNP4im0skwaqTuQRUI3
 sJIA+/8okDM6QZIbI5rbYpsc3IcvP6Y2vT3m/sqm3D8RJWvk/pCqLrz+0Bww9JTf0nJB
 iYoTll8Maxv4hlDHAWHuPjFK29juGO9XVC/XtHjE4Ia93dBRDXi9FTYBwym4yIuDO3bU
 KpK6X02jkldIOkbi8+Z06PuUo/TGQJMyBrB/dAr/0sdCeNd8eYTqTlNcvQeNZ+q4dvvT
 hkvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=DxrwlFYynfpKWcnso1ASEMJy1QePVih8VzbqwCBkVwk=;
 b=Wiw7vpD2z3W9KLZdHoCFsWf7oY6sgwEdLruPyy1oy7nTvmgsl7iu7DSH2NNmdEMemG
 gpdo4amxEO2qEBedJzatnh2yuwVZx/HusjGnfYbBAhpuqp33gNJM+mXG05Q0WOe83aRa
 JjH07dc7tgxTp1oWPRrQNuR76wvC/DUFgSgY2Q87ktrfBwqD/xzGtSgCKXt/iQvss23y
 ysa2xXTEistX3BL7KlB6D5JoYHMcc+4CY0hvvkMErl9N4O8AYgGDsUpyLuunkfmm5Jm9
 U7pz3Kokw7sdMqtyRdtGRs1jWQYZ7e/BXMrB0CXXGWoXLa5rhM1ihcSpyOWUuFYNjN63
 2hOg==
X-Gm-Message-State: APjAAAXZBObGY3oqrNTRuemK4t74sTaiOfumsCCgbIHH+uvjTi0HbteD
 Pmjd1xSxihxcAMFz+LO1dz0Rlw==
X-Google-Smtp-Source: APXvYqx7/y/DNnexBZOnXkDyT0N3tMuirzQAMafDXHp1AgKt73Se0dTImjP3o0mVoffNMpPelxEu9Q==
X-Received: by 2002:a50:84a1:: with SMTP id 30mr95678372edq.105.1558612282526; 
 Thu, 23 May 2019 04:51:22 -0700 (PDT)
Received: from brauner.io (178-197-142-46.pool.kielnet.net. [46.142.197.178])
 by smtp.gmail.com with ESMTPSA id
 h23sm4406908ejc.34.2019.05.23.04.51.21
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 23 May 2019 04:51:22 -0700 (PDT)
Date: Thu, 23 May 2019 13:51:20 +0200
From: Christian Brauner <christian@brauner.io>
To: Oleg Nesterov <oleg@redhat.com>
Subject: Re: [PATCH v1 1/2] open: add close_range()
Message-ID: <20190523115118.pmscbd6kaqy37dym@brauner.io>
References: <20190522155259.11174-1-christian@brauner.io>
 <20190522165737.GC4915@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190522165737.GC4915@redhat.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_045124_650789_2E1B0360 
X-CRM114-Status: GOOD (  15.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-ia64@vger.kernel.org, linux-sh@vger.kernel.org, ldv@altlinux.org,
 dhowells@redhat.com, linux-kselftest@vger.kernel.org,
 sparclinux@vger.kernel.org, shuah@kernel.org, linux-arch@vger.kernel.org,
 linux-s390@vger.kernel.org, miklos@szeredi.hu, x86@kernel.org,
 torvalds@linux-foundation.org, linux-mips@vger.kernel.org,
 linux-xtensa@linux-xtensa.org, tkjos@android.com, arnd@arndb.de,
 jannh@google.com, linux-m68k@lists.linux-m68k.org, viro@zeniv.linux.org.uk,
 tglx@linutronix.de, linux-arm-kernel@lists.infradead.org, fweimer@redhat.com,
 linux-parisc@vger.kernel.org, linux-api@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-alpha@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 22, 2019 at 06:57:37PM +0200, Oleg Nesterov wrote:
> On 05/22, Christian Brauner wrote:
> >
> > +static struct file *pick_file(struct files_struct *files, unsigned fd)
> >  {
> > -	struct file *file;
> > +	struct file *file = NULL;
> >  	struct fdtable *fdt;
> >  
> >  	spin_lock(&files->file_lock);
> > @@ -632,15 +629,65 @@ int __close_fd(struct files_struct *files, unsigned fd)
> >  		goto out_unlock;
> >  	rcu_assign_pointer(fdt->fd[fd], NULL);
> >  	__put_unused_fd(files, fd);
> > -	spin_unlock(&files->file_lock);
> > -	return filp_close(file, files);
> >  
> >  out_unlock:
> >  	spin_unlock(&files->file_lock);
> > -	return -EBADF;
> > +	return file;
> 
> ...
> 
> > +int __close_range(struct files_struct *files, unsigned fd, unsigned max_fd)
> > +{
> > +	unsigned int cur_max;
> > +
> > +	if (fd > max_fd)
> > +		return -EINVAL;
> > +
> > +	rcu_read_lock();
> > +	cur_max = files_fdtable(files)->max_fds;
> > +	rcu_read_unlock();
> > +
> > +	/* cap to last valid index into fdtable */
> > +	if (max_fd >= cur_max)
> > +		max_fd = cur_max - 1;
> > +
> > +	while (fd <= max_fd) {
> > +		struct file *file;
> > +
> > +		file = pick_file(files, fd++);
> 
> Well, how about something like
> 
> 	static unsigned int find_next_opened_fd(struct fdtable *fdt, unsigned start)
> 	{
> 		unsigned int maxfd = fdt->max_fds;
> 		unsigned int maxbit = maxfd / BITS_PER_LONG;
> 		unsigned int bitbit = start / BITS_PER_LONG;
> 
> 		bitbit = find_next_bit(fdt->full_fds_bits, maxbit, bitbit) * BITS_PER_LONG;
> 		if (bitbit > maxfd)
> 			return maxfd;
> 		if (bitbit > start)
> 			start = bitbit;
> 		return find_next_bit(fdt->open_fds, maxfd, start);
> 	}

> 
> 	unsigned close_next_fd(struct files_struct *files, unsigned start, unsigned maxfd)
> 	{
> 		unsigned fd;
> 		struct file *file;
> 		struct fdtable *fdt;
> 	
> 		spin_lock(&files->file_lock);
> 		fdt = files_fdtable(files);
> 		fd = find_next_opened_fd(fdt, start);
> 		if (fd >= fdt->max_fds || fd > maxfd) {
> 			fd = -1;
> 			goto out;
> 		}
> 
> 		file = fdt->fd[fd];
> 		rcu_assign_pointer(fdt->fd[fd], NULL);
> 		__put_unused_fd(files, fd);
> 	out:
> 		spin_unlock(&files->file_lock);
> 
> 		if (fd == -1u)
> 			return fd;
> 
> 		filp_close(file, files);
> 		return fd + 1;
> 	}

Thanks, Oleg!

I kept it dumb and was about to reply that your solution introduces more
code when it seemed we wanted to keep this very simple for now.
But then I saw that find_next_opened_fd() already exists as
find_next_fd(). So it's actually not bad compared to what I sent in v1.
So - with some small tweaks (need to test it and all now) - how do we
feel about?:

/**
 * __close_next_open_fd() - Close the nearest open fd.
 *
 * @curfd: lowest file descriptor to consider
 * @maxfd: highest file descriptor to consider
 *
 * This function will close the nearest open fd, i.e. it will either
 * close @curfd if it is open or the closest open file descriptor
 * c greater than @curfd that
 * is smaller or equal to maxfd.
 * If the function found a file descriptor to close it will return 0 and
 * place the file descriptor it closed in @curfd. If it did not find a
 * file descriptor to close it will return -EBADF.
 */
static int __close_next_open_fd(struct files_struct *files, unsigned *curfd, unsigned maxfd)
{
        struct file *file = NULL;
	unsigned fd;
	struct fdtable *fdt;

	spin_lock(&files->file_lock);
	fdt = files_fdtable(files);
	fd = find_next_fd(fdt, *curfd);
	if (fd >= fdt->max_fds || fd > maxfd)
		goto out_unlock;

	file = fdt->fd[fd];
	rcu_assign_pointer(fdt->fd[fd], NULL);
	__put_unused_fd(files, fd);

out_unlock:
	spin_unlock(&files->file_lock);

	if (!file)
		return -EBADF;

	*curfd = fd;
	filp_close(file, files);
	return 0;
}

int __close_range(struct files_struct *files, unsigned fd, unsigned max_fd)
{
	if (fd > max_fd)
		return -EINVAL;

	while (fd <= max_fd) {
		if (__close_next_fd(files, &fd, maxfd))
			break;

		cond_resched();
		fd++;
	}

	return 0;
}

SYSCALL_DEFINE3(close_range, unsigned int, fd, unsigned int, max_fd,
		unsigned int, flags)
{
	if (flags)
		return -EINVAL;

	return __close_range(current->files, fd, max_fd);
}

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
