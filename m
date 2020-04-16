Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63D401AC633
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 16:37:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6mUpJedYE/md89FeAZjmgiHh5LOdlNvAA48I42GNddA=; b=P/QdcQEjYZRcZ9
	cYb9SYWZhz5TI6qNttEzPYvxJ/5JBQlqKMdmTGDRWgTMsPWVmqRVvumGsFRJ4zbzu2/qGOUha3ESD
	Xe5Rjcaq/18zVwSAjimGAFDw+JtzUdWUhK1jf1V1nqaMD9ODZRgQtoCjtAQTttqD3sxI3fs/A/gFi
	qQhsEx1lGZsV0ghGoQ8iuS2ql2MlLY4CHoQcz89hi1HoGE0CtjKe3SeNRgm3uMN68iv8hrVup+KAp
	OlUjHGe3eR7zYtnRFR2QhEFuhz3CHCX0pr75G5PoyMS8g9vnxoyx3LMnwFXdg+GoCdO37+YUdkflG
	g0RlUaW4js8qB1/FHq0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP5dX-0008Pn-Sp; Thu, 16 Apr 2020 14:37:03 +0000
Received: from us-smtp-2.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP5dJ-0008Oo-Rs
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 14:36:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1587047807;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=b0AQKjbn71RmutxWIXxMLzth6Yh927BEPNgXbgaoIzU=;
 b=QUO2DId82mxUxjOYpDb4wtYFj85mWkN6DIqKHa87pftXWWlgZIvsFSM+xpvYsYVqpXqx6f
 m2MmsGIIvsZUBk52BBBPSRHsD6M+8XT0k28fvZGRziWOFmcXQyp0FWwBXdPXEbAS3avxFt
 TwnyWJv1lYeGfkZgREGZfuMWit+3F3c=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-234-TnQyCV7VNAmASBbrHR-Zfw-1; Thu, 16 Apr 2020 10:36:42 -0400
X-MC-Unique: TnQyCV7VNAmASBbrHR-Zfw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 96E1F18CA240;
 Thu, 16 Apr 2020 14:36:40 +0000 (UTC)
Received: from localhost (ovpn-12-36.pek2.redhat.com [10.72.12.36])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id A2A6619C70;
 Thu, 16 Apr 2020 14:36:36 +0000 (UTC)
Date: Thu, 16 Apr 2020 22:36:34 +0800
From: Baoquan He <bhe@redhat.com>
To: David Hildenbrand <david@redhat.com>,
 Andrew Morton <akpm@linux-foundation.org>
Subject: Re: [PATCH 1/3] kexec: Prevent removal of memory in use by a loaded
 kexec image
Message-ID: <20200416143634.GH4247@MiWiFi-R3L-srv>
References: <20200414064031.GB4247@MiWiFi-R3L-srv>
 <86e96214-7053-340b-5c1a-ff97fb94d8e0@redhat.com>
 <20200414092201.GD4247@MiWiFi-R3L-srv>
 <ad060c8a-8afe-3858-0a4f-27ff54ef4c68@redhat.com>
 <20200414143912.GE4247@MiWiFi-R3L-srv>
 <0085f460-b0c7-b25f-36a7-fa3bafaab6fe@redhat.com>
 <20200415023524.GG4247@MiWiFi-R3L-srv>
 <18cf6afd-c651-25c7-aca3-3ca3c0e07547@redhat.com>
 <20200416140247.GA12723@MiWiFi-R3L-srv>
 <4e1546eb-4416-dc6d-d549-62d1cecccbc8@redhat.com>
