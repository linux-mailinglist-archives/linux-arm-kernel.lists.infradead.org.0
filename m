Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2920527FA1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 16:28:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u6j3Q092c9GgWmE+4ny6FuBhoUypcXIikPRIfpsRXE4=; b=utKSvQECBy++0x
	jULXbLU76tYlPzd7LtmFkR3CHVpuXffZEyFfZqY9lCfyYRMmOx4nH9HVtvAx6njKCUYj5piMjYfey
	ythDwbBlEt9C5CimaHyJV/t1RTw4u7xQ0VvtvFeVyvMpMha7T+Q/zFz7ueYG3zfJou2igP0D9p5Jb
	8NUPtSSFgkpyfGBvTwaW2l68acNhVKKvlu7e1LjH5iYi1X33naneZRdKeuDNL2+1A91zx1Pl8JhqD
	I+WkLH1iDJRYhkC/Wdl8hpEcugCu5avc1wPMuonTWh5e2QguLB1487Fn/ZCGfDSO1IsFp6DMhFLiG
	l3cQp6oDtGYMEVsmPazw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hToi6-0002y8-UG; Thu, 23 May 2019 14:28:46 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTohy-0002xQ-Nx
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 14:28:40 +0000
Received: by mail-io1-xd41.google.com with SMTP id v7so4992344iob.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 23 May 2019 07:28:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=brauner.io; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=RpoaZHiLYMmGlhX0k0xc+98b7kVM8O0Nb+ulnrgtNJY=;
 b=eH5v3tpg2jWcAPb1BtxrbVrTwVUfKiSWlvBDKjPnMCLKVULShlUKgTwitBPVj8R67S
 bl1SbiSsoHmzObZJaBxdW4O3YF9bi/hDQVh4LM4xPKTAcWNU8KdkloCUphchsoElrid6
 6AE/lgpbQOcODzePbiuHNI5h5RQVYZ3DdiPNZ1P21NCTx0RWpesYRMzTQk9Tx9wVH82F
 3QjTfmq966opB3u1fxAMKVkxd+GjbHM+SN0LX9x6Dx0Gop9JfYNLNSq6TGOipNEymeNB
 dRNv03qtNpwfVHrkY4WBtB5KiozY7XbCo0INoRR2QE2B56FK+0X4wpaY3eTtXiJMWQV6
 F5KQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=RpoaZHiLYMmGlhX0k0xc+98b7kVM8O0Nb+ulnrgtNJY=;
 b=K1bi1+LNFZSEKzbhvzWXasst9pp7GaH53gc7JKbQvN8NyGimBcyVUxAO0EkFGHhP4J
 MyXl++G0J2ky6ahXCLV6B328cnjNBKDJGvUfb11SjovOsP5bG1KgsM2xuQCbgDQjHvnj
 cR7hHHzPMQfxNLnNBtKYK/8kk57TWUnbiZVHhDNfwFrHp/akWqlxgixqEU1JlOTfW+6z
 V/bKOQbwcaFXjCkNqkI1LW/eMC+ryBC2IPGzslSbWQJDEaNmLoe+ZhhlzKZ6ft00Ojh0
 s4aOinC9uyfs2/oIYrh/1KRxqtxBaT2AHxcg2a0ALrIrqze90xUT5XMDzOPiE4198lOK
 FFoA==
X-Gm-Message-State: APjAAAU3BLJPGnL7UFQbA2lBWXU3ilNmhTSm+Khiz7dUdNCRGWBs2RRs
 ej5zwErVG+3ABPcrqClIvG8vBQ==
X-Google-Smtp-Source: APXvYqx8LKzOGpiWsL6dTrqW1tpjf/a6M4DwvCuMOWOiEPh8pOdaLx/XEPvYVwOl6hL0YBJIUNsKYw==
X-Received: by 2002:a6b:ca47:: with SMTP id a68mr20174292iog.227.1558621717396; 
 Thu, 23 May 2019 07:28:37 -0700 (PDT)
Received: from brauner.io ([172.56.12.187])
 by smtp.gmail.com with ESMTPSA id w186sm4196873ita.3.2019.05.23.07.28.30
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 23 May 2019 07:28:36 -0700 (PDT)
Date: Thu, 23 May 2019 16:28:28 +0200
From: Christian Brauner <christian@brauner.io>
To: Oleg Nesterov <oleg@redhat.com>
Subject: Re: [PATCH v1 1/2] open: add close_range()
Message-ID: <20190523142826.omb7vgygudifmveq@brauner.io>
References: <20190522155259.11174-1-christian@brauner.io>
 <20190522165737.GC4915@redhat.com>
 <20190523115118.pmscbd6kaqy37dym@brauner.io>
 <20190523141447.34s3kc3fuwmoeq7n@brauner.io>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190523141447.34s3kc3fuwmoeq7n@brauner.io>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_072838_776993_12C315FF 
