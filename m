Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B2E4804DE
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  3 Aug 2019 09:07:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FuIO63S5RYeblD8C/zzEBIdleH0dic0+D8Ps6p7JC+U=; b=q2Eqf6c83tMtO/
	XF9aJg1+b+KElwsHXj3krdfpsujQvHbfehyF4Pk+VDpzGhlNxb9N/tInm0jRWphCqt6yx2nGNsEHd
	JYiXEyNbWvWmRVQTbbDv62gQ1wiB9VoK43ynjIr/KW0rfKZBm0ku9XrmddegYcVWBRUGo8MKBSAA/
	l+6TgxHf5dgUMj0zT4/ZXk+KYCyrjTdJHD5er+Jlpjxoi75vLgK22cNnnZmSK1fG4CGlskwscpnGx
	qKEs6B3s0p3gzuNkowq0b234Xw5Djj/goXiol4lMEgtUVDHJDeBBLPQUPPfxeKb4IvtADiJK+fOaW
	S4S6NEjq4AIttIMarHow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hto86-0006dK-EO; Sat, 03 Aug 2019 07:07:02 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hto7u-0006ca-Le; Sat, 03 Aug 2019 07:06:52 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 08D01206A2;
 Sat,  3 Aug 2019 07:06:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564816009;
 bh=pPLKovyN1NMpp946XJreXv1Y0yg1S4P9Y162ukSMn64=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Rlojk96gVoiyivb+U7yrIkDTuHtioqnhmcEmMjAk1MQVJmXSmgcGRpi/2JLag+Dd6
 M19hr//PiOu9iNAJPJwAfgv2wtT5dx2nyCeRHoSIIHS1qKxvoiJQ2X4AR13zqgfnZk
 KxaPAYdBHbY01Ff9SDG1UhnB5NnA5pYpWqC1XkA0=
Date: Sat, 3 Aug 2019 09:06:21 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: john.hubbard@gmail.com
Subject: Re: [PATCH 15/34] staging/vc04_services: convert put_page() to
 put_user_page*()
Message-ID: <20190803070621.GA2508@kroah.com>
References: <20190802022005.5117-1-jhubbard@nvidia.com>
 <20190802022005.5117-16-jhubbard@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190802022005.5117-16-jhubbard@nvidia.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190803_000650_732799_38AF7662 
X-CRM114-Status: GOOD (  11.67  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-fbdev@vger.kernel.org, Jan Kara <jack@suse.cz>, kvm@vger.kernel.org,
 Dave Hansen <dave.hansen@linux.intel.com>, Dave Chinner <david@fromorbit.com>,
 dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 sparclinux@vger.kernel.org, Suniel Mahesh <sunil.m@techveda.org>,
 Dan Williams <dan.j.williams@intel.com>, devel@driverdev.osuosl.org,
 rds-devel@oss.oracle.com, linux-rdma@vger.kernel.org, x86@kernel.org,
 amd-gfx@lists.freedesktop.org, Christoph Hellwig <hch@infradead.org>,
 Jason Gunthorpe <jgg@ziepe.ca>, John Hubbard <jhubbard@nvidia.com>,
 xen-devel@lists.xenproject.org, devel@lists.orangefs.org,
 linux-media@vger.kernel.org, Stefan Wahren <stefan.wahren@i2se.com>,
 Mihaela Muraru <mihaela.muraru21@gmail.com>, intel-gfx@lists.freedesktop.org,
 linux-block@vger.kernel.org,
 =?iso-8859-1?B?Suly9G1l?= Glisse <jglisse@redhat.com>,
 linux-rpi-kernel@lists.infradead.org, ceph-devel@vger.kernel.org,
 Sidong Yang <realwakka@gmail.com>, linux-arm-kernel@lists.infradead.org,
 linux-nfs@vger.kernel.org, Eric Anholt <eric@anholt.net>,
 netdev@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
 linux-xfs@vger.kernel.org, linux-crypto@vger.kernel.org,
 Kishore KP <kishore.p@techveda.org>, linux-fsdevel@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>, Al Viro <viro@zeniv.linux.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 01, 2019 at 07:19:46PM -0700, john.hubbard@gmail.com wrote:
> From: John Hubbard <jhubbard@nvidia.com>
> 
> For pages that were retained via get_user_pages*(), release those pages
> via the new put_user_page*() routines, instead of via put_page() or
> release_pages().
> 
> This is part a tree-wide conversion, as described in commit fc1d8e7cca2d
> ("mm: introduce put_user_page*(), placeholder versions").
> 
> Cc: Eric Anholt <eric@anholt.net>
> Cc: Stefan Wahren <stefan.wahren@i2se.com>
> Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Cc: Mihaela Muraru <mihaela.muraru21@gmail.com>
> Cc: Suniel Mahesh <sunil.m@techveda.org>
> Cc: Al Viro <viro@zeniv.linux.org.uk>
> Cc: Sidong Yang <realwakka@gmail.com>
> Cc: Kishore KP <kishore.p@techveda.org>
> Cc: linux-rpi-kernel@lists.infradead.org
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: devel@driverdev.osuosl.org
> Signed-off-by: John Hubbard <jhubbard@nvidia.com>
> ---
>  .../vc04_services/interface/vchiq_arm/vchiq_2835_arm.c | 10 ++--------
>  1 file changed, 2 insertions(+), 8 deletions(-)

Acked-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
