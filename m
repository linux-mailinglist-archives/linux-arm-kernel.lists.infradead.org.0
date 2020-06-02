Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A74F81EC167
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 19:52:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sVzKjfQpGG0KrWRelzvXDjgYlxrtqBTsFT2c8oERoww=; b=TTabNFFS/ZcTQS
	psHFtHTkMc0VRcEK95mSjZwq7x2wD5Wi3eLSJayC9yhPTi0LIvMTFIfkcJmPlS9fBjU1MhM7AqvWr
	LkFsb8LKP3BTr+jbaT4KwgsHCBw88PJHc1pcCxZRARbBGA3uc3eZy0nKOao57a9k/NdDeY3bYuhy4
	UCk7eSi3cFCsZhsTFtWi+95xY1mccSEcjy2QGgqiwY1A8h0STuWx37WPzzGn7km3vQ/6hky8gorT6
	4TLB+eNyOx9osGHOcwOvBY8wQ7SXSp+2HQcJ26Edvj7jkpBXMxNc3PIZHo/YWxRm8jjvlV6KuIJdC
	4kz5zYz5ISJmzpVBzhWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgB5d-0004Cq-LP; Tue, 02 Jun 2020 17:52:41 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgB5Y-0004C1-1x
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jun 2020 17:52:37 +0000
Received: by mail-lj1-x243.google.com with SMTP id z9so3009138ljh.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 02 Jun 2020 10:52:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=anholt-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=HZgulanud4yuYVbSEY2anFOdC3z8THltqCrqmdc0mYo=;
 b=dO9rC6U35ZJVsEEqeyiT2wqhpSYN9ZFHMHcUxncLMNKJV//15BuMSc2wnN6tjCAEjn
 TGbDcIgy4BS7Dl6Cg5LOM9okR/1FIFpXnuFgZF/LIexlxoI3jpg6+QOS+Cg58yW6wyS0
 WKG1Dr+gmDrfMfj0ZKPlm+bWhBzIbkCDIV20Wt9UtHpsMOJ02zBPUAQKeii04sISDLAH
 OFTa8PehKlXok+f1TsVFQUCaXwQrxXJ1Fs8Rlms6BmuU2aMwAmixXfMXCSvFxUbiHbCB
 XNxz8DVWLPEzDOlU65p4syvY0bUbOKKy2msR0RdtwqXQE4eqWdmg7pTz1Q11FqLhyGlY
 +y/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=HZgulanud4yuYVbSEY2anFOdC3z8THltqCrqmdc0mYo=;
 b=nuK1DFmae6RWOOL5icazUpSFpIfeWPxI1w3yVed7LdYtqsnhrpvkhMsYByFL/BiaXg
 u5n+7OLV58NTVmpTE3olw48B8N4mnAuCSPvntNwCdlgqaxrmX30iGRqKwJa1OOSF7eC5
 e4IZdB9tVxyvBFBeBdyxoB9/EKRm3Uzpuj1cvhZdfsOJaYBQ1N5cah1oNTNN4m/nB3kI
 2GQCPjd6j54Dy4oJauOH4NpjFIsi+6WjAhubBg/WmYLWxeANbkhLs7tmA/PT9n4U09P5
 /NSUiK6M9iMbYFzgid2S/ZBAb0WSNn0wXFnqtF1ljVVsK+oZonL30wwTEO0u6a3JtOK2
 s2EQ==
X-Gm-Message-State: AOAM533mqQJUEw6oCHObEGbnaoN8eA2ikSkEVeriVu/UW0D2bK4ZnJK2
 qTzSCbDplK/V66x3V937qpdZ9nRAfQI7CTdFHNso5Q==
X-Google-Smtp-Source: ABdhPJyb9Q+yOpWaTEJsS6SMTCHwieIBoNC2oRXbg7gqhPZ+it4nX/xFtvhER8sXJsj/q7/Cf6w1wYITBiLYGaiqulI=
X-Received: by 2002:a2e:8ed3:: with SMTP id e19mr135042ljl.367.1591120352694; 
 Tue, 02 Jun 2020 10:52:32 -0700 (PDT)
MIME-Version: 1.0
References: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
 <1aaadf9a5176591c891622cb00b0c50f42e569dc.1590594512.git-series.maxime@cerno.tech>
 <CADaigPWQdeTd2CGCK-yxq+TAU6xKMVsdZfhSVptn4RSENxpdxg@mail.gmail.com>
 <20200602125227.fe3mt5jnqd6u4pft@gilmour>
In-Reply-To: <20200602125227.fe3mt5jnqd6u4pft@gilmour>
From: Eric Anholt <eric@anholt.net>
Date: Tue, 2 Jun 2020 10:52:21 -0700
Message-ID: <CADaigPUYwmwcFDtH3ZtyDaGWvutAYSX=JuMhXh2EtfNVLU6iDQ@mail.gmail.com>
Subject: Re: [PATCH v3 015/105] drm/vc4: hvs: Boost the core clock during
 modeset
To: Maxime Ripard <maxime@cerno.tech>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_105236_159424_AB3CA508 
X-CRM114-Status: GOOD (  13.79  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Tim Gover <tim.gover@raspberrypi.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>, linux-kernel@vger.kernel.org,
 DRI Development <dri-devel@lists.freedesktop.org>,
 bcm-kernel-feedback-list@broadcom.com,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Phil Elwell <phil@raspberrypi.com>, linux-arm-kernel@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 2, 2020 at 5:52 AM Maxime Ripard <maxime@cerno.tech> wrote:
>
> Hi Eric,
>
> On Wed, May 27, 2020 at 09:33:44AM -0700, Eric Anholt wrote:
> > On Wed, May 27, 2020 at 8:49 AM Maxime Ripard <maxime@cerno.tech> wrote:
> > >
> > > In order to prevent timeouts and stalls in the pipeline, the core clock
> > > needs to be maxed at 500MHz during a modeset on the BCM2711.
> >
> > Like, the whole system's core clock?
>
> Yep, unfortunately...
>
> > How is it reasonable for some device driver to crank the system's core
> > clock up and back down to some fixed-in-the-driver frequency? Sounds
> > like you need some sort of opp thing here.
>
> That frequency is the minimum rate of that clock. However, since other
> devices have similar requirements (unicam in particular) with different
> minimum requirements, we will switch to setting a minimum rate instead
> of enforcing a particular rate, so that patch would be essentially
> s/clk_set_rate/clk_set_min_rate/.

clk_set_min_rate makes a lot more sense to me.  r-b with that obvious
change. Thanks!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
