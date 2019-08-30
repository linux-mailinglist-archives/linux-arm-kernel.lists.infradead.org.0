Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDEF1A2CC4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 04:21:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=BC9kvXG1Wrap6x5loUGw5LJUcS8Jl/pTlDKzOd/Pyxg=; b=L1RYqSxzvAJ69fc/oKtZHQYKz
	iH+hXwSqJ9AX9NakQIilb5Uu8goKq5pxQs2H/x36U7EGdLCLzoNDgPye+4ioz6dFNkYcs1kX+RKoI
	f2KKZXtawgZdxdXeiJBRtykLHSNk6VrvQ5O7n1Fakq7hAnNlti1IwcNTEd1xOwFz1RWcgrVF+6U1o
	cH4IUmipxKhwPKNGA0vss+kOqyonkhPQsNYchOZXl9Bthkf3fcrcQh6uWov5/1CkHz2GZbAPYtNDQ
	rEW62R6Wm+IPmZG717QBdcabbGGcpxjguILMOFEaJC2HnsoA+WQlir2kJHvAqLdz9Sn0IAV6ofjY8
	72BOFu7Wg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3WXq-00071N-Do; Fri, 30 Aug 2019 02:21:47 +0000
Received: from hqemgate16.nvidia.com ([216.228.121.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3WXB-00070y-Tk; Fri, 30 Aug 2019 02:21:07 +0000
Received: from hqpgpgate102.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate16.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5d6888110001>; Thu, 29 Aug 2019 19:21:05 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate102.nvidia.com (PGP Universal service);
 Thu, 29 Aug 2019 19:21:04 -0700
X-PGP-Universal: processed;
 by hqpgpgate102.nvidia.com on Thu, 29 Aug 2019 19:21:04 -0700
Received: from [10.110.48.201] (10.124.1.5) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Fri, 30 Aug
 2019 02:21:03 +0000
Subject: Re: [PATCH v3 00/39] put_user_pages(): miscellaneous call sites
To: Mike Marshall <hubcap@omnibond.com>
References: <20190807013340.9706-1-jhubbard@nvidia.com>
 <912eb2bd-4102-05c1-5571-c261617ad30b@nvidia.com>
 <CAOg9mSQKGDywcMde2DE42diUS7J8m74Hdv+xp_PJhC39EXZQuw@mail.gmail.com>
X-Nvconfidentiality: public
From: John Hubbard <jhubbard@nvidia.com>
Message-ID: <d453f865-2224-ed53-a2f4-f43d574c130a@nvidia.com>
Date: Thu, 29 Aug 2019 19:21:03 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAOg9mSQKGDywcMde2DE42diUS7J8m74Hdv+xp_PJhC39EXZQuw@mail.gmail.com>
X-Originating-IP: [10.124.1.5]
X-ClientProxiedBy: HQMAIL111.nvidia.com (172.20.187.18) To
 HQMAIL107.nvidia.com (172.20.187.13)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1567131665; bh=ws5caXaEY0X3GX3egw6JsJDC0L7OwnIAHkDMK9ZQcE4=;
 h=X-PGP-Universal:Subject:To:CC:References:X-Nvconfidentiality:From:
 Message-ID:Date:User-Agent:MIME-Version:In-Reply-To:
 X-Originating-IP:X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=dIUKOH913DAYlocN1x3OWKU66rYzbsvcqMg6XurXOtfsQm0mTaQq0ufL9HiRQjmKf
 MYeR8XR6MbUy9f2nOHFjitJW5jxjU59hEwD2KYzGMRBc0+P+o4b2mkzUliEchFZQzm
 D0OR0ZfFBCp6cKpnoBGakw3Ch1supTeIz+DcDxFqgzxBAMqXWQoRbk0Sq3VWx6u9tp
 6uURi8FKe6XveWY1U9zok9s2um/SF43+51Cnxqw5q2h2Dtp4kEwxNonMDqxzAcZjDx
 HfyaHZc2XUvwuRV5WZb7Ki3OlH/mp5QHGx5CtmwXtp2TNme1r3iXAZgXDKrycQZylt
 qlPWiGD9ap9bQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_192105_992231_80C3F5FD 
X-CRM114-Status: GOOD (  12.05  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 dri-devel@lists.freedesktop.org, linux-mm <linux-mm@kvack.org>,
 sparclinux@vger.kernel.org, Ira Weiny <ira.weiny@intel.com>,
 Dan Williams <dan.j.williams@intel.com>, devel@driverdev.osuosl.org,
 rds-devel@oss.oracle.com, linux-rdma@vger.kernel.org, x86@kernel.org,
 amd-gfx@lists.freedesktop.org, Christoph Hellwig <hch@infradead.org>,
 Jason Gunthorpe <jgg@ziepe.ca>, xen-devel@lists.xenproject.org,
 devel@lists.orangefs.org, linux-media@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, john.hubbard@gmail.com,
 linux-block@vger.kernel.org,
 =?UTF-8?B?SsOpcsO0bWUgR2xpc3Nl?= <jglisse@redhat.com>,
 linux-rpi-kernel@lists.infradead.org, ceph-devel <ceph-devel@vger.kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 Linux NFS Mailing List <linux-nfs@vger.kernel.org>, netdev@vger.kernel.org,
 LKML <linux-kernel@vger.kernel.org>, linux-xfs@vger.kernel.org,
 linux-crypto@vger.kernel.org, linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 8/29/2019 6:29 PM, Mike Marshall wrote:
> Hi John...
> 
> I added this patch series on top of Linux 5.3rc6 and ran
> xfstests with no regressions...
> 
> Acked-by: Mike Marshall <hubcap@omnibond.com>
> 

Hi Mike (and I hope Ira and others are reading as well, because
I'm making a bunch of claims further down),

That's great news, thanks for running that test suite and for
the report and the ACK.

There is an interesting pause right now, due to the fact that
we've made some tentative decisions about gup pinning, that affect
the call sites. A key decision is that only pages that were
requested via FOLL_PIN, will require put_user_page*() to release
them. There are 4 main cases, which were first explained by Jan
Kara and Vlastimil Babka, and are now written up in my FOLL_PIN
patch [1].

So, what that means for this series is that:

1. Some call sites (mlock.c for example, and a lot of the mm/ files
in fact, and more) will not be converted: some of these patches will
get dropped, especially in mm/.

2. Call sites that do DirectIO or RDMA will need to set FOLL_PIN, and
will also need to call put_user_page().

3. Call sites that do RDMA will need to set FOLL_LONGTERM *and* FOLL_PIN,

    3.a. ...and will at least in some cases need to provide a link to a
    vaddr_pin object, and thus back to a struct file*...maybe. Still
    under discussion.

4. It's desirable to keep FOLL_* flags (or at least FOLL_PIN) internal
to the gup() calls. That implies using a wrapper call such as Ira's
vaddr_pin_[user]_pages(), instead of gup(), and vaddr_unpin_[user]_pages()
instead of put_user_page*().

5. We don't want to churn the call sites unnecessarily.

With that in mind, I've taken another pass through all these patches
and narrowed it down to:

     a) 12 call sites that I'd like to convert soon, but even those
        really look cleaner with a full conversion to a wrapper call
        similar to (identical to?) vaddr_pin_[user]_pages(), probably
        just the FOLL_PIN only variant (not FOLL_LONGTERM). That
        wrapper call is not ready yet, though.

     b) Some more call sites that require both FOLL_PIN and FOLL_LONGTERM.
        Definitely will wait to use the wrapper calls for these, because
        they may also require hooking up to a struct file*.

     c) A few more that were already applied, which is fine, because they
        show where to convert, and simplify a few sites anyway. But they'll
        need follow-on changes to, one way or another, set FOLL_PIN.

     d) And of course a few sites whose patches get dropped, as mentioned
        above.

[1] https://lore.kernel.org/r/20190821040727.19650-3-jhubbard@nvidia.com

thanks,
-- 
John Hubbard
NVIDIA

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
