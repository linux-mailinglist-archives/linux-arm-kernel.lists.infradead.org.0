Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AB5D7EF16
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  2 Aug 2019 10:23:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I/IvQQiGXrnl2MgI0fqXATd5fGerONcQVyEdXQuL5Fk=; b=dXI28tHRrnLG+r
	f49yuibIlCsrxPmmQOuS+qCobgAvB27WCkhycZyjbNI3wSj7Bpmr81Pltadvk7YYEHQRjTur+LiFR
	pDPeKk/ZB9uUtX9jJbYHRmXeydkHeS2/6XDoN7Z93kQJUqquh4MVbxIlm5bbSC9Wi7KBTKnksqf+I
	u0DduDvb+hMHAxngj/jPfKVO996Nj7QAKYhG9KTkSifYTo/U6qPA6snFmKUKBzdIjc4Yd0cJ2reQ0
	00D80EHF4QtLBUH3d2dBIyF/Wl/HZBYbnA6wqMwvgAmzr6buRyvKal35hY8+9Xqn6vINsFeb2zrs1
	OMsQCbxNuFR+uca55Kjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htSqK-0000Ry-0b; Fri, 02 Aug 2019 08:23:16 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1htSq6-0000RS-AA
 for linux-arm-kernel@lists.infradead.org; Fri, 02 Aug 2019 08:23:03 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E8E17337;
 Fri,  2 Aug 2019 01:22:59 -0700 (PDT)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 688A43F575;
 Fri,  2 Aug 2019 01:22:59 -0700 (PDT)
Date: Fri, 2 Aug 2019 09:22:57 +0100
From: Andrew Murray <andrew.murray@arm.com>
To: Peter Zijlstra <peterz@infradead.org>
Subject: Re: [PATCH v2 1/5] jump_label: Don't warn on __exit jump entries
Message-ID: <20190802082257.GN56241@e119886-lin.cambridge.arm.com>
References: <20190731161256.22210-1-andrew.murray@arm.com>
 <20190731161256.22210-2-andrew.murray@arm.com>
 <20190731164156.GX31398@hirez.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190731164156.GX31398@hirez.programming.kicks-ass.net>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_012302_399468_362D498E 
X-CRM114-Status: GOOD (  21.30  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Boqun Feng <boqun.feng@gmail.com>,
 Will Deacon <will.deacon@arm.com>, Ard.Biesheuvel@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 31, 2019 at 06:41:56PM +0200, Peter Zijlstra wrote:
> On Wed, Jul 31, 2019 at 05:12:52PM +0100, Andrew Murray wrote:
> > On architectures that discard .exit.* sections at runtime, a
> > warning is printed for each jump label that is used within an
> > in-kernel __exit annotated function:
> > 
> > can't patch jump_label at ehci_hcd_cleanup+0x8/0x3c
> > WARNING: CPU: 0 PID: 1 at kernel/jump_label.c:410 __jump_label_update+0x12c/0x138
> > 
> > As these functions will never get executed (they are free'd along
> > with the rest of initmem) - we do not need to patch them and should
> > not display any warnings.
> > 
> > The warning is displayed because the test required to satisfy
> > jump_entry_is_init is based on init_section_contains (__init_begin to
> > __init_end) whereas the test in __jump_label_update is based on
> > init_kernel_text (_sinittext to _einittext) via kernel_text_address).
> > 
> > In addition to fixing this, we also remove an out-of-date comment
> > and use a WARN instead of a WARN_ONCE.
> > 
> > Fixes: 19483677684b ("jump_label: Annotate entries that operate on __init code earlier")
> > Signed-off-by: Andrew Murray <andrew.murray@arm.com>
> > ---
> >  kernel/jump_label.c | 4 +++-
> >  1 file changed, 3 insertions(+), 1 deletion(-)
> > 
> > diff --git a/kernel/jump_label.c b/kernel/jump_label.c
> > index df3008419a1d..c984078a5c28 100644
> > --- a/kernel/jump_label.c
> > +++ b/kernel/jump_label.c
> > @@ -407,7 +407,9 @@ static bool jump_label_can_update(struct jump_entry *entry, bool init)
> >  		return false;
> >  
> >  	if (!kernel_text_address(jump_entry_code(entry))) {
> > -		WARN_ONCE(1, "can't patch jump_label at %pS", (void *)jump_entry_code(entry));
> > +		if (!jump_entry_is_init(entry))
> > +			WARN_ONCE(1, "can't patch jump_label at %pS",
> > +				  (void *)jump_entry_code(entry));
> 
> It seems to me we can writes that as:
> 
> 		WARN_ONCE(!jump_entry_is_init(entry),
> 			  "can't patch jump_label at %pS",
> 			  (void *)jump_entry_code(entry));
> 
> >  		return false;
> >  	}
> 
> Other than that,
> 
> Acked-by: Peter Zijlstra (Intel) <peterz@infradead.org>

Ah of course!

I'll make this change on my respin and add your ack. Thanks.

Thanks,

Andrew Murray

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
