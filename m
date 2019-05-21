Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 025E425888
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 21:59:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=av/UN6sMWicLPSY0BirHluQNdGd4rQF19iZrTrKSDaU=; b=kqahrrOFQ52Zw8
	GCOvifbo3x8a+utmsyP+a4PIjdf22wXXK16pPFRA2l58MmwBzEeHWfy13YrlcIfkPJ7WLMsVyGPu/
	Yio3KhWKp7oy0CA4LQ9qu3Lvf4fP2r40scXjxuY8YaM0yzPtMGkPoLVsyrusX03cGXS6eiL1who+z
	DwT/9bs8WdW+0Cx/9HA62Gyt86Dykr07eD2G9EbGtUwod8Vf1416BGCYwUPuQuUmjDmEZ27JvADA5
	mF//flg2FUC2nyOo3x88JG3/Yxgr5IIhbKkc7+d/+mJS/3V901XoH3tLAjaol7h0gTL7w/wWisOXq
	1d3xVK5r6x+g1My8MePA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTAv8-0006wG-KT; Tue, 21 May 2019 19:59:34 +0000
Received: from willy by bombadil.infradead.org with local (Exim 4.90_1 #2 (Red
 Hat Linux)) id 1hTAv2-0006w6-9U; Tue, 21 May 2019 19:59:28 +0000
Date: Tue, 21 May 2019 12:59:28 -0700
From: Matthew Wilcox <willy@infradead.org>
To: Al Viro <viro@zeniv.linux.org.uk>
Subject: Re: [PATCH 1/2] open: add close_range()
Message-ID: <20190521195928.GB6738@bombadil.infradead.org>
References: <20190521150006.GJ17978@ZenIV.linux.org.uk>
 <20190521113448.20654-1-christian@brauner.io>
 <28114.1558456227@warthog.procyon.org.uk>
 <20190521192009.GK17978@ZenIV.linux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190521192009.GK17978@ZenIV.linux.org.uk>
User-Agent: Mutt/1.9.2 (2017-12-15)
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
 David Howells <dhowells@redhat.com>, linux-kselftest@vger.kernel.org,
 sparclinux@vger.kernel.org, shuah@kernel.org, linux-arch@vger.kernel.org,
 linux-s390@vger.kernel.org, miklos@szeredi.hu, x86@kernel.org,
 torvalds@linux-foundation.org, Christian Brauner <christian@brauner.io>,
 linux-mips@vger.kernel.org, linux-xtensa@linux-xtensa.org, tkjos@android.com,
 arnd@arndb.de, jannh@google.com, linux-m68k@lists.linux-m68k.org,
 tglx@linutronix.de, ldv@altlinux.org, linux-arm-kernel@lists.infradead.org,
 fweimer@redhat.com, linux-parisc@vger.kernel.org, linux-api@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-alpha@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 21, 2019 at 08:20:09PM +0100, Al Viro wrote:
> On Tue, May 21, 2019 at 05:30:27PM +0100, David Howells wrote:
> 
> > If we can live with close_from(int first) rather than close_range(), then this
> > can perhaps be done a lot more efficiently by:
> > 
> > 	new = alloc_fdtable(first);
> > 	spin_lock(&files->file_lock);
> > 	old = files_fdtable(files);
> > 	copy_fds(new, old, 0, first - 1);
> > 	rcu_assign_pointer(files->fdt, new);
> > 	spin_unlock(&files->file_lock);
> > 	clear_fds(old, 0, first - 1);
> > 	close_fdt_from(old, first);
> > 	kfree_rcu(old);
> 
> I really hate to think how that would interact with POSIX locks...

POSIX locks store current->files in fl_owner; David's resizing the
underlying files->fdt, just like growing from 64 to 256 fds.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
