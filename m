Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59D55255DA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 18:41:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eDn9mTL9gr1JUfRsC/keQhuRxlscX4MbDAjcCKhyy1A=; b=Zzrxd/u8O0N+3X
	GqShklxdPgvr6x5wMkmGFAUntkLvwFN25Z+GlU9e4V5RS2M5zJw/+F/W+BQqBIU42Nfg8XO7qC4Je
	+zX8xRx9RE4u33eGVEPNfOhxBVKthKUJ0OcDq1W0UOkpFR1dPHmUGj3dQZiCj6qcVFlhxvJPqoLuZ
	CtCpCsUwgqyn3VQ4NMl2Rekzn46D/A2rVMSVGFjzNcemKYRDCMOkTFzwi9SrVPnRAbxDNuyPLptfB
	x88vbY6Wjt7Zvz3esCLYI/pn98/5z2BmqUK/3P3XatTXtP0HhqOZvxCWR1WSkl0o+6UWFxkUnw/m2
	tcaE0cz/x2YBEpVueIMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT7pr-0004uL-DC; Tue, 21 May 2019 16:41:55 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT7pi-0004tg-Et
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 16:41:48 +0000
Received: by mail-wm1-x341.google.com with SMTP id n25so1746482wmk.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 May 2019 09:41:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=brauner.io; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=QRw4dWFrlFKNeC2Hv6jFCNR7pmJ9ZVloUzzaJsWHe3k=;
 b=DrUfMEDjMCX/F/kpAns9Xje6tAglSh3UhG5Ut0HpXQH/i/WF067F5FUZoHtyFcz92J
 B9zO7Q3xmWBLCoBBlKTKoCtUiQsaTMx3Npeppmj4pHHAb15DBLIi9tECGzeTa0qz68HY
 5SJCekbjPP909njq82OecOWv07W5VLYr5VkHE6sbSe+2o5Mw73nXEvvOijdE8vUJH9BM
 uSenbJ2wN1Uv1xiE6qAy9CpI8LAAlCfwF/dLDfgYTm5Xge0CjqlWt1lxcYk7Ou9/XL7L
 lIMEXS/i0lcGD5hbzAqtPxjiA1/NY2p62maSbnW0JtvlH3GgYQ9nmlSCeM60N0klvzp1
 geRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=QRw4dWFrlFKNeC2Hv6jFCNR7pmJ9ZVloUzzaJsWHe3k=;
 b=iCYKS11pLBHYJTWixT7hVQFWCrzN4gVNiDUhQVUnvDDxNsmxWvze2K+Hy18srvbz4G
 lXgxj0dpBp7R89ODySNRmz9mgxBJGU0sZ90nQuA+qChtmW9cEicy7EHfG1tHsIiDYuFT
 BSTQ4cFKzpwyOt3iwOJIqAlggC+5Uv05eweAuiNBNb+Z7GFpUOIlM9HX6IWRp3d0PL6l
 1xqJNXh/xHWjUhYGWcwaDVPYAu7LaV5z3q4u4jzlepWlgrwOorjsgqLDe5PMKYiHO4sr
 K59WGJfRx14HsKANa7QHjmuakdannZ0ZM1kN1Fesfs08fk6G84jcV6GGdZWJsn6l9E6z
 uphA==
X-Gm-Message-State: APjAAAXugdlmJcEIvBrxGNH6BwFSvnyddRRLttyOWpgHjfOvm9oS1c0R
 OsTY+FxqMcb6KRkxIPCVFPb84om0BJLf6g==
X-Google-Smtp-Source: APXvYqy9lGE6AuIM688BrnvZ7pn7z99PmptY1DxlEejau1I+HdIPSmSJeaZzuDaCQae7Ot/VplE6/A==
X-Received: by 2002:a7b:c40e:: with SMTP id k14mr3957899wmi.114.1558456904711; 
 Tue, 21 May 2019 09:41:44 -0700 (PDT)
Received: from brauner.io ([212.91.227.56])
 by smtp.gmail.com with ESMTPSA id q14sm7089531wrx.86.2019.05.21.09.41.43
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 21 May 2019 09:41:44 -0700 (PDT)
Date: Tue, 21 May 2019 18:41:42 +0200
From: Christian Brauner <christian@brauner.io>
To: David Howells <dhowells@redhat.com>
Subject: Re: [PATCH 1/2] open: add close_range()
Message-ID: <20190521164141.rbehqnghiej3gfua@brauner.io>
References: <20190521150006.GJ17978@ZenIV.linux.org.uk>
 <20190521113448.20654-1-christian@brauner.io>
 <28114.1558456227@warthog.procyon.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <28114.1558456227@warthog.procyon.org.uk>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_094146_919071_E43447FC 
X-CRM114-Status: GOOD (  16.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-ia64@vger.kernel.org, linux-sh@vger.kernel.org, oleg@redhat.com,
 linux-kselftest@vger.kernel.org, sparclinux@vger.kernel.org, shuah@kernel.org,
 linux-arch@vger.kernel.org, linux-s390@vger.kernel.org, miklos@szeredi.hu,
 x86@kernel.org, torvalds@linux-foundation.org, linux-mips@vger.kernel.org,
 linux-xtensa@linux-xtensa.org, tkjos@android.com, arnd@arndb.de,
 jannh@google.com, linux-m68k@lists.linux-m68k.org,
 Al Viro <viro@zeniv.linux.org.uk>, tglx@linutronix.de, ldv@altlinux.org,
 linux-arm-kernel@lists.infradead.org, fweimer@redhat.com,
 linux-parisc@vger.kernel.org, linux-api@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-alpha@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 21, 2019 at 05:30:27PM +0100, David Howells wrote:
> Al Viro <viro@zeniv.linux.org.uk> wrote:
> 
> > Umm...  That's going to be very painful if you dup2() something to MAX_INT and
> > then run that; roughly 2G iterations of bouncing ->file_lock up and down,
> > without anything that would yield CPU in process.
> > 
> > If anything, I would suggest something like
> > 
> > 	fd = *start_fd;
> > 	grab the lock
> >         fdt = files_fdtable(files);
> > more:
> > 	look for the next eviction candidate in ->open_fds, starting at fd
> > 	if there's none up to max_fd
> > 		drop the lock
> > 		return NULL
> > 	*start_fd = fd + 1;
> > 	if the fscker is really opened and not just reserved
> > 		rcu_assign_pointer(fdt->fd[fd], NULL);
> > 		__put_unused_fd(files, fd);
> > 		drop the lock
> > 		return the file we'd got
> > 	if (unlikely(need_resched()))
> > 		drop lock
> > 		cond_resched();
> > 		grab lock
> > 		fdt = files_fdtable(files);
> > 	goto more;
> > 
> > with the main loop being basically
> > 	while ((file = pick_next(files, &start_fd, max_fd)) != NULL)
> > 		filp_close(file, files);
> 
> If we can live with close_from(int first) rather than close_range(), then this
> can perhaps be done a lot more efficiently by:

Yeah, you mentioned this before. I do like being able to specify an
upper bound to have the ability to place fds strategically after said
upper bound.
I have used this quite a few times where I know that given task may have
inherited up to m fds and I want to inherit a specific pipe who's fd I
know. Then I'd dup2(pipe_fd, <upper_bound + 1>) and then close all
other fds. Is that too much of a corner case?

Christian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
