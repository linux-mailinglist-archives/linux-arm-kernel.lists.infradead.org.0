Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1568610670D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 08:28:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Mime-Version:References:
	In-Reply-To:Date:To:From:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YhS6MHrTagY+U43zpmd+qKIEEA6fY/IPiij31KbHdgQ=; b=fqoNRkqpNAMd5e
	NIRPg5f9suIzWJU2Pjr90AEsZi9fTJ5ZKzz9re+j6QdFIeFr4Z0r2prqACspPByc8oYSdE+p9nrJv
	VZggo5aUSBzqQJiGXW1QKs++t3bS2Vt2u/dTy7fZWyKZK4x8dhVi17y1MSXNq2hky5XE8jCloiCBS
	7L4APV+g/yTj7rxxc0gunxbQ/0Abl3rkgbDa9WrNhygwuWO7/pUxghuRojOz5DL1ADG59ZNgPZi0x
	IlPfyXkdBWlB+kj5VXb8c66JZNMoVP4oTkQEYHDXz+VnOPV1Jxv8kUEHL5I0cig0FbLFoCws/gfrZ
	RY5qdOc/8T8vdSiu8NdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iY3MO-0006Hd-9v; Fri, 22 Nov 2019 07:28:08 +0000
Received: from baldur.buserror.net ([165.227.176.147])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY3ME-0006H7-LV
 for linux-arm-kernel@lists.infradead.org; Fri, 22 Nov 2019 07:28:00 +0000
Received: from [2601:449:8480:af0:12bf:48ff:fe84:c9a0]
 by baldur.buserror.net with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <oss@buserror.net>)
 id 1iY3Hv-0008R8-MZ; Fri, 22 Nov 2019 01:23:32 -0600
Message-ID: <ff6ac26dca3b1c3a74786c33b4d872535882d8ac.camel@buserror.net>
From: Scott Wood <oss@buserror.net>
To: Li Yang <leoyang.li@nxp.com>, Rasmus Villemoes <linux@rasmusvillemoes.dk>
Date: Fri, 22 Nov 2019 01:23:30 -0600
In-Reply-To: <CADRPPNT4+zZd6fezcDcN=0EcezR4mHqnrOBBEexqBLyrV_THXQ@mail.gmail.com>
References: <20191118112324.22725-1-linux@rasmusvillemoes.dk>
 <20191118112324.22725-14-linux@rasmusvillemoes.dk>
 <CADRPPNT4+zZd6fezcDcN=0EcezR4mHqnrOBBEexqBLyrV_THXQ@mail.gmail.com>
Organization: Red Hat
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
X-SA-Exim-Connect-IP: 2601:449:8480:af0:12bf:48ff:fe84:c9a0
X-SA-Exim-Rcpt-To: leoyang.li@nxp.com, linux@rasmusvillemoes.dk,
 qiang.zhao@nxp.com, christophe.leroy@c-s.fr, linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 timur@kernel.org
X-SA-Exim-Mail-From: oss@buserror.net
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on baldur.localdomain
X-Spam-Level: 
X-Spam-Status: No, score=-17.5 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 GREYLIST_ISWHITE autolearn=ham autolearn_force=no version=3.4.2
X-Spam-Report: * -1.0 ALL_TRUSTED Passed through trusted hosts only via SMTP
 *  -15 BAYES_00 BODY: Bayes spam probability is 0 to 1%
 *      [score: 0.0000]
 * -1.5 GREYLIST_ISWHITE The incoming server has been whitelisted for
 *      this recipient and sender
