Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97A311EF1E6
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 09:19:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dNQSAs9ne10E4p5FYb+qGs5JFOBeLZNCI4HA/RRarpw=; b=gtQbmAqQuBG3m8
	b0pRQzGi6hB7G/f6iuKYiGGqe6yNrmaap4anEQ0QMdsTNtkZ7GxP6NViVieNdY9UjK0zIx2gASobj
	3lto71nNQD6EswaVuErlMW5Eo2PcYHOESl/SyO/JbbXLKYPL/sPMtSOH7K4OX6Bfrq2ysE9aAIDUC
	+U/yHgUswwiR6q9Mg/ZcDPUmAz54zym/RD0loFEzblFn0VlCbUFjmlipb2e8JD5mJlbLBjCyhd5+x
	Wk3oeD+qCiFhVxqw8nqHtgbFHL/UAqJOVzvhRftoGU85ui7onbqqPRfr35g4gZFm+m/sYIWohy0oT
	KugsVBbTHzoZb/42XNEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jh6dW-0006sN-Fw; Fri, 05 Jun 2020 07:19:30 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jh6dO-0006rd-AH; Fri, 05 Jun 2020 07:19:24 +0000
X-UUID: c083943d612b4a869cf09eeaab99ee6a-20200604
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=19vrRMWmwFaMyOZYFFMoP+8hHxPd3vzl6HzvP+kgneA=; 
 b=eRUgmimQlFZ6AZJ/3IWyZnpOJC5IMqXvTl2EfUa2/YYd6HQ/6evybwUs92sFfhgp/gDMhRl2v7lp57w9mbzvUadUdgfbsojAR5RaJswqBrDIUsS43c4z9gc5qPQfR2MC97TxK8e8qi3s6Y6dIIGuGU6z9m8d55AAdw+wcqQr8QU=;
X-UUID: c083943d612b4a869cf09eeaab99ee6a-20200604
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <neal.liu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1160223889; Thu, 04 Jun 2020 23:19:08 -0800
Received: from MTKMBS02N2.mediatek.inc (172.21.101.101) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 5 Jun 2020 00:19:10 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs02n2.mediatek.inc (172.21.101.101) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 5 Jun 2020 15:19:03 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Fri, 5 Jun 2020 15:19:02 +0800
Message-ID: <1591341543.19510.4.camel@mtkswgap22>
Subject: Re: Security Random Number Generator support
From: Neal Liu <neal.liu@mediatek.com>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>, Marc Zyngier
 <maz@kernel.org>
Date: Fri, 5 Jun 2020 15:19:03 +0800
In-Reply-To: <20200603093416.GY1551@shell.armlinux.org.uk>
References: <1591085678-22764-1-git-send-email-neal.liu@mediatek.com>
 <CAMj1kXHjAdk5=-uSh_=S9j5cz42zr3h6t+YYGy+obevuQDp0fg@mail.gmail.com>
 <85dfc0142d3879d50c0ba18bcc71e199@misterjones.org>
 <1591169342.4878.9.camel@mtkswgap22>
 <fcbe37f6f9cbcde24f9c28bc504f1f0e@kernel.org>
 <20200603093416.GY1551@shell.armlinux.org.uk>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 57A0643566E8C5377AB748C11626465C1385BB50C574232E8C6EF02F5FB61C3F2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_001922_356217_68C01A0F 
X-CRM114-Status: GOOD (  24.51  )
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED
 DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>,
 Julius Werner <jwerner@google.com>, Herbert Xu <herbert@gondor.apana.org.au>,
 Arnd
 Bergmann <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sean Wang <sean.wang@kernel.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 lkml <linux-kernel@vger.kernel.org>, wsd_upstream <wsd_upstream@mediatek.com>,
 Rob Herring <robh+dt@kernel.org>, Neal Liu <neal.liu@mediatek.com>,
 Linux Crypto Mailing List <linux-crypto@vger.kernel.org>,
 Matt Mackall <mpm@selenic.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 Crystal Guo =?UTF-8?Q?=28=E9=83=AD=E6=99=B6=29?= <Crystal.Guo@mediatek.com>,
 Ard Biesheuvel <ardb@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 2020-06-03 at 17:34 +0800, Russell King - ARM Linux admin wrote:
