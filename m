Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60E1C1ECA8C
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 09:29:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/mReve4s27azeQ5Gg6gKh7kcRy5y/bnTmuRxVHjnGdM=; b=BPRkewMpI5y39k
	JQMdok4u29VEWPOlScILc4MrxsVa4+vV21Ikepf8o710s9WwyLkZ6tmygtaJZZafirgYGzhpSSWpC
	5nax2pZhqk2+RnI+K4j0xMHBE3O65xg5hJD6EniDg8tPO49N0/FquA3BMySpVQtzeEwH2qObuTJoK
	u3nX8ce/SXwRlBSN5DNw6quuIdm/A+mOOoMAKTsS/ciheA2vETojsBz3QJmQvfE9ssFUDxypYHpMq
	zegiFUPwfwKTnAGRR9fErq359MM6pn5+6dkLMOdffXDeFnOPsJiiHcTz48+17PFdvTJ2n2c9dHDUt
	Yf/xoMLg/VxiLPmZmE5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgNpy-0004IU-M7; Wed, 03 Jun 2020 07:29:22 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgNpr-0004HL-6t; Wed, 03 Jun 2020 07:29:16 +0000
X-UUID: 68f36bbf5ee94faa878b71255c900f2d-20200602
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=uxJ/OyZIhvn8jO7euhdxxdoo6BqLiSJM0zglxbBqOos=; 
 b=CEt6aRgES19HkCxvzzojs8LYRDsf4UJVp+a2UCrOlilmbI/BJ9L+e5CoG6mCq5ixCZDHQIaqUIueDXroGlcGygPjR0x6ZgRF82VMqtmxQ42zwJrUvXSFxhlIQAOOERT8R6KrbMeGLoZRbjuzOsvDoZDjUGLoVhJABTso3DwAuZY=;
X-UUID: 68f36bbf5ee94faa878b71255c900f2d-20200602
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <neal.liu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 521984248; Tue, 02 Jun 2020 23:29:00 -0800
Received: from MTKMBS02N1.mediatek.inc (172.21.101.77) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Wed, 3 Jun 2020 00:29:08 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs02n1.mediatek.inc (172.21.101.77) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Wed, 3 Jun 2020 15:29:02 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Wed, 3 Jun 2020 15:29:01 +0800
Message-ID: <1591169342.4878.9.camel@mtkswgap22>
Subject: Re: Security Random Number Generator support
From: Neal Liu <neal.liu@mediatek.com>
To: Marc Zyngier <maz@misterjones.org>, Julius Werner <jwerner@google.com>,
 Ard Biesheuvel <ardb@kernel.org>
Date: Wed, 3 Jun 2020 15:29:02 +0800
In-Reply-To: <85dfc0142d3879d50c0ba18bcc71e199@misterjones.org>
References: <1591085678-22764-1-git-send-email-neal.liu@mediatek.com>
 <CAMj1kXHjAdk5=-uSh_=S9j5cz42zr3h6t+YYGy+obevuQDp0fg@mail.gmail.com>
 <85dfc0142d3879d50c0ba18bcc71e199@misterjones.org>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_002915_254003_A5C3EB4E 
X-CRM114-Status: GOOD (  16.65  )
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
 Herbert Xu <herbert@gondor.apana.org.au>, Arnd Bergmann <arnd@arndb.de>, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>, Sean Wang <sean.wang@kernel.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 lkml <linux-kernel@vger.kernel.org>, wsd_upstream <wsd_upstream@mediatek.com>,
 Rob Herring <robh+dt@kernel.org>, Neal Liu <neal.liu@mediatek.com>,
 Linux Crypto
 Mailing List <linux-crypto@vger.kernel.org>, Matt Mackall <mpm@selenic.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Crystal Guo =?UTF-8?Q?=28=E9=83=AD=E6=99=B6=29?= <Crystal.Guo@mediatek.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 2020-06-02 at 21:02 +0800, Marc Zyngier wrote:
> On 2020-06-02 13:14, Ard Biesheuvel wrote:
> > On Tue, 2 Jun 2020 at 10:15, Neal Liu <neal.liu@mediatek.com> wrote:
> >> 
> >> These patch series introduce a security random number generator
> >> which provides a generic interface to get hardware rnd from Secure
> >> state. The Secure state can be Arm Trusted Firmware(ATF), Trusted
> >> Execution Environment(TEE), or even EL2 hypervisor.
> >> 
> >> Patch #1..2 adds sec-rng kernel driver for Trustzone based SoCs.
> >> For security awareness SoCs on ARMv8 with TrustZone enabled,
> >> peripherals like entropy sources is not accessible from normal world
> >> (linux) and rather accessible from secure world (HYP/ATF/TEE) only.
> >> This driver aims to provide a generic interface to Arm Trusted
> >> Firmware or Hypervisor rng service.
> >> 
> >> 
> >> changes since v1:
> >> - rename mt67xx-rng to mtk-sec-rng since all MediaTek ARMv8 SoCs can 
> >> reuse
> >>   this driver.
> >>   - refine coding style and unnecessary check.
> >> 
> >>   changes since v2:
> >>   - remove unused comments.
> >>   - remove redundant variable.
> >> 
> >>   changes since v3:
> >>   - add dt-bindings for MediaTek rng with TrustZone enabled.
> >>   - revise HWRNG SMC call fid.
> >> 
> >>   changes since v4:
> >>   - move bindings to the arm/firmware directory.
> >>   - revise driver init flow to check more property.
> >> 
> >>   changes since v5:
> >>   - refactor to more generic security rng driver which
> >>     is not platform specific.
> >> 
> >> *** BLURB HERE ***
> >> 
> >> Neal Liu (2):
> >>   dt-bindings: rng: add bindings for sec-rng
> >>   hwrng: add sec-rng driver
> >> 
> > 
> > There is no reason to model a SMC call as a driver, and represent it
> > via a DT node like this.
> 
> +1.
> 
> > It would be much better if this SMC interface is made truly generic,
> > and wired into the arch_get_random() interface, which can be used much
> > earlier.
> 
> Wasn't there a plan to standardize a SMC call to rule them all?
> 
>          M.

Could you give us a hint how to make this SMC interface more generic in
addition to my approach?
There is no (easy) way to get platform-independent SMC function ID,
which is why we encode it into device tree, and provide a generic
driver. In this way, different devices can be mapped and then get
different function ID internally.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
