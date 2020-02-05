Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9F061532CF
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Feb 2020 15:26:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PEJ2RSo0DJZVkPZs2i4XseggmA5yJE9s+81AmWTCsXM=; b=Cz/+ArXkla8MiN
	iWwfqD+gHyiErGhY6R7vxZD2j1d6OvpWGqDNK26s1PiZ7VKAEUFGt9vqzO3VZL3dlPCkIs+ySw9YG
	KTBPQb+qeygLxdB13PpBdnaVDWZqlW18+QYEMlps1D1MHBIRBqWpRRKl4140TeCTjuuWytsrPAUjf
	fZ+ZwbY4oOiHWe2yycdy8+KzEb7lJ2NAnSUw9o0LWI/U4xi/VZNzEY0UdhI4Gt6enWECltzDEUUu5
	9T3XzQvKXzPQ9+LAMRK//3vAeR6i5Bfxk3DR1uWJIyTNZqzDJy8QPoHPdg5Ijn5BhFOZmb95Uo6p8
	+Sf/SH+RJEGsfKHYXP4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izLda-0005w6-Fg; Wed, 05 Feb 2020 14:26:42 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izLdR-0005v7-K4
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Feb 2020 14:26:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1580912791;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=KAdV3hA+UnlwePFUiQQxF7Qhd3fY3tGdtbme44OOFs8=;
 b=dM56oyW0PLeC7lZcKtklhPL2Tcba9dYouSmR8HUQlYqmJoWyLefQjkvWawkoKvTCTVoo95
 HROmfvZ4K9g/7GDR1LKIUELUzKnhIBFjgyd9cmb+oY/oXsm2SftkJs4/goXUgyEeaJeNaC
 ux7m9uwcb90bFQeteCZzBhb2LdmFJhs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-371-OBZq-5t8Nwu9IXhE-e1YOQ-1; Wed, 05 Feb 2020 09:26:26 -0500
X-MC-Unique: OBZq-5t8Nwu9IXhE-e1YOQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 209311081FA3;
 Wed,  5 Feb 2020 14:26:24 +0000 (UTC)
Received: from localhost (ovpn-12-97.pek2.redhat.com [10.72.12.97])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 56DD25C1B5;
 Wed,  5 Feb 2020 14:26:20 +0000 (UTC)
Date: Wed, 5 Feb 2020 22:26:18 +0800
From: Baoquan He <bhe@redhat.com>
To: David Hildenbrand <david@redhat.com>
Subject: Re: [PATCH v6 08/10] mm/memory_hotplug: Don't check for "all holes"
 in shrink_zone_span()
Message-ID: <20200205142618.GE8965@MiWiFi-R3L-srv>
References: <20191006085646.5768-1-david@redhat.com>
 <20191006085646.5768-9-david@redhat.com>
 <20200204142516.GD26758@MiWiFi-R3L-srv>
 <e0006cc4-d448-89c6-38c0-51da7fc08715@redhat.com>
 <20200205124329.GE26758@MiWiFi-R3L-srv>
 <cd353848-301a-025d-dd66-44d76e1bbc44@redhat.com>
 <20200205133442.GC8965@MiWiFi-R3L-srv>
 <2868343a-745b-e2b6-7e78-d5649c00ee31@redhat.com>
 <20200205141254.GD8965@MiWiFi-R3L-srv>
 <be8b9c0e-0929-4ea4-9c25-15e1f221dfb1@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <be8b9c0e-0929-4ea4-9c25-15e1f221dfb1@redhat.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_062633_738687_9627A83F 
X-CRM114-Status: GOOD (  13.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-s390@vger.kernel.org, Michal Hocko <mhocko@suse.com>,
 linux-ia64@vger.kernel.org, Pavel Tatashin <pasha.tatashin@soleen.com>,
 linux-sh@vger.kernel.org, x86@kernel.org, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, Wei Yang <richardw.yang@linux.intel.com>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 Dan Williams <dan.j.williams@intel.com>, linux-arm-kernel@lists.infradead.org,
 Oscar Salvador <osalvador@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 02/05/20 at 03:16pm, David Hildenbrand wrote:
> >>>> Anyhow, that patch is already upstream and I don't consider this high
> >>>> priority. Thanks :)
> >>>
> >>> Yeah, noticed you told Wei the status in another patch thread, I am fine
> >>> with it, just leave it to you to decide. Thanks.
> >>
> >> I am fairly busy right now. Can you send a patch (double-checking and
> >> making this eventually unconditional?). Thanks!
> > 
> > Understood, sorry about the noise, David. I will think about this.
> > 
> 
> No need to excuse, really, I'm very happy about review feedback!
> 

Glad to hear it, thanks.

> The review of this series happened fairly late. Bad, because it's not
> perfect, but good, because no serious stuff was found (so far :) ). If
> you also don't have time to look into this, I can put it onto my todo
> list, just let me know.

Both is OK to me, as long as thing is clear to us. I will discuss with
Wei Yang for now. You can post patch anytime if you make one.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
