Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81BDA1A90F4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 04:35:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uDCTHgVAhGGhp3nYtJnU3rsGPPkU1MpXif8UHDI6Aoc=; b=IPEUhFpqfzyEGG
	IElK51Y4Z9S12QRnBmA/tkGa36epFVBx9hDPgClEZF4m0urjUrCxPG4mwZduPVRpa0fMVN2gKsTEl
	RG7AKjJsjp4SDFr+UaL89+e31nzgPn4NSYqkRata4fLs+p7UVuEu41Ej5KyOi1ZLuN4M0gYrY9g+O
	d1bm7TzjyAQuVJ5JudFos3W3S1QA9i8NmG89L7NjOa/f5Muz7fcMc71R+gyvUTBqeq+JfwRLG0iDA
	CsXNYoj1HLV60f93E0mUAz33eLLP3+q+bBvuUQducZobf6GL7AfpgtdyxYLR+SCPZaxG845c2NHDU
	HNYr+dIKhvwKXPTMGoHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOXu0-0004Xl-PV; Wed, 15 Apr 2020 02:35:48 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOXto-0004Wv-UO
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 02:35:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1586918135;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=3o4+0HgEBD0h2Go+GpB2trM6HPRj5m5yAn/gvrKMuxQ=;
 b=APFa9xqEU7VJnr5z77+7garh9xZJicWbh8t09e0TJZFnTGntQzcGi4Th+/DAUx5vGA4RkQ
 NQbqq9RHjfyYw70vVPhL18FLZayMSnEyEFAFNYBU6hUHP7HKqcFNwd9AApluUdfl5rGICQ
 6dPv0Btuetb95sqrC+JZ3xtdNH9Sv1A=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-321-WOza4ysLPQyg0KcN4VE8gg-1; Tue, 14 Apr 2020 22:35:33 -0400
X-MC-Unique: WOza4ysLPQyg0KcN4VE8gg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 890218017F3;
 Wed, 15 Apr 2020 02:35:30 +0000 (UTC)
Received: from localhost (ovpn-12-27.pek2.redhat.com [10.72.12.27])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 7B9A899DEE;
 Wed, 15 Apr 2020 02:35:26 +0000 (UTC)
Date: Wed, 15 Apr 2020 10:35:24 +0800
From: Baoquan He <bhe@redhat.com>
To: David Hildenbrand <david@redhat.com>
Subject: Re: [PATCH 1/3] kexec: Prevent removal of memory in use by a loaded
 kexec image
Message-ID: <20200415023524.GG4247@MiWiFi-R3L-srv>
References: <20200412080836.GM25745@shell.armlinux.org.uk>
 <87wo6klbw0.fsf@x220.int.ebiederm.org>
 <20200413023701.GA20265@MiWiFi-R3L-srv>
 <871rorjzmc.fsf@x220.int.ebiederm.org>
 <20200414064031.GB4247@MiWiFi-R3L-srv>
 <86e96214-7053-340b-5c1a-ff97fb94d8e0@redhat.com>
 <20200414092201.GD4247@MiWiFi-R3L-srv>
 <ad060c8a-8afe-3858-0a4f-27ff54ef4c68@redhat.com>
 <20200414143912.GE4247@MiWiFi-R3L-srv>
 <0085f460-b0c7-b25f-36a7-fa3bafaab6fe@redhat.com>
