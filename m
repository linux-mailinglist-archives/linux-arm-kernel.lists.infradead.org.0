Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0E43416A5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 23:09:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hw5epgjkNm7Z8HOc0pYZ/F519fSNBGSiLAa4o8Pn5BE=; b=OSH+YH6fSTSP+R
	m9jix8M19qUZpfPrTTmPlBuopxhclhBIpAbAaOrTVUgrJnJl5JiOlddJDmTVeyvuIR0t0KvCSRBlw
	DiR+q1ZR7BnyrLrrcNGhcP0ZR8do6veMQb9VfY6/YxMJ8kCxA7pziWhpqlwFxbLEQZm3Qd4NH/ffR
	clYw15vWSradrysGCwgNykAfkip6BwswLPG3QQrbUC04IjJCYUgUP7Ii5YYbFOsxdeUTT/wY4n2rD
	0w0LlTD74dp5SwVEINWcxH8uMRZG075C9steG6VVY6d+0erDWq+xHizbNkmbiBHjojaFISDOYMXpF
	nOQ8kCg/3HTDKRdRFpuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hao18-00074D-FP; Tue, 11 Jun 2019 21:09:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hao0z-00073m-Kl
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 21:09:10 +0000
Received: from akpm3.svl.corp.google.com (unknown [104.133.8.65])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 542412080A;
 Tue, 11 Jun 2019 21:09:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560287348;
 bh=qmpEoNXO99XPF9xd/5iv2nDwyZYxG+9HqzTYNPT4KTw=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=EzYSNQ5VopjCkhJxjwzVG+3NUfKcn1X9cU/Ns4PV5yZIsnow5MRHYB73/Tl3T81K/
 SbRRApw7C7MWKpiNZqE5wCHVmQlPPOHtSxjsrM3RebqPsIl/mcOR/W6a0jpkC0UwOz
 rSPkBbLzTQO7F5VSs5bcQHmoWK/bst5kRMcBgC7c=
Date: Tue, 11 Jun 2019 14:09:07 -0700
From: Andrew Morton <akpm@linux-foundation.org>
To: Andreas Dilger <adilger@dilger.ca>
Subject: Re: [PATCH V2] include: linux: Regularise the use of FIELD_SIZEOF
 macro
Message-Id: <20190611140907.899bebb12a3d731da24a9ad1@linux-foundation.org>
In-Reply-To: <6DCAE4F8-3BEC-45F2-A733-F4D15850B7F3@dilger.ca>
References: <20190611193836.2772-1-shyam.saini@amarulasolutions.com>
 <20190611134831.a60c11f4b691d14d04a87e29@linux-foundation.org>
 <6DCAE4F8-3BEC-45F2-A733-F4D15850B7F3@dilger.ca>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_140909_704030_79A01CB2 
X-CRM114-Status: GOOD (  15.25  )
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
Cc: keescook@chromium.org, kvm@vger.kernel.org,
 kernel-hardening@lists.openwall.com, netdev@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, devel@lists.orangefs.org,
 linux-mips@vger.kernel.org, Shyam Saini <shyam.saini@amarulasolutions.com>,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org, linux-sctp@vger.kernel.org,
 dri-devel@lists.freedesktop.org, bpf@vger.kernel.org,
 linux-ext4 <linux-ext4@vger.kernel.org>, intel-gvt-dev@lists.freedesktop.org,
 Alexey Dobriyan <adobriyan@gmail.com>, linux-arm-kernel@lists.infradead.org,
 mayhs11saini@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 11 Jun 2019 15:00:10 -0600 Andreas Dilger <adilger@dilger.ca> wrote:

> >> to FIELD_SIZEOF
> > 
> > As Alexey has pointed out, C structs and unions don't have fields -
> > they have members.  So this is an opportunity to switch everything to
> > a new member_sizeof().
> > 
> > What do people think of that and how does this impact the patch footprint?
> 
> I did a check, and FIELD_SIZEOF() is used about 350x, while sizeof_field()
> is about 30x, and SIZEOF_FIELD() is only about 5x.

Erk.  Sorry, I should have grepped.

> That said, I'm much more in favour of "sizeof_field()" or "sizeof_member()"
> than FIELD_SIZEOF().  Not only does that better match "offsetof()", with
> which it is closely related, but is also closer to the original "sizeof()".
> 
> Since this is a rather trivial change, it can be split into a number of
> patches to get approval/landing via subsystem maintainers, and there is no
> huge urgency to remove the original macros until the users are gone.  It
> would make sense to remove SIZEOF_FIELD() and sizeof_field() quickly so
> they don't gain more users, and the remaining FIELD_SIZEOF() users can be
> whittled away as the patches come through the maintainer trees.

In that case I'd say let's live with FIELD_SIZEOF() and remove
sizeof_field() and SIZEOF_FIELD().

I'm a bit surprised that the FIELD_SIZEOF() definition ends up in
stddef.h rather than in kernel.h where such things are normally
defined.  Why is that?


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
