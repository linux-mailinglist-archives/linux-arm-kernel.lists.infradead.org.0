Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F4011CF292
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 12:34:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M96fPoD5FK0JeseNADltPKtKANaaqGyTd0Xtlx57k8c=; b=Hce+RpCYN21s4n
	v+rhoub8kc6brBYcXrJCfRU8yvaiuTeg+sEjG89FLY4O7NfHu+am5K9KyCQI2tiauyp5yZpEKnrDB
	xAQd/kAi9PwCHDJNifypRFUV5R4EAAV5PsT5/5uhfVY37yageeDrkZex4UlUV0DBNtXqaokLQTwrq
	Jum67tPypWzTblYdnliR2NLVjcHl07SINWy+E0vzyphSzxuf6TbDihmVw8eKSti+awzNkodQi8nNM
	Xm99BB409rkWfYVQMpWxLOy3gl2j9M0uZqdwPwQmYsY9xOn7DRc1Zh9NUxxDmfbUTgxJC97rROm7t
	l5udZDEYMtF7ZhEKsF1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYSF6-0004y0-HN; Tue, 12 May 2020 10:34:32 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYSEx-0004we-Aa
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 10:34:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1589279662;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=3lLm6Mei5zP3dDAfkIq6Y2CxnabVnVoNYqjayTtE21c=;
 b=bEJhyYszmmVO1232dAjDUO50Dhs+LcNuS0KjMw4+vBOgRvGL+wtukGjer4OQxJGpkUBozt
 h3tbnofBNOYNKfW+z1ZfqornVAtfGJfT7rda7nQQoJE62mtyMzPMq63hAHn5ti6pGlpEqN
 7o5AVa4RU3odJWayflfuKO8rRICzYuk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-329-EWAfLJbgN1Ci0ePKeXMdfA-1; Tue, 12 May 2020 06:34:12 -0400
X-MC-Unique: EWAfLJbgN1Ci0ePKeXMdfA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 956631B18BC2;
 Tue, 12 May 2020 10:34:11 +0000 (UTC)
Received: from localhost (ovpn-12-40.pek2.redhat.com [10.72.12.40])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 1EBD55C1BB;
 Tue, 12 May 2020 10:34:05 +0000 (UTC)
Date: Tue, 12 May 2020 18:34:02 +0800
From: Baoquan He <bhe@redhat.com>
To: David Hildenbrand <david@redhat.com>,
 "Eric W. Biederman" <ebiederm@xmission.com>
Subject: Re: [PATCH] kexec: Discard loaded image on memory hotplug
Message-ID: <20200512103402.GK5029@MiWiFi-R3L-srv>
References: <20200501165701.24587-1-james.morse@arm.com>
 <40b07632-b044-d1cd-96a2-81eec3da93e7@redhat.com>
 <8736892l92.fsf@x220.int.ebiederm.org>
 <a1c162fe-74de-c5ca-dadf-d451e970fdea@redhat.com>
 <20200511112755.GB4922@MiWiFi-R3L-srv>
 <04c8edd0-5c67-3ba7-5f87-c16a47b2af5c@redhat.com>
MIME-Version: 1.0
In-Reply-To: <04c8edd0-5c67-3ba7-5f87-c16a47b2af5c@redhat.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_033423_441931_9DB0F244 
X-CRM114-Status: GOOD (  31.33  )
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
Cc: kexec@lists.infradead.org, Dave Young <dyoung@redhat.com>,
 James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org,
 linux-mm@kvack.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 05/11/20 at 01:55pm, David Hildenbrand wrote:
