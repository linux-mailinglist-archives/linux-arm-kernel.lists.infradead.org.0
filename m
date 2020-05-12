Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6BB71CF696
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 16:12:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i58MhnaspF9cxQQyRC12DQxM2j5kYC2CK4Jpq1hXmhY=; b=Ai2CQYlCQ4sw5F
	JlM5iJs5jy8LLrF8CQmb6RkIlWpJHVnHCj+Rpx6Q9YZ1fVcuFwBH2/PfxALqWPPL1k/3PNqv6NXr3
	RBfi7tDghZJUiQkWNr4MNfz5fbQDh0xWJ4vZK8bEXgfs8/effn3m31iJotSZ2jpWd/OMq7JYz3NEw
	pz1slXWSJYBihjoGgVGb95Oe18b1zQ5+mKNRUXcfp48CKL9/z3UJCYg3EmA9bZaK2uSO6H3Ty1dqO
	8orTHawpyVoQtKpsfGIF6ppD1WNwATwAXe3ovzBDBc7faFpN+LXyXFxNbdo0u+Zb7xFJvgEm5nPTm
	3UTDUgFvbRX4FbeClcIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYVeB-0007QM-LS; Tue, 12 May 2020 14:12:39 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYVde-0007BG-RN
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 14:12:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1589292725;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=n70UbOUvJa9P4RPgTvmULexgnX+jCFgCJ+13wy5Dy+Q=;
 b=V8F6lOXuNV8kvLRz4PPKCejCwMZwBpJQ1HzDZvO6PdEdei1V0U+HYf/UYk1c/f9tFtRy20
 wTSLylwn7YPYd4+pm1CpP/cHtnXGEXD1V+xrdSUYVm7h9CklYu9D/KF/b/Xv1SGP0GRfaN
 UHzSlmt9xNU29M++849CImexiyLRz7k=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-239-zpf1rqexMOe-syUUIUv8rw-1; Tue, 12 May 2020 10:11:58 -0400
X-MC-Unique: zpf1rqexMOe-syUUIUv8rw-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 46D2B8005B7;
 Tue, 12 May 2020 14:11:57 +0000 (UTC)
Received: from localhost (ovpn-12-40.pek2.redhat.com [10.72.12.40])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id CE5977840A;
 Tue, 12 May 2020 14:11:50 +0000 (UTC)
Date: Tue, 12 May 2020 22:11:48 +0800
From: Baoquan He <bhe@redhat.com>
To: David Hildenbrand <david@redhat.com>
Subject: Re: [PATCH] kexec: Discard loaded image on memory hotplug
Message-ID: <20200512141148.GL5029@MiWiFi-R3L-srv>
References: <20200501165701.24587-1-james.morse@arm.com>
 <40b07632-b044-d1cd-96a2-81eec3da93e7@redhat.com>
 <8736892l92.fsf@x220.int.ebiederm.org>
 <a1c162fe-74de-c5ca-dadf-d451e970fdea@redhat.com>
 <20200511112755.GB4922@MiWiFi-R3L-srv>
 <04c8edd0-5c67-3ba7-5f87-c16a47b2af5c@redhat.com>
 <20200512103402.GK5029@MiWiFi-R3L-srv>
 <265d463c-1b2f-ca97-391d-8d1f9d60f16a@redhat.com>
