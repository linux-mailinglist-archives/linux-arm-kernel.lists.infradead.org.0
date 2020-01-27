Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9A9614A6F4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Jan 2020 16:09:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:To:From:Date:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=unqGz+3vDyBxifN3eLPVPbmQC3FZcPWX8Z0yNmrhzPo=; b=UslLvufJs9gy4e
	mOZaFDVKL4D4O6PkastKQe0ykHOVhwt6Wqwo2i4X9DuVX9O5F9HYV+vD6LMOSrbWYU/TgeaMyrkML
	Oo7Ziia1WYMSGzWXMIBNDU75RveFWLsuevqlb5dDxrNqOviuQIDMIdjQboOlbTakpE9J1/D9GO+iU
	t6GvR1oufGlh/uLFISgtgrSslMiYirUGJ4/zrJkKKsFOLiL+0obBF61BOUTzadmx0hnaYsDPB+i0i
	ij0ISA+/pc7ljDJ39If8YA37oEKKE6LswhxI6ZsWNUkavsgRa0igv4L3hniyOua+Qjfqbb+t2W7zb
	bZ6bn3wp6d5YvCJx/xkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iw60p-0001SZ-Tw; Mon, 27 Jan 2020 15:09:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iw60e-0001S0-Af
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Jan 2020 15:09:05 +0000
Received: from paulmck-ThinkPad-P72.home (199-192-87-166.static.wiline.com
 [199.192.87.166])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6895520702;
 Mon, 27 Jan 2020 15:09:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1580137743;
 bh=LneyVWiMa0REJZFBSVOC8VBfEgVQakydJNAdr2Lnekk=;
 h=Date:From:To:Cc:Subject:Reply-To:References:In-Reply-To:From;
 b=pNrhYElv6xTheDCjXktEOImu6bsIU9tRvoXN96pANqkFzcFkQMZ1I+dYuoCmC0JRu
 6d/2P9PLeT9AJ9Y9WwM1oNxUHft49dzNLbkS6Va+Ig/mWrrGsVR6gdRS44EXVJZh3t
 3xg1uhtQVrzLCDg5L2GFvbqE+VxoruZq+8YbkGQo=
Received: by paulmck-ThinkPad-P72.home (Postfix, from userid 1000)
 id B631A352279E; Mon, 27 Jan 2020 07:09:02 -0800 (PST)
Date: Mon, 27 Jan 2020 07:09:02 -0800
From: "Paul E. McKenney" <paulmck@kernel.org>
To: Waiman Long <longman@redhat.com>
Subject: Re: [PATCH v9 0/5] Add NUMA-awareness to qspinlock
Message-ID: <20200127150902.GN2935@paulmck-ThinkPad-P72>
References: <20200124222434.GA7196@paulmck-ThinkPad-P72>
 <6AAE7FC6-F5DE-4067-8BC4-77F27948CD09@oracle.com>
 <20200125005713.GZ2935@paulmck-ThinkPad-P72>
 <02defadb-217d-7803-88a1-ec72a37eda28@redhat.com>
 <adb4fb09-f374-4d64-096b-ba9ad8b35fd5@redhat.com>
 <20200125045844.GC2935@paulmck-ThinkPad-P72>
 <967f99ee-b781-43f4-d8ba-af83786c429c@redhat.com>
 <20200126153535.GL2935@paulmck-ThinkPad-P72>
 <20200126224245.GA22901@paulmck-ThinkPad-P72>
 <2e552fad-79c0-ec06-3b8c-d13f1b67f57d@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2e552fad-79c0-ec06-3b8c-d13f1b67f57d@redhat.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_070904_410387_2522F185 
