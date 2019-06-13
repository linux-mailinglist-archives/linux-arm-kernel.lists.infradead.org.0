Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E956E43220
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 03:55:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jiRu/UaDWfX67XT/cKPRx27xCbp5lU+YPiNRPPwmXpM=; b=tcjTPUAbgw+sLO
	DuLDTHulAAmJYlIF/eVz9cH9gU/6tp4g99lwiUEeGZGLPydKTpM+mzBeV0I+hMPanKFfqu60u1TQx
	B7KxmIbdrkPSgDa4X2PYa6F2d6gG0tA+nEQEw65iT7HRC7Es83w894sr1GWBveUYQdXhDG0C96XPo
	o0djDRBwb+NITGUeur0bj3YbsaR14rrx4AMjV5l72plIaFBEbafppzglpkMu7sURwgyiNS+y+yPXa
	BANGbDl6RYZJl7dikyeo0bH4mbvWshtTqUBHVUGKh+Ji2rj/74CrLTCDVmnJ1pNpd3gC/y32qUaL0
	vTIaFvHOB+vv0cZidnMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbExN-0002DV-5l; Thu, 13 Jun 2019 01:55:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbEx2-0002D0-3O
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 01:54:53 +0000
Received: from localhost.localdomain (c-73-223-200-170.hsd1.ca.comcast.net
 [73.223.200.170])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A68BF208CA;
 Thu, 13 Jun 2019 01:54:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560390891;
 bh=GXivTwKQk8Y+X5xE03CN8fthnLjjz3AlLtUYgE6QieY=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=r8JdgWt24mLYxAVnydiRtAdlx+xRwCOlsBeGXcMQy1oJV3B/cDxN+OnDejmpSyIV6
 RcIibyipNA+YGPuxHDsGF+U/AKFps7DbsQDuq1Fpc/BUfIrexokv2IP71eCmwXk283
 fI0rscTQw/skUc8NwPguKxlABRXZDgasoljgBWxA=
Date: Wed, 12 Jun 2019 18:54:50 -0700
From: Andrew Morton <akpm@linux-foundation.org>
To: David Hildenbrand <david@redhat.com>
Subject: Re: [PATCH V5 - Rebased] mm/hotplug: Reorder
 memblock_[free|remove]() calls in try_remove_memory()
Message-Id: <20190612185450.73841b9f5af3a4189de6f910@linux-foundation.org>
In-Reply-To: <67f5c5ad-d753-77d8-8746-96cf4746b3e0@redhat.com>
References: <36e0126f-e2d1-239c-71f3-91125a49e019@redhat.com>
 <1560252373-3230-1-git-send-email-anshuman.khandual@arm.com>
 <20190611151908.cdd6b73fd17fda09b1b3b65b@linux-foundation.org>
 <5b4f1f19-2f8d-9b8f-4240-7b728952b6fe@arm.com>
 <67f5c5ad-d753-77d8-8746-96cf4746b3e0@redhat.com>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_185452_165281_5AFA9244 
X-CRM114-Status: GOOD (  12.52  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: mark.rutland@arm.com, mhocko@suse.com,
 Anshuman Khandual <anshuman.khandual@arm.com>, catalin.marinas@arm.com,
 will.deacon@arm.com, linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 ard.biesheuvel@arm.com, linux-arm-kernel@lists.infradead.org,
 osalvador@suse.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 12 Jun 2019 08:53:33 +0200 David Hildenbrand <david@redhat.com> wrote:

> >>> ...
> >>>
> >>>
> >>> - Rebased on linux-next (next-20190611)
> >>
> >> Yet the patch you've prepared is designed for 5.3.  Was that
> >> deliberate, or should we be targeting earlier kernels?
> > 
> > It was deliberate for 5.3 as a preparation for upcoming reworked arm64 hot-remove.
> > 
> 
> We should probably add to the patch description something like "This is
> a preparation for arm64 memory hotremove. The described issue is not
> relevant on other architectures."

Please.  And is there any reason to merge it separately?  Can it be
[patch 1/3] in the "arm64/mm: Enable memory hot remove" series?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
