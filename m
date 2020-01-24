Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85004147894
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Jan 2020 07:32:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R+msZzwvweRHp86r9FO3SPBPV4011lLpOkOi/w3U5Jw=; b=b2z0rFSw1PhSAM
	RNl6ccJI0eaGphQGGhMulvMwGVGnTsx6hmLWz9S4OCoUlmxDkXhv1saSgtQIC2Uo92LO4t5vSHm6y
	NDs12gxV9V92KYtg3U4X+50TTX5FaQmP5QZXIZsznwgo0KJHjVw4cBJ1psNG7D1NcFOIJNbtonjY0
	Q4pGlu62oi82L0OqPcA2PoQXlqgDTdDo/+LG79SZVxSXAOMWjGEL79B4rJOA5av4U2NiuBY1Vxhj7
	GrYXisztySvxjdkT794l8hg7nt1ZigmMI+LTHKU0Xk+p4UgGo+bf5jzIWV68+LLn/BbVx5FTWmbKX
	PTEediB0Cg1MhgqY0zLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iusWB-0005gE-6L; Fri, 24 Jan 2020 06:32:35 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iusW0-0005fS-QE
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Jan 2020 06:32:26 +0000
Received: by mail-qt1-x843.google.com with SMTP id e12so753423qto.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 23 Jan 2020 22:32:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=YSOjP9t3Qp0ku6Q8pEO918zSn1Ag2RAEJZlCm/7bInY=;
 b=leGy9UEYzaFConSl04EYhM42RL+3biH/D+bA8TOvdqfEaQTb96WtLj3lUwwEC3JmWM
 tlRdJSke1+218ugsYyGxHxcA46pO23GUHrNyOYocpRpI41btP5gqNyNcNLC/jeMMGwkO
 NANwPhkaJoGDSlGBfyAm2uKmw5l2mvMMFKjK+iFXkqxYR06ILnXuYQPploTOkumVxm+3
 a91ELQC2OaR8aT798cQpRaRNBYnMKrPNM3RZbJPNQgfiw2YrQT+kW2WQFoPvf4lDytT7
 DG7+0uPUtltHL8aOba4g9WaNenSWLtVTfMylpAGLOnYWBZPLpUQq3tisqfhxwAqwQg32
 jImQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=YSOjP9t3Qp0ku6Q8pEO918zSn1Ag2RAEJZlCm/7bInY=;
 b=qun2OhN7S18NsbHjqn/fFoIVoP9lJBaGVwaeSPa9PT/A0yrcRsRtxVyZPKgso8u8VZ
 Crsr3SNdRln3HjQF4up+JpiUeZ16F1adCNK0xpUliPLanorUB3g9qRNbmGPSc0H5N7nU
 qzlG2aOVjyOKvi+6qKub6bSIKK8pI7BcztM3GckT3atvPgS5EYMFtPvJJxGsDXYsPedT
 Zzym42HCI7AfrebI2AfBUJfpmaJl7xHlxTPAnqEvDHYPdRjpxq8waMFVxVGHmgGSlCmT
 QTc8hg7bWcc7IxxYOJOWdmzfU7deyuJdx8v24TtbN4QRUPWI2g5V7pyhj3jF/y1O69SG
 hhwA==
X-Gm-Message-State: APjAAAXdR3nLALxA8yfBbXJRRTmCQQlPGAxO3r6qIcBsdJP/vhexYR1F
 8mEGqsvmVmu8FrYRHmbBTig=
X-Google-Smtp-Source: APXvYqyxcO1TUjAkBmEG29KiWggF+dRPMNmxgEld562L3Yy/Dxv5iJ+9K+9XBezDRCLSYNckO8FeRA==
X-Received: by 2002:ac8:5555:: with SMTP id o21mr796978qtr.350.1579847541113; 
 Thu, 23 Jan 2020 22:32:21 -0800 (PST)
Received: from auth2-smtp.messagingengine.com (auth2-smtp.messagingengine.com.
 [66.111.4.228])
 by smtp.gmail.com with ESMTPSA id z6sm2417896qkz.101.2020.01.23.22.32.19
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 23 Jan 2020 22:32:20 -0800 (PST)
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
 by mailauth.nyi.internal (Postfix) with ESMTP id 7C2FC21C28;
 Fri, 24 Jan 2020 01:32:18 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute6.internal (MEProxy); Fri, 24 Jan 2020 01:32:18 -0500
X-ME-Sender: <xms:cY8qXuJ6MmoFxGQbXAkqv2cGIbThPy8yy0e0dg_Bf1qvWxjVUiIX3g>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrvdefgdegfecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesthdtredttddtvdenucfhrhhomhepuehoqhhunhcu
 hfgvnhhguceosghoqhhunhdrfhgvnhhgsehgmhgrihhlrdgtohhmqeenucffohhmrghinh
 epkhgvrhhnvghlrdhorhhgpdhgihhthhhusgdrtghomhdpihhnfhhrrgguvggrugdrohhr
 ghenucfkphephedvrdduheehrdduuddurdejudenucevlhhushhtvghrufhiiigvpedtne
 curfgrrhgrmhepmhgrihhlfhhrohhmpegsohhquhhnodhmvghsmhhtphgruhhthhhpvghr
 shhonhgrlhhithihqdeiledvgeehtdeigedqudejjeekheehhedvqdgsohhquhhnrdhfvg
 hngheppehgmhgrihhlrdgtohhmsehfihigmhgvrdhnrghmvg