Subject: Re: [PATCH v5 13/48] powerpc/83xx: remove mpc83xx_ipic_and_qe_init_IRQ
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on baldur.buserror.net)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_232758_771377_460E8F81 
X-CRM114-Status: GOOD (  15.32  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Christophe Leroy <christophe.leroy@c-s.fr>, Timur Tabi <timur@kernel.org>,
 lkml <linux-kernel@vger.kernel.org>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Qiang Zhao <qiang.zhao@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 2019-11-20 at 11:59 -0600, Li Yang wrote:
> On Mon, Nov 18, 2019 at 5:29 AM Rasmus Villemoes
> <linux@rasmusvillemoes.dk> wrote:
> 
> Hi Scott,
> 
> What do you think of the PowerPC related changes(patch 13,14)?  Can we
> have you ACK and merge the series from soc tree?

Acked-by: Scott Wood <oss@buserror.net>

-Scott

> 
> Regards,
> Leo
> > 
> > This is now exactly the same as mpc83xx_ipic_init_IRQ, so just use
> > that directly.
> > 
> > Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
> > ---
> >  arch/powerpc/platforms/83xx/km83xx.c      | 2 +-
> >  arch/powerpc/platforms/83xx/misc.c        | 7 -------
> >  arch/powerpc/platforms/83xx/mpc832x_mds.c | 2 +-
> >  arch/powerpc/platforms/83xx/mpc832x_rdb.c | 2 +-
> >  arch/powerpc/platforms/83xx/mpc836x_mds.c | 2 +-
> >  arch/powerpc/platforms/83xx/mpc836x_rdk.c | 2 +-
> >  arch/powerpc/platforms/83xx/mpc83xx.h     | 5 -----
> >  7 files changed, 5 insertions(+), 17 deletions(-)
> > 
> > diff --git a/arch/powerpc/platforms/83xx/km83xx.c
> > b/arch/powerpc/platforms/83xx/km83xx.c
> > index 5c6227f7bc37..3d89569e9e71 100644
> > --- a/arch/powerpc/platforms/83xx/km83xx.c
> > +++ b/arch/powerpc/platforms/83xx/km83xx.c
> > @@ -177,7 +177,7 @@ define_machine(mpc83xx_km) {
> >         .name           = "mpc83xx-km-platform",
> >         .probe          = mpc83xx_km_probe,
> >         .setup_arch     = mpc83xx_km_setup_arch,
> > -       .init_IRQ       = mpc83xx_ipic_and_qe_init_IRQ,
> > +       .init_IRQ       = mpc83xx_ipic_init_IRQ,
> >         .get_irq        = ipic_get_irq,
> >         .restart        = mpc83xx_restart,
> >         .time_init      = mpc83xx_time_init,
> > diff --git a/arch/powerpc/platforms/83xx/misc.c
> > b/arch/powerpc/platforms/83xx/misc.c
> > index 6935a5b9fbd1..1d8306eb2958 100644
> > --- a/arch/powerpc/platforms/83xx/misc.c
> > +++ b/arch/powerpc/platforms/83xx/misc.c
> > @@ -88,13 +88,6 @@ void __init mpc83xx_ipic_init_IRQ(void)
> >         ipic_set_default_priority();
> >  }
> > 
> > -#ifdef CONFIG_QUICC_ENGINE
> > -void __init mpc83xx_ipic_and_qe_init_IRQ(void)
> > -{
> > -       mpc83xx_ipic_init_IRQ();
> > -}
> > -#endif /* CONFIG_QUICC_ENGINE */
> > -
> >  static const struct of_device_id of_bus_ids[] __initconst = {
> >         { .type = "soc", },
> >         { .compatible = "soc", },
> > diff --git a/arch/powerpc/platforms/83xx/mpc832x_mds.c
> > b/arch/powerpc/platforms/83xx/mpc832x_mds.c
> > index 1c73af104d19..6fa5402ebf20 100644
> > --- a/arch/powerpc/platforms/83xx/mpc832x_mds.c
> > +++ b/arch/powerpc/platforms/83xx/mpc832x_mds.c
> > @@ -101,7 +101,7 @@ define_machine(mpc832x_mds) {
> >         .name           = "MPC832x MDS",
> >         .probe          = mpc832x_sys_probe,
> >         .setup_arch     = mpc832x_sys_setup_arch,
> > -       .init_IRQ       = mpc83xx_ipic_and_qe_init_IRQ,
> > +       .init_IRQ       = mpc83xx_ipic_init_IRQ,
> >         .get_irq        = ipic_get_irq,
> >         .restart        = mpc83xx_restart,
> >         .time_init      = mpc83xx_time_init,
> > diff --git a/arch/powerpc/platforms/83xx/mpc832x_rdb.c
> > b/arch/powerpc/platforms/83xx/mpc832x_rdb.c
> > index 87f68ca06255..622c625d5ce4 100644
> > --- a/arch/powerpc/platforms/83xx/mpc832x_rdb.c
> > +++ b/arch/powerpc/platforms/83xx/mpc832x_rdb.c
> > @@ -219,7 +219,7 @@ define_machine(mpc832x_rdb) {
> >         .name           = "MPC832x RDB",
> >         .probe          = mpc832x_rdb_probe,
> >         .setup_arch     = mpc832x_rdb_setup_arch,
> > -       .init_IRQ       = mpc83xx_ipic_and_qe_init_IRQ,
> > +       .init_IRQ       = mpc83xx_ipic_init_IRQ,
> >         .get_irq        = ipic_get_irq,
> >         .restart        = mpc83xx_restart,
> >         .time_init      = mpc83xx_time_init,
> > diff --git a/arch/powerpc/platforms/83xx/mpc836x_mds.c
> > b/arch/powerpc/platforms/83xx/mpc836x_mds.c
> > index 5b484da9533e..219a83ab6c00 100644
> > --- a/arch/powerpc/platforms/83xx/mpc836x_mds.c
> > +++ b/arch/powerpc/platforms/83xx/mpc836x_mds.c
> > @@ -208,7 +208,7 @@ define_machine(mpc836x_mds) {
> >         .name           = "MPC836x MDS",
> >         .probe          = mpc836x_mds_probe,
> >         .setup_arch     = mpc836x_mds_setup_arch,
> > -       .init_IRQ       = mpc83xx_ipic_and_qe_init_IRQ,
> > +       .init_IRQ       = mpc83xx_ipic_init_IRQ,
> >         .get_irq        = ipic_get_irq,
> >         .restart        = mpc83xx_restart,
> >         .time_init      = mpc83xx_time_init,
> > diff --git a/arch/powerpc/platforms/83xx/mpc836x_rdk.c
> > b/arch/powerpc/platforms/83xx/mpc836x_rdk.c
> > index b7119e443920..b4aac2cde849 100644
> > --- a/arch/powerpc/platforms/83xx/mpc836x_rdk.c
> > +++ b/arch/powerpc/platforms/83xx/mpc836x_rdk.c
> > @@ -41,7 +41,7 @@ define_machine(mpc836x_rdk) {
> >         .name           = "MPC836x RDK",
> >         .probe          = mpc836x_rdk_probe,
> >         .setup_arch     = mpc836x_rdk_setup_arch,
> > -       .init_IRQ       = mpc83xx_ipic_and_qe_init_IRQ,
> > +       .init_IRQ       = mpc83xx_ipic_init_IRQ,
> >         .get_irq        = ipic_get_irq,
> >         .restart        = mpc83xx_restart,
> >         .time_init      = mpc83xx_time_init,
> > diff --git a/arch/powerpc/platforms/83xx/mpc83xx.h
> > b/arch/powerpc/platforms/83xx/mpc83xx.h
> > index d343f6ce2599..f37d04332fc7 100644
> > --- a/arch/powerpc/platforms/83xx/mpc83xx.h
> > +++ b/arch/powerpc/platforms/83xx/mpc83xx.h
> > @@ -72,11 +72,6 @@ extern int mpc837x_usb_cfg(void);
> >  extern int mpc834x_usb_cfg(void);
> >  extern int mpc831x_usb_cfg(void);
> >  extern void mpc83xx_ipic_init_IRQ(void);
> > -#ifdef CONFIG_QUICC_ENGINE
> > -extern void mpc83xx_ipic_and_qe_init_IRQ(void);
> > -#else
> > -#define mpc83xx_ipic_and_qe_init_IRQ mpc83xx_ipic_init_IRQ
> > -#endif /* CONFIG_QUICC_ENGINE */
> > 
> >  #ifdef CONFIG_PCI
> >  extern void mpc83xx_setup_pci(void);
> > --
> > 2.23.0
> > 
> 
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
