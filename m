Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4FF5D69FC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 21:17:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ek/5B4E6nTCr6QBtKjqW+Q9FuVOwo/zx1s/neQec+tc=; b=IwIfAsYwkOOEUI
	Mx+RyhWxyfP4IkrqpPN+IWeSVU4Vmh+8E7sZN0pymDXntuzcQzzJh+UCZPmLtdwJyyKA3vtZ9oUXl
	BFyPGqPr3N0c7b/eQd0Sw1hMahsdtBZD37e4HzENsxRFznt2Cvcuj4kfl7/vu+Td72xlEqpoWor66
	rKALEncWgamXF9UfdEAUdGLbbIlQ8nd+HV30w9LSsomzPB7fdCi09o5aTd56ezQs0+bjt5FZj/QxR
	rpzDads21Bztru2X+KWPujkI68jUNYGPDyNXRWBq4V5/cTVW0Z645zLpBIYuTiB5yyKMRAn/85oR8
	gp2guirQgs0vn+GtQeDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iK5qW-0005bo-Aq; Mon, 14 Oct 2019 19:17:32 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iK5qK-0005bI-Mk
 for linux-arm-kernel@lists.infradead.org; Mon, 14 Oct 2019 19:17:21 +0000
Received: from akpm3.svl.corp.google.com (unknown [104.133.8.65])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E75B9217F9;
 Mon, 14 Oct 2019 19:17:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571080640;
 bh=GVOpKJU8+fX2Cvw0U5HfH5hzn91D4G2Rk4nes27+pag=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=FR3WzbMF70HWxk7LTH30/6dEQ8O2Dy6iHIYsz3roW7gGsiv/bCa+/sQvvUktTZ/BO
 sea8B8Iv2qQrW/t9KU/O3J+J0m3QYNRD0hYc9BPn9xPN45izvaOitFObeTCJxIolf7
 oGAogT4n2dH58KrM+gstDU8nD3TYaBLq3dqW2/DM=
Date: Mon, 14 Oct 2019 12:17:19 -0700
From: Andrew Morton <akpm@linux-foundation.org>
To: David Hildenbrand <david@redhat.com>
Subject: Re: [PATCH v6 04/10] mm/memory_hotplug: Don't access uninitialized
 memmaps in shrink_zone_span()
Message-Id: <20191014121719.cb9b9efe51a7e9e985b38075@linux-foundation.org>
In-Reply-To: <5a4573de-bd8a-6cd3-55d0-86d503a236fd@redhat.com>
References: <20191006085646.5768-1-david@redhat.com>
 <20191006085646.5768-5-david@redhat.com>
 <5a4573de-bd8a-6cd3-55d0-86d503a236fd@redhat.com>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_121720_763432_54D53625 
X-CRM114-Status: UNSURE (   9.51  )
X-CRM114-Notice: Please train this message.
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
 linux-sh@vger.kernel.org, "Aneesh Kumar K . V" <aneesh.kumar@linux.ibm.com>,
 x86@kernel.org, linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 Dan Williams <dan.j.williams@intel.com>, linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org, Oscar Salvador <osalvador@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 14 Oct 2019 11:32:13 +0200 David Hildenbrand <david@redhat.com> wrote:

> > Fixes: d0dc12e86b31 ("mm/memory_hotplug: optimize memory hotplug")
> 
> @Andrew, can you convert that to
> 
> Fixes: f1dd2cd13c4b ("mm, memory_hotplug: do not associate hotadded 
> memory to zones until online") # visible after d0dc12e86b319
> 
> and add
> 
> Cc: stable@vger.kernel.org # v4.13+

Done, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