X-ME-Proxy: <xmx:cY8qXgJ8JkuuIgtY9MuYYKNswDWHFVOKcFwAWns9buJuaB1ckiSTXQ>
 <xmx:cY8qXlUn48io2mb2PVJsfW9bxgsbtyfocObcKIGhYJsNKZBQRhi-Rg>
 <xmx:cY8qXhkbInfA2b0zRwbYtLa9YS2tz78hxn7ZZ2QfTYDQ3KYty0HhqA>
 <xmx:co8qXpTaafBPT_QxTLx7DvvOo53z1AhGiRqFr3tNpAO8aSOdtAraHz_CBNs>
Received: from localhost (unknown [52.155.111.71])
 by mail.messagingengine.com (Postfix) with ESMTPA id D70F6328005A;
 Fri, 24 Jan 2020 01:32:16 -0500 (EST)
Date: Fri, 24 Jan 2020 14:32:15 +0800
From: Boqun Feng <boqun.feng@gmail.com>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Subject: Re: [RFC 0/6] vDSO support for Hyper-V guest on ARM64
Message-ID: <20200124063215.GA93938@debian-boqun.qqnc3lrjykvubdpftowmye0fmh.lx.internal.cloudapp.net>
References: <20191216001922.23008-1-boqun.feng@gmail.com>
 <ef6cb7ba-b448-cfa5-abbb-1d99d1396ce5@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ef6cb7ba-b448-cfa5-abbb-1d99d1396ce5@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_223224_851895_7A19F5D0 
X-CRM114-Status: GOOD (  23.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [boqun.feng[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Sasha Levin <sashal@kernel.org>, linux-hyperv@vger.kernel.org,
 Stefano Stabellini <sstabellini@kernel.org>,
 Stephen Hemminger <sthemmin@microsoft.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Haiyang Zhang <haiyangz@microsoft.com>, linux-kernel@vger.kernel.org,
 Michael Kelley <mikelley@microsoft.com>, xen-devel@lists.xenproject.org,
 Thomas Gleixner <tglx@linutronix.de>, "K. Y. Srinivasan" <kys@microsoft.com>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Vincenzo,

On Thu, Jan 23, 2020 at 10:48:07AM +0000, Vincenzo Frascino wrote:
> Hi Boqun Feng,
> 
> sorry for the late reply.
> 

That's OK, thanks for your review ;-)

> On 16/12/2019 00:19, Boqun Feng wrote:
> > Hi,
> > 
> > This is the RFC patchset for vDSO support in ARM64 Hyper-V guest. To
> > test it, Michael's ARM64 support patchset:
> > 
> > 	https://lore.kernel.org/linux-arm-kernel/1570129355-16005-1-git-send-email-mikelley@microsoft.com/
> > 
> > is needed.
> > 
> > Similar as x86, Hyper-V on ARM64 use a TSC page for guests to read
> > the virtualized hardware timer, this TSC page is read-only for the
> > guests, so could be used for vDSO data page. And the vDSO (userspace)
> > code could use the same code for timer reading as kernel, since
> > they read the same TSC page.
> > 
> 
> I had a look to your patches and overall, I could not understand why we can't
> use the arch_timer to do the same things you are doing with the one you
> introduced in this series. What confuses me is that KVM works just fine with the
> arch_timer which was designed with virtualization in mind. Why do we need
> another one? Could you please explain?
> 

Please note that the guest VM on Hyper-V for ARM64 doesn't use
arch_timer as the clocksource. See:

	https://lore.kernel.org/linux-arm-kernel/1570129355-16005-7-git-send-email-mikelley@microsoft.com/

,  ACPI_SIG_GTDT is used for setting up Hyper-V synthetic clocksource
and other initialization work.

So just to be clear, your suggestion is

1) Hyper-V guest on ARM64 should use arch_timer as clocksource and vDSO
will just work.

or

2) Even though arch_timer is not used as the clocksource, we can still
use it for vDSO.

?

Regards,
Boqun

> > This patchset therefore extends ARM64's __vsdo_init() to allow multiple
> > data pages and introduces the vclock_mode concept similar to x86 to
> > allow different platforms (bare-metal, Hyper-V, etc.) to switch to
> > different __arch_get_hw_counter() implementations. The rest of this
> > patchset does the necessary setup for Hyper-V guests: mapping tsc page,
> > enabling userspace to read cntvct, etc. to enable vDSO.
> > 
> > This patchset consists of 6 patches:
> > 
> > patch #1 allows hv_get_raw_timer() definition to be overridden for
> > userspace and kernel to share the same hv_read_tsc_page() definition.
> > 
> > patch #2 extends ARM64 to support multiple vDSO data pages.
> > 
> > patch #3 introduces vclock_mode similiar to x86 to allow different
> > __arch_get_hw_counter() implementations for different clocksources.
> > 
> > patch #4 maps Hyper-V TSC page into vDSO data page.
> > 
> > patch #5 allows userspace to read cntvct, so that userspace can
> > efficiently read the clocksource.
> > 
> > patch #6 enables the vDSO for ARM64 Hyper-V guest.
> > 
> > The whole patchset is based on v5.5-rc1 plus Michael's ARM64 support
> > patchset, and I've done a few tests with:
> > 
> > 	https://github.com/nlynch-mentor/vdsotest
> > 
> > Comments and suggestions are welcome!
> > 
> > Regards,
> > Boqun
> > 
> > _______________________________________________
> > linux-arm-kernel mailing list
> > linux-arm-kernel@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> > 
> 
> -- 
> Regards,
> Vincenzo



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