X-CRM114-Status: GOOD (  33.56  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Reply-To: paulmck@kernel.org
Cc: linux-arch@vger.kernel.org, guohanjun@huawei.com,
 Arnd Bergmann <arnd@arndb.de>, Peter Zijlstra <peterz@infradead.org>,
 dave.dice@oracle.com, jglauber@marvell.com, x86@kernel.org,
 Will Deacon <will.deacon@arm.com>, linux@armlinux.org.uk,
 linux-kernel@vger.kernel.org, Ingo Molnar <mingo@redhat.com>, bp@alien8.de,
 hpa@zytor.com, Alex Kogan <alex.kogan@oracle.com>, steven.sistare@oracle.com,
 tglx@linutronix.de, daniel.m.jordan@oracle.com,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jan 27, 2020 at 09:11:43AM -0500, Waiman Long wrote:
> On 1/26/20 5:42 PM, Paul E. McKenney wrote:
> > On Sun, Jan 26, 2020 at 07:35:35AM -0800, Paul E. McKenney wrote:
> >> On Sat, Jan 25, 2020 at 02:41:39PM -0500, Waiman Long wrote:
> >>> On 1/24/20 11:58 PM, Paul E. McKenney wrote:
> >>>> On Fri, Jan 24, 2020 at 09:17:05PM -0500, Waiman Long wrote:
> >>>>> On 1/24/20 8:59 PM, Waiman Long wrote:
> >>>>>>> You called it!  I will play with QEMU's -numa argument to see if I can get
> >>>>>>> CNA to run for me.  Please accept my apologies for the false alarm.
> >>>>>>>
> >>>>>>> 							Thanx, Paul
> >>>>>>>
> >>>>>> CNA is not currently supported in a VM guest simply because the numa
> >>>>>> information is not reliable. You will have to run it on baremetal to
> >>>>>> test it. Sorry for that.
> >>>>> Correction. There is a command line option to force CNA lock to be used
> >>>>> in a VM. Use the "numa_spinlock=on" boot command line parameter.
> >>>> As I understand it, I need to use a series of -numa arguments to qemu
> >>>> combined with the numa_spinlock=on (or =1) on the kernel command line.
> >>>> If the kernel thinks that there is only one NUMA node, it appears to
> >>>> avoid doing CNA.
> >>>>
> >>>> Correct?
> >>>>
> >>>> 							Thanx, Paul
> >>>>
> >>> In auto-detection mode (the default), CNA will only be turned on when
> >>> paravirt qspinlock is not enabled first and there are at least 2 numa
> >>> nodes. The "numa_spinlock=on" option will force it on even when both of
> >>> the above conditions are false.
> >> Hmmm...
> >>
> >> Here is my kernel command line taken from the console log:
> >>
> >> console=ttyS0 locktorture.onoff_interval=0 numa_spinlock=on locktorture.stat_interval=15 locktorture.shutdown_secs=1800 locktorture.verbose=1
> >>
> >> Yet the string "Enabling CNA spinlock" does not appear.
> >>
> >> Ah, idiot here needs to enable CONFIG_NUMA_AWARE_SPINLOCKS in his build.
> >> Trying again with "--kconfig "CONFIG_NUMA_AWARE_SPINLOCKS=y"...
> > And after fixing that, plus adding the other three Kconfig options required
> > to enable this, I really do see "Enabling CNA spinlock" in the console log.
> > Yay!
> >
> > At the end of the 30-minute locktorture exclusive-lock run, I see this:
> >
> > Writes:  Total: 572176565  Max/Min: 54167704/10878216 ???  Fail: 0
> >
> > This is about a five-to-one ratio.  Is this expected behavior, given a
> > single NUMA node on a single-socket system with 12 hardware threads?
> Do you mean within the VM, lscpu showed that the system has one node and
> 12 threads per node? If that is the case, it should behave like regular
> qspinlock and be fair.

I mean that I saw this in dmesg, which I believe to be telling me the
same thing as lscpu saying that there is one node, but you tell me!

[    0.007106] No NUMA configuration found
[    0.007107] Faking a node at [mem 0x0000000000000000-0x000000001ffdefff]
[    0.007111] NODE_DATA(0) allocated [mem 0x1ffdb000-0x1ffdefff]
[    0.007126] Zone ranges:
[    0.007127]   DMA      [mem 0x0000000000001000-0x0000000000ffffff]
[    0.007128]   DMA32    [mem 0x0000000001000000-0x000000001ffdefff]
[    0.007128]   Normal   empty
[    0.007129] Movable zone start for each node
[    0.007129] Early memory node ranges
[    0.007130]   node   0: [mem 0x0000000000001000-0x000000000009efff]
[    0.007132]   node   0: [mem 0x0000000000100000-0x000000001ffdefff]
[    0.007227] Zeroed struct page in unavailable ranges: 98 pages
[    0.007227] Initmem setup node 0 [mem 0x0000000000001000-0x000000001ffdefff]
[    0.007228] On node 0 totalpages: 130941
[    0.007231]   DMA zone: 64 pages used for memmap
[    0.007231]   DMA zone: 21 pages reserved
[    0.007232]   DMA zone: 3998 pages, LIFO batch:0
[    0.007266]   DMA32 zone: 1984 pages used for memmap
[    0.007267]   DMA32 zone: 126943 pages, LIFO batch:31

> > I will try reader-writer lock next.
> >
> > Again, should I be using qemu's -numa command-line option to create nodes?
> > If so, what would be a sane configuration given 12 CPUs and 512MB of
> > memory for the VM?  If not, what is a good way to exercise CNA's NUMA
> > capabilities within a guest OS?
> 
> You can certainly play around with CNA in a VM. However, it is generally
> not recommended to use CNA in a VM unless the VM cpu topology matches
> the host with 1-to-1 vcpu pinning and there is no vcpu overcommit. In
> this case, one may see some performance improvement using CNA by using
> the "numa_spinlock=on" option to explicitly turn it on.

Sorry, but I will not be booting this on bare metal on the systems that
I currently have access to.  No more than I run rcutorture on bare metal
on them, especially not with newly modified variants of RCU.  ;-)

> Because of the shuffling of queue entries, CNA is inherently less fair
> than the regular qspinlock. However, a ratio of 5 seems excessive to me.
> vcpu preemption may be a factor in contributing to this large variation.
> My testing on bare metal only showed a throughput variation within
> 10-20% at most.

OK.  Any guidance on qemu's -numa, or should I just experiment with it?
The latter will take me some time, as I must focus on other things
this week.

Alternatively, would it make sense for you to give it a spin in a VM?
After all, it is entirely possible that I still have some configuration
or another messed up.

							Thanx, Paul

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
