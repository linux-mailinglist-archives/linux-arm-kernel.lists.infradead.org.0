Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CBF386703
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 18:25:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CLhWC9zJ73PQDMin02YhVq3VjNZFvBAgVTuKkrJJn44=; b=JEJ5XWny42I0ic
	UE6iWgFddJ2p0nwmpwkT5oLe40l5wJ/Qu8klxyPoJavkHThdhFkQIvs/WgFbaATMd6TQXbVT2f80G
	LJrz753cUqH/Lqs8lsNfPf/EudOmud84q0uIkRttMI47rq8K5ac33xkmbpCGvQEl75xPipxRSchv3
	OVNOt36ySYgw4ilAg0pZJaUqBg8UGHr9BDAG4feTeUL1kcfmAPTKb22f/ua0mBb3iSYszxihx1vSl
	wYP4TE7UDJCoHVZ2sWUe2pW3upPRERXwsKG1T+oXkDJIknnaQtCdPihMxIBfcKeRqOrnI5i9RKTSh
	ekczJRGcIbZP+enPX3vg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvlEA-0002aO-GU; Thu, 08 Aug 2019 16:25:22 +0000
Received: from mga18.intel.com ([134.134.136.126])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvlE0-0002Zp-4R; Thu, 08 Aug 2019 16:25:13 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Aug 2019 09:25:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,362,1559545200"; d="scan'208";a="258761935"
Received: from fmsmsx104.amr.corp.intel.com ([10.18.124.202])
 by orsmga001.jf.intel.com with ESMTP; 08 Aug 2019 09:25:08 -0700
Received: from fmsmsx119.amr.corp.intel.com (10.18.124.207) by
 fmsmsx104.amr.corp.intel.com (10.18.124.202) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 8 Aug 2019 09:25:07 -0700
Received: from crsmsx104.amr.corp.intel.com (172.18.63.32) by
 FMSMSX119.amr.corp.intel.com (10.18.124.207) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 8 Aug 2019 09:25:07 -0700
Received: from crsmsx101.amr.corp.intel.com ([169.254.1.115]) by
 CRSMSX104.amr.corp.intel.com ([169.254.6.74]) with mapi id 14.03.0439.000;
 Thu, 8 Aug 2019 10:25:05 -0600
From: "Weiny, Ira" <ira.weiny@intel.com>
To: John Hubbard <jhubbard@nvidia.com>, Michal Hocko <mhocko@kernel.org>
Subject: RE: [PATCH 00/34] put_user_pages(): miscellaneous call sites
Thread-Topic: [PATCH 00/34] put_user_pages(): miscellaneous call sites
Thread-Index: AQHVSNjU1EYxEMQcyke2Y16AlWiV+abn98YAgAA6ZwCAABzEgIAAB8CAgABJHoCABynCAIAAAqCAgAC1jYCAAIj3AIAAatiQ
Date: Thu, 8 Aug 2019 16:25:04 +0000
Message-ID: <2807E5FD2F6FDA4886F6618EAC48510E79E79644@CRSMSX101.amr.corp.intel.com>
References: <20190802022005.5117-1-jhubbard@nvidia.com>
 <20190802091244.GD6461@dhcp22.suse.cz>
 <20190802124146.GL25064@quack2.suse.cz>
 <20190802142443.GB5597@bombadil.infradead.org>
 <20190802145227.GQ25064@quack2.suse.cz>
 <076e7826-67a5-4829-aae2-2b90f302cebd@nvidia.com>
 <20190807083726.GA14658@quack2.suse.cz>
 <20190807084649.GQ11812@dhcp22.suse.cz>
 <20190808023637.GA1508@iweiny-DESK2.sc.intel.com>
 <e648a7f3-6a1b-c9ea-1121-7ab69b6b173d@nvidia.com>
