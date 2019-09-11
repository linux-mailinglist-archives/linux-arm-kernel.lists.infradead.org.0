Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B133AF767
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 10:03:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TtSDmpCZZLUyIycWFMf3g1UFBY2aseeOjNF1SzdqzfQ=; b=UzlwOLEMUt88V9
	wXvOUM5A2bfEvaZpoQhwjUfnAr6yfX+XmLQi5pPMiQVuGWnODMl2gt+Xk6sM7xr51RSWi5/yU+egN
	B6yrYgLQxorUOf1JLX+rg4E4TLPO5jstfCU8FR9WH2SqeuYvzTYArE+5IfN5tj2VbstAlS2X24h5e
	FDov7RfavDScXczYIj1IZ2UQbYBsL6DijSlUCEDqPEifp9SrF6ZjO2GQ0AQFbDo/2XVbDu1iRSghd
	QsxRkFgQeBXllS8IT78vzH3M9IvpvdXbsnOdXL/t3qjlfejoG8buBWRdgV0k5yMR1SeRcmYW92z4L
	MdZ/nta8PXTZ0W4yZwRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7xb9-0005YR-8r; Wed, 11 Sep 2019 08:03:31 +0000
Received: from rtits2.realtek.com ([211.75.126.72] helo=rtits2.realtek.com.tw)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7xav-0005Y3-Ik
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Sep 2019 08:03:19 +0000
Authenticated-By: 
X-SpamFilter-By: BOX Solutions SpamTrap 5.62 with qID x8B82wYK017764,
 This message is accepted by code: ctloc85258
