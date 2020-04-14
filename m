Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9E4F1A772E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 11:17:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h+Km/zIH8/1RKHxRShGP77fOCtZxKmDref7UmWWM98w=; b=or1stwNwXahffZ
	zQmsv3tMAglrgLo63RtrvSkuhi3k3qdXT2McorOfi8tYdqhgz6TEvA7aORxJ7LgRXVi2zjpHwRQrC
	yKReOgeO3aX8HBky80EtVMxTEhhk3y74ZaA5CYzrMrTso8uuK/a3Dlb8LThEqC53WYoLp0oE2zTJ4
	tUJOjBY9eF+Gah76V8y0oWhAs7oTeJuDyTJOI6aZTo9OmvDKpUBYTJCzGkwZs+8Y50OW9UMvU/0ip
	aWMQVsOUG05rnYBR2ZCLa+vr3WNXmyStmikgE6yii8DcKwTcJzdFnklO+6ICQ4fEt6LEungpuMTlj
	fiSSDyF0C81YoxUW/o2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOHgg-0005hK-OM; Tue, 14 Apr 2020 09:16:58 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOHgT-0005fM-TC
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 09:16:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1586855802;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=m87sG7ldnCtMtGF7GpBTNkXwGQ0DdlqvytJhzpKn2To=;
 b=giCHZMG8Wm/hSLjZBcNRSGMa/G+hwJmPgv7V6Y8ewcaGlHYXOn8EpqYg8tYMcjM6v6CKkR
 1Ztyz6I6as/GZqIzjZf7cxqzVzT9uVSLL7hBOcUBWP5RiYw0ODBAj1FsNS6igOUpX0TSpZ
 xCFqE8EDZKqot/xE3FVGCgFlmnWUuH4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-471-jHtuHLK2MGW3grQcmLcBeQ-1; Tue, 14 Apr 2020 05:16:39 -0400
X-MC-Unique: jHtuHLK2MGW3grQcmLcBeQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 64BC918B9FDA;
 Tue, 14 Apr 2020 09:16:32 +0000 (UTC)
Received: from dhcp-128-65.nay.redhat.com (ovpn-12-221.pek2.redhat.com
 [10.72.12.221])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 79956A1880;
 Tue, 14 Apr 2020 09:16:22 +0000 (UTC)
Date: Tue, 14 Apr 2020 17:16:17 +0800
From: Dave Young <dyoung@redhat.com>
To: "Eric W. Biederman" <ebiederm@xmission.com>
Subject: Re: [PATCH 1/3] kexec: Prevent removal of memory in use by a loaded
 kexec image
Message-ID: <20200414091617.GA43656@dhcp-128-65.nay.redhat.com>
References: <dfacf85f-d79d-8742-7a13-1ac0a67bad04@arm.com>
 <ba481c82-c69e-043c-4b66-2d2c7732cf07@redhat.com>
 <20200410121013.03b609fd572504c03a666f4a@linux-foundation.org>
 <20200411034414.GH2129@MiWiFi-R3L-srv>
 <20200411093009.GH25745@shell.armlinux.org.uk>
 <20200412053507.GA4247@MiWiFi-R3L-srv>
 <20200412080836.GM25745@shell.armlinux.org.uk>
 <87wo6klbw0.fsf@x220.int.ebiederm.org>
 <20200413023701.GA20265@MiWiFi-R3L-srv>
 <871rorjzmc.fsf@x220.int.ebiederm.org>
MIME-Version: 1.0
In-Reply-To: <871rorjzmc.fsf@x220.int.ebiederm.org>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_021646_015151_AEA00D35 
X-CRM114-Status: GOOD (  39.41  )
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
Cc: Baoquan He <bhe@redhat.com>, Anshuman Khandual <anshuman.khandual@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Bhupesh Sharma <bhsharma@redhat.com>, David Hildenbrand <david@redhat.com>,
 kexec@lists.infradead.org,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>, linux-mm@kvack.org,
 James Morse <james.morse@arm.com>, Andrew Morton <akpm@linux-foundation.org>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 04/13/20 at 08:15am, Eric W. Biederman wrote:
