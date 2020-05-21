Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 463411DDA53
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 00:37:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MRvM4PDulhp6nw7+I2YODJLWvKK1OJ9ox368CJI2in8=; b=PJqYPr87w1MSdJ
	n9qx/E1JHgqfgAaGZ3sTyVdCt8M5c0ey57R0odSsBVlZNxcs/YH5b/OZ/D2wBf4TKev52IGbFksw8
	e5XqOIW0f2T7EaUEG3kXeVwyRR6HuS0FMoks607p+MJGvu5r0C6DW3T/zsBd5ZdMikPvnHJ45PH4+
	cgLnn7Yd82CiuY1r4Au/DrFbvr63hgj+CZQu9Oq28G5+DGs9iP/Ta8S5RAxEZA3+KSRCoo0sqkzi+
	/RoF11SrpoSjKNbxHtQC8NR6I/27Vk/iC8DiDefszi47y4YIdseVRPmi0eMJtVh5ihZxj8tQUg8YL
	H+T045gAJkyYtzllxiJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbtoS-0001fW-52; Thu, 21 May 2020 22:37:16 +0000
Received: from mga18.intel.com ([134.134.136.126])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbto9-0001eG-Mw; Thu, 21 May 2020 22:36:59 +0000
IronPort-SDR: QJPdzlVh3viwoyka/KI9zTy+4pZUrlBcETqkYWM2smfIESy4WJ0nUV9HUT3frXkr4dr//73Wil
 cLOQ7899VtQQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2020 15:36:55 -0700
IronPort-SDR: SD2zrPDsiP4yIVfkeXJ+qcnvjtyfpBVJ1g3a/mt25nkXtDCoblBTFFnQl+uttuxYUHZVfhzNjN
 id7ElKvB3GEA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,419,1583222400"; d="scan'208";a="309196005"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by FMSMGA003.fm.intel.com with ESMTP; 21 May 2020 15:36:54 -0700
Received: from fmsmsx120.amr.corp.intel.com (10.18.124.208) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 21 May 2020 15:36:54 -0700
Received: from crsmsx152.amr.corp.intel.com (172.18.7.35) by
 fmsmsx120.amr.corp.intel.com (10.18.124.208) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 21 May 2020 15:36:54 -0700
Received: from crsmsx101.amr.corp.intel.com ([169.254.1.89]) by
 CRSMSX152.amr.corp.intel.com ([169.254.5.205]) with mapi id 14.03.0439.000;
 Thu, 21 May 2020 16:36:51 -0600
From: "Weiny, Ira" <ira.weiny@intel.com>
To: Guenter Roeck <linux@roeck-us.net>
Subject: RE: [PATCH] arch/{mips,sparc,microblaze,powerpc}: Don't enable
 pagefault/preempt twice
Thread-Topic: [PATCH] arch/{mips,sparc,microblaze,powerpc}: Don't enable
 pagefault/preempt twice
Thread-Index: AQHWLUT3NMm1eeF/6kS/+5dTGHml8KiwBlUA//+oUICAAIaYgIAAKjCAgAK994D//6XMAIAAxM8A//+duMA=
Date: Thu, 21 May 2020 22:36:51 +0000
Message-ID: <2807E5FD2F6FDA4886F6618EAC48510E92EAB1DE@CRSMSX101.amr.corp.intel.com>
References: <20200507150004.1423069-8-ira.weiny@intel.com>
 <20200518184843.3029640-1-ira.weiny@intel.com>
 <20200519165422.GA5838@roeck-us.net>
 <20200519184031.GB3356843@iweiny-DESK2.sc.intel.com>
 <20200519194215.GA71941@roeck-us.net>
 <20200520051315.GA3660833@iweiny-DESK2.sc.intel.com>
 <d86dba19-4f4b-061e-a2c7-4f037e9e2de2@roeck-us.net>
 <20200521174250.GB176262@iweiny-DESK2.sc.intel.com>
 <9088585b-b52f-39ad-1651-53cfc0abd714@roeck-us.net>