Received: from mail.realtek.com (RTITCASV02.realtek.com.tw[172.21.6.19])
 by rtits2.realtek.com.tw (8.15.2/2.57/5.78) with ESMTPS id x8B82wYK017764
 (version=TLSv1 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
 Wed, 11 Sep 2019 16:02:58 +0800
Received: from RTITMBSVM04.realtek.com.tw ([fe80::e404:880:2ef1:1aa1]) by
 RTITCASV02.realtek.com.tw ([::1]) with mapi id 14.03.0468.000; Wed, 11 Sep
 2019 16:02:58 +0800
From: =?utf-8?B?SmFtZXMgVGFpW+aItOW/l+WzsF0=?= <james.tai@realtek.com>
To: Arnd Bergmann <arnd@arndb.de>, "jamestai.sky@gmail.com"
 <jamestai.sky@gmail.com>
Subject: RE: [PATCH] ARM: config: Add Realtek RTD16XX defconfig
Thread-Topic: [PATCH] ARM: config: Add Realtek RTD16XX defconfig
Thread-Index: AQHVY8HXZVVvJynf2kC9vxZJ/q2xi6ccPyyAgAnSCBA=
Date: Wed, 11 Sep 2019 08:02:57 +0000
Message-ID: <43B123F21A8CFE44A9641C099E4196FFCF8DA22D@RTITMBSVM04.realtek.com.tw>
References: <20190905081140.1428-1-james.tai@realtek.com>
 <CAK8P3a2j2m0mUPLDe5G19Xzu2t+xbO4QWvg=PdQWnGoqTkDpsg@mail.gmail.com>
In-Reply-To: <CAK8P3a2j2m0mUPLDe5G19Xzu2t+xbO4QWvg=PdQWnGoqTkDpsg@mail.gmail.com>
Accept-Language: zh-TW, en-US
Content-Language: zh-TW
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.21.190.187]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_010317_903800_9E5EFCBD 
X-CRM114-Status: GOOD (  24.81  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
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
Cc: =?utf-8?B?Q1lfSHVhbmdb6buD6Ymm5pmPXQ==?= <cy.huang@realtek.com>,
 Phinex Hung <phinex@realtek.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Russell King <linux@armlinux.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> Subject: Re: [PATCH] ARM: config: Add Realtek RTD16XX defconfig
> 
> On Thu, Sep 5, 2019 at 10:14 AM <jamestai.sky@gmail.com> wrote:
> >
> > From: "james.tai" <james.tai@realtek.com>
> >
> > Add a defconfig for Realtek RTD16XX platform.
> >
> > Signed-off-by: james.tai <james.tai@realtek.com>
> > ---
> >  arch/arm/configs/rtd16xx_defconfig | 427
> > +++++++++++++++++++++++++++++
> 
> We usually try to have one defconfig per vendor. Expecting that there will be
> other Realtek SoCs in the future that we may add here, I would name this
> 'rtd_defconfig' or 'realtek_defconfig'.
> 
I will modify config file name in new version patch.

> Please also add the set of options you want to multi_v7_defconfig so you are
> able to boot with that.

OK, I understand.

> >  1 file changed, 427 insertions(+)
> >  create mode 100644 arch/arm/configs/rtd16xx_defconfig
> >
> > diff --git a/arch/arm/configs/rtd16xx_defconfig
> > b/arch/arm/configs/rtd16xx_defconfig
> > new file mode 100644
> > index 000000000000..49bcbe6c6af8
> > --- /dev/null
> > +++ b/arch/arm/configs/rtd16xx_defconfig
> > @@ -0,0 +1,427 @@
> > +CONFIG_SYSVIPC=y
> > +CONFIG_NO_HZ=y
> > +CONFIG_HIGH_RES_TIMERS=y
> > +CONFIG_CGROUPS=y
> > +CONFIG_BLK_DEV_INITRD=y
> > +CONFIG_EMBEDDED=y
> 
> I normally would not turn on CONFIG_EMBEDDED, this is only needed to
> change some rare options.

I will turn off CONFIG_EMBEDDED in new version patch.

> > +CONFIG_PERF_EVENTS=y
> > +CONFIG_ARCH_REALTEK=y
> > +CONFIG_ARCH_RTD16XX=y
> > +CONFIG_ARM_THUMBEE=y
> 
> ThumbEE is deprecated in ARMv8, and one usually should not rely on it. If you
> don't actually need it, just turn it off.

I will turn off CONFIG_ARM_THUMBEE in new version patch.

> (note: this is unrelated to regular thumb execution, which is enabled by
> default)
> 
> > +# CONFIG_CACHE_L2X0 is not set
> > +# CONFIG_ARM_ERRATA_643719 is not set
> CONFIG_ARM_ERRATA_814220=y
> > +CONFIG_SMP=y CONFIG_SCHED_MC=y CONFIG_SCHED_SMT=y
> 
> If you don't have SMT in the CPU, there is no need ot enable this.

RTD16XX platform don't have SMT in the CPU.
I will turn off CONFIG_SCHED_SMT in new version patch.

> > +CONFIG_HAVE_ARM_ARCH_TIMER=y
> > +CONFIG_MCPM=y
> > +CONFIG_NR_CPUS=6
> > +CONFIG_HZ_250=y
> > +CONFIG_OABI_COMPAT=y
> 
> It seems unlikely you want OABI_COMPAT
> 

I will turn off CONFIG_OABI_COMPAT in new version patch.

> > +CONFIG_HIGHMEM=y
> > +CONFIG_FORCE_MAX_ZONEORDER=12
> > +CONFIG_SECCOMP=y
> > +CONFIG_ARM_APPENDED_DTB=y
> > +CONFIG_ARM_ATAG_DTB_COMPAT=y
> > +CONFIG_KEXEC=y
> > +CONFIG_EFI=y
> 
> What method do you actually use for booting? New platforms should generally
> not require CONFIG_ARM_APPENDED_DTB or
> CONFIG_ARM_ATAG_DTB_COMPAT, and I suspect you don't use EFI.
> 
RTD16XX platform don't use EFI.
I will turn off these config in new version patch.

> > +CONFIG_CPUFREQ_DT=y
> > +CONFIG_QORIQ_CPUFREQ=y
> 
> QORIQ_CPUFREQ is a platform specific option that you won't need.
> 
I will turn off CONFIG_QORIQ_CPUFREQ in new version patch.

> > +CONFIG_NET_DSA=m
> > +CONFIG_CAN=y
> > +CONFIG_CAN_FLEXCAN=m
> > +CONFIG_CAN_RCAR=m
> > +CONFIG_BT=m
> > +CONFIG_BT_HCIUART=m
> > +CONFIG_BT_HCIUART_BCM=y
> > +CONFIG_BT_MRVL=m
> > +CONFIG_BT_MRVL_SDIO=m
> 
> Many more hardware specific drivers here that you should turn off
>
> > +CONFIG_MTD=y
> > +CONFIG_MTD_CMDLINE_PARTS=y
> > +CONFIG_MTD_BLOCK=y
> > +CONFIG_MTD_CFI=y
> > +CONFIG_MTD_PHYSMAP=y
> > +CONFIG_MTD_PHYSMAP_OF=y
> > +CONFIG_MTD_RAW_NAND=y
> > +CONFIG_MTD_NAND_DENALI_DT=y
> > +CONFIG_MTD_NAND_BRCMNAND=y
> 
> and here.

I will turn off these config in new version patch.

> > +CONFIG_BLK_DEV_LOOP=y
> > +CONFIG_BLK_DEV_RAM=y
> > +CONFIG_BLK_DEV_RAM_SIZE=65536
> 
> Do you require BLK_DEV_RAM for initrd? Normally one uses initramfs instead
> or tmpfs instead.
> 
RTD16XX platform have use 'initramfs'.
I will turn off this config in new version patch.

> > +# CONFIG_NET_VENDOR_3COM is not set
> > +# CONFIG_NET_VENDOR_ADAPTEC is not set #
> CONFIG_NET_VENDOR_AGERE is
> > +not set # CONFIG_NET_VENDOR_ALACRITECH is not set #
> > +CONFIG_NET_VENDOR_ALTEON is not set
> 
> I would trim the list here, just leave all network device vendors enabled, they
> don't hurt.
> 
I will turn on these config in new version patch.

> > +CONFIG_USB_PEGASUS=y
> > +CONFIG_USB_RTL8152=m
> > +CONFIG_USB_LAN78XX=m
> > +CONFIG_USB_USBNET=y
> > +CONFIG_USB_NET_SMSC75XX=y
> > +CONFIG_USB_NET_SMSC95XX=y
> > +CONFIG_BRCMFMAC=m
> > +CONFIG_MWIFIEX=m
> > +CONFIG_MWIFIEX_SDIO=m
> > +CONFIG_RT2X00=m
> > +CONFIG_RT2800USB=m
> 
> Do you need all of the above? It's no problem to enable them if you do, it just
> seems unusual.

RTD16XX platform don't need all config.
I will turn off these config in new version patch.

>         Arnd
> 
> ------Please consider the environment before printing this e-mail.
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
