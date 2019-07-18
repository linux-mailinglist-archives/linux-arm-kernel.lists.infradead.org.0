Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B3356D367
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jul 2019 20:00:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:From:To:Subject:References:
	In-Reply-To:MIME-Version:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VV6vLIpX8zQj+EGvfnpqA28cNo+DHDagZX1lDaJ+uwQ=; b=HFm8czrtCT+i6a
	W3x3ZJ+SnY3TL7RwGudp1lFqU654iy/qTbee4DOxHaV5dmpT8AQ6YsFZb1x3BL8slCqd1YHESjva7
	49wjyRXmnsV2GS0xA+BfP/KfjVs+JGuOBIBBuEIRbJOj91YNhGF/pcmUUI23SKhvPeU5vrKDjLZZg
	ir4w5DfDqBWl3Av0x/6g91FOye8ZHOBYOv/fWc79RBk1Sun6zkeP6r8yFQ2/cTfnMYzYe2bjfg3i0
	8LcU8PxLE45Lc+qML3nPq7yzWkl2x7c/CaYYPGgBoh+X2GeWsEGc8ie99msARDPgAsyyV/AVtfPB6
	q0koPei73zJfWbrCcUdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoAhi-0004hO-3T; Thu, 18 Jul 2019 18:00:30 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoAhP-0004EU-L5
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jul 2019 18:00:14 +0000
Received: by mail-pf1-x441.google.com with SMTP id r7so12972287pfl.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 18 Jul 2019 11:00:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=message-id:mime-version:content-transfer-encoding:in-reply-to
 :references:subject:to:cc:from:user-agent:date;
 bh=1vjr89rXvmdf0wB/WdMQsMyhKQE9yJLVmO3GYLtPVv8=;
 b=k/fa1LPxqJnclVt5GEioxr9RW7EbyJfYV5piMXPIZSTxtcvwm46SxOoXf6cZQjrbY6
 bca4y1KZQKYwRAbFL7TF/0F3GjkjQ40o8BsRAOQWVUU2JLRYfaXohx1zuUR6O0+L0yQF
 jjMXcPRZYvsl4H0NfBYJirfflhQ5+wTsGrZMs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:mime-version
 :content-transfer-encoding:in-reply-to:references:subject:to:cc:from
 :user-agent:date;
 bh=1vjr89rXvmdf0wB/WdMQsMyhKQE9yJLVmO3GYLtPVv8=;
 b=AnHdo4nWppdboMBG+jDiJHsN1xOiaGxKA3VESk7KHLhIATMpJjlF2sR6DkLZ76PpJi
 iJ8wGGDUZLjftB9UT+qFTUxp2ZpZ95SWRGWpfMyiRGDwHZnKxREAyOVA/XAYj2piqK5h
 NSHwpqpsVC3hLjXq1vmL+GRc2sblXzX3XGDxkmukkDQWawFGI9wS5vBr4AsiV5k7/+oC
 py+BViiqe86tumX8en1SomgF6+e/toPWeWBzY11bmTotCypWqmTYtA9vL3bPdruplMF2
 JnBcGxLIbwvZOl2PMZ8pdqyXzIDomc1Gin/lCtUrdFSyNRlYSaQhA8W6q3ywwk6bBFwZ
 fOtQ==
X-Gm-Message-State: APjAAAUYuth08+E0o1lUTFKgvmLBEOfc81t84WyoPh33x2nXtWbYId9b
 zD+PD90pyXEvUGlF+o5UAZfOvw==
X-Google-Smtp-Source: APXvYqxv3xo0LgfN2UblAdH0u++DeJ6HbfKAf0knXIKRJ+c6voucqKn+e+cPziHQVF1JO9OzN+TkJA==
X-Received: by 2002:a63:eb51:: with SMTP id b17mr47673373pgk.384.1563472809305; 
 Thu, 18 Jul 2019 11:00:09 -0700 (PDT)
Received: from chromium.org ([2620:15c:202:1:fa53:7765:582b:82b9])
 by smtp.gmail.com with ESMTPSA id d2sm25585057pjs.21.2019.07.18.11.00.08
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 18 Jul 2019 11:00:08 -0700 (PDT)
Message-ID: <5d30b3a8.1c69fb81.8c54.63a6@mx.google.com>
MIME-Version: 1.0
In-Reply-To: <20190710141433.7ama3gncss3y6dcx@willie-the-truck>
References: <20190614203717.75479-1-swboyd@chromium.org>
 <20190614203717.75479-4-swboyd@chromium.org>
 <20190710141433.7ama3gncss3y6dcx@willie-the-truck>
Subject: Re: [PATCH v2 3/5] memremap: Add support for read-only memory mappings
To: Will Deacon <will@kernel.org>
From: Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.8.1
Date: Thu, 18 Jul 2019 11:00:07 -0700
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_110011_735856_00536CBD 
X-CRM114-Status: GOOD (  17.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 Evan Green <evgreen@chromium.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Andy Gross <agross@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Dan Williams <dan.j.williams@intel.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Will Deacon (2019-07-10 07:14:34)
> On Fri, Jun 14, 2019 at 01:37:15PM -0700, Stephen Boyd wrote:
> > @@ -84,7 +91,10 @@ void *memremap(resource_size_t offset, size_t size, unsigned long flags)
> >       }
> >  
> >       /* Try all mapping types requested until one returns non-NULL */
> > -     if (flags & MEMREMAP_WB) {
> > +     if ((flags & MEMREMAP_RO) && is_ram != REGION_INTERSECTS)
> > +             addr = arch_memremap_ro(offset, size);
> > +
> > +     if (!addr && (flags & MEMREMAP_WB)) {
> >               /*
> >                * MEMREMAP_WB is special in that it can be satisfied
> >                * from the direct map.  Some archs depend on the
> > @@ -103,7 +113,8 @@ void *memremap(resource_size_t offset, size_t size, unsigned long flags)
> >        * address mapping.  Enforce that this mapping is not aliasing
> >        * System RAM.
> >        */
> > -     if (!addr && is_ram == REGION_INTERSECTS && flags != MEMREMAP_WB) {
> > +     if (!addr && is_ram == REGION_INTERSECTS &&
> > +         (flags != MEMREMAP_WB || flags != MEMREMAP_RO)) {
> >               WARN_ONCE(1, "memremap attempted on ram %pa size: %#lx\n",
> >                               &offset, (unsigned long) size);
> >               return NULL;
> 
> This function seems a little confused about whether 'flags' is really a
> bitmap of flags, or whether it is equal to exactly one entry in the enum.
> Given that I think it's sensible for somebody to specify 'MEMREMAP_RO |
> MEMREMAP_WT', then we probably need to start checking these things a bit
> more thoroughly so we can reject unsupported combinations at the very least.
> 

I'm also confused about the same thing. I thought it was a "getting
worse via best effort" type of thing based on the comment above the
function.

 * In the case of multiple flags, the different
 * mapping types will be attempted in the order listed below until one of
 * them succeeds.

(I now realize I should have documented the new flag so that this order
would be known. I'll resend this series again with the documentation
fix.)

I also thought that the combination of read-only and write through would
be OK because the flags are more of a best effort approach to making a
mapping. Given that, is there anything to reject? Or do we just keep
trying until we can't try anymore?


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
