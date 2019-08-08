Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A71D8675C
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 18:45:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kAfS5PMnkKkQcqEPNHgV4rnohHUwp5M46EtJn5xm60U=; b=GrC+kFQ469nvsx
	M2wleZlYhtFwYz6YJQT7kVADU5TzvOvlY73q9nTn2i2s/3ogWTvR+wKZy289XNXk4VvTC27gNA3Uo
	YcYLMzbSqY0YjnCQrX6iOhxqIKJ7ES++5oBNVjqaRraa9Yzmi9EmevwmMEH/Ugsgf3DssquNNkGaO
	Zrtpv8Y9O19ixwTEansrdAPX1t48cXqy40eDgwtpTKMDbKjsjupKI8/ksiNkNBJ6DQn5lSzTnnpJY
	xI4TQJu2CvAa54LCXgFOhuw3b+9PJe2MelUMs4z63Rn6KxTPW8zsJSabaqnSY6+d9khK93r9FXD2m
	MSbPvXcGyBgZA92nyGTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvlX5-0001VK-Fu; Thu, 08 Aug 2019 16:44:55 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvlWu-0001Uu-6g
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 16:44:45 +0000
Received: by mail-ot1-x344.google.com with SMTP id j11so20775913otp.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 08 Aug 2019 09:44:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=mdKChiO6toradfdA1i6Jwh7yiUgV/BOpjgptiTpJXTc=;
 b=nN25bX7pb6egOKBjU+l2ju89PKwN/5apoENIzX1yELI4kWtTHv02FC8vmZ5UY5HgdY
 N0hM9lnejemrdoHWz7YV2JwiOcYaVcO0RE4nBEwv8TFYoMqpzNn1u7FJpugxUj/FB+rB
 qpQ6yLSPsVmThmT5atHi74jQNdieykgqiXoGU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=mdKChiO6toradfdA1i6Jwh7yiUgV/BOpjgptiTpJXTc=;
 b=LdGIQ0X3+W48ipLHY3LUAp1XKzqHZRn5Jc+1Ti7YtAuIFQwiYJUuMWY1KLRbDnLjiV
 eXus62OYIrGDrJ4/75r6u9SeaJQN9F4CqgmmrJsRJnrsxZoDE/48dZolZ6mvqMWIpsJG
 29CIp4Zg1M26/PKKc/tlHuWfRM3QjjpF2AfQU1TwbOAmK6rj2U3OA4HY0DmNBIv+XKiI
 UnysMbl937VwhUeZMKu0VpOevzeU58iZeX+xasv5JjEupKlkB/yPS62FfovP6HpnlS0E
 LF7LqNsEmS7fcgYBr2zn8MIvrCxGg7qGjJu0hq5Z73Ota4SvYBAej8C1MUodgJnoFkAX
 4THQ==
X-Gm-Message-State: APjAAAX3BpxPLoOFeVS9r9/tzfQ/Oll+PBydGmCYymMXE4b92aPg0+wb
 NG/eHegfjZp3+EzR9JCWufMb3bgBf10HOdoz6PSM5A==
X-Google-Smtp-Source: APXvYqzEoYGvoalYE9dVirABjTjcHh9LZvDh0CA4mUt+tKEDBTe88c3+j/qr32L9yYNNrYvPSZymRl+NG991z6cfJJI=
X-Received: by 2002:a02:c549:: with SMTP id g9mr17312340jaj.14.1565282683214; 
 Thu, 08 Aug 2019 09:44:43 -0700 (PDT)
MIME-Version: 1.0
References: <20190805211451.20176-1-robdclark@gmail.com>
 <20190806084821.GA17129@lst.de>
 <CAJs_Fx6eh1w7c=crMoD5XyEOMzP6orLhqUewErE51cPGYmObBQ@mail.gmail.com>
 <20190806143457.GF475@lakrids.cambridge.arm.com>
 <CAJs_Fx4h6SWGmDTLBnV4nmWUFAs_Ge1inxd-dW9aDKgKqmc1eQ@mail.gmail.com>
 <20190807123807.GD54191@lakrids.cambridge.arm.com>
 <CAJs_Fx5xU2-dn3iOVqWTzAjpTaQ8BBNP_Gn_iMc-eJpOX+iXoQ@mail.gmail.com>
 <20190807164958.GA44765@lakrids.cambridge.arm.com>
 <CAJs_Fx71T=kJEgt28TWqzw+jOahSbLQynCg83+szQW7op4xBkQ@mail.gmail.com>
 <20190808075947.GE30308@lst.de>
In-Reply-To: <20190808075947.GE30308@lst.de>
From: Rob Clark <robdclark@chromium.org>
Date: Thu, 8 Aug 2019 09:44:32 -0700
Message-ID: <CAJs_Fx5fJ31CsFODBgBbhcCvoxSX_D1NHDjQs4LtJ_0GwuxMVA@mail.gmail.com>
Subject: Re: [PATCH 1/2] drm: add cache support for arm64
To: Christoph Hellwig <hch@lst.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_094444_275074_02213038 
X-CRM114-Status: GOOD (  18.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Catalin Marinas <catalin.marinas@arm.com>, David Airlie <airlied@linux.ie>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 LKML <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, Sean Paul <sean@poorly.run>,
 Rob Clark <robdclark@gmail.com>, linux-arm-kernel@lists.infradead.org,
 Daniel Vetter <daniel@ffwll.ch>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Thomas Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>,
 Allison Randal <allison@lohutok.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 8, 2019 at 12:59 AM Christoph Hellwig <hch@lst.de> wrote:
>
> On Wed, Aug 07, 2019 at 10:30:04AM -0700, Rob Clark wrote:
> > So, we do end up using GFP_HIGHUSER, which appears to get passed thru
> > when shmem gets to the point of actually allocating pages.. not sure
> > if that just ends up being a hint, or if it guarantees that we don't
> > get something in the linear map.
> >
> > (Bear with me while I "page" this all back in.. last time I dug thru
> > the shmem code was probably pre-armv8, or at least before I had any
> > armv8 hw)
>
> GFP_HIGHUSER basically just means that this is an allocation that could
> dip into highmem, in which case it would not have a kernel mapping.
> This can happen on arm + LPAE, but not on arm64.

Just a dumb question, but why is *all* memory in the linear map on
arm64?  It would seem useful to have a source of pages that is not in
the linear map.
I guess it is mapped as huge pages (or something larger than 4k pages)?

Any recommended reading to understand how/why the kernel address space
is setup the way it is (so I can ask fewer dumb questions)?

BR,
-R

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
