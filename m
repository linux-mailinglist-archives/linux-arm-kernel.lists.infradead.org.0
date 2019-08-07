Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1656C850D2
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 18:16:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+UpJCqT71NpQzx1XPWVuXG+M4O/xAdtTxh1cEI/stiY=; b=ExvijsR4VnHalZ
	vOJcSNhFDso/FSHmXJRN28bcFmXXoqnJMZa48rAuZF1njt+DJrup2QHCd1xcmou+fc3G2UmER5gd4
	Hau9gG9jJnBxfkFp91DYTluPSg2jx/q+uK3u8JbBnByTVHaDE2WOP9D1B1mLBa1FkyAI1gCw3ZrpV
	0XxyCMrfbvFFoQtKNVu6cpA56/p2+U6HLBCSKvsCWLmWcivFAKyRBuNbl8ZLtQ7v73HNbi5WZyd+q
	t08RSx8zoNSwQhzxZq7GuDohxhf+uwDUfgaybHJl1JZD+E4PIiBXZLkL+xn7pKNTCSJOT6C+eu4XD
	MnphjhiDwa6bixsHqOrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvObr-0002YO-2h; Wed, 07 Aug 2019 16:16:19 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvObe-0002Y1-Bq
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 16:16:07 +0000
Received: by mail-ot1-x341.google.com with SMTP id l15so49285262oth.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 07 Aug 2019 09:16:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=7ytzJIv3QNGK2vpGK5MfHZjc0QgFgcXjo88HR7/oqMA=;
 b=ZuWolzEzTTi6r9XQJ8T7T/obgl1vrSjpszk+SirQmYSfaiKAOopCaOL3uj2/ZeYDN3
 q1/SrxJ/WT7l8LX8St0gjRaKvz6kTJ/9FOa2sacVOtxH5/Lzdb9osA9oLZ3F8b0/9m/g
 4HGJjtU9zw8oCOcwegO9gIZy0dWA7GpPTHNa0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=7ytzJIv3QNGK2vpGK5MfHZjc0QgFgcXjo88HR7/oqMA=;
 b=sj4t4vpjV1/43TspM2JOqWhIEMNcEYA/103KOOoZLdf9Bd/OH+npbLaopNMbPhbVEJ
 jcs6T6WgIud4qCr4lCaA0sT4R7TQN+q9hVDw18OUAHViEfb9IKG7BJIa0ShGEDZ19hUU
 dfzY6oVFTBHonqJo2ab1ZVhg+3gP4Gc3mK1ALoBkqTOyqMCr8UTAY6nYQ1t4wWNVJjnf
 Jyvcd3ii90tJuQ5+5v8W8j48X4Bnh5No813ZJjbPIIdC2JuuHq8AEmLARJIoERX2cmbP
 trv2cPzqtLlrBliQcSV/qH516RdZRiRk+DqJ5jLz7jQrQoHJLICOXOF8bnPWQSg/IOCb
 65IQ==
X-Gm-Message-State: APjAAAU/4j+y07BXUl6XkIk9Aaj+p7MFIIF4QaMenZIpvSfQCaYJ5VDr
 UuDS3iUy/4+inLfvBc72FKvPjouOIoyGp5yv/KumMw==
X-Google-Smtp-Source: APXvYqxocs9JKmL6vxc8Hn2JrzxAo0kZaTAWxbkrPZVvQvVn85LVpyyqD/xT20Row4n7opcNt7YmbVv05FfX1D6hKFA=
X-Received: by 2002:a5e:924d:: with SMTP id z13mr9363595iop.247.1565194565095; 
 Wed, 07 Aug 2019 09:16:05 -0700 (PDT)
MIME-Version: 1.0
References: <20190805211451.20176-1-robdclark@gmail.com>
 <20190806084821.GA17129@lst.de>
 <CAJs_Fx6eh1w7c=crMoD5XyEOMzP6orLhqUewErE51cPGYmObBQ@mail.gmail.com>
 <20190806143457.GF475@lakrids.cambridge.arm.com>
 <CAJs_Fx4h6SWGmDTLBnV4nmWUFAs_Ge1inxd-dW9aDKgKqmc1eQ@mail.gmail.com>
 <20190807123807.GD54191@lakrids.cambridge.arm.com>
