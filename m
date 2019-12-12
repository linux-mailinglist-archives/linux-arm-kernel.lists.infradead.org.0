Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 107A211C532
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 06:13:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x9bVxehDdXLtzAxDcy4xdGGe1TtvlaIZbnerRxO9DW0=; b=nEJYIulivc5TUn
	lPi8t6skOqD3rxz2mflg2BbAmWJzM6G6CO/ztF5stVd8TsQrtvwUb5ulg3nCSGrp8zVe5ctqBaYhr
	jgYAUmaxNh270XZcqZQthMSiEIXWK3NMSo10uPrmReuvmg051wixe/7bMa2Z8BPi5rtJ/Ql3VNK98
	IzJ6W/B+CPh0fapDYKr7Y7d06XUUTIBOjNLdxW+lOR3yO+oVnhlxmHQbXrEHEXX75zkU7xlM+qdB+
	joORudGmF4ATq2HY0SCKqoetMGE/N7PiQIl9pn0GK+NONzoIT1DD0vIR02zR5MPZCX7UFJ8Qw/jsb
	eLwyeKLxAqGXWKpAdR5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifGnP-0003rL-U9; Thu, 12 Dec 2019 05:13:51 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifGnA-0003ps-CW; Thu, 12 Dec 2019 05:13:37 +0000
X-UUID: 0ed464e57a89488b9542a2571142e539-20191211
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=RH3N4/Myeg9e4TIYQEyUEpEdg2os6y04iBsq0O3Go64=; 
 b=iVaLq5UsLJKB3Skq7BL5LYgayC0XEf5/cixONEAMwGlp1bmim31z2y/B5gmtfKvCL8AIdoGI2PuVQ0L7tCzMqJJX4B3UQqbBgrRggAtRjYozkAUYrQRzz6ZJB+WPWQ0FoApwxy3VuYs+xE9EDBevlllZkj7pYzKUbuiiwdSSQa0=;
X-UUID: 0ed464e57a89488b9542a2571142e539-20191211
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <neal.liu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 741603322; Wed, 11 Dec 2019 21:13:33 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 11 Dec 2019 21:13:47 -0800
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 12 Dec 2019 13:13:14 +0800
Received: from [172.21.77.33] (172.21.77.33) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 12 Dec 2019 13:12:53 +0800
Message-ID: <1576127609.27185.8.camel@mtkswgap22>
Subject: Re: [PATCH v5 3/3] hwrng: add mtk-sec-rng driver
From: Neal Liu <neal.liu@mediatek.com>
To: Marc Zyngier <maz@kernel.org>
Date: Thu, 12 Dec 2019 13:13:29 +0800
In-Reply-To: <b7043e932211911a81383274e0cc983d@www.loen.fr>
References: <1574864578-467-1-git-send-email-neal.liu@mediatek.com>
 <1574864578-467-4-git-send-email-neal.liu@mediatek.com>
 <CADnJP=uhD=J2NrpSwiX8oCTd-u_q05=HhsAV-ErCsXNDwVS0rA@mail.gmail.com>
 <1575027046.24848.4.camel@mtkswgap22>
 <CAKv+Gu_um7eRYXbieW7ogDX5mmZaxP7JQBJM9CajK+6CsO5RgQ@mail.gmail.com>
 <20191202191146.79e6368c@why>
 <299029b0-0689-c2c4-4656-36ced31ed513@gmail.com>
 <b7043e932211911a81383274e0cc983d@www.loen.fr>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_211336_432109_FA54DA10 
