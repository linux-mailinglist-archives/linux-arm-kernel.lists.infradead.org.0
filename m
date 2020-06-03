Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B201E1ECAF8
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 10:04:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oHKdJjzQKq8s2+uHlQo21sGQ45O0U8l8rQMJ+E3cYHc=; b=ae29uR4TQknGr0
	oGzPOcoAMgOZvKS3pzvcBgSWX9K+Ci7XpOBi1nWkeRO4jvpJl2rCb8ejOG7tiVzUyoiSWJiVnar/x
	SbK7mXpRvqfK+awDiiC4hX0q6Rk0YhtXnpxkThZTaLDaz9BZFcwDsE9I0nEnWXkCV3aLSSeUsO3WW
	n8Qg77ZcXrKFVqfEm1Imt171SEcS0t4SiIsNjkFZQyMzkKa+sZZmXs0XVbjUKKmRdssyO5WBMfEa/
	x9LaqEZFOQPlCShBz98BYxWTJ6Isidqg/aOX+VXQzLtf9pVstWX0/uqtQsB0vBZlGJxzD+F+qYEE2
	uvTKJgi3rP0LoQrsmMQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgOOA-0000Kp-71; Wed, 03 Jun 2020 08:04:42 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgONz-0000JO-BD; Wed, 03 Jun 2020 08:04:33 +0000
X-UUID: 0b9ac466551f46e1bf1b3aeee38c3cd1-20200603
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=07Kpr56aB3PFy6IWckMxSvdLdNklg9y3xgmgR9sXxKc=; 
 b=rHr5kn9ofuNPAE/oxBhtz2Bn5mwE11DrgVafexCGqE0he1Y5+7YUnEK9U6h+MV4DCUeksNhAbGVLc5bWCzgNZWuRevU81yG70v6gdmtfUfIZI6oxZvFvmG1WQgKsZSQ/YW/9Yp1NmJKb+OQWUUuX9kBCSb4hIC6AzPhFIdjX/f4=;
X-UUID: 0b9ac466551f46e1bf1b3aeee38c3cd1-20200603
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <neal.liu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 306737306; Wed, 03 Jun 2020 00:04:22 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Wed, 3 Jun 2020 00:54:24 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Wed, 3 Jun 2020 15:54:16 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Wed, 3 Jun 2020 15:54:16 +0800
Message-ID: <1591170857.19414.5.camel@mtkswgap22>
Subject: Re: Security Random Number Generator support
From: Neal Liu <neal.liu@mediatek.com>
To: Marc Zyngier <maz@kernel.org>
Date: Wed, 3 Jun 2020 15:54:17 +0800
In-Reply-To: <fcbe37f6f9cbcde24f9c28bc504f1f0e@kernel.org>
References: <1591085678-22764-1-git-send-email-neal.liu@mediatek.com>
 <CAMj1kXHjAdk5=-uSh_=S9j5cz42zr3h6t+YYGy+obevuQDp0fg@mail.gmail.com>
 <85dfc0142d3879d50c0ba18bcc71e199@misterjones.org>
 <1591169342.4878.9.camel@mtkswgap22>
 <fcbe37f6f9cbcde24f9c28bc504f1f0e@kernel.org>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_010431_393966_D2E8787B 
X-CRM114-Status: GOOD (  21.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE
 TREE BINDINGS" <devicetree@vger.kernel.org>, Julius Werner <jwerner@google.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, Arnd Bergmann <arnd@arndb.de>, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>, Sean Wang <sean.wang@kernel.org>,
 lkml <linux-kernel@vger.kernel.org>, wsd_upstream <wsd_upstream@mediatek.com>,
 Crystal Guo =?UTF-8?Q?=28=E9=83=AD=E6=99=B6=29?= <Crystal.Guo@mediatek.com>,
 Rob Herring <robh+dt@kernel.org>, Neal Liu <neal.liu@mediatek.com>,
 Linux Crypto Mailing List <linux-crypto@vger.kernel.org>,
 Matt Mackall <mpm@selenic.com>, Matthias
 Brugger <matthias.bgg@gmail.com>, linux-mediatek@lists.infradead.org, Ard
 Biesheuvel <ardb@kernel.org>, Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 2020-06-03 at 08:40 +0100, Marc Zyngier wrote:
> On 2020-06-03 08:29, Neal Liu wrote:
> > On Tue, 2020-06-02 at 21:02 +0800, Marc Zyngier wrote:
> >> On 2020-06-02 13:14, Ard Biesheuvel wrote:
> >> > On Tue, 2 Jun 2020 at 10:15, Neal Liu <neal.liu@mediatek.com> wrote:
> >> >>
> >> >> These patch series introduce a security random number generator
> >> >> which provides a generic interface to get hardware rnd from Secure
> >> >> state. The Secure state can be Arm Trusted Firmware(ATF), Trusted
> >> >> Execution Environment(TEE), or even EL2 hypervisor.
> >> >>
> >> >> Patch #1..2 adds sec-rng kernel driver for Trustzone based SoCs.
> >> >> For security awareness SoCs on ARMv8 with TrustZone enabled,
> >> >> peripherals like entropy sources is not accessible from normal world
> >> >> (linux) and rather accessible from secure world (HYP/ATF/TEE) only.
> >> >> This driver aims to provide a generic interface to Arm Trusted
> >> >> Firmware or Hypervisor rng service.
> >> >>
> >> >>
> >> >> changes since v1:
> >> >> - rename mt67xx-rng to mtk-sec-rng since all MediaTek ARMv8 SoCs can
> >> >> reuse
> >> >>   this driver.
> >> >>   - refine coding style and unnecessary check.
> >> >>
> >> >>   changes since v2:
> >> >>   - remove unused comments.
> >> >>   - remove redundant variable.
> >> >>
> >> >>   changes since v3:
> >> >>   - add dt-bindings for MediaTek rng with TrustZone enabled.
> >> >>   - revise HWRNG SMC call fid.
> >> >>
> >> >>   changes since v4:
> >> >>   - move bindings to the arm/firmware directory.
> >> >>   - revise driver init flow to check more property.
> >> >>
> >> >>   changes since v5:
> >> >>   - refactor to more generic security rng driver which
> >> >>     is not platform specific.
> >> >>
> >> >> *** BLURB HERE ***
> >> >>
> >> >> Neal Liu (2):
> >> >>   dt-bindings: rng: add bindings for sec-rng
> >> >>   hwrng: add sec-rng driver
> >> >>
> >> >
> >> > There is no reason to model a SMC call as a driver, and represent it
> >> > via a DT node like this.
> >> 
> >> +1.
> >> 
> >> > It would be much better if this SMC interface is made truly generic,
> >> > and wired into the arch_get_random() interface, which can be used much
> >> > earlier.
> >> 
> >> Wasn't there a plan to standardize a SMC call to rule them all?
> >> 
> >>          M.
> > 
> > Could you give us a hint how to make this SMC interface more generic in
> > addition to my approach?
> > There is no (easy) way to get platform-independent SMC function ID,
> > which is why we encode it into device tree, and provide a generic
> > driver. In this way, different devices can be mapped and then get
> > different function ID internally.
> 
> The idea is simply to have *one* single ID that caters for all
> implementations, just like we did for PSCI at the time. This
> requires ARM to edict a standard, which is what I was referring
> to above.
> 
> There is zero benefit in having a platform-dependent ID. It just
> pointlessly increases complexity, and means we cannot use the RNG
> before the firmware tables are available (yes, we need it that
> early).
> 
>          M.

Do you know which ARM expert could edict this standard?
Or is there any chance that we can make one? And be reviewed by
maintainers?


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
