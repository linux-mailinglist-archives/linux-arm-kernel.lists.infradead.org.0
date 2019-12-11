Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04AB711A5FB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 09:38:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z34OEJaNrxe4Fu3hJrzVNLzdXLoccxVnH59h/q845uw=; b=gSS7wlk1EuNZI5
	5TYXlfU4Bd0/vmKR9ut25wRVyC3pkk87ExwlJbS2CXYsLtMZpALnIdP4+VPS3ZS36qW0B01UhqF91
	OgFFiJ+otzHpzxMHNGfyDF+TMdSpHYnatvC52Spav+mVZVo2fTzUDq7MILyQinSZO/iiqsMVn9EEf
	tbt8hdtsRlTZFZdd1eJT8ySz60z0EA3BOYUkTQoqs7bU19XfIS3Jegdmznz/5fFWoKkAVcK+vyzNA
	m5MiXkRu2DJd4cTiIdiBeC8NLdfSpo7ijI25WZX/J0J6CHY3ujXiqhdblBnz8J9xEtccYbp56Ngia
	q6tzEwF2Rbg2ZTiItZiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iexVO-0002ea-Vl; Wed, 11 Dec 2019 08:37:58 +0000
Received: from mail-wm1-f66.google.com ([209.85.128.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iexVF-0002eC-5Z
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 08:37:50 +0000
Received: by mail-wm1-f66.google.com with SMTP id a5so290551wmb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Dec 2019 00:37:48 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=RT9pTTqiwT2L0hZKyzfnOGnReyBEaT0I8SJou9/ZWtA=;
 b=K7bYUeZYdMjqjSMozOQmvV0lrNRVjK5T3apxIVSmHmIilTsLKa0wYzrt11QxevL0ZT
 P5Xr2Py6XFOzf0bfXDUua+4W3ghohBKid+5T2d78C5IU2YAYe1KwGTs3jhx8U0DZF4qn
 M0/pEznQQEMK9fufiLV84ekFo/EV6ifkbOaN1K4ukYwYmphHV2JJ5WWzhPM64+R2n04W
 jXkfXvzg/unhJ4WCQnT8rCquZmixCKcdbtMtp6Lj2Wayd+Eyc/+hzwxqs7copr+diOFG
 zOcET5pgk2q7Ojy80GKEUZlElpZw6rw27ytCauK4awmVPi7pD0t7mwQHp0i0QRtnLN+F
 nkMQ==
X-Gm-Message-State: APjAAAVfIBe0D1RzAFH1fbIEqLP9IE1FpuQi7/aA1V+39hTRXcvrN0jh
 IHUQjpO0BsE8GdUax0jueWI=
X-Google-Smtp-Source: APXvYqw61QRsYL0Lq+p6xXB8wylpboyl1Ts6lCVX0L7iemSth1vHmOlbDD2iTtXwvmvWkyZL3xVJiQ==
X-Received: by 2002:a7b:cf18:: with SMTP id l24mr2029460wmg.95.1576053467280; 
 Wed, 11 Dec 2019 00:37:47 -0800 (PST)
Received: from localhost (prg-ext-pat.suse.com. [213.151.95.130])
 by smtp.gmail.com with ESMTPSA id f1sm1406269wrp.93.2019.12.11.00.37.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Dec 2019 00:37:46 -0800 (PST)
Date: Wed, 11 Dec 2019 09:37:45 +0100
From: Michal Hocko <mhocko@kernel.org>
To: Logan Gunthorpe <logang@deltatee.com>
Subject: Re: [PATCH 5/6] mm, memory_hotplug: Provide argument for the
 pgprot_t in arch_add_memory()
Message-ID: <20191211083745.GA14655@dhcp22.suse.cz>
References: <20191209191346.5197-1-logang@deltatee.com>
 <20191209191346.5197-6-logang@deltatee.com>
 <ce50d9da-c60e-05a1-a86b-3bb3629de502@redhat.com>
 <f34a4c52-cc95-15ed-8a72-c05ab4fd6d33@deltatee.com>
 <CAPcyv4hpXCZxV5p7WaeGgE7ceujBBa5NOz9Z8fepDHOt6zHO2A@mail.gmail.com>
 <20191210100432.GC10404@dhcp22.suse.cz>
 <6da2b279-6a6d-d89c-a34c-962ed021d91d@redhat.com>
 <20191210103452.GF10404@dhcp22.suse.cz>
 <a9d6cfe8-39fb-accf-acdc-7cce5578bf2f@redhat.com>
 <297b7cc0-c5bc-a4c6-83eb-afc008395234@deltatee.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <297b7cc0-c5bc-a4c6-83eb-afc008395234@deltatee.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_003749_211030_61A4E350 
X-CRM114-Status: GOOD (  13.67  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.66 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (mstsxfx[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.66 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: linux-s390 <linux-s390@vger.kernel.org>,
 Dave Hansen <dave.hansen@linux.intel.com>, linux-ia64@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>, Will Deacon <will@kernel.org>,
 David Hildenbrand <david@redhat.com>, Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Linux-sh <linux-sh@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 platform-driver-x86@vger.kernel.org, Linux MM <linux-mm@kvack.org>,
 Ingo Molnar <mingo@redhat.com>, Thomas Gleixner <tglx@linutronix.de>,
 Andy Lutomirski <luto@kernel.org>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Borislav Petkov <bp@alien8.de>, Dan Williams <dan.j.williams@intel.com>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>, Christoph Hellwig <hch@lst.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue 10-12-19 16:52:31, Logan Gunthorpe wrote:
[...]
> In my opinion, having a coder and reviewer see PAGE_KERNEL and ask if
> that makes sense is a benefit. Having it hidden because we don't want
> people to think about it is worse, harder to understand and results in
> bugs that are more difficult to spot.

My experience would disagree here. We have several examples in the MM
where an overly complex and versatile APIs led to suble bugs, a lot of
copy&pasting and cargo cult programing (just look at the page allocator
as a shiny example - e.g. gfp_flags). So I am always trying to be
carefull here.

> Though, we may be overthinking this: arch_add_memory() is a low level
> non-exported API that's currently used in exactly two places.

This is a fair argument. Most users are and should be using
add_memory().

> I don't
> think there's going to be many, if any, valid new use cases coming up
> for it in the future. That's more what memremap_pages() is for.

OK, fair enough. If this is indeed the simplest way forward then I will
not stand in the way.
-- 
Michal Hocko
SUSE Labs

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
