Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98EDC1042BB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 19:00:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RvKCG/jaXLdVIDyGZhCFN8TzQujeh+s2lT8wfq+dHLw=; b=UPM4NPE2tJ/1VN
	wYWuIRKwpGu658gP9V/v0O2Y7sjGp1ZoInO/aM81RPtiBp4CglQhUYU5UuCs0i+Gu7l7f3cmd7jH3
	PawjbitcO5RHKFFtX1dEalU1ufz8yUFKxXZ1GQEItxjr2v3ErY/Ti9q+uB+6OOWsE1MSEZ0Q8JNTO
	CZFhXNwL20Gf8uA4T9BbJ0wTCQsI0MXD0qNC2dX/GI5zEw0e2ZVOm7y2LKQmIzb4uIep6wBvNhZw3
	4n1NIjbmp8YoDXi2dMDCF/NBUcx2oVZVoBmUSMvN6xROnGP43J+y76cTgvZlhTIyxA9tZ7PsUZoW9
	FI1N9n4AVmQs6vHupDXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXUGn-0005Ct-42; Wed, 20 Nov 2019 18:00:01 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXUGb-0005BH-Mp
 for linux-arm-kernel@lists.infradead.org; Wed, 20 Nov 2019 17:59:51 +0000
Received: by mail-oi1-f195.google.com with SMTP id e9so569913oif.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 Nov 2019 09:59:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=zBB9OsnBCrlScEEQaEUduHBYkfuZALzvxczmYt/dJsU=;
 b=QZmG6fJIEawZFwO2ikpCkKgCYXeV/H4i1gj+SbdNDHgzLT3ptG5vjGx8nbYmAwIFp6
 PGG1aVeOfZLE9S1zDIFNaykCeflfn7k40meZcBh6A1RojS2nIRpVhX3NdjM0E8GScgGA
 NLRjhqqd5xQw0ZeMmgWFxl49W/uBoSglziv+w3Ft+gJklYdQ5gDkZDBeRwd0VFQFt/J3
 Pal16io46kCx+m2rlLcp5mgSFec6dnc7QQRe1CgAr9gNexGwsBuHHiwTyLbkPJ+IslpM
 6Qa/xfwuVfjeOlD7IoLKh464/+jKtdbnV7O3N69hVTN51MKveexYk9aRgfFt85qvN+un
 vezg==
X-Gm-Message-State: APjAAAUb9KC6DGmkLfXRZq6xDP7YuYWoOux9B+9O+03MMek/wHrux92R
 vgrajX0jwSvTvaWsQg5uylQHgH1M
X-Google-Smtp-Source: APXvYqyzJPo1qJZLglE4RCJw40eTk7pYnB/z+FD6l+MRZyu+0ctR1uZFVKy0RQyoqc/x1BGjoH5NWQ==
X-Received: by 2002:aca:4c14:: with SMTP id z20mr3991892oia.76.1574272787021; 
 Wed, 20 Nov 2019 09:59:47 -0800 (PST)
Received: from mail-ot1-f44.google.com (mail-ot1-f44.google.com.
 [209.85.210.44])
 by smtp.gmail.com with ESMTPSA id 202sm8512070oii.39.2019.11.20.09.59.46
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 20 Nov 2019 09:59:46 -0800 (PST)
Received: by mail-ot1-f44.google.com with SMTP id l14so352831oti.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 Nov 2019 09:59:46 -0800 (PST)
X-Received: by 2002:a9d:173:: with SMTP id 106mr3009123otu.205.1574272785900; 
 Wed, 20 Nov 2019 09:59:45 -0800 (PST)
MIME-Version: 1.0
References: <20191118112324.22725-1-linux@rasmusvillemoes.dk>
 <20191118112324.22725-14-linux@rasmusvillemoes.dk>
