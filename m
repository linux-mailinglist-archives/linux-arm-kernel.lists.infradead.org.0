Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1CB21A6FA3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 01:02:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GjCgu/qxcofe5thG951YUygVf6YM3AKYMZQKyOP5iK4=; b=DfQfdNA0eMwG0U
	5CxEiCSuZV2oRdqrL3vYMap6+bf1R5Srd7ih7gQHxNiKP6sDkve+Hke4gkYx3v2c2xLjf1awOm9VU
	kRMbEUaavk30n6xCHjb1RHWoqJCGRrOB7ow9BrkVI0Ib4YhfVek5Y1o5dr7Llu/ZaVMhZXKpTXOUU
	pI9h902ikQHIa4m0hgDXeXQ57CGrWzg4Xo7tfysJ1eU/lOQV+acQntOTPNPX0SG1CzJqny9K4Bmvg
	V9kpscP82cn1vwn6enPbEsYrhUqjFSsF706k+dMsPA3JxPiB+Ob/gAncpHTfq1fc5XER48Prw+JCp
	CGfJS7G4ZXLCQyfMDF3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jO85W-0001rR-1c; Mon, 13 Apr 2020 23:01:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jO85K-0001kO-N2; Mon, 13 Apr 2020 23:01:47 +0000
Received: from localhost.localdomain (c-73-231-172-41.hsd1.ca.comcast.net
 [73.231.172.41])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E244120692;
 Mon, 13 Apr 2020 23:01:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586818905;
 bh=44iRGhgUpBL1Umz4gkXVcOLAAkGViVM44DVhmCAg1b8=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=I0LpRmLnaOiiltRxGIgIxsNvEkuVdm/mKjb0fOTnxyOLaNUQPkg/LtmkBSdG9c4SE
 HvlRLCZwWRMWyE+iMrF80ws+63QIFcl0/QuUFud0EsPndT38WASM8ZTAYusEJiZFmh
 /xJct3V2WVyjF+spChzQdmWe2kjjLoXqk+iCmu5Q=
Date: Mon, 13 Apr 2020 16:01:44 -0700
From: Andrew Morton <akpm@linux-foundation.org>
To: ebiederm@xmission.com (Eric W. Biederman)
Subject: Re: [PATCH 1/3] kexec: Prevent removal of memory in use by a loaded
 kexec image
Message-Id: <20200413160144.0e07c0033afc474228bc9218@linux-foundation.org>
In-Reply-To: <871rorjzmc.fsf@x220.int.ebiederm.org>
References: <34274b02-60ba-eb78-eacd-6dc1146ed3cd@arm.com>
 <80e4d1d7-f493-3f66-f700-86f18002d692@redhat.com>
 <dfacf85f-d79d-8742-7a13-1ac0a67bad04@arm.com>
 <ba481c82-c69e-043c-4b66-2d2c7732cf07@redhat.com>
 <20200410121013.03b609fd572504c03a666f4a@linux-foundation.org>
 <20200411034414.GH2129@MiWiFi-R3L-srv>
 <20200411093009.GH25745@shell.armlinux.org.uk>
 <20200412053507.GA4247@MiWiFi-R3L-srv>
 <20200412080836.GM25745@shell.armlinux.org.uk>
 <87wo6klbw0.fsf@x220.int.ebiederm.org>
 <20200413023701.GA20265@MiWiFi-R3L-srv>
 <871rorjzmc.fsf@x220.int.ebiederm.org>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_160146_772498_E3762B77 
X-CRM114-Status: GOOD (  13.93  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Baoquan He <bhe@redhat.com>, David Hildenbrand <david@redhat.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Bhupesh Sharma <bhsharma@redhat.com>,
 Anshuman Khandual <anshuman.khandual@arm.com>, kexec@lists.infradead.org,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>, linux-mm@kvack.org,
 James Morse <james.morse@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 13 Apr 2020 08:15:23 -0500 ebiederm@xmission.com (Eric W. Biederman) wrote:

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

Is that a nack for James's patchset?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
