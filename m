Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A079785219
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 19:30:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4HNHzFB8mxdlIdxbOmlRIrwfvK3/UW7G7nH+WV+oyCU=; b=qpuxbOzMsi4G6x
	QMXbx+ZiDJMvY4lHg0arjBDBzAu86Nx9FlY96WRopdI62gVzxgh28PdopBjXJf4TDpjTJQTzzBDVN
	Jqhf6AVI5J1UZYaIsAGBg778cKhgCwxujrVIFHvKEoOTL+jteiffmG7aEObP2Zsvd/37g/Mj0195K
	OQKMY9+FJCAB9YlRpsK2BvPkpQGpRFLt99+5H4y/QTH/95rtPOgm8EDBmQgUXmRyRxd7BjGvqv/7U
	qsA0kbsdZf6SH2ghRvHAh0go507aABkc48HNAvaxE8lZPDHyBFOsc0GeJiuYrUDymFBi7Je0XoyIq
	FlyfZYhye0HNS7mZXuHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvPlh-0000JU-9o; Wed, 07 Aug 2019 17:30:33 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvPlQ-0000J5-6d
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 17:30:17 +0000
Received: by mail-ot1-x342.google.com with SMTP id j11so7063230otp.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 07 Aug 2019 10:30:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=GvSVwyjYkUWZmzb2UwP5yi6JZ1ykYGY6rFaP7/aYTLo=;
 b=FffiqU5+eIuv8kGlzf37a45hctKBFrPl36bD6mU5CnzC9YL5qpM893c3kSRhakuQZQ
 X4takvwHuxy5NPQWSrC6jaQkzchWaUx1B2uc3JsY5zG+8FLgsHbhVsLvlRlGDAQ4kKoH
 5jmnc8EUa0XC26IRhxOfNVAFjlUJkw0FvWnMQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GvSVwyjYkUWZmzb2UwP5yi6JZ1ykYGY6rFaP7/aYTLo=;
 b=e/P1J2PChlH/tOPu3oZSSgsSUoXc0bOvnRKFH+ze0jpa/xITR0oCbJX/PCRQSZPpfw
 wlzRqjuTyCEsFn96pVPfqADJUcFNMJIS7cWf/kD2JyQqTlo9S6eDcf+qXY4kXox1uPns
 Hirc3TydvGHLkeFkSRccy2NE+UdTPZTsT3i7W7R2fLI48gGgD5E9HpTvhudg83FY4+pB
 Ew8T4dHCaGKrMM9+JKKcv6bwB+Q+DTmu1xf4HSs7noLcNfgM6SBZjsbpkDGb3UuJUM/c
 hnV5/yIfid5B93SW9GNmJPmA8UBD2H+Wh0gg5OjF+8wCQwUrSQLsk1sgNXEE9JTNxRHE
 qjvw==
X-Gm-Message-State: APjAAAUHfLGhvLsWz+hNWZqAkiJ3AnCBX8ETp9GTlLTZ9ASUOx8/p/PG
 z3qXPTjvQJwn+YVIifUialN//ZN6pbM+9gb4YLGJNg==
X-Google-Smtp-Source: APXvYqw7RRBjKPo7ZfZEtmV59ny/ac5jMKhz6wAq19P1RhtP8uwSeSEl2cXGsfsujsBrMkrSAoT5zOfXD+sPwaeHIv8=
X-Received: by 2002:a6b:90c1:: with SMTP id
 s184mr10120928iod.244.1565199015080; 
 Wed, 07 Aug 2019 10:30:15 -0700 (PDT)
MIME-Version: 1.0
References: <20190805211451.20176-1-robdclark@gmail.com>
 <20190806084821.GA17129@lst.de>
 <CAJs_Fx6eh1w7c=crMoD5XyEOMzP6orLhqUewErE51cPGYmObBQ@mail.gmail.com>
 <20190806143457.GF475@lakrids.cambridge.arm.com>
 <CAJs_Fx4h6SWGmDTLBnV4nmWUFAs_Ge1inxd-dW9aDKgKqmc1eQ@mail.gmail.com>
 <20190807123807.GD54191@lakrids.cambridge.arm.com>
 <CAJs_Fx5xU2-dn3iOVqWTzAjpTaQ8BBNP_Gn_iMc-eJpOX+iXoQ@mail.gmail.com>
 <20190807164958.GA44765@lakrids.cambridge.arm.com>
