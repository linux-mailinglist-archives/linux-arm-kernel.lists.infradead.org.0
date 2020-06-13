Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF21E1F8599
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 14 Jun 2020 00:17:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1NM96h8WcceT6EtAds5K4q4NL8Upjv5Z4g9GF6qcRy0=; b=RE1j6vAdD+HHO7
	ssDF6mGQEwMbMefh/DkqWokhxxuJnOY91QOM7zbaow/Qq0wvfWfYdqrU6Re4KQfxT/CwNuAEfWLgh
	+jZqIsg/6ojcmlpUWoJFnrj1e7310Rf5vM+lqj8LZkzG6HOXuXoxi21AsnyUraa2pWO84ugsKtymR
	7tTAmnRcCmt9f4pnyooQx4dtLNphvGazfTm1/UPxO5Se+3y7WjxgVmxdRZEDeYfYZy3m4jj64C/ak
	GVHSs4JGtH06lJ9nV/RuvfLf+SSWHQ014pI9auhEYSzPJZEzKLZoKDa5CwjmhbbyuMPtQRDF1icpr
	pedbcSjcCOHkGrAFf+Fw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkESU-00066L-Gv; Sat, 13 Jun 2020 22:17:02 +0000
Received: from willy by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1jkESM-000668-Rm; Sat, 13 Jun 2020 22:16:54 +0000
Date: Sat, 13 Jun 2020 15:16:54 -0700
From: Matthew Wilcox <willy@infradead.org>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [RFC 1/3] lib: copy_{from,to}_user using gup & kmap_atomic()
Message-ID: <20200613221654.GO8681@bombadil.infradead.org>
References: <cover.1591885760.git.afzal.mohd.ma@gmail.com>
 <9e1de19f35e2d5e1d115c9ec3b7c3284b4a4e077.1591885760.git.afzal.mohd.ma@gmail.com>
 <CAK8P3a1XUJHC0kG_Qwh4D4AoxTgCL5ggHd=45yNSmzaYWLUWXw@mail.gmail.com>
 <20200612135538.GA13399@afzalpc>
 <CAK8P3a25ffh_2Y1xKDbkL2xU9nLpGbEq7j6xHdODEwUtavgdwA@mail.gmail.com>
 <20200613120432.GA5319@afzalpc>
 <CAK8P3a2g6a=V4BmPAOM0vNYUfJqm_aZziQhCxfF8MT_fbHMMLg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK8P3a2g6a=V4BmPAOM0vNYUfJqm_aZziQhCxfF8MT_fbHMMLg@mail.gmail.com>
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
Cc: Will Deacon <will@kernel.org>, Nicolas Pitre <nico@fluxnic.net>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Linux-MM <linux-mm@kvack.org>, afzal mohammed <afzal.mohd.ma@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Jun 13, 2020 at 10:45:33PM +0200, Arnd Bergmann wrote:
> On Sat, Jun 13, 2020 at 2:04 PM afzal mohammed <afzal.mohd.ma@gmail.com> wrote:
> > Observation is that max. pages reaching copy_{from,to}_user() is 2,
> > observed maximum of n (number of bytes) being 1 page size. i think C
> > library cuts any size read, write to page size (if it exceeds) &
> > invokes the system call. Max. pages reaching 2, happens when 'n'
> > crosses page boundary, this has been observed w/ small size request
> > as well w/ ones of exact page size (but not page aligned).
> 
> Right, this is apparently because tmpfs uses shmem_file_read_iter() to
> copy the file pages one at a time. generic_file_buffered_read() seems
> similar, to copying between an aligned kernel page and address in
> user space that is not page aligned would be an important case to
> optimize for.

This is kind of the nature of the page cache.  The kernel doesn't
necessarily have contiguous memory in the page cache, so it's going to
be split on page boundaries.  This is going to change with my THP series
(I haven't actually changed generic_file_buffered_read(), but it'll
come later).

> > Quickly comparing boot-time on Beagle Bone White, boot time increases
> > by only 4%, perhaps this worry is irrelevant, but just thought will
> > put it across.
> 
> 4% boot time increase sounds like a lot, especially if that is only for
> copy_from_user/copy_to_user. In the end it really depends on how well
> get_user()/put_user() and small copies can be optimized in the end.

The write path should also be paid attention to.  Look at
generic_perform_write() which first calls iov_iter_fault_in_readable()
(for the entire length of the write) and then actually does the copy
later with iov_iter_copy_from_user_atomic().  So you're going to want
to optimise the case where you access the same pages multiple times.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
