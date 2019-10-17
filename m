Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5021DADC3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 15:02:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=56IC2NQFPfgqMw0ETOxR4zd4GyZGZmVYSbUGxPK8FoA=; b=FnjqvKsHYRacNs
	JawzpDzNMqx605prSZjykU4U/Rqwi/zbIZo7/Q75sMK+2GTnme4fsHY3FOSnabgsu5/I5y+8t+Nbs
	jUPjjQgmcz5FXc7BXKZGBJrHdvBnwTkgRPaml4GixR41qKhjd3N9wdRkGw5+ykIp6U+PisIGJ2H6w
	d16XUIY+6AfDSJiXXGdKFdHGVTnKAB4UJMPX4xkcPASlaRCJmyajizqpVdZrUtz2m1p0WVmDzOou+
	Ls7jL29rFw1upLShP6AWm9RFyDxA2IG1Nn2mtNKd/fsoWZUVweh8rHOfNGY2yzyATXy6h8hAla4Hc
	GflZkDKZG0BgLACCQo9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL5QY-0001yd-5S; Thu, 17 Oct 2019 13:02:50 +0000
Received: from mail-qk1-f194.google.com ([209.85.222.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL5QP-0001xu-0h
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 13:02:42 +0000
Received: by mail-qk1-f194.google.com with SMTP id w2so1769342qkf.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 17 Oct 2019 06:02:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Tc37Pb9q6dE/zT3Ycpn//EMDbegOyEk2q1pX9+DJhEk=;
 b=Am92/SG8+8qbekKCYb/1XryUbgBCivsqTmKbCWOaJUJsGGvGsB6w1LRf07h6GWRXuk
 8p28+q/ZC1U7AAMCZBUnA/pMwJ7cv7+DJfBEvrKdkyG4lT+OghGCJLItNVrCjhXe+wId
 jGH+bji0C3f1/tfBNYDM1sH6y72x764tCG8NCzcx5acbsjvSam0sbG0O3FwZRUrGb6Vt
 4CC3RVkpMvcfU/nkHdnFvlpRMerkL8KkLYKKLmgkaX6ooOm3R5IIXfei4vcoFc77sGT6
 +ymYwj/Wxt9F27xQOzYvptIza9I7zW6gL7GF1oFkXlhduBKBifX++gt5pYfN1OpdwIu2
 nkXQ==
X-Gm-Message-State: APjAAAUtz3LITbLtQpBiKBkUhe68woNBdyl1SrHAv17CZwbwWR61PPrV
 yBK6if7STuCju3q6/e1DIXVKtiLMZzc9UZwvWJk=
X-Google-Smtp-Source: APXvYqxpviHKOBocuedDoRJVvpksKm61tNm1y7WWnjqU07w4dzxJBEu7vqLfmAn3UiT+CILsxUWbdd1MVQU89/WZ/HI=
X-Received: by 2002:a37:9442:: with SMTP id w63mr3106804qkd.138.1571317358971; 
 Thu, 17 Oct 2019 06:02:38 -0700 (PDT)
MIME-Version: 1.0
References: <20191014061617.10296-1-daniel@0x0f.com>
 <20191014061617.10296-2-daniel@0x0f.com>
 <CAK8P3a2U7U31eF_POU2=eCU+E1DH-wnR2uHr-VZYWLy25hLjKg@mail.gmail.com>
 <20191016203219.GA5191@shiro>
In-Reply-To: <20191016203219.GA5191@shiro>
From: Arnd Bergmann <arnd@arndb.de>
Date: Thu, 17 Oct 2019 15:02:22 +0200
Message-ID: <CAK8P3a2Tqpwg6=3N2DhcDj9JMo6jt0sY+sYmnNmzZ5Rcao=iMA@mail.gmail.com>
Subject: Re: [PATCH 2/4] ARM: mstar: Add machine for MStar infinity family SoCs
To: Daniel Palmer <daniel@0x0f.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_060241_058419_B5E6F910 
X-CRM114-Status: GOOD (  17.82  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.194 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.194 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 16, 2019 at 10:32 PM Daniel Palmer <daniel@0x0f.com> wrote:
>
> > > +
> > > +static void __init infinity_map_io(void)
> > > +{
> > > +       iotable_init(infinity_io_desc, ARRAY_SIZE(infinity_io_desc));
> > > +       miu_flush = (void __iomem *)(infinity_io_desc[0].virtual
> > > +                       + INFINITY_L3BRIDGE_FLUSH);
> > > +       miu_status = (void __iomem *)(infinity_io_desc[0].virtual
> > > +                       + INFINITY_L3BRIDGE_STATUS);
> > > +}
> >
> > If you do this a little later in .init_machine, you can use a simple ioremap()
> > rather than picking a hardcoded physical address. It looks like nothing
> > uses the mapping before you set soc_mb anyway.
>
> I've moved this into infinity_barriers_init() using ioremap() as suggested.
> I'd like to keep the fixed remap address for now as there are some
> drivers in the vendor code that might be useful until rewrites are done but
> are littered with hard coded addresses.

Maybe keep the infinity_io_desc as an out-of-tree patch then? You can
simply do both, and ioremap() will return the hardcoded address.

> >    Not sure if it matters in practice, as almost nothing uses fiq any more.
> >    OTOH, maybe the lock is not needed at all? AFAICT if the sequence
> >    gets interrupted by a handler that also calls mb(), you would still
> >    continue in the original thread while observing a full l3 barrier. ;-)
>
> I've taken the lock out and tested that the ethernet isn't sending garbage
> and everything looks good.

I would not expect a missing spinlock to have an observable effect, the
question is more whether it's correct in all rare corner cases where
the barrier is interrupted and the interrupt handler uses another barrier.

I think it is, but I would recommend adding a comment to explain this if
you drop the spinlock. (or a comment about why this works with fiq if you
keep the lock).

     Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
