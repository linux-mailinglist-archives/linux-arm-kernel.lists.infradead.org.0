Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 755501EB5D8
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 08:32:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Oo3I8xpMJbOZlrrshSKMEi00St2OaHc0XjJ0B8Qk4Wk=; b=SMKkCpCpMX0ZYu
	V1JaYBZQdib2t8ajB1GSKVv4Z393ezhteATclRkYazv2PA6W7bz3rdd4cUycFRF26AdYqgO8usWGJ
	qPP8vcS51oUe+RTYNrky/DPETAMWzMn/X74LCCiOa30wVaXKJ1cN6O0zN9SK/5xLz97ChnSi9/cHi
	1KZQPsd+dnjuuR1EARAWylIYhUY0K46o73Vyxq1XfogbOA2SQnvevvmDpJ6SbRkSRcYlBOPnI5ztJ
	PUt7k17oPv2OQwQq0WcfJvGVQWBKMkJKlO+aGWOji3M1GOM7/pJ97jB7m9qz8BIuNunmd8EsWwlx7
	uzBEKts2xuZcEVU3r26Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jg0TG-0005AJ-CV; Tue, 02 Jun 2020 06:32:22 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jg0T9-00059s-DC
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jun 2020 06:32:16 +0000
Received: by mail-pl1-x642.google.com with SMTP id x11so935582plv.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 01 Jun 2020 23:32:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=b+M/coCkFNl7rEB1+V9a1SGv0MbqkwxWHT5JS/FD5kU=;
 b=KUDscq8WItKoh9ZYSx8jWuci35Nw048l0iXzgRVyQNROloiXf5EDGPMxaYe40ytsfc
 7tzL55dftrs+QMwkqTdiodq2N8ZWMmLGst4MFycYH/KwplJZf7c1hurZa2MrQVPYUm9Z
 0u0j0yJqrH/+bHMnGrM4KLjgs4VZxEJLD3+q8rbI9pKCvgLMWyyP6HJnYpWnroAJVTOv
 caH7/VDudXhENr5UEvSEpFioSFfzRuyXUSN0a8UmQdYPFHFBFZ6DyWsi1G125N8sJhSL
 3NopBKEm9MvPaBjxc4O8AdWAxCzTs5dU1BSHm/v6l5A94OOISy6xU8k+9nvxuBQKd5MB
 L92A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=b+M/coCkFNl7rEB1+V9a1SGv0MbqkwxWHT5JS/FD5kU=;
 b=KheZfPv2S3LR5O4lNI4OK1O/+lx7Qo44vFPcb6j/Q0D4zQKVANFjDSIweZmhQ61D1D
 WzKFbufBfLxK4GHPEicFtsNReYefo6FcVw3KRnBTBC2LYl6RoiRCEg7+u7Qjmnw5QN8v
 WzPE+d6KzJzOruh8LLTI6qWuJvVqAGqONTOP+GKZ4Eb3KcjdileVOR96C4Mxdz0G3NQ6
 oQ1r4bSAeaiZ1FdgBaRy08HVz67mBFmUNQb4G95pGzkQFhNnLi6akaZdsNiVOeBwufed
 DezyOC3/8VXo+nF8BXzWqIFRXiLTknSPOaB2EhGmZNiqc38fPAc7clGqu7YxwDL1oMSy
 m0Zw==
X-Gm-Message-State: AOAM533OMQhLBdw2w+uZVWY2nyrEfmOSre0zEgR/sa8osZHf7MF2b7tc
 VpUKH88q0pucEaV8weiRLaVPYSGlNxc=
X-Google-Smtp-Source: ABdhPJy5cUvakA8S6grGUMTST0kl4+hlBnKMXzZSlSFWY+9TVWtjdijoQ9DEyc9FF+kCM3nqIrBYGQ==
X-Received: by 2002:a17:90a:ee82:: with SMTP id i2mr731084pjz.29.1591079533656; 
 Mon, 01 Jun 2020 23:32:13 -0700 (PDT)