X-CRM114-Status: GOOD (  23.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
 Herbert Xu <herbert@gondor.apana.org.au>, pawel.moll@arm.com,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Sean Wang <sean.wang@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 wsd_upstream <wsd_upstream@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, linux-crypto@vger.kernel.org,
 Matt Mackall <mpm@selenic.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 Crystal Guo =?UTF-8?Q?=28=E9=83=AD=E6=99=B6=29?= <crystal.guo@mediatek.com>,
 Will Deacon <will@kernel.org>, Lars Persson <lists@bofh.nu>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 2019-12-03 at 11:17 +0000, Marc Zyngier wrote:
> On 2019-12-03 04:16, Florian Fainelli wrote:
> > On 12/2/2019 11:11 AM, Marc Zyngier wrote:
> >> On Mon, 2 Dec 2019 16:12:09 +0000
> >> Ard Biesheuvel <ard.biesheuvel@linaro.org> wrote:
> >>
> >>> (adding some more arm64 folks)
> >>>
> >>> On Fri, 29 Nov 2019 at 11:30, Neal Liu <neal.liu@mediatek.com> 
> >>> wrote:
> >>>>
> >>>> On Fri, 2019-11-29 at 18:02 +0800, Lars Persson wrote:
> >>>>> Hi Neal,
> >>>>>
> >>>>> On Wed, Nov 27, 2019 at 3:23 PM Neal Liu <neal.liu@mediatek.com> 
> >>>>> wrote:
> >>>>>>
> >>>>>> For MediaTek SoCs on ARMv8 with TrustZone enabled, peripherals 
> >>>>>> like
> >>>>>> entropy sources is not accessible from normal world (linux) and
> >>>>>> rather accessible from secure world (ATF/TEE) only. This driver 
> >>>>>> aims
> >>>>>> to provide a generic interface to ATF rng service.
> >>>>>>
> >>>>>
> >>>>> I am working on several SoCs that also will need this kind of 
> >>>>> driver
> >>>>> to get entropy from Arm trusted firmware.
> >>>>> If you intend to make this a generic interface, please clean up 
> >>>>> the
> >>>>> references to MediaTek and give it a more generic name. For 
> >>>>> example
> >>>>> "Arm Trusted Firmware random number driver".
> >>>>>
> >>>>> It will also be helpful if the SMC call number is configurable.
> >>>>>
> >>>>> - Lars
> >>>>
> >>>> Yes, I'm trying to make this to a generic interface. I'll try to 
> >>>> make
> >>>> HW/platform related dependency to be configurable and let it more
> >>>> generic.
> >>>> Thanks for your suggestion.
> >>>>
> >>>
> >>> I don't think it makes sense for each arm64 platform to expose an
> >>> entropy source via SMC calls in a slightly different way, and model 
> >>> it
> >>> as a h/w driver. Instead, we should try to standardize this, and
> >>> perhaps expose it via the architectural helpers that already exist
> >>> (get_random_seed_long() and friends), so they get plugged into the
> >>> kernel random pool driver directly.
> >>
> >> Absolutely. I'd love to see a standard, ARM-specified, virtualizable
> >> RNG that is abstracted from the HW.
> >
> > Do you think we could use virtio-rng on top of a modified virtio-mmio
> > which instead of being backed by a hardware mailbox, could use 
> > hvc/smc
> > calls to signal writes to shared memory and get notifications via an
> > interrupt? This would also open up the doors to other virtio uses 
> > cases
> > beyond just RNG (e.g.: console, block devices?). If this is 
> > completely
> > stupid, then please disregard this comment.
> 
> The problem with a virtio device is that it is a ... device. What we 
> want
> is to be able to have access to an entropy source extremely early in 
> the
> kernel life, and devices tend to be available pretty late in the game.
> This means we cannot plug them in the architectural helpers that Ard
> mentions above.
> 
> What you're suggesting looks more like a new kind of virtio transport,
> which is interesting, in a remarkably twisted way... ;-)
> 
> Thanks,
> 
>          M.

In conclusion, is it helpful that hw_random has a generic interface to
add device randomness by talking to hwrng which is implemented in the
firmware or the hypervisor?
For most chip vendors, I think the answer is yes. We already prepared a
new patchset and need you agree with this idea.

Thanks

-Neal

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
