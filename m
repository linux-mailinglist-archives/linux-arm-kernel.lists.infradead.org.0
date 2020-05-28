Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E82F41E5E23
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 13:21:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LHpS3qiDgqSXvRG912FfWpD0+MXvJ0k2Jy0D4GVztOk=; b=mh/qiGeK/CYU38
	XAgx0DBLC2iqtDL4lGinAfCYd5+l5V8lwviVeM59TXCHFbTzx27OVgdjuD8mvdQvake5sw7ex/XNm
	PTAJ9aMfUHY3g/rq9VeRUj3vhSUi6gQCtzeYWqtw6stWAqGf8OGDaz7OsiAUnefSUvyWCzAq8IQrj
	axlm2mNgISuryxFuJ3dN34XreYhlT0PyRdlyaXd9jaeP4J8pkKBsp1ROBi+oyRMD9DsYSsC2ZeDFD
	OeGm+E+TzF0MN8yht1KN49RMkDXuH6bJhh9JygpLC5boyNcUctZ8J7Ld6sZNbK19aTJcAsLF0w9c2
	GOCI3AesqL933YdcCMjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeGai-00038O-1m; Thu, 28 May 2020 11:20:52 +0000
Received: from us-smtp-1.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeGac-00036w-4I
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 11:20:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1590664841;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=0pDdsaPJ9DSWTCG29xVVgPA72+92+ZpKaGKhvHYc8/o=;
 b=cnGYK2JC5bYnTT2Pd08ImODjvO31mfBzx6DCuwCatJUslkIA68z3sN8V+SAI0uwCmF7riy
 oZ98Ejx2vo6hC9D5lt4lZqF3Ah6wX+67qWpQUied2otSd9O0NlcXwKUJNXT0AMsTpkVBtM
 qZOOCOQ7RFgWFcEOIQTt0/klvhEp9jc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-357-rz4JWXClNKyU_Z2vtGkSbw-1; Thu, 28 May 2020 07:20:37 -0400
X-MC-Unique: rz4JWXClNKyU_Z2vtGkSbw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C3F14805730;
 Thu, 28 May 2020 11:20:32 +0000 (UTC)
Received: from redhat.com (ovpn-113-1.rdu2.redhat.com [10.10.113.1])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id E409A7A8B6;
 Thu, 28 May 2020 11:20:26 +0000 (UTC)
Date: Thu, 28 May 2020 07:20:25 -0400
From: Jerome Glisse <jglisse@redhat.com>
To: Hugh Dickins <hughd@google.com>
Subject: Re: Cache flush issue with page_mapping_file() and swap back shmem
 page ?
Message-ID: <20200528112025.GA10175@redhat.com>
References: <20200528002033.GB1992500@redhat.com>
 <alpine.LSU.2.11.2005272021220.3857@eggly.anvils>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.LSU.2.11.2005272021220.3857@eggly.anvils>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_042046_250640_ACCDDBDE 
X-CRM114-Status: GOOD (  19.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [207.211.31.81 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Rich Felker <dalias@libc.org>, linux-sh@vger.kernel.org,
 Catalin Marinas <catalin.marinas@arm.com>, linux-mips@vger.kernel.org,
 "James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>,
 linux-mm@kvack.org, Guo Ren <guoren@kernel.org>, sparclinux@vger.kernel.org,
 Paul Burton <paulburton@kernel.org>, Helge Deller <deller@gmx.de>,
 Huang Ying <ying.huang@intel.com>, James Hogan <jhogan@kernel.org>,
 rmk+kernel@arm.linux.org.uk, linux-xtensa@linux-xtensa.org,
 Steven Capper <steve.capper@linaro.org>, Rabin Vincent <rabinv@axis.com>,
 Ley Foon Tan <lftan@altera.com>, Guan Xuetao <gxt@pku.edu.cn>,
 linux-arm-kernel@lists.infradead.org, Chris Zankel <chris@zankel.net>,
 Yoshinori Sato <ysato@users.sourceforge.jp>, linux-parisc@vger.kernel.org,
 Max Filippov <jcmvbkbc@gmail.com>, linux-kernel@vger.kernel.org,
 Ralf Baechle <ralf@linux-mips.org>, nios2-dev@lists.rocketboards.org,
 Andrew Morton <akpm@linux-foundation.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 27, 2020 at 08:46:22PM -0700, Hugh Dickins wrote:
> Hi Jerome,
> =

> On Wed, 27 May 2020, Jerome Glisse wrote:
> > So any arch code which uses page_mapping_file() might get the wrong
> > answer, this function will return NULL for a swap backed page which
> > can be a shmem pages. But shmem pages can still be shared among
> > multiple process (and possibly at different virtual addresses if
> > mremap was use).
> > =

> > Attached is a patch that changes page_mapping_file() to return the
> > shmem mapping for swap backed shmem page. I have not tested it (no
> > way for me to test all those architecture) and i spotted this while
> > working on something else. So i hope someone can take a closer look.
> =

> I'm certainly no expert on flush_dcache_page() and friends, but I'd
> be very surprised if such a problem exists, yet has gone unnoticed
> for so long.  page_mapping_file() itself is fairly new, added when
> a risk of crashing on a race with swapoff came in: but the previous
> use of page_mapping() would have suffered equally if there were such
> a cache flushinhg problem here.
> =

> And I'm afraid your patch won't do anything to help if there is a
> problem: very soon after shmem calls add_to_swap_cache(), it calls
> shmem_delete_from_page_cache(), which sets page->mapping to NULL.
> =

> But I can assure you that a shmem page (unlike an anon page) is never
> put into swap cache while it is mapped into userspace, and never
> mapped into userspace while it is still in swap cache: does that help?
> =


You are right i missed/forgot the part where shmem is never swapcache
and mapped at the same time, thus page_mapping_file() can return NULL
for those as they can no longer have alias mapping.

Thank you Hugh
J=E9r=F4me


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
