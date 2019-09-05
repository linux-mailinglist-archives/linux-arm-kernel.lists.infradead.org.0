Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 134ACA9D72
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 10:47:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QIs0uIwibNzGvIBe8QudDo6V985wa/S5qo0L5jta2QE=; b=ENWceJRAoAiPpK
	RsnqCWI62Lxx/lR8YkXoaWOK8Ox95y++A4WDASidashxxtgxWsmJbFh4aqK9C0s9X0A6/ohJFgpUK
	jFZuamE2IxH5AeSWwWDLUfst4uiyFUNZzOFfR/dhM1LhUzqHz5dI+DgUneuP3V3rSAjKKKWNBmP1K
	EEq3YJ5i7szOT1tPflJVHFfBeyovxpB46uZ35uM/FQBrjwUOx5wExrVuzUSqXJ+xBF62sIOhgE2PQ
	suNyjooLgeazp0dDgu9nD7kfStTRN5XfWW0Q9O5UtRIrkO2be8snqhwBY3tsqdwbEAbFpRhgnBHTS
	9MmclF9s3uwXFT77b9Ug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5nPv-0005Nd-Kk; Thu, 05 Sep 2019 08:47:00 +0000
Received: from mail-qt1-f193.google.com ([209.85.160.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5nPg-0005Mw-UP
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 08:46:46 +0000
Received: by mail-qt1-f193.google.com with SMTP id n7so1857693qtb.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Sep 2019 01:46:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=oU23zAL/N+Ma8FZV6NAbDVEqiCsbZP7Og2jqHKI2JsY=;
 b=QU17MgzcRLLfeZ4pCOOuVIc5LY+81LieM3IIJ0q+scBaWeisf306jlbp3h/I0zkUgs
 VyolCqCVL/eYq2xFqjQhxy/uT66B9GlPoS1Y2u7JRn37DRMv7Q6F4GckEAfZuGuZL8ao
 1yAJu2HzfHTQzhfq4N85TmZrZLdbfzh37WTGYi6vnvmnnhhQg/hl/S5zwr5QvqJjzSnJ
 ajADahkgEDBAF08BrUSlSUsSyeua20vMWhQqxBj3lRp88VaHl4OrHgjYfkctRJLe/VdN
 JGYd29w0vf6ZDawMi98ZQkJGtqdDI/QjukgovKZw2nTXBB5hGGF5ghio2FBn2LDCWZZO
 is5A==
X-Gm-Message-State: APjAAAUZGUzbtnfqeMlpLULsQ/QFz/lZJrN14Fd5Zl1r1KfCuOUfiNu4
 Zm5C/kIQU0MjQsrP8LlQCkSaMwgvKETf2J/Jtsw=
X-Google-Smtp-Source: APXvYqwHZt8+VmciZMOYqsyHGZy8by/RDPCCDgJEQ03Y6xz58WGJThkLJ6UzGa9tlxugPttAU94K323ixEwAjDZ4TDs=
X-Received: by 2002:ac8:6b1a:: with SMTP id w26mr2277080qts.304.1567673201828; 
 Thu, 05 Sep 2019 01:46:41 -0700 (PDT)
MIME-Version: 1.0
References: <20190905081140.1428-1-james.tai@realtek.com>
In-Reply-To: <20190905081140.1428-1-james.tai@realtek.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Thu, 5 Sep 2019 10:46:25 +0200
Message-ID: <CAK8P3a2j2m0mUPLDe5G19Xzu2t+xbO4QWvg=PdQWnGoqTkDpsg@mail.gmail.com>
Subject: Re: [PATCH] ARM: config: Add Realtek RTD16XX defconfig
To: jamestai.sky@gmail.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_014644_977856_CF61F146 
X-CRM114-Status: GOOD (  18.68  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.193 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.193 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: "james.tai" <james.tai@realtek.com>, CY_Huang <cy.huang@realtek.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Russell King <linux@armlinux.org.uk>, Phinex Hung <phinex@realtek.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Sep 5, 2019 at 10:14 AM <jamestai.sky@gmail.com> wrote:
>
> From: "james.tai" <james.tai@realtek.com>
>
> Add a defconfig for Realtek RTD16XX platform.
>
> Signed-off-by: james.tai <james.tai@realtek.com>
> ---
>  arch/arm/configs/rtd16xx_defconfig | 427 +++++++++++++++++++++++++++++

We usually try to have one defconfig per vendor. Expecting that
there will be other Realtek SoCs in the future that we may add
here, I would name this 'rtd_defconfig' or 'realtek_defconfig'.

Please also add the set of options you want to multi_v7_defconfig
so you are able to boot with that.

>  1 file changed, 427 insertions(+)
>  create mode 100644 arch/arm/configs/rtd16xx_defconfig
>
> diff --git a/arch/arm/configs/rtd16xx_defconfig b/arch/arm/configs/rtd16xx_defconfig
> new file mode 100644
> index 000000000000..49bcbe6c6af8
> --- /dev/null
> +++ b/arch/arm/configs/rtd16xx_defconfig
> @@ -0,0 +1,427 @@
> +CONFIG_SYSVIPC=y
> +CONFIG_NO_HZ=y
> +CONFIG_HIGH_RES_TIMERS=y
> +CONFIG_CGROUPS=y
> +CONFIG_BLK_DEV_INITRD=y
> +CONFIG_EMBEDDED=y

I normally would not turn on CONFIG_EMBEDDED, this is only
needed to change some rare options.

> +CONFIG_PERF_EVENTS=y
> +CONFIG_ARCH_REALTEK=y
> +CONFIG_ARCH_RTD16XX=y
> +CONFIG_ARM_THUMBEE=y

ThumbEE is deprecated in ARMv8, and one usually should not
rely on it. If you don't actually need it, just turn it off.

(note: this is unrelated to regular thumb execution, which
is enabled by default)

> +# CONFIG_CACHE_L2X0 is not set
> +# CONFIG_ARM_ERRATA_643719 is not set
> +CONFIG_ARM_ERRATA_814220=y
> +CONFIG_SMP=y
> +CONFIG_SCHED_MC=y
> +CONFIG_SCHED_SMT=y

If you don't have SMT in the CPU, there is no need ot enable this.

> +CONFIG_HAVE_ARM_ARCH_TIMER=y
> +CONFIG_MCPM=y
> +CONFIG_NR_CPUS=6
> +CONFIG_HZ_250=y
> +CONFIG_OABI_COMPAT=y

It seems unlikely you want OABI_COMPAT

> +CONFIG_HIGHMEM=y
> +CONFIG_FORCE_MAX_ZONEORDER=12
> +CONFIG_SECCOMP=y
> +CONFIG_ARM_APPENDED_DTB=y
> +CONFIG_ARM_ATAG_DTB_COMPAT=y
> +CONFIG_KEXEC=y
> +CONFIG_EFI=y

What method do you actually use for booting? New platforms
should generally not require CONFIG_ARM_APPENDED_DTB
or CONFIG_ARM_ATAG_DTB_COMPAT, and I suspect you
don't use EFI.

> +CONFIG_CPUFREQ_DT=y
> +CONFIG_QORIQ_CPUFREQ=y

QORIQ_CPUFREQ is a platform specific option that you
won't need.

> +CONFIG_NET_DSA=m
> +CONFIG_CAN=y
> +CONFIG_CAN_FLEXCAN=m
> +CONFIG_CAN_RCAR=m
> +CONFIG_BT=m
> +CONFIG_BT_HCIUART=m
> +CONFIG_BT_HCIUART_BCM=y
> +CONFIG_BT_MRVL=m
> +CONFIG_BT_MRVL_SDIO=m

Many more hardware specific drivers here that you should turn off

> +CONFIG_MTD=y
> +CONFIG_MTD_CMDLINE_PARTS=y
> +CONFIG_MTD_BLOCK=y
> +CONFIG_MTD_CFI=y
> +CONFIG_MTD_PHYSMAP=y
> +CONFIG_MTD_PHYSMAP_OF=y
> +CONFIG_MTD_RAW_NAND=y
> +CONFIG_MTD_NAND_DENALI_DT=y
> +CONFIG_MTD_NAND_BRCMNAND=y

and here.

> +CONFIG_BLK_DEV_LOOP=y
> +CONFIG_BLK_DEV_RAM=y
> +CONFIG_BLK_DEV_RAM_SIZE=65536

Do you require BLK_DEV_RAM for initrd? Normally one uses
initramfs instead or tmpfs instead.

> +# CONFIG_NET_VENDOR_3COM is not set
> +# CONFIG_NET_VENDOR_ADAPTEC is not set
> +# CONFIG_NET_VENDOR_AGERE is not set
> +# CONFIG_NET_VENDOR_ALACRITECH is not set
> +# CONFIG_NET_VENDOR_ALTEON is not set

I would trim the list here, just leave all network device vendors
enabled, they don't hurt.

> +CONFIG_USB_PEGASUS=y
> +CONFIG_USB_RTL8152=m
> +CONFIG_USB_LAN78XX=m
> +CONFIG_USB_USBNET=y
> +CONFIG_USB_NET_SMSC75XX=y
> +CONFIG_USB_NET_SMSC95XX=y
> +CONFIG_BRCMFMAC=m
> +CONFIG_MWIFIEX=m
> +CONFIG_MWIFIEX_SDIO=m
> +CONFIG_RT2X00=m
> +CONFIG_RT2800USB=m

Do you need all of the above? It's no problem to enable
them if you do, it just seems unusual.

        Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
