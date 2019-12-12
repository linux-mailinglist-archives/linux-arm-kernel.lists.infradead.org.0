Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35F2311CF23
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 15:04:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5USgwrHRofS5L01kR/OwrPj2lA392YMgzrzzfEhM0ks=; b=h3nMlTQ6PXKBvL
	YrMbhizVZSHjYyuvf2DPsMpISuOTAubonYFkAQimAAkryTMKy/64hjX4VpgJA++aMXBPz7smmiAXx
	FuH8arTEPF7kU52+cKa32XR7eFU9EnuKvLh/gPyPcMks4xyDP0SJ4iIEqEjQH6YYQxOxeDkK5ZDcE
	uuKGiCmvqIcNMWAih0QuiqnAHznFmdMPOA+fG4ycEnDO7yCnnQtDzh9a+R+jUhXjwQDI6i2NUMUD2
	Z0sq+lMfRYzRToefm4kUddJMFOgC3PuLBgN9bop+1AuBBRm//Fr/FT1dQKBcef/sTT3Ib42KRcXbt
	PmsxFZwY2wzFX0p2e2GA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifP4h-0000G8-Nk; Thu, 12 Dec 2019 14:04:15 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifP4X-0000Eh-C4
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Dec 2019 14:04:07 +0000
Received: by mail-wr1-x441.google.com with SMTP id j42so2820897wrj.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 12 Dec 2019 06:03:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=YadRPUKRq+F+OfrkUFp7sfL3GGaSi5RtCx1mrcXaajw=;
 b=XiZKyVtF24JXNcMYL8Xwe6LFXRC5rGLAOXIUebbHSaeHrG07WKUNr8RJwQ823LolID
 XnFR2jJK+OvfWeKwOzAJUnPI+UDjOIOAgaUxlmeNOgEYTjulFbraIKmKbxd3ld4BJepg
 G8B4irn4mFBPM4Zu1GzyaWBuarsTxkULoMSdz25SJyyVexc+thf8CLbZtfVE9FbRTaOh
 07zSU07GZuRh33XLh0EaBWoqfCLw6SwC7WrBpEUnaHaZ6x4A62aUKnANPqKliM4Y0vez
 uxK2fzumLw0PuinGG6OouRcXDf86rYM3J9sV+PomXgyY3qXZ+pLRC39ja+f/oDQUrtUn
 HCsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=YadRPUKRq+F+OfrkUFp7sfL3GGaSi5RtCx1mrcXaajw=;
 b=Dht592iCKsuuq7acBIQlsm6mxTWE4Jkj7IP71SPU28lVyNy8R0vNJmEIDxUG97isjy
 1N0dOLLV7pCMFycLUdmRsiOiCTD44VsUmOXJ3Nccei7BVhxsmBe0cZzyAAjffdeamHzc
 WuyHoMvWhe/HfXfI9nXr7AL+Z1UckvkpCVzxTpimCBC/zUFPOUaGMr4scIvcqWy+4egY
 FuQZik3zA99BCl6q6SVc/tiVtpecIr/WzsNBfk7Qg91bp9qdXWnFGm2gB+XhxRzrKeg1
 SoTyXPoW6/7Xjj89DnFMrjZYT25ah03TK2LxCsNl74Ek+447Ua+3U8R4FvgyX5StztKo
 jp3A==
X-Gm-Message-State: APjAAAWCJQG2XBxzZW4bPK1pgcTq/j9hFhUTIRONL06G0cAenjKzC1D7
 Ge1OszvsjUXgaWkdyoMsnBt6jLp7+En5Nvj+v+U3kQ==
X-Google-Smtp-Source: APXvYqyP/fsTNrCsT+L04hV7mtxjhyRS7l6whdWu7iB4pHI+wGkJkmQ7EMGzQOTq1HesEWkup/WBxhYzqcz5ap1GBSE=
X-Received: by 2002:a5d:6652:: with SMTP id f18mr6737640wrw.246.1576159437310; 
 Thu, 12 Dec 2019 06:03:57 -0800 (PST)
MIME-Version: 1.0
References: <1574864578-467-1-git-send-email-neal.liu@mediatek.com>
 <1574864578-467-4-git-send-email-neal.liu@mediatek.com>
 <CADnJP=uhD=J2NrpSwiX8oCTd-u_q05=HhsAV-ErCsXNDwVS0rA@mail.gmail.com>
 <1575027046.24848.4.camel@mtkswgap22>
 <CAKv+Gu_um7eRYXbieW7ogDX5mmZaxP7JQBJM9CajK+6CsO5RgQ@mail.gmail.com>
 <20191202191146.79e6368c@why> <299029b0-0689-c2c4-4656-36ced31ed513@gmail.com>
 <b7043e932211911a81383274e0cc983d@www.loen.fr>
 <1576127609.27185.8.camel@mtkswgap22>
 <a5982b8ed10440eef14c04df6e6060b6@www.loen.fr>
