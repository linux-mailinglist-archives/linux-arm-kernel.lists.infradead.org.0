Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E52491A5CED
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 12 Apr 2020 07:35:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L4cdblui1qOdo8DzbUnDQcCiE3v2H278ePXj8vfqUh4=; b=flTOFmtTgeqPE5
	vVWo8hzueUHxhQ/tKyRHj1QbIffYkxGCvKqSyXbv45y/uwsZdFuA87oHkRiZJV0l1CfCDaDzX06AS
	yXo/DH0skEEeVy5NOUUFk3yLoN6OJz0sS4Ccqxhuco+nBNPUGB/v16LxBgYZEp6Hj/PJYAOUINIFm
	z8oG3rpI3R45ScUoKFbimkyk6mPVUzFzMsa73ahdDLx0YrxX3rXo/D2PTp8GxbIMPCEx1myNsNgn9
	r/DIRVinbge5TrCSZcbmW9bYOKMrZuxSyVM3LrXyXeZ51krGYvuhDLsok1iJjqa9eme6J7FZ/CWhh
	NkLsTwbJetG2rY/8OAcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNVHK-0008N5-BQ; Sun, 12 Apr 2020 05:35:34 +0000
Received: from us-smtp-1.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNVHC-0008Lc-LG
 for linux-arm-kernel@lists.infradead.org; Sun, 12 Apr 2020 05:35:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1586669723;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=VNHbBWHFmvu7Xd6pdBfYIvVGl+F5MeR3LAi8SFTjJV4=;
 b=L112ZxGB/RmvfjatKBUr1d0S9v9LL4e+ohviwz1zAZgyS+Y4FvNfFiI3uqKjah8HvHxrqK
 wUJ3rJZe9WL9XFGZYJIx7bM2LhyVNNEhatcDu9Xad/ACWytLEnmhNQypBMhPVt1PsYi+2g
 tVdFZDo+e7awxsmK5lSfvUyHrnTuWn8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-110-PoPXfklnMiGWmnP1PBuDoQ-1; Sun, 12 Apr 2020 01:35:16 -0400
X-MC-Unique: PoPXfklnMiGWmnP1PBuDoQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8B805800D5B;
 Sun, 12 Apr 2020 05:35:14 +0000 (UTC)
Received: from localhost (ovpn-12-60.pek2.redhat.com [10.72.12.60])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 94E0860BE2;
 Sun, 12 Apr 2020 05:35:10 +0000 (UTC)
Date: Sun, 12 Apr 2020 13:35:07 +0800
From: Baoquan He <bhe@redhat.com>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: Re: [PATCH 1/3] kexec: Prevent removal of memory in use by a loaded
 kexec image
Message-ID: <20200412053507.GA4247@MiWiFi-R3L-srv>
References: <9cb4ea0d-34c3-de42-4b3f-ee25a59c4835@redhat.com>
 <b0443908-e36f-9bc4-4a8a-4206cb782d4b@arm.com>
 <72672e2c-a57a-8df9-0cff-8035cbce7740@redhat.com>
 <34274b02-60ba-eb78-eacd-6dc1146ed3cd@arm.com>
 <80e4d1d7-f493-3f66-f700-86f18002d692@redhat.com>
 <dfacf85f-d79d-8742-7a13-1ac0a67bad04@arm.com>
 <ba481c82-c69e-043c-4b66-2d2c7732cf07@redhat.com>
 <20200410121013.03b609fd572504c03a666f4a@linux-foundation.org>
 <20200411034414.GH2129@MiWiFi-R3L-srv>
 <20200411093009.GH25745@shell.armlinux.org.uk>
