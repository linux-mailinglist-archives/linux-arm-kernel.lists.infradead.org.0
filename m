Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 903821324F8
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 12:34:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9f2A8IFosqitYGMEmzBVyKve0SYE4WXeGFfgImn0xqQ=; b=R63VSYQRbmBioh
	MKGHXDrNgqI1FW8nI/knc47U7h4h+jZLHfzCF06V877GVD0AyCEE/5UdNevl2TECCbW50enxfqqVE
	Y54VJZLF3iarTVsyXcQpEQ8GWlm3aYwDdm0TRxZbuaYW6YlREXrmQYqb2JxrF/X+VhdmB/UP9quCp
	BRnwi6hWhr1LjHcOYK78wedtLbVauNsu9DCuis18AN1juyaqj4CL/WqKbAqw0t6jF0NVV5ScFJSAC
	Ki9kHuJw9DZNdSaXXsllfqqI7KTMKhbSd16aOEXoDVQNDW92D84JGUGJx6k36FUkJKT9LwTnWazmk
	XIEMtXZr7W719tESqOrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ion7v-0006f5-Au; Tue, 07 Jan 2020 11:34:23 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ion7g-0006ZP-SC
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 11:34:10 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1ion7T-0002sF-BX; Tue, 07 Jan 2020 12:33:55 +0100
Received: from ukl by ptx.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1ion7S-0007gx-AY; Tue, 07 Jan 2020 12:33:54 +0100
Date: Tue, 7 Jan 2020 12:33:54 +0100
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH 2/2] pwm: Enable compile testing for some of drivers
Message-ID: <20200107113354.ggq6zarewq5ip354@pengutronix.de>
References: <20191230172113.17222-1-krzk@kernel.org>
 <20191230172113.17222-2-krzk@kernel.org>
 <20200107072645.ko247bwhh3ibdu73@pengutronix.de>
 <20200107082539.GA31827@pi3>
 <20200107104234.wq74fska3szrg4ii@pengutronix.de>
 <20200107110359.GA32423@pi3>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200107110359.GA32423@pi3>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_033408_934122_F477B821 
X-CRM114-Status: GOOD (  20.33  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-pwm@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 Richard Weinberger <richard@nod.at>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Thierry Reding <thierry.reding@gmail.com>,
 linux-mediatek@lists.infradead.org, linux-rpi-kernel@lists.infradead.org,
 kernel@pengutronix.de, linux-amlogic@lists.infradead.org,
 linux-tegra@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 linux-riscv@lists.infradead.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jan 07, 2020 at 12:03:59PM +0100, Krzysztof Kozlowski wrote:
> On Tue, Jan 07, 2020 at 11:42:34AM +0100, Uwe Kleine-K=F6nig wrote:
> > > I guess other solution would be to add stubs for few clk functions...
> > > =

> > > > Also HAS_IOMEM is a typical requirement, but I tested with an ARCH=
=3Dum
> > > > config (which does't have HAS_IOMEM) and they all compile fine.
> > > =

> > > Because of !HAS_IOMEM, since some time ARCH=3Dum does not support
> > > COMPILE_TEST. Therefore HAS_IOMEM dependency is not needed for compile
> > > testing (and for regular build it is selected by ARCH).
> > =

> > Hehe, I didn't notice because for testing I just dropped the "depends on
> > ..." lines in Kconfig instead of adding "|| COMPILE_TEST" :-) Still they
> > compile fine on UML.
> > =

> > Ah, since bc083a64b6c0 ("init/Kconfig: make COMPILE_TEST depend on
> > !UML") =3D=3D v4.8-rc1~52^2~83 COMPILE_TEST cannot be enabled on UML, b=
ut
> > later 1bcbfbfdeb00 ("um: add dummy ioremap and iounmap functions")
> > =3D=3D v4.13-rc1~8^2~6 UM got a dummy implementation. So maybe we could
> > revert bc083a64b6c0 today? (And if not, a comment about why near the
> > "depends on !UML" in init/Kconfig would be great.)
> > =

> > Orthogonal to that, I wonder if depending on HAS_IOMEM is right even
> > though the compile testers won't notice it missing. Or should HAS_IOMEM
> > be dropped?
> =

> I think yes, it can be dropped, but this would require:
> 1. Fixing any dependencies on HAS_IOMEM, e.g.:
>     WARNING: unmet direct dependencies detected for MFD_SYSCON
>       Depends on [n]: HAS_IOMEM [=3Dn]
>       Selected by [y]:
>       - PHY_DA8XX_USB [=3Dy] && (ARCH_DAVINCI_DA8XX || COMPILE_TEST [=3Dy=
])

I don't understand that warning. What did you modify to trigger that?
Probably related to the big "if HAS_IOMEM" in drivers/mfd/Kconfig?!

> 2. Checking if all of stubs are implemented (not only IOMEM but maybe
>    DMA as well). Also 1bcbfbfdeb00 brought only few stubs. Still we
>    need devm_ioremap_resource() and others.

A problem is that it's unclear (to me at least) what the presence of
HAS_IOMEM actually implies. I thought it's about ioremap + readl +
writel (including their respective variants). Does it really include dma
stuff, too?

> Quick test shows mentioned "unmet direct dependencies" and:
>     phy-pxa-usb.c:(.text+0x2f5): undefined reference to `devm_ioremap_res=
ource'
>     dma-iommu.c:(.text+0x179): undefined reference to `dma_pgprot'

dma_pgprot seems to depend on HAS_DMA though, not HAS_IOMEM.

(Oh, HAS_DMA is defined using "depends on !NO_DMA" + "default y".
NO_DMA has three different definitions. Two of them (in
drivers/crypto/ccree/cc_hw_queue_defs.h and arch/arm/include/asm/dma.h)
unrelated.)

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