In-Reply-To: <a5982b8ed10440eef14c04df6e6060b6@www.loen.fr>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Thu, 12 Dec 2019 15:03:42 +0100
Message-ID: <CAKv+Gu9YhkzpKbrxa=xDOkS6=kZSMaidor_4DqGY6f1M0tO7kQ@mail.gmail.com>
Subject: Re: [PATCH v5 3/3] hwrng: add mtk-sec-rng driver
To: Marc Zyngier <maz@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_060405_413905_E7600573 
X-CRM114-Status: GOOD (  29.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, DTML <devicetree@vger.kernel.org>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, Pawel Moll <pawel.moll@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Sean Wang <sean.wang@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 wsd_upstream <wsd_upstream@mediatek.com>,
 =?UTF-8?B?Q3J5c3RhbCBHdW8gKOmDreaZtik=?= <crystal.guo@mediatek.com>,
 Rob Herring <robh+dt@kernel.org>, Neal Liu <neal.liu@mediatek.com>,
 "open list:HARDWARE RANDOM NUMBER GENERATOR CORE"
 <linux-crypto@vger.kernel.org>, Matt Mackall <mpm@selenic.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Will Deacon <will@kernel.org>, Lars Persson <lists@bofh.nu>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 12 Dec 2019 at 12:45, Marc Zyngier <maz@kernel.org> wrote:
>
> On 2019-12-12 05:13, Neal Liu wrote:
> > On Tue, 2019-12-03 at 11:17 +0000, Marc Zyngier wrote:
> >> On 2019-12-03 04:16, Florian Fainelli wrote:
> >> > On 12/2/2019 11:11 AM, Marc Zyngier wrote:
> >> >> On Mon, 2 Dec 2019 16:12:09 +0000
> >> >> Ard Biesheuvel <ard.biesheuvel@linaro.org> wrote:
> >> >>
> >> >>> (adding some more arm64 folks)
> >> >>>
> >> >>> On Fri, 29 Nov 2019 at 11:30, Neal Liu <neal.liu@mediatek.com>
> >> >>> wrote:
> >> >>>>
> >> >>>> On Fri, 2019-11-29 at 18:02 +0800, Lars Persson wrote:
> >> >>>>> Hi Neal,
> >> >>>>>
> >> >>>>> On Wed, Nov 27, 2019 at 3:23 PM Neal Liu
> >> <neal.liu@mediatek.com>
> >> >>>>> wrote:
> >> >>>>>>
> >> >>>>>> For MediaTek SoCs on ARMv8 with TrustZone enabled,
> >> peripherals
> >> >>>>>> like
> >> >>>>>> entropy sources is not accessible from normal world (linux)
> >> and
> >> >>>>>> rather accessible from secure world (ATF/TEE) only. This
> >> driver
> >> >>>>>> aims
> >> >>>>>> to provide a generic interface to ATF rng service.
> >> >>>>>>
> >> >>>>>
> >> >>>>> I am working on several SoCs that also will need this kind of
> >> >>>>> driver
> >> >>>>> to get entropy from Arm trusted firmware.
> >> >>>>> If you intend to make this a generic interface, please clean
> >> up
> >> >>>>> the
> >> >>>>> references to MediaTek and give it a more generic name. For
> >> >>>>> example
> >> >>>>> "Arm Trusted Firmware random number driver".
> >> >>>>>
> >> >>>>> It will also be helpful if the SMC call number is
> >> configurable.
> >> >>>>>
> >> >>>>> - Lars
> >> >>>>
> >> >>>> Yes, I'm trying to make this to a generic interface. I'll try
> >> to
> >> >>>> make
> >> >>>> HW/platform related dependency to be configurable and let it
> >> more
> >> >>>> generic.
> >> >>>> Thanks for your suggestion.
> >> >>>>
> >> >>>
> >> >>> I don't think it makes sense for each arm64 platform to expose
> >> an
> >> >>> entropy source via SMC calls in a slightly different way, and
> >> model
> >> >>> it
> >> >>> as a h/w driver. Instead, we should try to standardize this, and
> >> >>> perhaps expose it via the architectural helpers that already
> >> exist
> >> >>> (get_random_seed_long() and friends), so they get plugged into
> >> the
> >> >>> kernel random pool driver directly.
> >> >>
> >> >> Absolutely. I'd love to see a standard, ARM-specified,
> >> virtualizable
> >> >> RNG that is abstracted from the HW.
> >> >
> >> > Do you think we could use virtio-rng on top of a modified
> >> virtio-mmio
> >> > which instead of being backed by a hardware mailbox, could use
> >> > hvc/smc
> >> > calls to signal writes to shared memory and get notifications via
> >> an
> >> > interrupt? This would also open up the doors to other virtio uses
> >> > cases
> >> > beyond just RNG (e.g.: console, block devices?). If this is
> >> > completely
> >> > stupid, then please disregard this comment.
> >>
> >> The problem with a virtio device is that it is a ... device. What we
> >> want
> >> is to be able to have access to an entropy source extremely early in
> >> the
> >> kernel life, and devices tend to be available pretty late in the
> >> game.
> >> This means we cannot plug them in the architectural helpers that Ard
> >> mentions above.
> >>
> >> What you're suggesting looks more like a new kind of virtio
> >> transport,
> >> which is interesting, in a remarkably twisted way... ;-)
> >>
> >> Thanks,
> >>
> >>          M.
> >
> > In conclusion, is it helpful that hw_random has a generic interface
> > to
> > add device randomness by talking to hwrng which is implemented in the
> > firmware or the hypervisor?
> > For most chip vendors, I think the answer is yes. We already prepared
> > a
> > new patchset and need you agree with this idea.
>
> As long as it is a *unified* interface, I'm all for that.
>


Yeah, but I'm not sure it makes sense to model it as a device like
this. It would be nice if we could tie this into the ARM SMCCC
discovery, and use the SMC calls to back arch_get_random_seed_long()
[provided we fix the braindead way in which that is being used today
in the interrupt code]

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
