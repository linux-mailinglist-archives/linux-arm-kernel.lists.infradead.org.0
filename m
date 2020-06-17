Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 133201FD627
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 22:37:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OrMGIBT7bdzhEGeX8i1mdRTYOD0vcXWXRQFCGqNjLxI=; b=YGW99EUXNagIn9
	QSX13BPebENymcngTrqG8luzo7D6RpxmtsdPRtbStdWh24UM2cJLP3DXelQeizm5ydjuj6wjWtGTh
	HJ2X+czDOZWnd3h4vSoaMfLP5VTIVd7EIcIj8FLUJhTrOP+QRYhKHrtDu4fHEpQ68D8mLv8u2Almo
	Aq5Hpemp1ndY0YZSVoVN+7ZHfAFXApZHvx3+Huee86hYD5DVfwpnrvSp4DOpWmt53Q/81z/WJm6Fs
	J2osrfm99NIH9OOn+1zCJi5N9MB5einng9JArriFLocFBJ9SAsSCAU5y5ZRBjf+Ibd11wezVhDx8w
	uGN8OJ1u6PTa2fbsvtzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jleoK-0005xa-1n; Wed, 17 Jun 2020 20:37:28 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jleoB-0005xE-E2
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 20:37:21 +0000
Received: by mail-lf1-x141.google.com with SMTP id m26so2116799lfo.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 17 Jun 2020 13:37:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=anholt-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=KnLCZJwys+q4B3B05ok3TtEm9HWxcpRhuVgOFrlznhw=;
 b=NFZcC0HxLVeJtloucD6xkDEeP+TvW++GtU2PKmlM7Pm5PGuHk8vGkD4nuqJXeVe1kD
 QgPZd8MfuT69OaWTBim3SZi4PnPodruvNDFvFGkGgjPa3MHia3roD+LRImbpilOjbPGE
 ZzVtW9xZm5CbX8kX5zVUyYCKaCk9XCeyqW6hE//g8E6qJ09W4PLzfAY8BZNDX8d6qwIW
 1Qc4DTFOYCVWNqpinrn4k92Ax7orPareKeURiV+EcmQMCws9mV6qBAx/bdFaMw3AAaGn
 UqR2RZde2nOCN7LOw2hqRRTbNcQ4tJZcO8bFVaZ6LfEdkb1oam83UKvwzc2anAMDXPba
 ji+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=KnLCZJwys+q4B3B05ok3TtEm9HWxcpRhuVgOFrlznhw=;
 b=AgNtOrRFm/tFCcMkjiXybgm0REVLVH/lLOIlEFO+u+Yf73LfmDkWZsXCCOlLhPFdq6
 b9Ui2mAEnhsJTepsgt5JnGUMk1NnzCMWXFNvrqr49wDJSFC/AnEWYtfgE0HEaDkUAB+U
 KoyBgmdkgzWEXfCpre5vww40LVgtK8SXtreG3epS59WUqxsPanBkXVkuzLV0i/amyKnf
 wlA4uoHonZG4SzCj1szOyVURzAxNrKv7Da9dba25HqFwxiWYtA1Us68S0wJsudty9khq
 b2WzTkAFVTosaLV34sHvjgh3wbWexQZTM0z9c1DA2gIw+FJ5NrsKbPEbc41jnYMrtnTe
 8PsQ==
X-Gm-Message-State: AOAM532jkOuHHTGfpybyvt68pTT3DLO/6FuXZsH/HfP2v2aMe5VAXpHW
 DODzol9mWwZx4Ap0pUUrmZNO1D6uc1fCm3ZC82i3Uw==
X-Google-Smtp-Source: ABdhPJy5tFufG+SBVUtax2Z87ERt62C9EUZ15mPz3fddCgc6sVOg4TRQp2GozJYEPiXj2lWl6HnY46NpoQCRpZl4fPs=
X-Received: by 2002:a19:4bd1:: with SMTP id y200mr402640lfa.60.1592426237348; 
 Wed, 17 Jun 2020 13:37:17 -0700 (PDT)
MIME-Version: 1.0
References: <20200409233350.6343-1-jcrouse@codeaurora.org>
 <20200409233350.6343-5-jcrouse@codeaurora.org>
 <CADaigPWJDEwPZyUyEO9H3=+zzdEX=h+gSa-w1ppNpM9ryY0LZA@mail.gmail.com>