> Baoquan He <bhe@redhat.com> writes:
> 
> > On 04/12/20 at 02:52pm, Eric W. Biederman wrote:
> >> 
> >> The only benefit of kexec_file_load is that it is simple enough from a
> >> kernel perspective that signatures can be checked.
> >
> > We don't have this restriction any more with below commit:
> >
> > commit 99d5cadfde2b ("kexec_file: split KEXEC_VERIFY_SIG into KEXEC_SIG
> > and KEXEC_SIG_FORCE")
> >
> > With KEXEC_SIG_FORCE not set, we can use kexec_load_file to cover both
> > secure boot or legacy system for kexec/kdump. Being simple enough is
> > enough to astract and convince us to use it instead. And kexec_file_load
> > has been in use for several years on systems with secure boot, since
> > added in 2014, on x86_64.
> 
> No.  Actaully kexec_file_load is the less capable interface, and less
> flexible interface.  Which is why it is appropriate for signature
> verification.

I agreed that the user space design is more flexible,  but as for the
common use case of loading bzImage (say x86 as an example) the
kexec_file_load is good enough.   We could have other potential improvement based
on kexec_file_load.  For example we could use it to do some early kdump
loading,  eg. try to load an attached kdump kernel immediately once
the crashkernel memory get reserved.

> 
> >> kexec_load in every other respect is the more capable and functional
> >> interface.  It makes no sense to get rid of it.

We do not remove kexec_load at all, it is indeed helpful in many cases
as all agreed.  But if we have a bug reported for both we may fix
kexec_file_load first because it is usually easier, also do not need to
worry about too much about old kernel and new kernel compatibility.

For example the recent breakage we found in efi path, kexec_file_load
just work after the efi cleanup, but kexec_load depends on the ABI we
added, so we must fix it as below:
https://lore.kernel.org/linux-efi/20200410135644.GB6772@dhcp-128-65.nay.redhat.com/ 

> >> 
> >> It does make sense to reload with a loaded kernel on memory hotplug.
> >> That is simple and easy.  If we are going to handle something in the
> >> kernel it should simple an automated unloading of the kernel on memory
> >> hotplug.
> >> 
> >> 
> >> I think it would be irresponsible to deprecate kexec_load on any
> >> platform.
> >> 
> >> I also suspect that kexec_file_load could be taught to copy the dtb
> >> on arm32 if someone wants to deal with signatures.
> >> 
> >> We definitely can not even think of deprecating kexec_load until
> >> architecture that supports it also supports kexec_file_load and everyone
> >> is happy with that interface.  That is Linus's no regression rule.
> >
> > I should pick a milder word to express our tendency and tell our plan
> > then 'obsolete'. Even though I added 'gradually', seems it doesn't help
> > much. I didn't mean to say 'deprecate' at all when replied.
> >
> > The situation and trend I understand about kexec_load and kexec_file_load
> > are:
> >
> > 1) Supporting kexec_file_load is suggested to add in ARCHes which don't
> > have yet, just as x86_64, arm64 and s390 have done;
> >  
> > 2) kexec_file_load is suggested to use, and take precedence over
> > kexec_load in the future, if both are supported in one ARCH.
> 
> The deep problem is that kexec_file_load is distinctly less expressive
> than kexec_load.
> 
> > 3) Kexec_load is kept being used by ARCHes w/o kexc_file_load support,
> > and by ARCHes for back compatibility w/ kexec_file_load support.
> >
> > For 1) and 2), I think the reason is obvious as Eric said,
> > kexec_file_load is simple enough. And currently, whenever we got a bug
> > report, we may need fix them twice, for kexec_load and kexec_file_load.
> > If kexec_file_load is made by default, e.g on x86_64, we will change it
> > in kernel space only, for kexec_file_load. This is what I meant about
> > 'obsolete gradually'. I think for arm64, s390, they will do these too.
> > Unless there's some critical/blocker bug in kexec_load, to corrupt the
> > old kexec_load interface in old product.
> 
> Maybe.  The code that kexec_file_load sucked into the kernel is quite
> stable and rarely needs changes except during a port of kexec to
> another architecture.
> 
> Last I looked the real maintenance effor of kexec and kexec on panic was
> in the drivers.  So I don't think we can use maintenance to do anything.
> 
> > For 3), people can still use kexec_load and develop/fix for it, if no
> > kexec_file_load supported. But 32-bit arm should be a different one,
> > more like i386, we will leave it as is, and fix anything which could
> > break it. But people really expects to improve or add feature to it? E.g
> > in this patchset, the mem hotplug issue James raised, I assume James is
> > focusing on arm64, x86_64, but not 32-bit arm. As DavidH commented in
> > another reply, people even don't agree to continue supporting memory
> > hotplug on 32-bit system. We ever took effort to fix a memory hotplug
> > bug on i386 with a patch, but people would rather set it as BROKEN.
> 
> For memory hotplug just reload.  Userspace already gets good events.
> 
> We should not expect anything except a panic kernel to be loaded over a
> memory hotplug event. The kexec on panic code should actually be loaded
> in a location that we don't reliquish if asked for it.
> 
> Quite frankly at this point I would love to see the signature fad die,
> which would allow us to remove kexec_file_load.  I still have not seen
> the signature code used anywhere except by people anticipating trouble.

Same to me, I also hate the Secure Boot, and I also do not like the
trouble added by signature verification.   But still we found that
beyond of Secure Boot use cases it is also useful in other usual cases.

And since kernel has the lockdown supported we have to leave with it.

Thanks
Dave


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