> On 11.05.20 13:27, Baoquan He wrote:
> > On 05/11/20 at 10:19am, David Hildenbrand wrote:
> >> On 09.05.20 17:14, Eric W. Biederman wrote:
> >>>>> + * If the memory layout changes, any loaded kexec image should be evicted
> >>>>> + * as it may contain a copy of the (now stale) memory map. This also means
> >>>>> + * we don't need to check the memory is still present when re-assembling the
> >>>>> + * new kernel at machine_kexec() time.
> >>>>> + */
> >>>>
> >>>> Onlining/offlining is not a change of the memory map.
> >>>
> >>> Phrasing it that way is non-sense.  What is important is memory
> >>> available in the system.  A memory map is just a reflection upon that,
> >>> a memory map is not the definition of truth.
> >>>
> >>> So if this notifier reflects when memory is coming and going on the
> >>> system this is a reasonable approach.  
> >>>
> >>> Do these notifiers might fire for special kinds of memory that should
> >>> only be used for very special purposes?
> >>>
> >>> This change with the addition of some filters say to limit taking action
> >>> to MEM_ONLINE and MEM_OFFLINE looks reasonable to me.  Probably also
> >>> filtering out special kinds of memory that is not gernally useful.
> >>
> >> There are cases, where this notifier will not get called (e.g., hotplug
> >> a DIMM and don't online it) or will get called, although nothing changed
> >> (offline+re-online to a different zone triggered by user space). AFAIK,
> >> nothing in kexec (*besides kdump) cares about online vs. offline memory.
> >> This is why this feels wrong.
> >>
> >> add_memory()/try_remove_memory() is the place where:
> >> - Memblocks are created/deleted (if the memblock allocator is still
> >>   alive)
> >> - Memory resources are created/deleted (e.g., reflected in /proc/iomem)
> >> - Firmware memmap entries are created/deleted (/sys/firmware/memmap)
> >>
> >> My idea would be to add something like
> >> kexec_map_add()/kexec_map_remove() where we have
> >> firmware_map_add_hotplug()/firmware_map_remove(). From there, we can
> >> unload the kexec image like done in this patch.
> > 
> > Hi David,
> > 
> > I may miss some details, do you know why we have to unload the kexec image
> > when add/remove memory?
> > 
> > If this is applied, even kexec_file_load is also affected. As we
> > discussed, kexec_file_load is not impacted by kinds of memory
> > adding/removing at all.
> 
> kexec_load():
> 
> 1. kexec-tools could have placed kexec images on memory that will be
> removed.
> 
> 2. the memory map of the guest is stale (esp., might still contain
> hotunplugged memory). /sys/firmware/memmap and /proc/iomem will be
> updated, so kexec-tools can fix this up.

With my understanding, this is a corner case. Before James's last
patchset, I even hadn't realized this is a problem. Because we usually
load kexec image, next trigger a kexec rebooting. Wondering if James
just found out a potential issue, or he really met this problem. Surely,
we should fix it when have identified it, even though it's a corner
case.

And we suggested adding service of loading kexec to fix this. We
suggest this because kdump also need to recollect the memory regions
so that it can pass them into 2nd kernel and dump the newly added
memory region, or not dump the already removed memory region. 
Kdump kernel won't get problem during boot or running caused by the
hot added/removed memory as kexec kernel does, however, on failing to
achieve expected result, kdump and kexec have the same problem. I don't
see why kdump can be reloaded by memory adding/removing uevent triggering,
but kexec can't. If have to unload kexec image, does kdump image need
be unloaded?

Here my main concern is if it will complicate kexec code. While
reloading it via systemd service won't. No matther if it's making kexec
disable memory hotplug, or making memory hotplug disabling kexec, it
seems to couple kexec with other feature/subcomponent. Anyway, we have
added a kexec loading service, any memory adding/removing uevent will
trigger the reloading. This patch won't impact anything, even though
it doesn't make sense to us, so have no objection to this.

Another thing is below patch. Another case of complicating kexec because
of specific use case, please feel free to help review and add comment.
I am wondering if we can make it in user space too. E.g for oracle DB,
we limit the memory allocation within the movable nodes for memory
hotplugging, we can also add memmap= or mem= to kexec-ed kernel to protect
those memory regions inside the nodes, then restore the data from the nodes.
Not sure if VM data can be put in MOVABLE zone only.

[RFC 00/43] PKRAM: Preserved-over-Kexec RAM

> kexec_file_load():
> 
> 1. kexec could have placed kexec images on memory that will be removed,
> especially when kexec_locate_mem_hole() is called to locate memory top-down.
> 
> IIRC, the memory map might also be stale and I agree that unloading
> won't actually change something here (needs different fixes as I
> explained regarding the kexec e820 map). Think about unplugging a DIMM
> that was described in the e820 map during boot and was put into the
> MOVABLE zone using cmdline parameters like "movablecore". After unplug,
> it will still be described in the kexec e820 map.

Yes, this is a good catch. I thought to leave the e820_table_kexec
as is. As for the boot memory hotplug as you mentioned, it's a problem.
We can't tell kexec-ed kernel an unavailable region via e820. Once
updating e820_table_kexec, kexec_file_load will not be immune to
hotplugged memory any more. Otherwise the stale e820 map will pass to
kexec kernel, I haven't checked if it will impact system booting, will
check.

> 
> I agree that we might might be able to make smarter decisions in the
> kernel regarding kexec_file_load() - for example, try to find new
> locations for kexec images. For now, this seems to be simple.
> 
> > 
> > Besides, if unload image in casae memory added/removed, we will accept
> > that the later 'kexec -e' is actually rebooting?
> 
> At least in the kernel, kernel_kexec() will bail out in case there is no
> kexec_image loaded anymore. And we printed a message, so we can at least
> figure out what happened.
> 
> Where is this rebooting you mention performed in case there is no image
> loaded?

OK, I forgot it returned from reboot invocation w/o image loaded.

> 
> -- 
> Thanks,
> 
> David / dhildenb


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
