Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2084B1A73E9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 08:52:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bb8MvNjVq/JkU/UsTSWkZvacU2NnYJREms6nCD6FuX8=; b=OHI18GZrs/Q1cI
	2Av9CiAIzUPhAbTcHq3WgGsepSfT7+4Q3TzsqwK58tRIT3drSTlEEo3tg0P9V+no9R0iO3sAJem9z
	YNo/GFVtmEDwUVEoCjKZxgF0wwXhfCpHR1jBgplRbEkVX0VQpSs1o/S7NOVXbKgohq3aO/1Z0kuTn
	OVA1WPXqU1zEXd/BYKtbCcZrZ8FBGKf50y3RSTnTjIz4LKQgIF7vC4txK4xwTeyBucW/EwVCkZpHJ
	06T93KCmsqeXFWqNIS6ENV+3ukLx7Y/N9mg2pq73dcEFicRzOZoFgPn8YsJl78kgIJIa78wsHLGFN
	BKucOE/P+wEtrYTf4ezg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOFQh-0008IB-Qy; Tue, 14 Apr 2020 06:52:19 +0000
Received: from us-smtp-2.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOFQa-0008H0-7b
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 06:52:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1586847128;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Oe/YIwGLGx5GyV6TXlsJTWX392BfMwpb2bproRvDxd0=;
 b=bC1fkqkGkELojRzO30YrS8PS9wZtKQy8geJIaHxuvfZfgGdrQ5q2m+gO71qMBT81i/JDSL
 soqX1PcZ+eiQFDsJmOJuYHocccLyqmJDBIZp04uVsRKb9weITMUkw5LoJtyLJnNE4Jee5Q
 ooWzqhHe1d6AfieAikt4s/qBHvh33Jw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-241-Qa-iFM0VNOamJuzXlP_N8w-1; Tue, 14 Apr 2020 02:52:03 -0400
X-MC-Unique: Qa-iFM0VNOamJuzXlP_N8w-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id CFDD218B9FC1;
 Tue, 14 Apr 2020 06:52:01 +0000 (UTC)
Received: from localhost (ovpn-12-105.pek2.redhat.com [10.72.12.105])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 4FDDF10002B0;
 Tue, 14 Apr 2020 06:51:58 +0000 (UTC)
Date: Tue, 14 Apr 2020 14:51:56 +0800
From: Baoquan He <bhe@redhat.com>
To: "Eric W. Biederman" <ebiederm@xmission.com>
Subject: Re: [PATCH 1/3] kexec: Prevent removal of memory in use by a loaded
 kexec image
Message-ID: <20200414065156.GC4247@MiWiFi-R3L-srv>
References: <ba481c82-c69e-043c-4b66-2d2c7732cf07@redhat.com>
 <20200410121013.03b609fd572504c03a666f4a@linux-foundation.org>
 <20200411034414.GH2129@MiWiFi-R3L-srv>
 <20200411093009.GH25745@shell.armlinux.org.uk>
 <20200412053507.GA4247@MiWiFi-R3L-srv>
 <20200412080836.GM25745@shell.armlinux.org.uk>
 <87wo6klbw0.fsf@x220.int.ebiederm.org>
 <20200413023701.GA20265@MiWiFi-R3L-srv>
 <871rorjzmc.fsf@x220.int.ebiederm.org>
 <20200414064031.GB4247@MiWiFi-R3L-srv>