MIME-Version: 1.0
In-Reply-To: <265d463c-1b2f-ca97-391d-8d1f9d60f16a@redhat.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_071206_965563_17DF623D 
X-CRM114-Status: GOOD (  28.06  )
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [207.211.31.120 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: kexec@lists.infradead.org, linux-mm@kvack.org,
 James Morse <james.morse@arm.com>, "Eric W. Biederman" <ebiederm@xmission.com>,
 Dave Young <dyoung@redhat.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 05/12/20 at 12:54pm, David Hildenbrand wrote:
> >> kexec_load():
> >>
> >> 1. kexec-tools could have placed kexec images on memory that will be
> >> removed.
> >>
> >> 2. the memory map of the guest is stale (esp., might still contain
> >> hotunplugged memory). /sys/firmware/memmap and /proc/iomem will be
> >> updated, so kexec-tools can fix this up.
> > 
> > With my understanding, this is a corner case. Before James's last
> > patchset, I even hadn't realized this is a problem. Because we usually
> > load kexec image, next trigger a kexec rebooting. Wondering if James
> > just found out a potential issue, or he really met this problem. Surely,
> 
> Should be as easy as hotplugging a dimm, loading "kexec -c", unplugging
> the dimm, triggering "kexec -e" if I am not wrong.

Hmm, kexec rebooting is also one kind of rebooting, we may not want to
hot plug memory during that time. But, yes, just in case.

> 
> > we should fix it when have identified it, even though it's a corner
> > case.
> > 
> > And we suggested adding service of loading kexec to fix this. We
> > suggest this because kdump also need to recollect the memory regions
> > so that it can pass them into 2nd kernel and dump the newly added
> > memory region, or not dump the already removed memory region. 
> > Kdump kernel won't get problem during boot or running caused by the
> > hot added/removed memory as kexec kernel does, however, on failing to
> > achieve expected result, kdump and kexec have the same problem. I don't
> > see why kdump can be reloaded by memory adding/removing uevent triggering,
> > but kexec can't. If have to unload kexec image, does kdump image need
> > be unloaded?
> 
> I think that approach is racy and might easily trigger a crash when
> "kexec -e" is called at the wrong time during memory unplug. See below
> why kdump is different. Triggering unloading in the kernel does not
> conflict with that approach and even seems to fit into the picture, no?
> 
> 1. Memory gets hot(un)plugged
> 2. The kernel unloads the kexec image while processing the hot(un)plug
>    to make sure nothing will go wrong.
> 3. User space gets notified and triggers reloading of kexec.
> 
> That sounds like a sane approach to me, no? If there is no 3., nothing
> will break. If there is a "kexec -e" before 3 finished, nothing will
> break. As we discussed, we might be able to special-case
> kexec_file_load() and not unload, but simply fixup.
> 
> Note that kdump is slightly different. In case memory gets hotplugged
> and kdump is not reloaded, that memory will simply not get dumped. In
> case memory gets hotunplugged and kdump is not reloaded, that memory
> will be skipped by makedumpfile (realizes memory is gone when parsing
> the sparse sections, trying to find the memmap). In contrast to kexec,
> there is no kernel crash.
> 
> > 
> > Here my main concern is if it will complicate kexec code. While
> > reloading it via systemd service won't. No matther if it's making kexec
> > disable memory hotplug, or making memory hotplug disabling kexec, it
> > seems to couple kexec with other feature/subcomponent. Anyway, we have
> > added a kexec loading service, any memory adding/removing uevent will
> > trigger the reloading. This patch won't impact anything, even though
> > it doesn't make sense to us, so have no objection to this.
> 
> I don't consider unloading in the kernel a lot of complexity. And it
> seems to be the right thing to do to avoid crashes, especially if user
> space will not reload itself.
> 
> > 
> > Another thing is below patch. Another case of complicating kexec because
> > of specific use case, please feel free to help review and add comment.
> > I am wondering if we can make it in user space too. E.g for oracle DB,
> > we limit the memory allocation within the movable nodes for memory
> > hotplugging, we can also add memmap= or mem= to kexec-ed kernel to protect
> > those memory regions inside the nodes, then restore the data from the nodes.
> > Not sure if VM data can be put in MOVABLE zone only.
> > 
> > [RFC 00/43] PKRAM: Preserved-over-Kexec RAM
> 
> I've seen that patch set and it is on my todo list, not sure when I'll
> have time to look into it. From a quick glimpse, I had the feeling that
> it was not dealing with memory hot(un)plug, most probably because
> concurrent memory hot(un)plug is not the target use case.

Not, it's not about hot plug. Hope you can help check if restoring VM data in
kexec-ed kernel have to be done like that from virt dev's point of view.
Please feel free to add other virt expert you know who is familiar with that
to the list to help review.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