In-Reply-To: <20191118112324.22725-14-linux@rasmusvillemoes.dk>
From: Li Yang <leoyang.li@nxp.com>
Date: Wed, 20 Nov 2019 11:59:34 -0600
X-Gmail-Original-Message-ID: <CADRPPNT4+zZd6fezcDcN=0EcezR4mHqnrOBBEexqBLyrV_THXQ@mail.gmail.com>
Message-ID: <CADRPPNT4+zZd6fezcDcN=0EcezR4mHqnrOBBEexqBLyrV_THXQ@mail.gmail.com>
Subject: Re: [PATCH v5 13/48] powerpc/83xx: remove mpc83xx_ipic_and_qe_init_IRQ
To: Rasmus Villemoes <linux@rasmusvillemoes.dk>, Scott Wood <oss@buserror.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_095950_128463_3600CB82 
X-CRM114-Status: GOOD (  14.48  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pku.leo[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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

On Mon, Nov 18, 2019 at 5:29 AM Rasmus Villemoes
<linux@rasmusvillemoes.dk> wrote:

Hi Scott,

What do you think of the PowerPC related changes(patch 13,14)?  Can we
have you ACK and merge the series from soc tree?

Regards,
Leo
>
> This is now exactly the same as mpc83xx_ipic_init_IRQ, so just use
> that directly.
>
> Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
> ---
>  arch/powerpc/platforms/83xx/km83xx.c      | 2 +-
>  arch/powerpc/platforms/83xx/misc.c        | 7 -------
>  arch/powerpc/platforms/83xx/mpc832x_mds.c | 2 +-
>  arch/powerpc/platforms/83xx/mpc832x_rdb.c | 2 +-
>  arch/powerpc/platforms/83xx/mpc836x_mds.c | 2 +-
>  arch/powerpc/platforms/83xx/mpc836x_rdk.c | 2 +-
>  arch/powerpc/platforms/83xx/mpc83xx.h     | 5 -----
>  7 files changed, 5 insertions(+), 17 deletions(-)
>
> diff --git a/arch/powerpc/platforms/83xx/km83xx.c b/arch/powerpc/platforms/83xx/km83xx.c
> index 5c6227f7bc37..3d89569e9e71 100644
> --- a/arch/powerpc/platforms/83xx/km83xx.c
> +++ b/arch/powerpc/platforms/83xx/km83xx.c
> @@ -177,7 +177,7 @@ define_machine(mpc83xx_km) {
>         .name           = "mpc83xx-km-platform",
>         .probe          = mpc83xx_km_probe,
>         .setup_arch     = mpc83xx_km_setup_arch,
> -       .init_IRQ       = mpc83xx_ipic_and_qe_init_IRQ,
> +       .init_IRQ       = mpc83xx_ipic_init_IRQ,
>         .get_irq        = ipic_get_irq,
>         .restart        = mpc83xx_restart,
>         .time_init      = mpc83xx_time_init,
> diff --git a/arch/powerpc/platforms/83xx/misc.c b/arch/powerpc/platforms/83xx/misc.c
> index 6935a5b9fbd1..1d8306eb2958 100644
> --- a/arch/powerpc/platforms/83xx/misc.c
> +++ b/arch/powerpc/platforms/83xx/misc.c
> @@ -88,13 +88,6 @@ void __init mpc83xx_ipic_init_IRQ(void)
>         ipic_set_default_priority();
>  }
>
> -#ifdef CONFIG_QUICC_ENGINE
> -void __init mpc83xx_ipic_and_qe_init_IRQ(void)
> -{
> -       mpc83xx_ipic_init_IRQ();
> -}
> -#endif /* CONFIG_QUICC_ENGINE */
> -
>  static const struct of_device_id of_bus_ids[] __initconst = {
>         { .type = "soc", },
>         { .compatible = "soc", },
> diff --git a/arch/powerpc/platforms/83xx/mpc832x_mds.c b/arch/powerpc/platforms/83xx/mpc832x_mds.c
> index 1c73af104d19..6fa5402ebf20 100644
> --- a/arch/powerpc/platforms/83xx/mpc832x_mds.c
> +++ b/arch/powerpc/platforms/83xx/mpc832x_mds.c
> @@ -101,7 +101,7 @@ define_machine(mpc832x_mds) {
>         .name           = "MPC832x MDS",
>         .probe          = mpc832x_sys_probe,
>         .setup_arch     = mpc832x_sys_setup_arch,
> -       .init_IRQ       = mpc83xx_ipic_and_qe_init_IRQ,
> +       .init_IRQ       = mpc83xx_ipic_init_IRQ,
>         .get_irq        = ipic_get_irq,
>         .restart        = mpc83xx_restart,
>         .time_init      = mpc83xx_time_init,
> diff --git a/arch/powerpc/platforms/83xx/mpc832x_rdb.c b/arch/powerpc/platforms/83xx/mpc832x_rdb.c
> index 87f68ca06255..622c625d5ce4 100644
> --- a/arch/powerpc/platforms/83xx/mpc832x_rdb.c
> +++ b/arch/powerpc/platforms/83xx/mpc832x_rdb.c
> @@ -219,7 +219,7 @@ define_machine(mpc832x_rdb) {
>         .name           = "MPC832x RDB",
>         .probe          = mpc832x_rdb_probe,
>         .setup_arch     = mpc832x_rdb_setup_arch,
> -       .init_IRQ       = mpc83xx_ipic_and_qe_init_IRQ,
> +       .init_IRQ       = mpc83xx_ipic_init_IRQ,
>         .get_irq        = ipic_get_irq,
>         .restart        = mpc83xx_restart,
>         .time_init      = mpc83xx_time_init,
> diff --git a/arch/powerpc/platforms/83xx/mpc836x_mds.c b/arch/powerpc/platforms/83xx/mpc836x_mds.c
> index 5b484da9533e..219a83ab6c00 100644
> --- a/arch/powerpc/platforms/83xx/mpc836x_mds.c
> +++ b/arch/powerpc/platforms/83xx/mpc836x_mds.c
> @@ -208,7 +208,7 @@ define_machine(mpc836x_mds) {
>         .name           = "MPC836x MDS",
>         .probe          = mpc836x_mds_probe,
>         .setup_arch     = mpc836x_mds_setup_arch,
> -       .init_IRQ       = mpc83xx_ipic_and_qe_init_IRQ,
> +       .init_IRQ       = mpc83xx_ipic_init_IRQ,
>         .get_irq        = ipic_get_irq,
>         .restart        = mpc83xx_restart,
>         .time_init      = mpc83xx_time_init,
> diff --git a/arch/powerpc/platforms/83xx/mpc836x_rdk.c b/arch/powerpc/platforms/83xx/mpc836x_rdk.c
> index b7119e443920..b4aac2cde849 100644
> --- a/arch/powerpc/platforms/83xx/mpc836x_rdk.c
> +++ b/arch/powerpc/platforms/83xx/mpc836x_rdk.c
> @@ -41,7 +41,7 @@ define_machine(mpc836x_rdk) {
>         .name           = "MPC836x RDK",
>         .probe          = mpc836x_rdk_probe,
>         .setup_arch     = mpc836x_rdk_setup_arch,
> -       .init_IRQ       = mpc83xx_ipic_and_qe_init_IRQ,
> +       .init_IRQ       = mpc83xx_ipic_init_IRQ,
>         .get_irq        = ipic_get_irq,
>         .restart        = mpc83xx_restart,
>         .time_init      = mpc83xx_time_init,
> diff --git a/arch/powerpc/platforms/83xx/mpc83xx.h b/arch/powerpc/platforms/83xx/mpc83xx.h
> index d343f6ce2599..f37d04332fc7 100644
> --- a/arch/powerpc/platforms/83xx/mpc83xx.h
> +++ b/arch/powerpc/platforms/83xx/mpc83xx.h
> @@ -72,11 +72,6 @@ extern int mpc837x_usb_cfg(void);
>  extern int mpc834x_usb_cfg(void);
>  extern int mpc831x_usb_cfg(void);
>  extern void mpc83xx_ipic_init_IRQ(void);
> -#ifdef CONFIG_QUICC_ENGINE
> -extern void mpc83xx_ipic_and_qe_init_IRQ(void);
> -#else
> -#define mpc83xx_ipic_and_qe_init_IRQ mpc83xx_ipic_init_IRQ
> -#endif /* CONFIG_QUICC_ENGINE */
>
>  #ifdef CONFIG_PCI
>  extern void mpc83xx_setup_pci(void);
> --
> 2.23.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
