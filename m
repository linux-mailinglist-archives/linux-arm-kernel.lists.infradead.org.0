Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2717881C2
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 19:56:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qtw7m05VR7cN+yUM7d4zk9FOZaOXo663lPUTATuoIv0=; b=Q5+850SKKit0Xe
	8IJHl8d17VvQGk8Q0KRZ4iG8JzOLPDNfdjYiEltbCuHmiaU2rSg7VXFnuAF16d3I9VF4y7lcMXB/K
	dYr4W883nu+gCMTOydQxhw9bdwQbthEJ+ihKBaGPa32IgAsG9YJIcUhR8MhefzDujyr+xcQK4wjTy
	evYzT7Yp43LYuxlGor/0uUrI9Fe+L81ieLD1snAeiAsGq8mO3gTMEKvY7mPTxWwG7IMrPnAu9meY2
	C87DjOKdRbWzfacNQ9h7WFwDXwzJdkhMwu/MhBVHYv/x9ftcVAnSTdOr/Py4yZSHED72wV4sF2pr5
	BPlrNCZ8x1TU+hk4Z58g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw985-0004no-Ea; Fri, 09 Aug 2019 17:56:41 +0000
Received: from mga09.intel.com ([134.134.136.24])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hw97s-0004n1-8J; Fri, 09 Aug 2019 17:56:30 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Aug 2019 10:56:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,366,1559545200"; d="scan'208";a="350560074"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
 by orsmga005.jf.intel.com with ESMTP; 09 Aug 2019 10:56:24 -0700
Received: from crsmsx151.amr.corp.intel.com (172.18.7.86) by
 FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 9 Aug 2019 10:56:23 -0700
Received: from crsmsx101.amr.corp.intel.com ([169.254.1.115]) by
 CRSMSX151.amr.corp.intel.com ([169.254.3.186]) with mapi id 14.03.0439.000;
 Fri, 9 Aug 2019 11:56:21 -0600
From: "Weiny, Ira" <ira.weiny@intel.com>
To: Jan Kara <jack@suse.cz>
Subject: RE: [PATCH 00/34] put_user_pages(): miscellaneous call sites
Thread-Topic: [PATCH 00/34] put_user_pages(): miscellaneous call sites
Thread-Index: AQHVSNjU1EYxEMQcyke2Y16AlWiV+abn98YAgAA6ZwCAABzEgIAAB8CAgABJHoCABynCAIAAAqCAgAC1jYCAAmuxgIAANKMg
Date: Fri, 9 Aug 2019 17:56:20 +0000
Message-ID: <2807E5FD2F6FDA4886F6618EAC48510E79E7F367@CRSMSX101.amr.corp.intel.com>
References: <20190802022005.5117-1-jhubbard@nvidia.com>
 <20190802091244.GD6461@dhcp22.suse.cz>
 <20190802124146.GL25064@quack2.suse.cz>
 <20190802142443.GB5597@bombadil.infradead.org>
 <20190802145227.GQ25064@quack2.suse.cz>
 <076e7826-67a5-4829-aae2-2b90f302cebd@nvidia.com>
 <20190807083726.GA14658@quack2.suse.cz>
 <20190807084649.GQ11812@dhcp22.suse.cz>
 <20190808023637.GA1508@iweiny-DESK2.sc.intel.com>
 <20190809083435.GA17568@quack2.suse.cz>