Received: from yoga (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id k14sm1228630pgn.94.2020.06.01.23.32.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 01 Jun 2020 23:32:12 -0700 (PDT)
Date: Mon, 1 Jun 2020 23:32:10 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [RFC 0/2] iommu: arm-smmu: Add support for early direct mappings
Message-ID: <20200602063210.GT11847@yoga>
References: <20191209150748.2471814-1-thierry.reding@gmail.com>
 <20200228025700.GA856087@builder>
 <20200514193249.GE279327@builder.lan>
 <CALAqxLVmomdKJCwh=e-PX+8-seDX0RXA81FzmG4sEyJmbXBh9A@mail.gmail.com>
 <20200527110343.GD11111@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200527110343.GD11111@willie-the-truck>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_233215_454881_910DD485 
X-CRM114-Status: GOOD (  31.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Joerg Roedel <joro@8bytes.org>, iommu@lists.linux-foundation.org,
 Thierry Reding <thierry.reding@gmail.com>,
 John Stultz <john.stultz@linaro.org>, linux-tegra@vger.kernel.org,
 Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed 27 May 04:03 PDT 2020, Will Deacon wrote:

> Hi John, Bjorn,
> 
> On Tue, May 26, 2020 at 01:34:45PM -0700, John Stultz wrote:
> > On Thu, May 14, 2020 at 12:34 PM <bjorn.andersson@linaro.org> wrote:
> > >
> > > On Thu 27 Feb 18:57 PST 2020, Bjorn Andersson wrote:
> > >
> > > Rob, Will, we're reaching the point where upstream has enough
> > > functionality that this is becoming a critical issue for us.
> > >
> > > E.g. Lenovo Yoga C630 is lacking this and a single dts patch to boot
> > > mainline with display, GPU, WiFi and audio working and the story is
> > > similar on several devboards.
> > >
> > > As previously described, the only thing I want is the stream mapping
> > > related to the display controller in place, either with the CB with
> > > translation disabled or possibly with a way to specify the framebuffer
> > > region (although this turns out to mess things up in the display
> > > driver...)
> > >
> > > I did pick this up again recently and concluded that by omitting the
> > > streams for the USB controllers causes an instability issue seen on one
> > > of the controller to disappear. So I would prefer if we somehow could
> > > have a mechanism to only pick the display streams and the context
> > > allocation for this.
> > >
> > >
> > > Can you please share some pointers/insights/wishes for how we can
> > > conclude on this subject?
> > 
> > Ping? I just wanted to follow up on this discussion as this small
> > series is crucial for booting mainline on the Dragonboard 845c
> > devboard. It would be really valuable to be able to get some solution
> > upstream so we can test mainline w/o adding additional patches.
> 
> Sorry, it's been insanely busy recently and I haven't had a chance to think
> about this on top of everything else. We're also carrying a hack in Android
> for you :)
> 

Thanks for taking the time to get back to us on this!

> > The rest of the db845c series has been moving forward smoothly, but
> > this set seems to be very stuck with no visible progress since Dec.
> > 
> > Are there any pointers for what folks would prefer to see?
> 
> I've had a chat with Robin about this. Originally, I was hoping that
> people would all work together towards an idyllic future where firmware
> would be able to describe arbitrary pre-existing mappings for devices,
> irrespective of the IOMMU through which they master and Linux could
> inherit this configuration. However, that hasn't materialised (there was
> supposed to be an IORT update, but I don't know what happened to that)
> and, in actual fact, the problem that you have on db845 is /far/ more
> restricted than the general problem.
> 
> Could you please try hacking something along the following lines and see
> how you get on? You may need my for-joerg/arm-smmu/updates branch for
> all the pieces:
> 
>   1. Use the ->cfg_probe() callback to reserve the SMR/S2CRs you need
>      "pinning" and configure for bypass.
> 
>   2. Use the ->def_domain_type() callback to return IOMMU_DOMAIN_IDENTITY
>      for the display controller
> 
> I /think/ that's sufficient, but note that it differs from the current
> approach because we don't end up reserving a CB -- bypass is configured
> in the S2CR instead. Some invalidation might therefore be needed in
> ->cfg_probe() after unhooking the CB.
> 
> Thanks, and please yell if you run into problems with this approach.
> 

This sounded straight forward and cleaner, so I implemented it...

Unfortunately the hypervisor is playing tricks on me when writing to
S2CR registers:
- TRANS writes lands as requested
- BYPASS writes ends up in the register as requested, with type FAULT
- FAULT writes are ignored

In other words, the Qualcomm firmware prevents us from relying on
marking the relevant streams as BYPASS type.


Instead Qualcomm seems to implement "bypass" by setting up stream
mapping, of TRANS type, pointing to a context bank without
ARM_SMMU_SCTLR_M set.

Regards,
Bjorn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