MIME-Version: 1.0
In-Reply-To: <0085f460-b0c7-b25f-36a7-fa3bafaab6fe@redhat.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_193537_059027_DED6AFD6 
X-CRM114-Status: GOOD (  27.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
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
Cc: piliu@redhat.com, Anshuman Khandual <anshuman.khandual@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Bhupesh Sharma <bhsharma@redhat.com>, linuxppc-dev@lists.ozlabs.org,
 kexec@lists.infradead.org,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>, linux-mm@kvack.org,
 James Morse <james.morse@arm.com>, "Eric W. Biederman" <ebiederm@xmission.com>,
 Andrew Morton <akpm@linux-foundation.org>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 04/14/20 at 04:49pm, David Hildenbrand wrote:
> >>>>> The root cause is kexec-ed kernel is targeted at hotpluggable memory
> >>>>> region. Just avoiding the movable area can fix it. In kexec_file_load(),
> >>>>> just checking or picking those unmovable region to put kernel/initrd in
> >>>>> function locate_mem_hole_callback() can fix it. The page or pageblock's
> >>>>> zone is movable or not, it's easy to know. This fix doesn't need to
> >>>>> bother other component.
> >>>>
> >>>> I don't fully agree. E.g., just because memory is onlined to ZONE_NORMAL
> >>>> does not imply that it cannot get offlined and removed e.g., this is
> >>>> heavily used on ppc64, with 16MB sections.
> >>>
> >>> Really? I just know there are two kinds of mem hoplug in ppc, but don't
> >>> know the details. So in this case, is there any flag or a way to know
> >>> those memory block are hotpluggable? I am curious how those kernel data
> >>> is avoided to be put in this area. Or ppc just freely uses it for kernel
> >>> data or user space data, then try to migrate when hot remove?
> >>
> >> See
> >> arch/powerpc/platforms/pseries/hotplug-memory.c:dlpar_memory_remove_by_count()
> >>
> >> Under DLAPR, it can remove memory in LMB granularity, which is usually
> >> 16MB (== single section on ppc64). DLPAR will directly online all
> >> hotplugged memory (LMBs) from the kernel using device_online(), which
> >> will go to ZONE_NORMAL.
> >>
> >> When trying to remove memory, it simply scans for offlineable 16MB
> >> memory blocks (==section == LMB), offlines and removes them. No need for
> >> the movable zone and all the involved issues.
> > 
> > Yes, this is a different one, thanks for pointing it out. It sounds like
> > balloon driver in virt platform, doesn't it?
> 
> With DLPAR there is a hypervisor involved (which manages the actual HW
> DIMMs), so yes.
> 
> > 
> > Avoiding to put kexec kernel into movable zone can't solve this DLPAR
> > case as you said.
> > 
> >>
> >> Now, the interesting question is, can we have LMBs added during boot
> >> (not via add_memory()), that will later be removed via remove_memory().
> >> IIRC, we had BUGs related to that, so I think yes. If a section contains
> >> no unmovable allocations (after boot), it can get removed.
> > 
> > I do want to ask this question. If we can add LMB into system RAM, then
> > reload kexec can solve it. 
> > 
> > Another better way is adding a common function to filter out the
> > movable zone when search position for kexec kernel, use a arch specific
> > funciton to filter out DLPAR memory blocks for ppc only. Over there,
> > we can simply use for_each_drmem_lmb() to do that.
> 
> I was thinking about something similar. Maybe something like a notifier
> that can be used to test if selected memory can be used for kexec

Not sure if I get the notifier idea clearly. If you mean 

1) Add a common function to pick memory in unmovable zone;
2) Let DLPAR, balloon register with notifier;
3) In the common function, ask notified part to check if the picked
   unmovable memory is available for locating kexec kernel;

Sounds doable to me, and not complicated.

> images. It would apply to
> 
> - arm64 and filter out all hotadded memory (IIRC, only boot memory can
>   be used).

Do you mean hot added memory after boot can't be recognized and added
into system RAM on arm64?


> - powerpc to filter out all LMBs that can be removed (assuming not all
>   memory corresponds to LMBs that can be removed, otherwise we're in
>   trouble ... :) )
> - virtio-mem to filter out all memory it added.
> - hyper-v to filter out partially backed memory blocks (esp. the last
>   memory block it added and only partially backed it by memory).
> 
> This would make it work for kexec_file_load(), however, I do wonder how
> we would want to approach that from userspace kexec-tools when handling
> it from kexec_load().

Let's make kexec_file_load work firstly. Since this work is only first
step to make kexec-ed kernel not break memory hotplug. After kexec
rebooting, the KASLR may locate kernel into hotpluggable area too.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