In-Reply-To: <20190807164958.GA44765@lakrids.cambridge.arm.com>
From: Rob Clark <robdclark@chromium.org>
Date: Wed, 7 Aug 2019 10:30:04 -0700
Message-ID: <CAJs_Fx71T=kJEgt28TWqzw+jOahSbLQynCg83+szQW7op4xBkQ@mail.gmail.com>
Subject: Re: [PATCH 1/2] drm: add cache support for arm64
To: Mark Rutland <mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_103016_269971_09B5DA0E 
X-CRM114-Status: GOOD (  24.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
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

On Wed, Aug 7, 2019 at 9:50 AM Mark Rutland <mark.rutland@arm.com> wrote:
>
> On Wed, Aug 07, 2019 at 09:15:54AM -0700, Rob Clark wrote:
> > On Wed, Aug 7, 2019 at 5:38 AM Mark Rutland <mark.rutland@arm.com> wrote:
> > >
> > > On Tue, Aug 06, 2019 at 09:31:55AM -0700, Rob Clark wrote:
> > > > On Tue, Aug 6, 2019 at 7:35 AM Mark Rutland <mark.rutland@arm.com> wrote:
> > > > >
> > > > > On Tue, Aug 06, 2019 at 07:11:41AM -0700, Rob Clark wrote:
> > > > > > On Tue, Aug 6, 2019 at 1:48 AM Christoph Hellwig <hch@lst.de> wrote:
> > > > > > >
> > > > > > > This goes in the wrong direction.  drm_cflush_* are a bad API we need to
> > > > > > > get rid of, not add use of it.  The reason for that is two-fold:
> > > > > > >
> > > > > > >  a) it doesn't address how cache maintaince actually works in most
> > > > > > >     platforms.  When talking about a cache we three fundamental operations:
> > > > > > >
> > > > > > >         1) write back - this writes the content of the cache back to the
> > > > > > >            backing memory
> > > > > > >         2) invalidate - this remove the content of the cache
> > > > > > >         3) write back + invalidate - do both of the above
> > > > > >
> > > > > > Agreed that drm_cflush_* isn't a great API.  In this particular case
> > > > > > (IIUC), I need wb+inv so that there aren't dirty cache lines that drop
> > > > > > out to memory later, and so that I don't get a cache hit on
> > > > > > uncached/wc mmap'ing.
> > > > >
> > > > > Is there a cacheable alias lying around (e.g. the linear map), or are
> > > > > these addresses only mapped uncached/wc?
> > > > >
> > > > > If there's a cacheable alias, performing an invalidate isn't sufficient,
> > > > > since a CPU can allocate a new (clean) entry at any point in time (e.g.
> > > > > as a result of prefetching or arbitrary speculation).
> > > >
> > > > I *believe* that there are not alias mappings (that I don't control
> > > > myself) for pages coming from
> > > > shmem_file_setup()/shmem_read_mapping_page()..
> > >
> > > AFAICT, that's regular anonymous memory, so there will be a cacheable
> > > alias in the linear/direct map.
> >
> > tbh, I'm not 100% sure whether there is a cacheable alias, or whether
> > any potential linear map is torn down.
>
> I'm fairly confident that the linear/direct map cacheable alias is not
> torn down when pages are allocated. The gneeric page allocation code
> doesn't do so, and I see nothing the shmem code to do so.
>
> For arm64, we can tear down portions of the linear map, but that has to
> be done explicitly, and this is only possible when using rodata_full. If
> not using rodata_full, it is not possible to dynamically tear down the
> cacheable alias.

So, we do end up using GFP_HIGHUSER, which appears to get passed thru
when shmem gets to the point of actually allocating pages.. not sure
if that just ends up being a hint, or if it guarantees that we don't
get something in the linear map.

(Bear with me while I "page" this all back in.. last time I dug thru
the shmem code was probably pre-armv8, or at least before I had any
armv8 hw)

BR,
-R

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