In-Reply-To: <9088585b-b52f-39ad-1651-53cfc0abd714@roeck-us.net>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [172.18.205.10]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_153657_795802_DE14F05C 
X-CRM114-Status: GOOD (  24.71  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Peter Zijlstra <peterz@infradead.org>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Dave Hansen <dave.hansen@linux.intel.com>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "linux-mips@vger.kernel.org" <linux-mips@vger.kernel.org>,
 "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
 Max Filippov <jcmvbkbc@gmail.com>, Paul Mackerras <paulus@samba.org>,
 "H. Peter Anvin" <hpa@zytor.com>,
 "sparclinux@vger.kernel.org" <sparclinux@vger.kernel.org>, "Williams,
 Dan J" <dan.j.williams@intel.com>, Helge Deller <deller@gmx.de>,
 "x86@kernel.org" <x86@kernel.org>,
 "linux-csky@vger.kernel.org" <linux-csky@vger.kernel.org>, Christoph
 Hellwig <hch@lst.de>, Ingo Molnar <mingo@redhat.com>,
 "linux-snps-arc@lists.infradead.org" <linux-snps-arc@lists.infradead.org>,
 "linux-xtensa@linux-xtensa.org" <linux-xtensa@linux-xtensa.org>,
 Borislav Petkov <bp@alien8.de>, Al Viro <viro@zeniv.linux.org.uk>,
 Andy Lutomirski <luto@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Chris Zankel <chris@zankel.net>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 "linux-parisc@vger.kernel.org" <linux-parisc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Christian Koenig <christian.koenig@amd.com>, Andrew
 Morton <akpm@linux-foundation.org>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> On 5/21/20 10:42 AM, Ira Weiny wrote:
> > On Thu, May 21, 2020 at 09:05:41AM -0700, Guenter Roeck wrote:
> >> On 5/19/20 10:13 PM, Ira Weiny wrote:
> >>> On Tue, May 19, 2020 at 12:42:15PM -0700, Guenter Roeck wrote:
> >>>> On Tue, May 19, 2020 at 11:40:32AM -0700, Ira Weiny wrote:
> >>>>> On Tue, May 19, 2020 at 09:54:22AM -0700, Guenter Roeck wrote:
> >>>>>> On Mon, May 18, 2020 at 11:48:43AM -0700, ira.weiny@intel.com
> wrote:
> >>>>>>> From: Ira Weiny <ira.weiny@intel.com>
> >>>>>>>
> >>>>>>> The kunmap_atomic clean up failed to remove one set of
> >>>>>>> pagefault/preempt enables when vaddr is not in the fixmap.
> >>>>>>>
> >>>>>>> Fixes: bee2128a09e6 ("arch/kunmap_atomic: consolidate duplicate
> >>>>>>> code")
> >>>>>>> Signed-off-by: Ira Weiny <ira.weiny@intel.com>
> >>>>>>
> >>>>>> microblazeel works with this patch,
> >>>>>
> >>>>> Awesome...  Andrew in my rush yesterday I should have put a
> >>>>> reported by on the patch for Guenter as well.
> >>>>>
> >>>>> Sorry about that Guenter,
> >>>>
> >>>> No worries.
> >>>>
> >>>>> Ira
> >>>>>
> >>>>>> as do the nosmp sparc32 boot tests, but sparc32 boot tests with
> >>>>>> SMP enabled still fail with lots of messages such as:
> >>>>>>
> >>>>>> BUG: Bad page state in process swapper/0  pfn:006a1
> >>>>>> page:f0933420 refcount:0 mapcount:1 mapping:(ptrval) index:0x1
> >>>>>> flags: 0x0()
> >>>>>> raw: 00000000 00000100 00000122 00000000 00000001 00000000
> >>>>>> 00000000 00000000 page dumped because: nonzero mapcount
> Modules
> >>>>>> linked in:
> >>>>>> CPU: 0 PID: 1 Comm: swapper/0 Tainted: G    B             5.7.0-rc6-next-
> 20200518-00002-gb178d2d56f29 #1
> >>>>>> [f00e7ab8 :
> >>>>>> bad_page+0xa8/0x108 ]
> >>>>>> [f00e8b54 :
> >>>>>> free_pcppages_bulk+0x154/0x52c ]
> >>>>>> [f00ea024 :
> >>>>>> free_unref_page+0x54/0x6c ]
> >>>>>> [f00ed864 :
> >>>>>> free_reserved_area+0x58/0xec ]
> >>>>>> [f0527104 :
> >>>>>> kernel_init+0x14/0x110 ]
> >>>>>> [f000b77c :
> >>>>>> ret_from_kernel_thread+0xc/0x38 ]
> >>>>>> [00000000 :
> >>>>>> 0x0 ]
> >>>>>>
> >>>>>> Code path leading to that message is different but always the
> >>>>>> same from free_unref_page().
> >>>
> >>> Actually it occurs to me that the patch consolidating kmap_prot is
> >>> odd for sparc 32 bit...
> >>>
> >>> Its a long shot but could you try reverting this patch?
> >>>
> >>> 4ea7d2419e3f kmap: consolidate kmap_prot definitions
> >>>
> >>
> >> That is not easy to revert, unfortunately, due to several follow-up
> patches.
> >
> > I have gotten your sparc tests to run and they all pass...
> >
> > 08:10:34 > ../linux-build-test/rootfs/sparc/run-qemu-sparc.sh
> > Build reference: v5.7-rc4-17-g852b6f2edc0f
> >
> 
> That doesn't look like it is linux-next, which I guess means that something
> else in linux-next breaks it. What is your qemu version ?

Ah yea that was just 5.7-rc4 with my patch set applied.  Yes must be something else or an interaction with my patch set.

Did I see another email with Mike which may fix this?

Ira

> 
> Thanks,
> Guenter
> 
> > Building sparc32:SPARCClassic:nosmp:scsi:hd ... running ......... passed
> > Building sparc32:SPARCbook:nosmp:scsi:cd ... running ......... passed
> > Building sparc32:LX:nosmp:noapc:scsi:hd ... running ......... passed
> > Building sparc32:SS-4:nosmp:initrd ... running ......... passed
> > Building sparc32:SS-5:nosmp:scsi:hd ... running ......... passed
> > Building sparc32:SS-10:nosmp:scsi:cd ... running ......... passed
> > Building sparc32:SS-20:nosmp:scsi:hd ... running ......... passed
> > Building sparc32:SS-600MP:nosmp:scsi:hd ... running ......... passed
> > Building sparc32:Voyager:nosmp:noapc:scsi:hd ... running ......... passed
> > Building sparc32:SS-4:smp:scsi:hd ... running ......... passed
> > Building sparc32:SS-5:smp:scsi:cd ... running ......... passed
> > Building sparc32:SS-10:smp:scsi:hd ... running ......... passed
> > Building sparc32:SS-20:smp:scsi:hd ... running ......... passed
> > Building sparc32:SS-600MP:smp:scsi:hd ... running ......... passed
> > Building sparc32:Voyager:smp:noapc:scsi:hd ... running ......... passed
> >
> > Is there another test I need to run?
> >
> > Ira
> >
> >
> >>
> >> Guenter
> >>
> >>> Alternately I will need to figure out how to run the sparc on qemu here...
> >>>
> >>> Thanks very much for all the testing though!  :-D
> >>>
> >>> Ira
> >>>
> >>>>>>
> >>>>>> Still testing ppc images.
> >>>>>>
> >>>>
> >>>> ppc image tests are passing with this patch.
> >>>>
> >>>> Guenter
> >>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