In-Reply-To: <20190809083435.GA17568@quack2.suse.cz>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMjgzZWFlNTQtZDMwNC00YTZiLThiNDktMzI0ZWY3MGNjMDdiIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiY2tWUXpQWXg4RTZvTlVIZFwvOFVSVWNwbCs3V2JDTG5GcHNpZTB3bzRRaEhFUExOQzZXZGtLeFkzNUhuNjVBOEYifQ==
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [172.18.205.10]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_105628_391391_0939AF4C 
X-CRM114-Status: GOOD (  33.44  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.24 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "linux-fbdev@vger.kernel.org" <linux-fbdev@vger.kernel.org>,
 "kvm@vger.kernel.org" <kvm@vger.kernel.org>,
 Dave Hansen <dave.hansen@linux.intel.com>, Dave Chinner <david@fromorbit.com>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 Michal Hocko <mhocko@kernel.org>, "linux-mm@kvack.org" <linux-mm@kvack.org>,
 "amd-gfx@lists.freedesktop.org" <amd-gfx@lists.freedesktop.org>,
 "sparclinux@vger.kernel.org" <sparclinux@vger.kernel.org>, "Williams,
 Dan J" <dan.j.williams@intel.com>,
 "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 "rds-devel@oss.oracle.com" <rds-devel@oss.oracle.com>,
 "linux-rdma@vger.kernel.org" <linux-rdma@vger.kernel.org>,
 "x86@kernel.org" <x86@kernel.org>, Matthew Wilcox <willy@infradead.org>,
 Christoph Hellwig <hch@infradead.org>, Jason Gunthorpe <jgg@ziepe.ca>,
 "xen-devel@lists.xenproject.org" <xen-devel@lists.xenproject.org>,
 "devel@lists.orangefs.org" <devel@lists.orangefs.org>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>,
 John Hubbard <jhubbard@nvidia.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "john.hubbard@gmail.com" <john.hubbard@gmail.com>,
 "linux-block@vger.kernel.org" <linux-block@vger.kernel.org>,
 =?iso-8859-1?Q?J=E9r=F4me_Glisse?= <jglisse@redhat.com>,
 "linux-rpi-kernel@lists.infradead.org" <linux-rpi-kernel@lists.infradead.org>,
 "ceph-devel@vger.kernel.org" <ceph-devel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-nfs@vger.kernel.org" <linux-nfs@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 LKML <linux-kernel@vger.kernel.org>,
 "linux-xfs@vger.kernel.org" <linux-xfs@vger.kernel.org>,
 "linux-crypto@vger.kernel.org" <linux-crypto@vger.kernel.org>,
 "linux-fsdevel@vger.kernel.org" <linux-fsdevel@vger.kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> 
> On Wed 07-08-19 19:36:37, Ira Weiny wrote:
> > On Wed, Aug 07, 2019 at 10:46:49AM +0200, Michal Hocko wrote:
> > > > So I think your debug option and my suggested renaming serve a bit
> > > > different purposes (and thus both make sense). If you do the
> > > > renaming, you can just grep to see unconverted sites. Also when
> > > > someone merges new GUP user (unaware of the new rules) while you
> > > > switch GUP to use pins instead of ordinary references, you'll get
> > > > compilation error in case of renaming instead of hard to debug
> > > > refcount leak without the renaming. And such conflict is almost
> > > > bound to happen given the size of GUP patch set... Also the
> > > > renaming serves against the "coding inertia" - i.e., GUP is around for
> ages so people just use it without checking any documentation or comments.
> > > > After switching how GUP works, what used to be correct isn't
> > > > anymore so renaming the function serves as a warning that
> > > > something has really changed.
> > >
> > > Fully agreed!
> >
> > Ok Prior to this I've been basing all my work for the RDMA/FS DAX
> > stuff in Johns put_user_pages()...  (Including when I proposed failing
> > truncate with a lease in June [1])
> >
> > However, based on the suggestions in that thread it became clear that
> > a new interface was going to need to be added to pass in the "RDMA
> > file" information to GUP to associate file pins with the correct processes...
> >
> > I have many drawings on my white board with "a whole lot of lines" on
> > them to make sure that if a process opens a file, mmaps it, pins it
> > with RDMA, _closes_ it, and ummaps it; that the resulting file pin can
> > still be traced back to the RDMA context and all the processes which
> > may have access to it....  No matter where the original context may
> > have come from.  I believe I have accomplished that.
> >
> > Before I go on, I would like to say that the "imbalance" of
> > get_user_pages() and put_page() bothers me from a purist standpoint...
> > However, since this discussion cropped up I went ahead and ported my
> > work to Linus' current master
> > (5.3-rc3+) and in doing so I only had to steal a bit of Johns code...
> > Sorry John...  :-(
> >
> > I don't have the commit messages all cleaned up and I know there may
> > be some discussion on these new interfaces but I wanted to throw this
> > series out there because I think it may be what Jan and Michal are
> > driving at (or at least in that direction.
> >
> > Right now only RDMA and DAX FS's are supported.  Other users of GUP
> > will still fail on a DAX file and regular files will still be at
> > risk.[2]
> >
> > I've pushed this work (based 5.3-rc3+ (33920f1ec5bf)) here[3]:
> >
> > https://github.com/weiny2/linux-kernel/tree/linus-rdmafsdax-b0-v3
> >
> > I think the most relevant patch to this conversation is:
> >
> > https://github.com/weiny2/linux-
> kernel/commit/5d377653ba5cf11c3b716f90
> > 4b057bee6641aaf6
> >
> > I stole Jans suggestion for a name as the name I used while
> > prototyping was pretty bad...  So Thanks Jan...  ;-)
> 
> For your function, I'd choose a name like vaddr_pin_leased_pages() so that
> association with a lease is clear from the name :)

My gut was to just change this as you suggested.  But the fact is that these calls can get used on anonymous pages as well.  So the "leased" semantic may not apply...  OTOH if a file is encountered it will fail the pin...  :-/  I'm going to leave it for now and get the patches submitted to the list...

> Also I'd choose the
> counterpart to be vaddr_unpin_leased_page[s](). Especially having put_page
> in the name looks confusing to me...

Ah yes, totally agree with the "pin/unpin" symmetry.  I've changed from "put" to "unpin"...

Thanks,
Ira

> 
> 								Honza
> 
> --
> Jan Kara <jack@suse.com>
> SUSE Labs, CR

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