> On Wed, Jun 03, 2020 at 08:40:58AM +0100, Marc Zyngier wrote:
> > On 2020-06-03 08:29, Neal Liu wrote:
> > > On Tue, 2020-06-02 at 21:02 +0800, Marc Zyngier wrote:
> > > > On 2020-06-02 13:14, Ard Biesheuvel wrote:
> > > > > On Tue, 2 Jun 2020 at 10:15, Neal Liu <neal.liu@mediatek.com> wrote:
> > > > >>
> > > > >> These patch series introduce a security random number generator
> > > > >> which provides a generic interface to get hardware rnd from Secure
> > > > >> state. The Secure state can be Arm Trusted Firmware(ATF), Trusted
> > > > >> Execution Environment(TEE), or even EL2 hypervisor.
> > > > >>
> > > > >> Patch #1..2 adds sec-rng kernel driver for Trustzone based SoCs.
> > > > >> For security awareness SoCs on ARMv8 with TrustZone enabled,
> > > > >> peripherals like entropy sources is not accessible from normal world
> > > > >> (linux) and rather accessible from secure world (HYP/ATF/TEE) only.
> > > > >> This driver aims to provide a generic interface to Arm Trusted
> > > > >> Firmware or Hypervisor rng service.
> > > > >>
> > > > >>
> > > > >> changes since v1:
> > > > >> - rename mt67xx-rng to mtk-sec-rng since all MediaTek ARMv8 SoCs can
> > > > >> reuse
> > > > >>   this driver.
> > > > >>   - refine coding style and unnecessary check.
> > > > >>
> > > > >>   changes since v2:
> > > > >>   - remove unused comments.
> > > > >>   - remove redundant variable.
> > > > >>
> > > > >>   changes since v3:
> > > > >>   - add dt-bindings for MediaTek rng with TrustZone enabled.
> > > > >>   - revise HWRNG SMC call fid.
> > > > >>
> > > > >>   changes since v4:
> > > > >>   - move bindings to the arm/firmware directory.
> > > > >>   - revise driver init flow to check more property.
> > > > >>
> > > > >>   changes since v5:
> > > > >>   - refactor to more generic security rng driver which
> > > > >>     is not platform specific.
> > > > >>
> > > > >> *** BLURB HERE ***
> > > > >>
> > > > >> Neal Liu (2):
> > > > >>   dt-bindings: rng: add bindings for sec-rng
> > > > >>   hwrng: add sec-rng driver
> > > > >>
> > > > >
> > > > > There is no reason to model a SMC call as a driver, and represent it
> > > > > via a DT node like this.
> > > > 
> > > > +1.
> > > > 
> > > > > It would be much better if this SMC interface is made truly generic,
> > > > > and wired into the arch_get_random() interface, which can be used much
> > > > > earlier.
> > > > 
> > > > Wasn't there a plan to standardize a SMC call to rule them all?
> > > > 
> > > >          M.
> > > 
> > > Could you give us a hint how to make this SMC interface more generic in
> > > addition to my approach?
> > > There is no (easy) way to get platform-independent SMC function ID,
> > > which is why we encode it into device tree, and provide a generic
> > > driver. In this way, different devices can be mapped and then get
> > > different function ID internally.
> > 
> > The idea is simply to have *one* single ID that caters for all
> > implementations, just like we did for PSCI at the time. This
> > requires ARM to edict a standard, which is what I was referring
> > to above.
> 
> This sounds all too familiar.
> 
> This kind of thing is something that ARM have seems to shy away from
> doing - it's a point I brought up many years ago when the whole
> trustzone thing first appeared with its SMC call.  Those around the
> conference table were not interested - ARM seemed to prefer every
> vendor to do off and do their own thing with the SMC interface.

Does that mean it make sense to model a sec-rng driver, and get each
vendor's SMC function id by DT node?

> 
> Then OMAP came along with its SMC interfaces, and so did the pain of
> not having a standardised way to configure the L2C when Linux was
> running in the non-secure world, resulting in stuff like l2c_configure
> etc, where each and every implementation has to supply a function to
> call its platform specific SMC interfaces to configure a piece of
> hardware common across many different platforms.
> 
> ARM have seemed reluctant to standardise on stuff like this, so
> unless someone pushes hard for it from inside ARM, I doubt it will
> ever happen.
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