In-Reply-To: <20190807123807.GD54191@lakrids.cambridge.arm.com>
From: Rob Clark <robdclark@chromium.org>
Date: Wed, 7 Aug 2019 09:15:54 -0700
Message-ID: <CAJs_Fx5xU2-dn3iOVqWTzAjpTaQ8BBNP_Gn_iMc-eJpOX+iXoQ@mail.gmail.com>
Subject: Re: [PATCH 1/2] drm: add cache support for arm64
To: Mark Rutland <mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_091606_426280_F2804E88 
X-CRM114-Status: GOOD (  23.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Sean Paul <sean@poorly.run>, Maxime Ripard <maxime.ripard@bootlin.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 LKML <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, David Airlie <airlied@linux.ie>,
 Rob Clark <robdclark@gmail.com>, linux-arm-kernel@lists.infradead.org,
 Daniel Vetter <daniel@ffwll.ch>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Thomas Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>,
 Christoph Hellwig <hch@lst.de>, Allison Randal <allison@lohutok.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 7, 2019 at 5:38 AM Mark Rutland <mark.rutland@arm.com> wrote:
>
> On Tue, Aug 06, 2019 at 09:31:55AM -0700, Rob Clark wrote:
> > On Tue, Aug 6, 2019 at 7:35 AM Mark Rutland <mark.rutland@arm.com> wrote:
> > >
> > > On Tue, Aug 06, 2019 at 07:11:41AM -0700, Rob Clark wrote:
> > > > On Tue, Aug 6, 2019 at 1:48 AM Christoph Hellwig <hch@lst.de> wrote:
> > > > >
> > > > > This goes in the wrong direction.  drm_cflush_* are a bad API we need to
> > > > > get rid of, not add use of it.  The reason for that is two-fold:
> > > > >
> > > > >  a) it doesn't address how cache maintaince actually works in most
> > > > >     platforms.  When talking about a cache we three fundamental operations:
> > > > >
> > > > >         1) write back - this writes the content of the cache back to the
> > > > >            backing memory
> > > > >         2) invalidate - this remove the content of the cache
> > > > >         3) write back + invalidate - do both of the above
> > > >
> > > > Agreed that drm_cflush_* isn't a great API.  In this particular case
> > > > (IIUC), I need wb+inv so that there aren't dirty cache lines that drop
> > > > out to memory later, and so that I don't get a cache hit on
> > > > uncached/wc mmap'ing.
> > >
> > > Is there a cacheable alias lying around (e.g. the linear map), or are
> > > these addresses only mapped uncached/wc?
> > >
> > > If there's a cacheable alias, performing an invalidate isn't sufficient,
> > > since a CPU can allocate a new (clean) entry at any point in time (e.g.
> > > as a result of prefetching or arbitrary speculation).
> >
> > I *believe* that there are not alias mappings (that I don't control
> > myself) for pages coming from
> > shmem_file_setup()/shmem_read_mapping_page()..
>
> AFAICT, that's regular anonymous memory, so there will be a cacheable
> alias in the linear/direct map.

tbh, I'm not 100% sure whether there is a cacheable alias, or whether
any potential linear map is torn down.  My understanding is that a
cacheable alias is "ok", with some caveats.. ie. that the cacheable
alias is not accessed.  I'm not entirely sure about pre-fetch from
access to adjacent pages.  We have been using shmem as a source for
pages since the beginning, and I haven't seen it cause any problems in
the last 6 years.  (This is limited to armv7 and armv8, I'm not really
sure what would happen on armv6, but that is a combo I don't have to
care about.)

BR,
-R

> > digging around at what dma_sync_sg_* does under the hood, it looks
> > like it is just arch_sync_dma_for_cpu/device(), so I guess that should
> > be sufficient for what I need.
>
> I don't think that's the case, per the example I gave above.
>
> Thanks,
> Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