MIME-Version: 1.0
In-Reply-To: <4e1546eb-4416-dc6d-d549-62d1cecccbc8@redhat.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_073649_972486_057455F9 
X-CRM114-Status: GOOD (  28.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 04/16/20 at 04:09pm, David Hildenbrand wrote:
> >>> Sounds doable to me, and not complicated.
> >>>
> >>>> images. It would apply to
> >>>>
> >>>> - arm64 and filter out all hotadded memory (IIRC, only boot memory can
> >>>>   be used).
> >>>
> >>> Do you mean hot added memory after boot can't be recognized and added
> >>> into system RAM on arm64?
> >>
> >> See patch #3 of this patch set, which wants to avoid placing kexec
> >> binaries on hotplugged memory. But I have no idea what the current plan
> >> regarding arm64 is (this thread exploded :) ).
> >>
> >> I would assume that we don't want to place kexec images on any
> >> hotplugged (or rather: hot(un)pluggable) memory - on any architecture.
> > 
> > Yes, noticed that and James replied to DaveY.
> > 
> > Later, when I was considering to make a draft patch to do the picking of
> > memory from normal zone, and add a notifier, as we discussed at above, I
> > suddenly realized that kexec_file_load doesn't have this issue. It
> > traverse system RAM bottom up to get an available region to put
> > kernel/initrd/boot_param, etc. I can't think of a system where its
> > low memory could be unavailable.
> 
> kexec_walk_memblock() has the option for "kbuf->top_down". Only
> kexec_walk_resources() seems to ignore it.

Yeah, that top down searching is done in a found low mem area. Means
firstly search an available region bottom up, then put kernel top down
in that region. The reason is our iomem res is linked with singly linked
list. So we can only search bottom up efficiently.

kexec_load is doing the real top down searching, so kernel will be put
at the top of system ram. I ever tried to change it to support top down
searching for kexec_file_load too with patches, since QE and customers
are often confused with this difference when debugging.

Andrew may remeber this, he suggested me to change the singly linked list 
to doubly linked list for iomem res, then do the top down searching for
kexec_file_load. I tried with some effort, the change introduced too much
code change, I just gave up finally.

http://archive.lwn.net:8080/devicetree/20180718024944.577-1-bhe@redhat.com/

I can see that top down searching for kexec can avoid the highly used
low memory region, esp under 4G, for dma, kinds of firmware reserving,
etc. And customers/QE of kexec get used to it. I can change kexec_file_load
to top down too with a simple way if people really complain it. But now, 
seems bottom up is not bad too.

> 
> So I think in case of memblocks (e.g., arm64), this still applies?

Yeah, aren't you trying to remove it? I haven't read your patches
carefully, maybe I got it wrong. And arm64 even can't support the hot added
memory being able to recorded into firmware, seems it's not so ready, 
won't they change that design in the future?
> 
> >>
> >>>
> >>>
> >>>> - powerpc to filter out all LMBs that can be removed (assuming not all
> >>>>   memory corresponds to LMBs that can be removed, otherwise we're in
> >>>>   trouble ... :) )
> >>>> - virtio-mem to filter out all memory it added.
> >>>> - hyper-v to filter out partially backed memory blocks (esp. the last
> >>>>   memory block it added and only partially backed it by memory).
> >>>>
> >>>> This would make it work for kexec_file_load(), however, I do wonder how
> >>>> we would want to approach that from userspace kexec-tools when handling
> >>>> it from kexec_load().
> >>>
> >>> Let's make kexec_file_load work firstly. Since this work is only first
> >>> step to make kexec-ed kernel not break memory hotplug. After kexec
> >>> rebooting, the KASLR may locate kernel into hotpluggable area too.
> >>
> >> Can you elaborate how that would work?
> > 
> > Well, boot memory can be hotplugged or not after boot, they are marked
> > in uefi tables, the current kexec doesn't save and pass them into 2nd
> > kenrel, when kexec kernel bootup, it need read them and avoid them to
> > randomize kernel into.
> 
> What about e.g., memory hotplugged by ACPI? I would assume, that the
> kexec kernel will not make use of that (IOW detected that) until the
> ACPI driver comes up and re-detects + adds that memory.
> 
> Or how would that machinery work in case we have a DIMM hotplugged via ACPI?

ACPI SRAT is embeded into efi, need read out the rsdp pointer. If we don't
pass the efi, it won't get the SRAT table correctly, if I remember
correctly. Yeah, I remeber kvm guest can get memory hotplugged with
ACPI only, this won't happen on bare metal though. Need check carefully. 
I have been using kvm guest with uefi firmwire recently.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
