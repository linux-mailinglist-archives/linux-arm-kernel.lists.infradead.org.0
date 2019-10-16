Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 131DAD9BDD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 22:32:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JW956WCMOwsHvWGUcFX2MJIZtZmUxKP+hsAdhI8aioI=; b=spTiKSdyF8u+wD
	1DDOqHzK7JMJw10tiaIvGBuZFZe4I9hICCpQOH4RH87+DmR4rSCl6fnkIb6CTQ+7Svz/y4iKkzC0+
	KVPHGz9d3gNsNDNeoMTRo7AEm4mEb+doWIai+tLavwIgetQHOmyOpHgrF3wKpz1Ac/S0L9WZGU1eV
	P5R6zQzTEPZf5IK0sT2Ac2X0hvblDCq30gmyE/dK5HPmC79R9pb/HTGlo50CrzGTHR+RZoLK41/Q+
	QWSYpIJx6tWvRJrjRa626zSOwhA8s1t7aG7Ve4qR56AAxZfNagZiSTjyLSkN9z8doLjKJzQCuRuFz
	GupAOSZIVuQ+ZO5s2ffg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKpyL-0001Wp-0R; Wed, 16 Oct 2019 20:32:41 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKpy8-0001WT-MZ
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 20:32:30 +0000
Received: by mail-pl1-x644.google.com with SMTP id f21so11797865plj.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 16 Oct 2019 13:32:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=0x0f.com; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=QJRz2ZBCOtaw3AEGb2XPo0CsgmmvmJQzag5UcwcjBaw=;
 b=eTxNXnOKCPKxxsn3bIBFR7anyKEgL2XRidpZv+WcTa38kItiezDEvD5JjvGCCSs+7p
 +c34Om1neANbjcBKask22h+B+A3rhLuHHzMnshEbgfYHvGRFjxBlYir3+KZNj9PD7+bw
 6i0iBA2daqj6El0RLjyBLVcQSmMveditUQHZo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=QJRz2ZBCOtaw3AEGb2XPo0CsgmmvmJQzag5UcwcjBaw=;
 b=kJvFqAiDjzhaurbK7vp1YU/0Ksd4ttWaZ5BZlJFcZAOruKo9ksg/qJAQG1pgxwCjzR
 zTmGc6wGJnFG1gU6QTNaoBbM7nrIrtoa6ufBUDHHJbgyHtS7K/Xn7S5OL0yINrKWbkiR
 rCvWmYMMwPejiK29pXjHM3Qw0m9hcAQLsS15KhQcu+9ZwUfbgKx13gUvSPP2skcrRbd9
 IUwHTCLNL0K7vFM2a7KZYrd2QoNpsJkF0sgDtRcpu+uAPnzLbsxzRkh/hmLJ4IveisRp
 OyLomoaKSFC1Vyd6UQVYmsh5pPyZWIR5ATHlgsSLxhyQJ3iUMRTP4n6/MfF2RMzt+Vxm
 Pj2g==
X-Gm-Message-State: APjAAAVdoTKY83JJSkn8gBiRVNiukiiqHNHqmUltpwk/FlZuM2ho+U+4
 3yPoVATvZHHKnZPjGOuhBPYq0g==
X-Google-Smtp-Source: APXvYqyUc62vDZ/uWYv8OWO99Dvo9BD5ZJfTxm2G0UESZVycda+kmxA41w91q7dN5a7I8vv61of8rA==
X-Received: by 2002:a17:902:bc48:: with SMTP id
 t8mr116238plz.255.1571257947335; 
 Wed, 16 Oct 2019 13:32:27 -0700 (PDT)
Received: from shiro (p1092222-ipngn200709sizuokaden.shizuoka.ocn.ne.jp.
 [220.106.235.222])
 by smtp.gmail.com with ESMTPSA id k95sm32839pje.10.2019.10.16.13.32.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Oct 2019 13:32:26 -0700 (PDT)
Date: Thu, 17 Oct 2019 05:32:20 +0900
From: Daniel Palmer <daniel@0x0f.com>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH 2/4] ARM: mstar: Add machine for MStar infinity family SoCs
Message-ID: <20191016203219.GA5191@shiro>
References: <20191014061617.10296-1-daniel@0x0f.com>
 <20191014061617.10296-2-daniel@0x0f.com>
 <CAK8P3a2U7U31eF_POU2=eCU+E1DH-wnR2uHr-VZYWLy25hLjKg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK8P3a2U7U31eF_POU2=eCU+E1DH-wnR2uHr-VZYWLy25hLjKg@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_133228_849335_1F7C3D77 
X-CRM114-Status: GOOD (  21.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> > +
> > +static void __init infinity_map_io(void)
> > +{
> > +       iotable_init(infinity_io_desc, ARRAY_SIZE(infinity_io_desc));
> > +       miu_flush = (void __iomem *)(infinity_io_desc[0].virtual
> > +                       + INFINITY_L3BRIDGE_FLUSH);
> > +       miu_status = (void __iomem *)(infinity_io_desc[0].virtual
> > +                       + INFINITY_L3BRIDGE_STATUS);
> > +}
> 
> If you do this a little later in .init_machine, you can use a simple ioremap()
> rather than picking a hardcoded physical address. It looks like nothing
> uses the mapping before you set soc_mb anyway.

I've moved this into infinity_barriers_init() using ioremap() as suggested.
I'd like to keep the fixed remap address for now as there are some
drivers in the vendor code that might be useful until rewrites are done but 
are littered with hard coded addresses.

> > +static DEFINE_SPINLOCK(infinity_mb_lock);
> > +
> > +static void infinity_mb(void)
> > +{
> > +       unsigned long flags;
> > +
> > +       spin_lock_irqsave(&infinity_mb_lock, flags);
> > +       /* toggle the flush miu pipe fire bit */
> > +       writel_relaxed(0, miu_flush);
> > +       writel_relaxed(INFINITY_L3BRIDGE_FLUSH_TRIGGER, miu_flush);
> > +       while (!(readl_relaxed(miu_status) & INFINITY_L3BRIDGE_STATUS_DONE)) {
> > +               /* wait for flush to complete */
> > +       }
> > +       spin_unlock_irqrestore(&infinity_mb_lock, flags);
> > +}
> 
> Wow, this is a heavy barrier. From your description it doesn't sound like
> there is anything to be done about it unfortunately.

It's possible there is a better way once I can find out what the L3 bridge
actually is. There is a small amount of documentation for the miu (DDR
controller) that says it has an 8 or 4 operation configurable pipeline but
this flushing bit is in a totally different area that's only documented
by the comment about it in u-boot.

> Two possible issues I see here:
> 
> * It looks like it relies on CONFIG_ARM_HEAVY_BARRIER, but your Kconfig
>   entry does not select that. In many configurations, CACHE_L2X0 would
>   be set, but there is no need for yours on the Cortex-A7.

Fixed.
 
>    Not sure if it matters in practice, as almost nothing uses fiq any more.
>    OTOH, maybe the lock is not needed at all? AFAICT if the sequence
>    gets interrupted by a handler that also calls mb(), you would still
>    continue in the original thread while observing a full l3 barrier. ;-)

I've taken the lock out and tested that the ethernet isn't sending garbage
and everything looks good.

I'm still hoping for some feedback on the other parts of the series.
I'll post a v2 series in a few days.

Thanks!

Daniel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
