Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EBBD61ED4EC
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 19:23:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uabfM0IGGr1zO7+bz396Kc8iV3IPl3lxaUAv/iKBxJY=; b=foshFCspvccxqv
	L2G2zTI2gVovXX/J9H5M/fpCjqBhftF8HCcdpVCbHZ7QfBNQWzvOxBvrGrdOCfSZMLoM3wXk7x804
	lJuOOIdeqX3FhlXFx7CBj/uT+nnCL15qI0KM6x1qt5vjjmEgAgQMfZWbll1SSp7RNst1DQY2me+Zh
	jVbcUMOqP6qJStF/7Vlk3qIR0CyWlOKM4SW/JNwv+lgQVVKAWVtc3ANm1l/ih8DNN+qFDoEhMl/nn
	848/oWyBH56kCBKVTPkaK43h+148l9o7je4nlKInh7yYUm5BvILBJEOUmly0p6kqUeA9MdupPs6XX
	HiKGPJcQjCxFld3mhIfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgX6v-0007LK-F5; Wed, 03 Jun 2020 17:23:29 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgX6o-0007JY-D0
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jun 2020 17:23:24 +0000
Received: by mail-pg1-x541.google.com with SMTP id p21so2163639pgm.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 03 Jun 2020 10:23:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=3ar3esfA/vt48SBclsM8WJOD1g7kG4QWgmN6yHU/oXc=;
 b=tNO9sJQ61o9UyfrhBb16ZezG7kOCbgIYdGMnrrumT9Vk/c2n/h/s+PdRpzJbFe8FYO
 yeudGjKQZ0Pt1ICeNO6VcYJ6HjF/icPSuk1BuGZ4bH81kkEfIl/ZxByLmoGxLyCKrRFm
 CJQOubP39NApW2ReGmIXspA3q3P+0DvsyPH4488eYYXQrgcihobQVr7F2xydvRMhgc3m
 Sm4C4d2gcq2qEYqHdEZN9NoysyOvYSqiL6EXV+myDnpzY74kA6JYPfBm3qsqVuyiZWwR
 6GfEnxHpL5HlA5n+IFWn4+eIHxMiZ0XstV7KGsJiw6xOdlWck+YVpE9IQLD+F9s1wVmC
 6GvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=3ar3esfA/vt48SBclsM8WJOD1g7kG4QWgmN6yHU/oXc=;
 b=gMeQGqAZSIX9kWl/hutXiMQcrF+Tjd6nZ+oN79dvt/wRuV/VgodAlYPZd63lvngMmx
 fZPK4863bc676rqkWc11zHfVIKK3+/MZa7QsVv/joFHJMm75fI4yIdn3ZEGp6e2Qa443
 IYxOCUf02GCzYRoVitsjqokVWdZYuyucrJBuzg5Rmi7h8+70heEZ7XUllcvvmUlvhr+A
 I0dQ0ooi0ujgZPK1j8I4/y+jje9Q/I6JSoDY83tHYAQNHDdx1daPuy9ZpNWAQy7igTAj
 ODUtR3ccYJtTz44Z4esGY7hR5+68Niu8lmG/v4C+8Z1WgY7wMX0qbIuuZWUXwS3g2Vhk
 dWLQ==
X-Gm-Message-State: AOAM532WG+k6YxVFAsNOA/1I872lTmqtbkUQ9j6Dr/L3wibvWZ5Abt5Z
 xLtHl0Vdve2my8H2M0uTdA7m4A==
X-Google-Smtp-Source: ABdhPJxy8Q5HTd5Gs4lSKz3+cPkTGrkqopHgfHUy1PStfA94XjybI5ykp5i4gqE6gRIaSm04U9EfmQ==
X-Received: by 2002:a65:52c3:: with SMTP id z3mr445454pgp.146.1591205001388;
 Wed, 03 Jun 2020 10:23:21 -0700 (PDT)
Received: from yoga ([2607:fb90:84f0:6dc6:b843:e3ff:fe62:cb58])
 by smtp.gmail.com with ESMTPSA id y187sm2358942pfb.46.2020.06.03.10.23.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 03 Jun 2020 10:23:20 -0700 (PDT)
Date: Wed, 3 Jun 2020 10:23:16 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [RFC 0/2] iommu: arm-smmu: Add support for early direct mappings
Message-ID: <20200603172316.GW11847@yoga>
References: <20191209150748.2471814-1-thierry.reding@gmail.com>
 <20200228025700.GA856087@builder>
 <20200514193249.GE279327@builder.lan>
 <CALAqxLVmomdKJCwh=e-PX+8-seDX0RXA81FzmG4sEyJmbXBh9A@mail.gmail.com>
 <20200527110343.GD11111@willie-the-truck>
 <20200602063210.GT11847@yoga>
 <20200603111159.GA8408@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200603111159.GA8408@willie-the-truck>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_102322_474163_A572F9A6 
