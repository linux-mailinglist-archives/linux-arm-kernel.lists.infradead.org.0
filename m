Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2625F1A82B7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 17:28:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qf4MbiIfLb1FX9os6a2vrcSw9opwty1JjME1cMQW1Nk=; b=dgJrwvtOF8wEwd
	cnNAy+BzyVcsITBelWgjjlNblE2yCOgQHxY+jw4T0yQ0sMCKF1/txvOlehCHwgSBdfAufYcn38lTH
	UgwELW0FgXAz4orzMcumVnCiW6HrhP5NZEfbtqBKrlrfyUN+0ciWfCLuEzMmHfcmDhVM6PlBlh6Ib
	+JoYHLS4EYcix326dRfpmMHZ1aB6ydWu7141/CZBx1yTe7v5/aVBROQ734tuVTzFQQ6H46QKkhZbz
	uE/+fpU/MEgJy/7pGWJLuI9V6hDA8bwv0cWeadebVAUWEh4dueCYOKMTykSWY2rExJtDczIqqjLeB
	2zpcM5Q3+BcIdLVfem1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jONU7-000307-GZ; Tue, 14 Apr 2020 15:28:23 +0000
Received: from us-smtp-2.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jONTo-0002uV-SI
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 15:28:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1586878082;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=929N4Uaz3K3M/ZDt0dcZl9x31tqOtKQmEAdly5c0Mb8=;
 b=TtIiQr/0dEMvm6vpAH3l1GKJkSQ0FuJHPLVLjEgV0qYuhPBh3Kh6a9b/AzzAW+tbsLAgi1
 rHRoj15Txi/3P8rp14+kwkwE+gS14eDqw19bUTW6QlU6c6jvqFFDs0E/vd+bAFrmfv3PBW
 feDuxSF6BHKUocRTAJMXOeJ1K366GNI=
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com
 [209.85.219.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-338-1RRU3ON0Pe64Ab1alwzCig-1; Tue, 14 Apr 2020 11:28:00 -0400
X-MC-Unique: 1RRU3ON0Pe64Ab1alwzCig-1
Received: by mail-qv1-f72.google.com with SMTP id dk8so100284qvb.17
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Apr 2020 08:28:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=fQl7E2J5Id3WK2U6l9dHkxOAqTFLollC0wE6NW6GpKc=;
 b=j0ThYc6sPu5/t6Q/xKoFv91e8KYqo/d5u2udzGrEHpDYF4H1fRysMbCYZdOExV6d0G
 NoQ7ZuywB0FI831BNphLlpthz31Ite9NXlbmDPDXxgvaXkV4BEmzY4cODK6S+O8bw1SV
 EE8n7gUlL5pv0BxeS2rv8ETMaHWrz7Cvx7bpWrvpX91Vvhqjfua2t7fg/Gk3etB6UI7S
 C7za64HiPUa0lvjtUlNghXVi4MEJR4FMcmScFLv/3FOFAYMoLJrp1C0ZNgB4DRZJZPI4
 mLyi4bnPqXPIryhM9ij0Xm4ypEhOWO+KkIXPB8/19C5FFi1yffwhqB3oLG0uPTqezi2v
 hOpA==
X-Gm-Message-State: AGi0Puby7jfpwG1jzWqk4foPRbDYqJGI1T/do6lK8PnirSFBwZbyW0aP
 iT6viivdc22XYaAAXCsDQ/101+F/0qlbptFmt7jnC+uIroHD+YEXh3DIKN53vgz00keZ+ei4+3h
 wIwx2QoQsYDT8qZ+Qct8unNJaGxgdywARbds=
X-Received: by 2002:a05:620a:556:: with SMTP id
 o22mr9833525qko.166.1586878079963; 
 Tue, 14 Apr 2020 08:27:59 -0700 (PDT)
X-Google-Smtp-Source: APiQypKi4fEpiHK//JOd6coi6+kBQGk2tK7VvXLiOPA/Nm1mgCzbzlmc1ysUQObBrefDJRDgHB3now==
X-Received: by 2002:a05:620a:556:: with SMTP id
 o22mr9833484qko.166.1586878079506; 
 Tue, 14 Apr 2020 08:27:59 -0700 (PDT)
Received: from xz-x1 ([2607:9880:19c0:32::2])
 by smtp.gmail.com with ESMTPSA id w2sm4660953qtv.42.2020.04.14.08.27.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Apr 2020 08:27:58 -0700 (PDT)
Date: Tue, 14 Apr 2020 11:27:56 -0400
From: Peter Xu <peterx@redhat.com>
To: Mike Kravetz <mike.kravetz@oracle.com>
Subject: Re: [PATCH v2 4/4] hugetlbfs: clean up command line processing
Message-ID: <20200414152756.GG38470@xz-x1>
References: <20200401183819.20647-1-mike.kravetz@oracle.com>
 <20200401183819.20647-5-mike.kravetz@oracle.com>
 <20200410203730.GG3172@xz-x1>
 <ce42fa12-023b-7ed2-a60e-7dbf9c530981@oracle.com>
MIME-Version: 1.0
In-Reply-To: <ce42fa12-023b-7ed2-a60e-7dbf9c530981@oracle.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_082805_010600_88DE77B1 
X-CRM114-Status: GOOD (  36.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-doc@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 Dave Hansen <dave.hansen@linux.intel.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, linux-mm@kvack.org,
 Paul Mackerras <paulus@samba.org>, sparclinux@vger.kernel.org,
 linux-riscv@lists.infradead.org, Will Deacon <will@kernel.org>,
 Mina Almasry <almasrymina@google.com>, linux-s390@vger.kernel.org,
 Jonathan Corbet <corbet@lwn.net>,
 Christian Borntraeger <borntraeger@de.ibm.com>, Ingo Molnar <mingo@redhat.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Longpeng <longpeng2@huawei.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Vasily Gorbik <gor@linux.ibm.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Christophe Leroy <christophe.leroy@c-s.fr>, linux-kernel@vger.kernel.org,
 Palmer Dabbelt <palmer@dabbelt.com>, Andrew Morton <akpm@linux-foundation.org>,
 linuxppc-dev@lists.ozlabs.org, "David S.Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 13, 2020 at 10:59:26AM -0700, Mike Kravetz wrote:
> On 4/10/20 1:37 PM, Peter Xu wrote:
> > On Wed, Apr 01, 2020 at 11:38:19AM -0700, Mike Kravetz wrote:
> >> With all hugetlb page processing done in a single file clean up code.
> >> - Make code match desired semantics
> >>   - Update documentation with semantics
> >> - Make all warnings and errors messages start with 'HugeTLB:'.
> >> - Consistently name command line parsing routines.
> >> - Check for hugepages_supported() before processing parameters.
> >> - Add comments to code
> >>   - Describe some of the subtle interactions
> >>   - Describe semantics of command line arguments
> >>
> >> Signed-off-by: Mike Kravetz <mike.kravetz@oracle.com>
> >> ---
> >>  .../admin-guide/kernel-parameters.txt         | 35 ++++---
> >>  Documentation/admin-guide/mm/hugetlbpage.rst  | 44 +++++++++
> >>  mm/hugetlb.c                                  | 96 +++++++++++++++----
> >>  3 files changed, 142 insertions(+), 33 deletions(-)
> >>
> >> diff --git a/Documentation/admin-guide/kernel-parameters.txt b/Documentation/admin-guide/kernel-parameters.txt
> >> index 1bd5454b5e5f..de653cfe1726 100644
> >> --- a/Documentation/admin-guide/kernel-parameters.txt
> >> +++ b/Documentation/admin-guide/kernel-parameters.txt
> >> @@ -832,12 +832,15 @@
> >>  			See also Documentation/networking/decnet.txt.
> >>  
> >>  	default_hugepagesz=
> >> -			[same as hugepagesz=] The size of the default
> >> -			HugeTLB page size. This is the size represented by
> >> -			the legacy /proc/ hugepages APIs, used for SHM, and
> >> -			default size when mounting hugetlbfs filesystems.
> >> -			Defaults to the default architecture's huge page size
> >> -			if not specified.
> >> +			[HW] The size of the default HugeTLB page size. This
> > 
> > Could I ask what's "HW"?  Sorry this is not a comment at all but
> > really a pure question I wanted to ask... :)
> 
> kernel-parameters.rst includes kernel-parameters.txt and included the meaning
> for these codes.
> 
>        HW      Appropriate hardware is enabled.
> 
> Previously, it listed an obsolete list of architectures.

I see. It was a bit confusing since hugepage is not a real hardware,
"CAP (capability)" might be easier, but I get the point now, thanks!

[...]

> >> diff --git a/Documentation/admin-guide/mm/hugetlbpage.rst b/Documentation/admin-guide/mm/hugetlbpage.rst
> >> index 1cc0bc78d10e..de340c586995 100644
> >> --- a/Documentation/admin-guide/mm/hugetlbpage.rst
> >> +++ b/Documentation/admin-guide/mm/hugetlbpage.rst
> >> @@ -100,6 +100,50 @@ with a huge page size selection parameter "hugepagesz=<size>".  <size> must
> >>  be specified in bytes with optional scale suffix [kKmMgG].  The default huge
> >>  page size may be selected with the "default_hugepagesz=<size>" boot parameter.
> >>  
> >> +Hugetlb boot command line parameter semantics
> >> +hugepagesz - Specify a huge page size.  Used in conjunction with hugepages
> >> +	parameter to preallocate a number of huge pages of the specified
> >> +	size.  Hence, hugepagesz and hugepages are typically specified in
> >> +	pairs such as:
> >> +		hugepagesz=2M hugepages=512
> >> +	hugepagesz can only be specified once on the command line for a
> >> +	specific huge page size.  Valid huge page sizes are architecture
> >> +	dependent.
> >> +hugepages - Specify the number of huge pages to preallocate.  This typically
> >> +	follows a valid hugepagesz parameter.  However, if hugepages is the
> >> +	first or only hugetlb command line parameter it specifies the number
> >> +	of huge pages of default size to allocate.  The number of huge pages
> >> +	of default size specified in this manner can be overwritten by a
> >> +	hugepagesz,hugepages parameter pair for the default size.
> >> +	For example, on an architecture with 2M default huge page size:
> >> +		hugepages=256 hugepagesz=2M hugepages=512
> >> +	will result in 512 2M huge pages being allocated.  If a hugepages
> >> +	parameter is preceded by an invalid hugepagesz parameter, it will
> >> +	be ignored.
> >> +default_hugepagesz - Specify the default huge page size.  This parameter can
> >> +	only be specified once on the command line.  No other hugetlb command
> >> +	line parameter is associated with default_hugepagesz.  Therefore, it
> >> +	can appear anywhere on the command line.  If hugepages= is the first
> >> +	hugetlb command line parameter, the specified number of huge pages
> >> +	will apply to the default huge page size specified with
> >> +	default_hugepagesz.  For example,
> >> +		hugepages=512 default_hugepagesz=2M
> > 
> > No strong opinion, but considering to the special case of gigantic
> > huge page mentioned below, I'm thinking maybe it's easier to just ask
> > the user to always use "hugepagesz=X hugepages=Y" pair when people
> > want to reserve huge pages.
> 
> We can ask people to do this.  However, I do not think we can force it at
> this time.  Why?  Mostly because I have seen many instances where people
> only specify 'hugepages=X' on the command line to preallocate X huge pages
> of default size.  So, forcing 'hugepagesz=X hugepages=Y' would break those
> users.
> 
> > For example, some user might start to use this after this series
> > legally:
> > 
> >     default_hugepagesz=2M hugepages=1024
> 
> Well, that 'works' today.  You get that silly error message:
> 
> HugeTLB: unsupported default_hugepagesz 2097152. Reverting to 2097152
> 
> But, it does preallocate 1024 huge pages of size 2M.  Because people
> have noticed the silly error message, I suspect this usage,
> 
> 	default_hugepagesz=X hugepages=Y
> 
> is in use today and we need to support it.

Fair enough.

[...]

> >> @@ -3209,19 +3209,35 @@ static int __init hugetlb_init(void)
> >>  	if (!hugepages_supported())
> >>  		return 0;
> >>  
> >> -	if (!size_to_hstate(default_hstate_size)) {
> >> -		if (default_hstate_size != 0) {
> >> -			pr_err("HugeTLB: unsupported default_hugepagesz %lu. Reverting to %lu\n",
> >> -			       default_hstate_size, HPAGE_SIZE);
> >> -		}
> >> -
> >> +	/*
> >> +	 * Make sure HPAGE_SIZE (HUGETLB_PAGE_ORDER) hstate exists.  Some
> >> +	 * architectures depend on setup being done here.
> >> +	 *
> >> +	 * If a valid default huge page size was specified on the command line,
> >> +	 * add associated hstate if necessary.  If not, set default_hstate_size
> >> +	 * to default size.  default_hstate_idx is used at runtime to identify
> >> +	 * the default huge page size/hstate.
> >> +	 */
> >> +	hugetlb_add_hstate(HUGETLB_PAGE_ORDER);
> >> +	if (default_hstate_size)
> >> +		hugetlb_add_hstate(ilog2(default_hstate_size) - PAGE_SHIFT);
> >> +	else
> >>  		default_hstate_size = HPAGE_SIZE;
> >> -		hugetlb_add_hstate(HUGETLB_PAGE_ORDER);
> >> -	}
> >>  	default_hstate_idx = hstate_index(size_to_hstate(default_hstate_size));
> >> +
> >> +	/*
> >> +	 * default_hstate_max_huge_pages != 0 indicates a count (hugepages=)
> >> +	 * specified before a size (hugepagesz=).  Use this count for the
> >> +	 * default huge page size, unless a specific value was specified for
> >> +	 * this size in a hugepagesz/hugepages pair.
> >> +	 */
> >>  	if (default_hstate_max_huge_pages) {
> > 
> > Since we're refactoring this - Could default_hstate_max_huge_pages be
> > dropped directly (in hugepages= we can create the default hstate, then
> > we set max_huge_pages of the default hstate there)?  Or did I miss
> > anything important?
> 
> I do not think that works for 'hugepages=X default_hugepagesz=Y' processing?
> It seems like there will need to be more work done on default_hugepagesz
> processing.

That was really an awkward kernel cmdline... But I guess you're right.

I think it awkward because it can be also read in sequence as "reserve
X huge pages of default huge page size, then change default value to
Y".  So instead of awkward, maybe "ambiguous".  However I have totally
no clue on how to make this better either - there's really quite a lot
of freedom right now on specifying all these options right now.

Thanks,

-- 
Peter Xu


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
