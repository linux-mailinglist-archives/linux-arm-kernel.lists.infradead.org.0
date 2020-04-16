Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 459F41AC4BA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 16:03:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZBYZvPaVPbx3Al8Jfx0JA/0aLqLtsrVAAA3vubRvBi8=; b=XfSpEiDbM9BUkj
	ce5Ipub3vhxS+l/INxSPGHWBy+62srWCmfqIoAIfmLyvs5A8Dr0+K0HZdYjxQ/snZqbarCchEKtOT
	0SAnHEtdFmPeSX3/bFPGaxq5q3u7T06gp3L/r3/5i+KsvAjhgbQ65BYpSZKURbNDKtyiSgEt082vT
	A0yzps8NTdqiCU2k8K0AtJWSCzOYQ3INo7v0jIQ6QH7yRfCVVPoHe5XemXO3ncQiWTUXfFiQEEAxB
	Sd+IZ+aALvP1g8lvMR61/oOUp/Sjf6Z4bmRj4EIcTQ9lm59M3PFwq4NCGrwsIFy+DM09LZB7X3gso
	VI+1UWuQ7do2nq+OVpbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP575-0001DT-NI; Thu, 16 Apr 2020 14:03:31 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP56m-0000wW-G1
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 14:03:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1587045787;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=mTCnzd2XlgbcxruM8XtC2INeIkYrefeETcNQ6xKyTQc=;
 b=BtqLPa9aoVdgLnkvUmm1kcG23hKzKAyDZAfZ5rV7apEkJ08l7eG2PPoPy0sWxNUWqI6rDk
 xgo6hAWMnbD3MMDpy5PEmvDoPy33fw4hpP4V4TgKjs+WB0WIuV4aLENpOjIXKmQ5ZymwS8
 zxLmIq6sjJ8GeCFiHqryGsmADMOd2P0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-330-PC3eu-rJOkazl1fOhLt66A-1; Thu, 16 Apr 2020 10:02:55 -0400
X-MC-Unique: PC3eu-rJOkazl1fOhLt66A-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 83520190B2A9;
 Thu, 16 Apr 2020 14:02:53 +0000 (UTC)
Received: from localhost (ovpn-12-36.pek2.redhat.com [10.72.12.36])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id ACF605C1C5;
 Thu, 16 Apr 2020 14:02:49 +0000 (UTC)
Date: Thu, 16 Apr 2020 22:02:47 +0800
From: Baoquan He <bhe@redhat.com>
To: David Hildenbrand <david@redhat.com>
Subject: Re: [PATCH 1/3] kexec: Prevent removal of memory in use by a loaded
 kexec image
Message-ID: <20200416140247.GA12723@MiWiFi-R3L-srv>
References: <20200413023701.GA20265@MiWiFi-R3L-srv>
 <871rorjzmc.fsf@x220.int.ebiederm.org>
 <20200414064031.GB4247@MiWiFi-R3L-srv>
 <86e96214-7053-340b-5c1a-ff97fb94d8e0@redhat.com>
 <20200414092201.GD4247@MiWiFi-R3L-srv>
 <ad060c8a-8afe-3858-0a4f-27ff54ef4c68@redhat.com>
 <20200414143912.GE4247@MiWiFi-R3L-srv>
 <0085f460-b0c7-b25f-36a7-fa3bafaab6fe@redhat.com>
 <20200415023524.GG4247@MiWiFi-R3L-srv>
 <18cf6afd-c651-25c7-aca3-3ca3c0e07547@redhat.com>
MIME-Version: 1.0
In-Reply-To: <18cf6afd-c651-25c7-aca3-3ca3c0e07547@redhat.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_070312_639553_5C1A64A6 
X-CRM114-Status: GOOD (  22.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.120 listed in list.dnswl.org]
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
 Andrew Morton <akpm@linux-foundation.org>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 04/16/20 at 03:31pm, David Hildenbrand wrote:
> > Not sure if I get the notifier idea clearly. If you mean 
> > 
> > 1) Add a common function to pick memory in unmovable zone;
> 
> Not strictly required IMHO. But, minor detail.
> 
> > 2) Let DLPAR, balloon register with notifier;
> 
> Yeah, or virtio-mem, or any other technology that adds/removes memory
> dynamically.
> 
> > 3) In the common function, ask notified part to check if the picked
> >    unmovable memory is available for locating kexec kernel;
> 
> Yeah.

These may not be needed, please see below comment.

> 
> > 
> > Sounds doable to me, and not complicated.
> > 
> >> images. It would apply to
> >>
> >> - arm64 and filter out all hotadded memory (IIRC, only boot memory can
> >>   be used).
> > 
> > Do you mean hot added memory after boot can't be recognized and added
> > into system RAM on arm64?
> 
> See patch #3 of this patch set, which wants to avoid placing kexec
> binaries on hotplugged memory. But I have no idea what the current plan
> regarding arm64 is (this thread exploded :) ).
> 
> I would assume that we don't want to place kexec images on any
> hotplugged (or rather: hot(un)pluggable) memory - on any architecture.

Yes, noticed that and James replied to DaveY.

Later, when I was considering to make a draft patch to do the picking of
memory from normal zone, and add a notifier, as we discussed at above, I
suddenly realized that kexec_file_load doesn't have this issue. It
traverse system RAM bottom up to get an available region to put
kernel/initrd/boot_param, etc. I can't think of a system where its
low memory could be unavailable.
> 
> > 
> > 
> >> - powerpc to filter out all LMBs that can be removed (assuming not all
> >>   memory corresponds to LMBs that can be removed, otherwise we're in
> >>   trouble ... :) )
> >> - virtio-mem to filter out all memory it added.
> >> - hyper-v to filter out partially backed memory blocks (esp. the last
> >>   memory block it added and only partially backed it by memory).
> >>
> >> This would make it work for kexec_file_load(), however, I do wonder how
> >> we would want to approach that from userspace kexec-tools when handling
> >> it from kexec_load().
> > 
> > Let's make kexec_file_load work firstly. Since this work is only first
> > step to make kexec-ed kernel not break memory hotplug. After kexec
> > rebooting, the KASLR may locate kernel into hotpluggable area too.
> 
> Can you elaborate how that would work?

Well, boot memory can be hotplugged or not after boot, they are marked
in uefi tables, the current kexec doesn't save and pass them into 2nd
kenrel, when kexec kernel bootup, it need read them and avoid them to
randomize kernel into.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