X-CRM114-Status: GOOD (  36.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
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

On Wed 03 Jun 04:11 PDT 2020, Will Deacon wrote:

> On Mon, Jun 01, 2020 at 11:32:10PM -0700, Bjorn Andersson wrote:
> > On Wed 27 May 04:03 PDT 2020, Will Deacon wrote:
> > 
> > > Hi John, Bjorn,
> > > 
> > > On Tue, May 26, 2020 at 01:34:45PM -0700, John Stultz wrote:
> > > > On Thu, May 14, 2020 at 12:34 PM <bjorn.andersson@linaro.org> wrote:
> > > > >
> > > > > On Thu 27 Feb 18:57 PST 2020, Bjorn Andersson wrote:
> > > > >
> > > > > Rob, Will, we're reaching the point where upstream has enough
> > > > > functionality that this is becoming a critical issue for us.
> > > > >
> > > > > E.g. Lenovo Yoga C630 is lacking this and a single dts patch to boot
> > > > > mainline with display, GPU, WiFi and audio working and the story is
> > > > > similar on several devboards.
> > > > >
> > > > > As previously described, the only thing I want is the stream mapping
> > > > > related to the display controller in place, either with the CB with
> > > > > translation disabled or possibly with a way to specify the framebuffer
> > > > > region (although this turns out to mess things up in the display
> > > > > driver...)
> > > > >
> > > > > I did pick this up again recently and concluded that by omitting the
> > > > > streams for the USB controllers causes an instability issue seen on one
> > > > > of the controller to disappear. So I would prefer if we somehow could
> > > > > have a mechanism to only pick the display streams and the context
> > > > > allocation for this.
> > > > >
> > > > >
> > > > > Can you please share some pointers/insights/wishes for how we can
> > > > > conclude on this subject?
> > > > 
> > > > Ping? I just wanted to follow up on this discussion as this small
> > > > series is crucial for booting mainline on the Dragonboard 845c
> > > > devboard. It would be really valuable to be able to get some solution
> > > > upstream so we can test mainline w/o adding additional patches.
> > > 
> > > Sorry, it's been insanely busy recently and I haven't had a chance to think
> > > about this on top of everything else. We're also carrying a hack in Android
> > > for you :)
> > > 
> > 
> > Thanks for taking the time to get back to us on this!
> > 
> > > > The rest of the db845c series has been moving forward smoothly, but
> > > > this set seems to be very stuck with no visible progress since Dec.
> > > > 
> > > > Are there any pointers for what folks would prefer to see?
> > > 
> > > I've had a chat with Robin about this. Originally, I was hoping that
> > > people would all work together towards an idyllic future where firmware
> > > would be able to describe arbitrary pre-existing mappings for devices,
> > > irrespective of the IOMMU through which they master and Linux could
> > > inherit this configuration. However, that hasn't materialised (there was
> > > supposed to be an IORT update, but I don't know what happened to that)
> > > and, in actual fact, the problem that you have on db845 is /far/ more
> > > restricted than the general problem.
> > > 
> > > Could you please try hacking something along the following lines and see
> > > how you get on? You may need my for-joerg/arm-smmu/updates branch for
> > > all the pieces:
> > > 
> > >   1. Use the ->cfg_probe() callback to reserve the SMR/S2CRs you need
> > >      "pinning" and configure for bypass.
> > > 
> > >   2. Use the ->def_domain_type() callback to return IOMMU_DOMAIN_IDENTITY
> > >      for the display controller
> > > 
> > > I /think/ that's sufficient, but note that it differs from the current
> > > approach because we don't end up reserving a CB -- bypass is configured
> > > in the S2CR instead. Some invalidation might therefore be needed in
> > > ->cfg_probe() after unhooking the CB.
> > > 
> > > Thanks, and please yell if you run into problems with this approach.
> > > 
> > 
> > This sounded straight forward and cleaner, so I implemented it...
> > 
> > Unfortunately the hypervisor is playing tricks on me when writing to
> > S2CR registers:
> > - TRANS writes lands as requested
> > - BYPASS writes ends up in the register as requested, with type FAULT
> > - FAULT writes are ignored
> > 
> > In other words, the Qualcomm firmware prevents us from relying on
> > marking the relevant streams as BYPASS type.
> 
> Is this for all S2CR registers, or only the ones in use by the display
> controller? Is there any scope for stopping the hypervisor from doing this?
> 

This is for all S2CR registers. There's no chance to change this and get
it deployed on all the devices people care about.

As you know John need this for the RB3/db845c, where we might have a
chance to modify the firmware.

But I'm writing this on my Lenovo Yoga C630 and John and his colleagues
are working on various phones, such as Pixel 3. None of these boots
without this "workaround" and I don't expect that we can propagate a
firmware modification to any of them - and definitely not all of them.

> It makes it really difficult for the driver when the hardware is emulated
> in a way that doesn't match the architecture...
> 

Understood.

Regards,
Bjorn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