MIME-Version: 1.0
In-Reply-To: <20200414064031.GB4247@MiWiFi-R3L-srv>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_235212_363088_104F1F0B 
X-CRM114-Status: GOOD (  48.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: David Hildenbrand <david@redhat.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Bhupesh Sharma <bhsharma@redhat.com>,
 Anshuman Khandual <anshuman.khandual@arm.com>, kexec@lists.infradead.org,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>, linux-mm@kvack.org,
 James Morse <james.morse@arm.com>, Andrew Morton <akpm@linux-foundation.org>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 04/14/20 at 02:40pm, Baoquan He wrote:
> On 04/13/20 at 08:15am, Eric W. Biederman wrote:
> > Baoquan He <bhe@redhat.com> writes:
> > 
> > > On 04/12/20 at 02:52pm, Eric W. Biederman wrote:
> > >> 
> > >> The only benefit of kexec_file_load is that it is simple enough from a
> > >> kernel perspective that signatures can be checked.
> > >
> > > We don't have this restriction any more with below commit:
> > >
> > > commit 99d5cadfde2b ("kexec_file: split KEXEC_VERIFY_SIG into KEXEC_SIG
> > > and KEXEC_SIG_FORCE")
> > >
> > > With KEXEC_SIG_FORCE not set, we can use kexec_load_file to cover both
> > > secure boot or legacy system for kexec/kdump. Being simple enough is
> > > enough to astract and convince us to use it instead. And kexec_file_load
> > > has been in use for several years on systems with secure boot, since
> > > added in 2014, on x86_64.
> > 
> > No.  Actaully kexec_file_load is the less capable interface, and less
> > flexible interface.  Which is why it is appropriate for signature
> > verification.
> 
> Well, everyone has a stance and the corresponding view. You could have
> wider view from long time maintenance and in upstrem position, and think
> kexec_file_load is horrible. But I can only see from our work as a front
> line engineer to maintain/develop kexec/kdump in RHEL, and think
> kexec_file_load is easier to maintain.
> 
> Surely except of multiple kernel image format support. No matter it is
> kexec_load and kexec_file_load, e.g in x86_64, we only support bzImage.
> This is produced from kerel building by default. We have no way to
> support it in our distros and add it into kexec_file_load.
> 
> [RFC PATCH] x86/boot: make ELF kernel multiboot-able
> https://lkml.org/lkml/2017/2/15/654
> 
> > 
> > >> kexec_load in every other respect is the more capable and functional
> > >> interface.  It makes no sense to get rid of it.
> > >> 
> > >> It does make sense to reload with a loaded kernel on memory hotplug.
> > >> That is simple and easy.  If we are going to handle something in the
> > >> kernel it should simple an automated unloading of the kernel on memory
> > >> hotplug.
> > >> 
> > >> 
> > >> I think it would be irresponsible to deprecate kexec_load on any
> > >> platform.
> > >> 
> > >> I also suspect that kexec_file_load could be taught to copy the dtb
> > >> on arm32 if someone wants to deal with signatures.
> > >> 
> > >> We definitely can not even think of deprecating kexec_load until
> > >> architecture that supports it also supports kexec_file_load and everyone
> > >> is happy with that interface.  That is Linus's no regression rule.
> > >
> > > I should pick a milder word to express our tendency and tell our plan
> > > then 'obsolete'. Even though I added 'gradually', seems it doesn't help
> > > much. I didn't mean to say 'deprecate' at all when replied.
> > >
> > > The situation and trend I understand about kexec_load and kexec_file_load
> > > are:
> > >
> > > 1) Supporting kexec_file_load is suggested to add in ARCHes which don't
> > > have yet, just as x86_64, arm64 and s390 have done;
> > >  
> > > 2) kexec_file_load is suggested to use, and take precedence over
> > > kexec_load in the future, if both are supported in one ARCH.
> > 
> > The deep problem is that kexec_file_load is distinctly less expressive
> > than kexec_load.
> > 
> > > 3) Kexec_load is kept being used by ARCHes w/o kexc_file_load support,
> > > and by ARCHes for back compatibility w/ kexec_file_load support.
> > >
> > > For 1) and 2), I think the reason is obvious as Eric said,
> > > kexec_file_load is simple enough. And currently, whenever we got a bug
> > > report, we may need fix them twice, for kexec_load and kexec_file_load.
> > > If kexec_file_load is made by default, e.g on x86_64, we will change it
> > > in kernel space only, for kexec_file_load. This is what I meant about
> > > 'obsolete gradually'. I think for arm64, s390, they will do these too.
> > > Unless there's some critical/blocker bug in kexec_load, to corrupt the
> > > old kexec_load interface in old product.
> > 
> > Maybe.  The code that kexec_file_load sucked into the kernel is quite
> > stable and rarely needs changes except during a port of kexec to
> > another architecture.
> > 
> > Last I looked the real maintenance effor of kexec and kexec on panic was
> > in the drivers.  So I don't think we can use maintenance to do anything.
> 
> Not sure if I got it. But if check Lianbo's patches, a lot of effort has
> been taken to make SEV work well on kexec_file_load. And we have
> switched to use kexec_file_load in the newly published  Fedora release
> on x86_64 by default. Before this, Lianbo has investigated and done many
> experiments to make sure the switching is safe. We finally made this
> decision. Next we will do the switch in Enterprise distros. Once these
> are proved safe, we will suggest customers to use kexec_file_load for
> kexec rebooting too. In the future, we will only care about
> kexec_file_load if everying is going well. But as I have explained
> repeatedly, only caring about kexec_file_load means we will leave
> kexec_load as is, we will not add new feature or improvement patches
> for it.
> 
> commit 6a20bd54473e11011bf2b47efb52d0759d412854
> Author: Lianbo Jiang <lijiang@redhat.com>
> Date:   Thu Jan 16 13:47:35 2020 +0800
> 
>     kdump-lib: switch to the kexec_file_load() syscall on x86_64 by default
> 
> > 
> > > For 3), people can still use kexec_load and develop/fix for it, if no
> > > kexec_file_load supported. But 32-bit arm should be a different one,
> > > more like i386, we will leave it as is, and fix anything which could
> > > break it. But people really expects to improve or add feature to it? E.g
> > > in this patchset, the mem hotplug issue James raised, I assume James is
> > > focusing on arm64, x86_64, but not 32-bit arm. As DavidH commented in
> > > another reply, people even don't agree to continue supporting memory
> > > hotplug on 32-bit system. We ever took effort to fix a memory hotplug
> > > bug on i386 with a patch, but people would rather set it as BROKEN.
> > 
> > For memory hotplug just reload.  Userspace already gets good events.
> 
> Kexec_file_load is easy to maintain. This is an example.
> 
> Lock the hotplug area where kexed-ed kernel is targeted in this patchset,
> it's obviously not right. We can't disable memory hotplug just because
> kexec-ed kernel is loaded ahead of time. 
> 
> Reloading is also not a good fix. Kexec-ed kernel is targeted at a
> movable area, reloading can avoid kexec rebooting corruption if that
> area is hot removed. But if that area is not removed, locating kernel
> into the hotpluggable area will change the area into ummovable zone.

