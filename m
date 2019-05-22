Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F847268B2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 May 2019 18:58:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Cd3kMz9UiDPcOD8u7QAqNkFFkTNkFAyNYSS4OVn5Sr0=; b=nz7P+INHF/3zuq
	m9CWiJd9nHcmAIQ3GkF0KZSmOGXXsO3DLs7rZiWzACYukZAWBHvRyJYFe7jCkOZC4RcozsqFTKPUQ
	5gnFVR3eKA7icou3AEX7rpQEZu5XqfMk92sye3r+HVw2pKjQyI1dYlEzjPW+iXObwe2oTpl7eZuPF
	hU9sZYhSbWOqwV8qXgIaLmvnMy1CYbp0EYh/HC1EhaVpLf7qU30dzw/mRQNtO9yKroJy8q01hlhfr
	ZVjw3aR/1FKFmC+pTTVGWLtJHPf24xG59qgGE9wYp8y2uepf4RUsO9fXFv74ZxLCGD3eFyFYoVuw4
	2XJJvfJ5lHY3YtysQy0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTUZT-0008Pb-NP; Wed, 22 May 2019 16:58:31 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTUZM-0008Oe-Ng
 for linux-arm-kernel@lists.infradead.org; Wed, 22 May 2019 16:58:26 +0000
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 494B93053878;
 Wed, 22 May 2019 16:57:52 +0000 (UTC)
Received: from dhcp-27-174.brq.redhat.com (unknown [10.43.17.159])
 by smtp.corp.redhat.com (Postfix) with SMTP id 69B5560BE5;
 Wed, 22 May 2019 16:57:40 +0000 (UTC)
Received: by dhcp-27-174.brq.redhat.com (nbSMTP-1.00) for uid 1000
 oleg@redhat.com; Wed, 22 May 2019 18:57:50 +0200 (CEST)
Date: Wed, 22 May 2019 18:57:37 +0200
From: Oleg Nesterov <oleg@redhat.com>
To: Christian Brauner <christian@brauner.io>
Subject: Re: [PATCH v1 1/2] open: add close_range()
Message-ID: <20190522165737.GC4915@redhat.com>
References: <20190522155259.11174-1-christian@brauner.io>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190522155259.11174-1-christian@brauner.io>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.41]); Wed, 22 May 2019 16:58:18 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_095824_812829_B23A9D4A 
X-CRM114-Status: GOOD (  13.80  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

On 05/22, Christian Brauner wrote:
>
> +static struct file *pick_file(struct files_struct *files, unsigned fd)
>  {
> -	struct file *file;
> +	struct file *file = NULL;
>  	struct fdtable *fdt;
>  
>  	spin_lock(&files->file_lock);
> @@ -632,15 +629,65 @@ int __close_fd(struct files_struct *files, unsigned fd)
>  		goto out_unlock;
>  	rcu_assign_pointer(fdt->fd[fd], NULL);
>  	__put_unused_fd(files, fd);
> -	spin_unlock(&files->file_lock);
> -	return filp_close(file, files);
>  
>  out_unlock:
>  	spin_unlock(&files->file_lock);
> -	return -EBADF;
> +	return file;

...

> +int __close_range(struct files_struct *files, unsigned fd, unsigned max_fd)
> +{
> +	unsigned int cur_max;
> +
> +	if (fd > max_fd)
> +		return -EINVAL;
> +
> +	rcu_read_lock();
> +	cur_max = files_fdtable(files)->max_fds;
> +	rcu_read_unlock();
> +
> +	/* cap to last valid index into fdtable */
> +	if (max_fd >= cur_max)
> +		max_fd = cur_max - 1;
> +
> +	while (fd <= max_fd) {
> +		struct file *file;
> +
> +		file = pick_file(files, fd++);

Well, how about something like

	static unsigned int find_next_opened_fd(struct fdtable *fdt, unsigned start)
	{
		unsigned int maxfd = fdt->max_fds;
		unsigned int maxbit = maxfd / BITS_PER_LONG;
		unsigned int bitbit = start / BITS_PER_LONG;

		bitbit = find_next_bit(fdt->full_fds_bits, maxbit, bitbit) * BITS_PER_LONG;
		if (bitbit > maxfd)
			return maxfd;
		if (bitbit > start)
			start = bitbit;
		return find_next_bit(fdt->open_fds, maxfd, start);
	}

	unsigned close_next_fd(struct files_struct *files, unsigned start, unsigned maxfd)
	{
		unsigned fd;
		struct file *file;
		struct fdtable *fdt;
	
		spin_lock(&files->file_lock);
		fdt = files_fdtable(files);
		fd = find_next_opened_fd(fdt, start);
		if (fd >= fdt->max_fds || fd > maxfd) {
			fd = -1;
			goto out;
		}

		file = fdt->fd[fd];
		rcu_assign_pointer(fdt->fd[fd], NULL);
		__put_unused_fd(files, fd);
	out:
		spin_unlock(&files->file_lock);

		if (fd == -1u)
			return fd;

		filp_close(file, files);
		return fd + 1;
	}

?

Then close_range() can do

	while (fd < max_fd)
		fd = close_next_fd(fd, maxfd);

Oleg.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
