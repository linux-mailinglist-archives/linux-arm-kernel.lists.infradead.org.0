Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 973341ED7E2
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 23:14:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aC0S3K1X/HRDkckR7vY0ixHgdOvucNIzUZAu8oSYLko=; b=nE/GY60UVntZ9i
	FCHneUDN93j1zBPgwX4AHQB9gBwlAW698Nr0cmPEC8AqlpdoFWTzXZrELewiHjC/iwek19xpI5fN7
	ao2bf2tpi0FeAGQQ12Tcb0zb9uTnAJPfRID3oFA31CAQc7si14440Y1CFu32+gSPTwTvxwOz7SnpQ
	/dxmtoPYGHQOEUXtqXdSKNlFZMX4GCMyaqW0DXt8p0tcCne6L4EJC7RFac/X4RODeFSksaGa6ESWH
	ZHZgXeDUWeWQTDjHk5KdoUR/OZjwtxmVphdENdEKwX0Tz5iZMO88t5H3ExOF8zoZg8LvexV+dNnO4
	eF+om5sDfgwEUECurVFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgaiT-0004jm-30; Wed, 03 Jun 2020 21:14:29 +0000
Received: from mga12.intel.com ([192.55.52.136])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgaiI-0004j4-Hd; Wed, 03 Jun 2020 21:14:20 +0000
IronPort-SDR: 4cEx9Oj9mCICIYBTV+0kSCbebeuJuZpw0ORjV3Jmai2YFw1qOeMRuH/yXcoQIKiYbcuO9DZUhH
 8tlMtWPnO3Hw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2020 14:14:17 -0700
IronPort-SDR: /+lphg5mhpEEZkBRitWFLPKo3DT2QNviSG1HWZMRFsCRphzo4Njn3WjwLxNQkn0kQpJrJnSBuZ
 Bg3bhJF0orwQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,469,1583222400"; d="scan'208";a="294107077"
Received: from iweiny-desk2.sc.intel.com ([10.3.52.147])
 by fmsmga004.fm.intel.com with ESMTP; 03 Jun 2020 14:14:16 -0700
Date: Wed, 3 Jun 2020 14:14:16 -0700
From: Ira Weiny <ira.weiny@intel.com>
To: Andrew Morton <akpm@linux-foundation.org>,
 Mike Rapoport <rppt@kernel.org>, Guenter Roeck <linux@roeck-us.net>
Subject: Re: [PATCH] arch/{mips,sparc,microblaze,powerpc}: Don't enable
 pagefault/preempt twice
Message-ID: <20200603211416.GA1740285@iweiny-DESK2.sc.intel.com>
References: <20200507150004.1423069-8-ira.weiny@intel.com>
 <20200518184843.3029640-1-ira.weiny@intel.com>
 <20200519165422.GA5838@roeck-us.net>
 <20200519184031.GB3356843@iweiny-DESK2.sc.intel.com>
 <20200519194215.GA71941@roeck-us.net>
 <20200520051315.GA3660833@iweiny-DESK2.sc.intel.com>
 <d86dba19-4f4b-061e-a2c7-4f037e9e2de2@roeck-us.net>
 <20200521174250.GB176262@iweiny-DESK2.sc.intel.com>
 <20200603135736.e7b5ded0082a81ae6d9067a0@linux-foundation.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200603135736.e7b5ded0082a81ae6d9067a0@linux-foundation.org>
User-Agent: Mutt/1.11.1 (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_141418_883887_7A69271B 
X-CRM114-Status: GOOD (  16.72  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.136 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
 Dave Hansen <dave.hansen@linux.intel.com>, dri-devel@lists.freedesktop.org,
 linux-mips@vger.kernel.org,
 "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
 Max Filippov <jcmvbkbc@gmail.com>, Paul Mackerras <paulus@samba.org>,
 "H. Peter Anvin" <hpa@zytor.com>, sparclinux@vger.kernel.org,
 Thomas Gleixner <tglx@linutronix.de>, Helge Deller <deller@gmx.de>,
 x86@kernel.org, linux-csky@vger.kernel.org, Christoph Hellwig <hch@lst.de>,
 Ingo Molnar <mingo@redhat.com>, linux-snps-arc@lists.infradead.org,
 linux-xtensa@linux-xtensa.org, Borislav Petkov <bp@alien8.de>,
 Al Viro <viro@zeniv.linux.org.uk>, Andy Lutomirski <luto@kernel.org>,
 Dan Williams <dan.j.williams@intel.com>, linux-arm-kernel@lists.infradead.org,
 Chris Zankel <chris@zankel.net>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>, linux-parisc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Christian Koenig <christian.koenig@amd.com>,
 linuxppc-dev@lists.ozlabs.org, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 03, 2020 at 01:57:36PM -0700, Andrew Morton wrote:
> On Thu, 21 May 2020 10:42:50 -0700 Ira Weiny <ira.weiny@intel.com> wrote:
> 
> > > > 
> > > > Actually it occurs to me that the patch consolidating kmap_prot is odd for
> > > > sparc 32 bit...
> > > > 
> > > > Its a long shot but could you try reverting this patch?
> > > > 
> > > > 4ea7d2419e3f kmap: consolidate kmap_prot definitions
> > > > 
> > > 
> > > That is not easy to revert, unfortunately, due to several follow-up patches.
> > 
> > I have gotten your sparc tests to run and they all pass...
> > 
> > 08:10:34 > ../linux-build-test/rootfs/sparc/run-qemu-sparc.sh 
> > Build reference: v5.7-rc4-17-g852b6f2edc0f
> > 
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
> 
> This all petered out, but as I understand it, this patchset still might
> have issues on various architectures.
> 
> Can folks please provide an update on the testing status?

I believe the tests were failing for Guenter due to another patch set...[1]

My tests with just this series are working.

From my understanding the other failures were unrelated.[2]

	<quote Mike Rapoport>
	I've checked the patch above on top of the mmots which already has
	Ira's patches and it booted fine. I've used sparc32_defconfig to build
	the kernel and qemu-system-sparc with default machine and CPU.
	</quote>

Mike, am I wrong?  Do you think the kmap() patches are still causing issues?

Ira

[1] https://lore.kernel.org/lkml/2807E5FD2F6FDA4886F6618EAC48510E92EAB1DE@CRSMSX101.amr.corp.intel.com/
[2] https://lore.kernel.org/lkml/20200520195110.GH1118872@kernel.org/


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