X-CRM114-Status: GOOD (  16.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
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

On Thu, May 23, 2019 at 04:14:47PM +0200, Christian Brauner wrote:
> On Thu, May 23, 2019 at 01:51:18PM +0200, Christian Brauner wrote:
> > On Wed, May 22, 2019 at 06:57:37PM +0200, Oleg Nesterov wrote:
> > > On 05/22, Christian Brauner wrote:
> > > >
> > > > +static struct file *pick_file(struct files_struct *files, unsigned fd)
> > > >  {
> > > > -	struct file *file;
> > > > +	struct file *file = NULL;
> > > >  	struct fdtable *fdt;
> > > >  
> > > >  	spin_lock(&files->file_lock);
> > > > @@ -632,15 +629,65 @@ int __close_fd(struct files_struct *files, unsigned fd)
> > > >  		goto out_unlock;
> > > >  	rcu_assign_pointer(fdt->fd[fd], NULL);
> > > >  	__put_unused_fd(files, fd);
> > > > -	spin_unlock(&files->file_lock);
> > > > -	return filp_close(file, files);
> > > >  
> > > >  out_unlock:
> > > >  	spin_unlock(&files->file_lock);
> > > > -	return -EBADF;
> > > > +	return file;
> > > 
> > > ...
> > > 
> > > > +int __close_range(struct files_struct *files, unsigned fd, unsigned max_fd)
> > > > +{
> > > > +	unsigned int cur_max;
> > > > +
> > > > +	if (fd > max_fd)
> > > > +		return -EINVAL;
> > > > +
> > > > +	rcu_read_lock();
> > > > +	cur_max = files_fdtable(files)->max_fds;
> > > > +	rcu_read_unlock();
> > > > +
> > > > +	/* cap to last valid index into fdtable */
> > > > +	if (max_fd >= cur_max)
> > > > +		max_fd = cur_max - 1;
> > > > +
> > > > +	while (fd <= max_fd) {
> > > > +		struct file *file;
> > > > +
> > > > +		file = pick_file(files, fd++);
> > > 
> > > Well, how about something like
> > > 
> > > 	static unsigned int find_next_opened_fd(struct fdtable *fdt, unsigned start)
> > > 	{
> > > 		unsigned int maxfd = fdt->max_fds;
> > > 		unsigned int maxbit = maxfd / BITS_PER_LONG;
> > > 		unsigned int bitbit = start / BITS_PER_LONG;
> > > 
> > > 		bitbit = find_next_bit(fdt->full_fds_bits, maxbit, bitbit) * BITS_PER_LONG;
> > > 		if (bitbit > maxfd)
> > > 			return maxfd;
> > > 		if (bitbit > start)
> > > 			start = bitbit;
> > > 		return find_next_bit(fdt->open_fds, maxfd, start);
> > > 	}
> > 
> > > 
> > > 	unsigned close_next_fd(struct files_struct *files, unsigned start, unsigned maxfd)
> > > 	{
> > > 		unsigned fd;
> > > 		struct file *file;
> > > 		struct fdtable *fdt;
> > > 	
> > > 		spin_lock(&files->file_lock);
> > > 		fdt = files_fdtable(files);
> > > 		fd = find_next_opened_fd(fdt, start);
> > > 		if (fd >= fdt->max_fds || fd > maxfd) {
> > > 			fd = -1;
> > > 			goto out;
> > > 		}
> > > 
> > > 		file = fdt->fd[fd];
> > > 		rcu_assign_pointer(fdt->fd[fd], NULL);
> > > 		__put_unused_fd(files, fd);
> > > 	out:
> > > 		spin_unlock(&files->file_lock);
> > > 
> > > 		if (fd == -1u)
> > > 			return fd;
> > > 
> > > 		filp_close(file, files);
> > > 		return fd + 1;
> > > 	}
> > 
> > Thanks, Oleg!
> > 
> > I kept it dumb and was about to reply that your solution introduces more
> > code when it seemed we wanted to keep this very simple for now.
> > But then I saw that find_next_opened_fd() already exists as
> > find_next_fd(). So it's actually not bad compared to what I sent in v1.
> > So - with some small tweaks (need to test it and all now) - how do we
> > feel about?:
> 
> That's obviously not correct atm but I'll send out a tweaked version in
> a bit.

So given that we would really need another find_next_open_fd() I think
sticking to the simple cond_resched() version I sent before is better
for now until we see real-world performance issues.
I was however missing a test for close_range(fd, fd, 0) anyway so I'll
need to send a v2 with this test added.

Christian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