MIME-Version: 1.0
In-Reply-To: <20200411093009.GH25745@shell.armlinux.org.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200411_223526_850986_CA324E79 
X-CRM114-Status: GOOD (  27.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [205.139.110.61 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Anshuman Khandual <anshuman.khandual@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Bhupesh Sharma <bhsharma@redhat.com>, David Hildenbrand <david@redhat.com>,
 kexec@lists.infradead.org, linux-mm@kvack.org,
 James Morse <james.morse@arm.com>, Eric Biederman <ebiederm@xmission.com>,
 Andrew Morton <akpm@linux-foundation.org>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 04/11/20 at 10:30am, Russell King - ARM Linux admin wrote:
> On Sat, Apr 11, 2020 at 11:44:14AM +0800, Baoquan He wrote:
> > Because We tend to use kexec_file_load more and improve/enhance it in the
> > future, and gradually obsolete the old kexec_load interface which this
> > patchset is trying to fix on. 
> 
> That's not going to happen; 32-bit ARM kexec uses the kexec_load
> interface rather than the kexec_file_load version, and I see no one
> with any interest in changing that - and there's users of the former.
> 
> I don't see how it's possible to convert 32-bit ARM kexec to the
> kexec_file_load interface - this assumes that all you have are the
> kernel, initrd, and commandline, but on 32-bit ARM kexec, we have
> kernel, initrd and the dtb blob which the user can specify.

Well, I understand what you said about 32-bit ARM support with only
kexec_old support thing. That's why I said we tend to obsolete it
'GRADUALLY'. It's the existing users who are using kexec_load, and the
ARCHes which only has kexec_load, make us have to transfer to
kexec_file_load gradually.

Comparing with kexec_load, kexec_file_load has only one disadvantage,
that is some ARCHes only have kexec_load. Otherwise, kexec_file_load
benefits kexec/kdump developping/maintaining very much. The loading job
of kexec_file_load is mostly done in kernel, we can get whatever we
want about kernel information very conveniently to do anything needed.
For the kexec_load interface, the loading job is mostly done in
userspace, we have to export kernel information to procfs, sysfs, etc,
then parse them in kexec_tools, finally passed it to kernel part of
kexec loading.

The gradual obsoleting means we may only add
feature/improvement/enhancement to kexec_file_load. And if a bug fix is
needed for both kexec_load and kexec_file_load, and the fix is very
complicated, we may only fix it in kexec_file_load too. Kexec_file_load
interface is suggested to add if does't have, just port user space part
to kernel as x86/s390/arm64 have done.

Surely, it doesn't mean we don't fix the critical/blocker bug with
kexec_load loading. We still try to do, just are not so eager. In the
existing product environment, the kexec_load is used, just keep using
it. Do we bother to change it to kexec_file_load, e.g in our RHEL7
distros? Certainly not. But in our new product, we will change to use
kexec_file_load interface. I guess this is similar with arm64. The
advantage and benefit have been told in the 2nd paragraph.


As for 32-bit ARM, is it like the old product, we have many in-use systems
deployed in customers' laboratory? Wondering if ARM continues designing
new 32-bit ARM cpu, and some companies continue producing tons of 32-bit ARM
cpus. If yes, I think we need continue taking care of kexec_load if
32-bit ARM can't convert to kexec_file_load. If not, it may be not a
barrier when we consider converting kexec_load to kexec_file_load in
other ARCHes. We just need keep using it, try to fix those critical/blocker
bug in kexec_load interface if encountered.

Finally, comning back to this patchset itself, the issue James spotted
is not so ciritical, I would say. When I do kexec jumping, I will do
loading firstly, then trigge jumping. I can think of the case that
people may load kexec-ed kernel, then do something else, later she/he
triggers the kexec jumping. These are not necessary steps. As Dave and I
replied to James in the cover-letter thread, adding a systemd service of
kexec loading, monitor hotplug uevent, reload it if any hot remove
happened. This is quite easy to do, I don't see any problem with it, and
why we don't do like this. 

My personal opinion, please tell if I miss anything.

> 
> So, if we wanted to obsolete the kexec_load interface, _first_ there
> needs to be a way to provide users with the existing functionality
> they have already in place on 32-bit ARM - otherwise we're looking
> at a userspace regression.  Especially as kexec_file_load takes
> precedence on some distro patched versions of the kexec tool,
> irrespective of which interface the user requests of the tool.
> 
> -- 
> RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
> FTTC broadband for 0.8mile line in suburbia: sync at 10.2Mbps down 587kbps up
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