Here I mean if kexec kernel is targeted at a hotplggable memory region,
after kexec rebooting, that region will become unmovable. People can't
hot remove it in kexec-ed kernel.

> Unless we decide to not support memory hotplug in kexec-ed kernel, I
> guess it's very hard. Now in our distros kexec rebooting has been
> supported, the big cloud providers are deploying linux in guest, bugs on
> kexec reboot failure has been reported. They need the memory hotplug to
> increase/decrease memory.
> 
> The root cause is kexec-ed kernel is targeted at hotpluggable memory
> region. Just avoiding the movable area can fix it. In kexec_file_load(),
> just checking or picking those unmovable region to put kernel/initrd in
> function locate_mem_hole_callback() can fix it. The page or pageblock's
> zone is movable or not, it's easy to know. This fix doesn't need to
> bother other component.
> 
> > 
> > We should not expect anything except a panic kernel to be loaded over a
> > memory hotplug event. The kexec on panic code should actually be loaded
> > in a location that we don't reliquish if asked for it.
> > 
> > Quite frankly at this point I would love to see the signature fad die,
> > which would allow us to remove kexec_file_load.  I still have not seen
> > the signature code used anywhere except by people anticipating trouble.
> > 
> > Given that Microsoft has already directly signed a malicous bootloader.
> > (Not in the Linux ecosystem).  I don't even know if any of the reasons
> > for having kexec_file_load are legtimate.
> > 
> > 
> > If someone wants to do the work and ensure everything that is possible
> > to load with kexec_load is possible to load with kexec_file_load.
> > Kernels supporting the multi-boot protocol etc.  Then we can consider
> > deprecating kexec_load.
> > 
> > 
> > I think it took me about 15 years to remove the sysctl system call and
> > it only ever had about 10 users.  If you want to go through that kind of
> > work to make certain there are no more users and that everything they
> > could do with the old interface is doable with the new interface then
> > please be my guest.  Until then we need to fully support kexec_load.
> 
> I want to clarify again, we have no plan to deprecate kexec_load.
> We just plan to use kexec_file_load more in our distros, for both legacy
> system or system with secure boot.
> 
> Eric, I am glad to see you told your opinion about kexec_file_load.
> Without the discussion in this thread, we may not know it. So I have one
> question, seems kexec_file_load will continue existing, the ARCHes our
> distros is supporting, x86_64, s390, ppc, arm64, all have kexec_file_load,
> do you object us to continue using kexec_file_load, for signature
> verification and normal kexec/kdump booting? Or you plan to deprecate
> kexec_file_load?


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