In-Reply-To: <CADaigPWJDEwPZyUyEO9H3=+zzdEX=h+gSa-w1ppNpM9ryY0LZA@mail.gmail.com>
From: Eric Anholt <eric@anholt.net>
Date: Wed, 17 Jun 2020 13:37:06 -0700
Message-ID: <CADaigPVvZrP_mOcB5f7w77t+4O1=Ya2VW8Ff96EzemO6swr_8Q@mail.gmail.com>
Subject: Re: [PATCH v6 4/5] drm/msm: Refactor address space initialization
To: Jordan Crouse <jcrouse@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_133719_473865_9D97780A 
X-CRM114-Status: GOOD (  14.97  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Jeffrey Hugo <jeffrey.l.hugo@gmail.com>, David Airlie <airlied@linux.ie>,
 Akhil P Oommen <akhilpo@codeaurora.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 AngeloGioacchino Del Regno <kholk11@gmail.com>, will@kernel.org,
 Sam Ravnborg <sam@ravnborg.org>, Ben Dooks <ben.dooks@codethink.co.uk>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Brian Masney <masneyb@onstation.org>, linux-arm-msm@vger.kernel.org,
 Sharat Masetty <smasetty@codeaurora.org>, Robin Murphy <robin.murphy@arm.com>,
 Alexios Zavras <alexios.zavras@intel.com>,
 Thomas Gleixner <tglx@linutronix.de>, Sean Paul <sean@poorly.run>,
 Allison Randal <allison@lohutok.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>, zhengbin <zhengbin13@huawei.com>,
 iommu@lists.linux-foundation.org, tongtiangen <tongtiangen@huawei.com>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Drew Davenport <ddavenport@chromium.org>,
 Wambui Karuga <wambui.karugax@gmail.com>, freedreno@lists.freedesktop.org,
 Georgi Djakov <georgi.djakov@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 17, 2020 at 1:16 PM Eric Anholt <eric@anholt.net> wrote:
>
> On Thu, Apr 9, 2020 at 4:34 PM Jordan Crouse <jcrouse@codeaurora.org> wrote:
> >
> > Refactor how address space initialization works. Instead of having the
> > address space function create the MMU object (and thus require separate but
> > equal functions for gpummu and iommu) use a single function and pass the
> > MMU struct in. Make the generic code cleaner by using target specific
> > functions to create the address space so a2xx can do its own thing in its
> > own space.  For all the other targets use a generic helper to initialize
> > IOMMU but leave the door open for newer targets to use customization
> > if they need it.
>
> I'm seeing regressions in dEQP-VK.memory.allocation.random.* on cheza
> after this commit.   The symptom is that large allocations fail with
> -ENOSPC from MSM_GEM_INFO(IOVA).
>
> Possibly relevant change from having stuffed some debug info in:
>
> before:
> [    3.791436] [drm:msm_gem_address_space_create] *ERROR* msmgem
> address space create: 0x1000000 + 0xfeffffff
> [    3.801672] platform 506a000.gmu: Adding to iommu group 6
> [    3.807359] [drm:msm_gem_address_space_create] *ERROR* msmgem
> address space create: 0x0 + 0x7fffffff
> [    3.817140] msm ae00000.mdss: bound 5000000.gpu (ops a3xx_ops)
> [    3.823212] msm_dpu ae01000.mdp: [drm:msm_ioremap] *ERROR* failed
> to get memory resource: vbif_nrt
> [    3.832429] msm_dpu ae01000.mdp: [drm:msm_ioremap] *ERROR* failed
> to get memory resource: regdma
> [    3.841478] [drm:dpu_kms_hw_init:878] dpu hardware revision:0x40000000
> [    3.848193] [drm:msm_gem_address_space_create] *ERROR* msmgem
> address space create: 0x1000 + 0xffffefff
>
> after:
>
> [    3.798707] [drm:msm_gem_address_space_create] *ERROR* msmgem
> address space create: 0x1000000 + 0xfffffff
> [    3.808731] platform 506a000.gmu: Adding to iommu group 6
> [    3.814440] [drm:msm_gem_address_space_create] *ERROR* msmgem
> address space create: 0x0 + 0x7fffffff
> [    3.820494] hub 2-1:1.0: USB hub found
> [    3.824108] msm ae00000.mdss: bound 5000000.gpu (ops a3xx_ops)
> [    3.828554] hub 2-1:1.0: 4 ports detected
> [    3.833756] msm_dpu ae01000.mdp: [drm:msm_ioremap] *ERROR* failed
> to get memory resource: vbif_nrt
> [    3.847038] msm_dpu ae01000.mdp: [drm:msm_ioremap] *ERROR* failed
> to get memory resource: regdma
> [    3.856095] [drm:dpu_kms_hw_init:878] dpu hardware revision:0x40000000
> [    3.862840] [drm:msm_gem_address_space_create] *ERROR* msmgem
> address space create: 0x1000 + 0xfffffff
>
> 256MB for GMU address space?

Found the bug, fixes at the last 2 commits of
https://github.com/anholt/linux/tree/drm-msm-address-space

I'm going to try having another go at convincing gmail to let git
send-email through, but all the howtos in the world didn't work last
time (gsuite has different behavior from normal gmail).

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