In-Reply-To: <e648a7f3-6a1b-c9ea-1121-7ab69b6b173d@nvidia.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiNzg1NWU5YjgtN2QxYy00YWI4LWFkMDAtZTkzNjZiYzAyZWZhIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoidDZjeGJDdmV4UkoyZDkrSFdhT0RlXC9jalFDREdKeXlsWlJnSkxPamJtaXZuU2VIUmFYNG12UFE5cVIrbkR6QzkifQ==
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [172.18.205.10]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_092512_231808_AC846DB4 
X-CRM114-Status: GOOD (  32.77  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.126 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Jan Kara <jack@suse.cz>, "kvm@vger.kernel.org" <kvm@vger.kernel.org>,
 Dave Hansen <dave.hansen@linux.intel.com>, Dave Chinner <david@fromorbit.com>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "linux-mm@kvack.org" <linux-mm@kvack.org>,
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
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "linux-block@vger.kernel.org" <linux-block@vger.kernel.org>,
 =?utf-8?B?SsOpcsO0bWUgR2xpc3Nl?= <jglisse@redhat.com>,
 "linux-rpi-kernel@lists.infradead.org" <linux-rpi-kernel@lists.infradead.org>,
 "ceph-devel@vger.kernel.org" <ceph-devel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-nfs@vger.kernel.org" <linux-nfs@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 LKML <linux-kernel@vger.kernel.org>,
 "linux-xfs@vger.kernel.org" <linux-xfs@vger.kernel.org>,
 "linux-crypto@vger.kernel.org" <linux-crypto@vger.kernel.org>,
 "linux-fsdevel@vger.kernel.org" <linux-fsdevel@vger.kernel.org>, Andrew
 Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> 
> On 8/7/19 7:36 PM, Ira Weiny wrote:
> > On Wed, Aug 07, 2019 at 10:46:49AM +0200, Michal Hocko wrote:
> >> On Wed 07-08-19 10:37:26, Jan Kara wrote:
> >>> On Fri 02-08-19 12:14:09, John Hubbard wrote:
> >>>> On 8/2/19 7:52 AM, Jan Kara wrote:
> >>>>> On Fri 02-08-19 07:24:43, Matthew Wilcox wrote:
> >>>>>> On Fri, Aug 02, 2019 at 02:41:46PM +0200, Jan Kara wrote:
> >>>>>>> On Fri 02-08-19 11:12:44, Michal Hocko wrote:
> >>>>>>>> On Thu 01-08-19 19:19:31, john.hubbard@gmail.com wrote:
>   [...]
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
> 
> ohhh...can you please avoid using the old __put_user_pages_dirty()
> function? 

Agreed... I did not like that.  Part of the reason I did not post this is I'm still trying to figure out what has landed and what I can and can't depend on.

For example, Christoph H. was proposing changes to some of the GUP calls which may conflict.  But I'm not sure his changes are moving forward.  So rather than waiting for the dust to settle I decided to see how hard it would be to get this rebased against mainline and working.  Turns out it was not too hard.

I think that is because, as time has moved on it seems that, for some users such as RDMA, a simple put_user_page() is not going to be sufficient.  We need something else to allow GUP to keep track of the file pins as we discussed.  So I'm starting to think some of this could go in at the same time.

> I thought I'd caught things early enough to get away with the
> rename and deletion of that. You could either:
> 
> a) open code an implementation of vaddr_put_pages_dirty_lock() that
> doesn't call any of the *put_user_pages_dirty*() variants, or
> 
> b) include my first patch ("") are part of your series, or
> 
> c) base this on Andrews's tree, which already has merged in my first patch.
> 

Yep I can do this.  I did not realize that Andrew had accepted any of this work.  I'll check out his tree.  But I don't think he is going to accept this series through his tree.  So what is the ETA on that landing in Linus' tree?

To that point I'm still not sure who would take all this as I am now touching mm, procfs, rdma, ext4, and xfs.

I just thought I would chime in with my progress because I'm to a point where things are working and so I can submit the code but I'm not sure what I can/should depend on landing...  Also, now that 0day has run overnight it has found issues with this rebase so I need to clean those up...  Perhaps I will base on Andrew's tree prior to doing that...

Thanks,
Ira

> 
> thanks,
> --
> John Hubbard
> NVIDIA

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
