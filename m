Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89B4D56586
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 11:15:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NtqceHtRzxClQc7MV/ZmnMnJys6R8w5cS7VO/CiGxgk=; b=lnKxv2ibL2Gt7J
	//Eqthbtl0fcX9KYSUtDUaWS7S3q4ybIOXHqJ4qQ8E8xbYlkYcHkx8nprTYMhHrfHb18hHLOSUDEF
	AU3p0cwxEaQmzhJwo6yRj3ZwCXhOUsDZwmCjHyTfnMdYf0fZkj1fyKMvSnaCvOase9XAa9YpVndOV
	1eObHJksaEvp91BKljxNEFkL4l6V5w3I6ptgHRmewPOzgf8dwlJpjqI8ajnCGcDLQyacaNco4kEpz
	pFCWjVJ48eksAZx3lXIApd4+7SEUiiJtCwPJt8KOXPmHZoiMsu9WTQ0bGCjjjz7DmZ9Dy85PLKt76
	BBVZ+bpwrL4jwSq5cRzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg41L-0001iv-9h; Wed, 26 Jun 2019 09:15:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg40Q-0001HN-Cl
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 09:14:20 +0000
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com
 [209.85.167.51])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 71D912054F
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Jun 2019 09:14:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561540457;
 bh=g4DUkrrjfFj7xHESarAI2dRhed/w7oKp4416qFpgZRU=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=04n10WVyRHzd2WJpVjUcfjocTAX38tMp7ZVDMnyZ1/Y+vTeX1YXynvXcyk847krQE
 ndxGNtw2KD70rHuXPwJKF25ohyUe4IEzt6HS/DMhx83b+wSxLyb9UWW1AxvZl74xCx
 OPAxyIJyDvF6PpBu2fZnq5DfgSmRfOi2Rza2kIyM=
Received: by mail-lf1-f51.google.com with SMTP id b11so1054858lfa.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Jun 2019 02:14:17 -0700 (PDT)
X-Gm-Message-State: APjAAAUWdsq8NMRvW17fsLvD53Kjnwsz4jPJXilJ/lX7dbiW3ALMS9uq
 GET5W156zmATRH/A7xnSgwIbeOcVioTekZx3ZmU=
X-Google-Smtp-Source: APXvYqxyflZNdBFIUXAD5rBef4z4NLETV6l0FfCDdosZdM/KpjcmBy4iI0hm/rxk5/cFZrEESI5AZP6IaTMNv3wTk5s=
X-Received: by 2002:ac2:5601:: with SMTP id v1mr2104868lfd.106.1561540455758; 
 Wed, 26 Jun 2019 02:14:15 -0700 (PDT)
MIME-Version: 1.0
References: <20190625193451.7696-1-krzk@kernel.org>
In-Reply-To: <20190625193451.7696-1-krzk@kernel.org>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Wed, 26 Jun 2019 11:14:04 +0200
X-Gmail-Original-Message-ID: <CAJKOXPeCQZPsF1kGKmhSWgxsWSsb4cre6mhS=n=kJbH63LjmUQ@mail.gmail.com>
Message-ID: <CAJKOXPeCQZPsF1kGKmhSWgxsWSsb4cre6mhS=n=kJbH63LjmUQ@mail.gmail.com>
Subject: Re: [GIT PULL 1/4] ARM: defconfig: Samsung/Exynos for v5.3
To: Olof Johansson <olof@lixom.net>, Arnd Bergmann <arnd@arndb.de>,
 arm@kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_021418_655797_76793277 
X-CRM114-Status: GOOD (  14.26  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 Kukjin Kim <kgene@kernel.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 25 Jun 2019 at 21:35, Krzysztof Kozlowski <krzk@kernel.org> wrote:
>
> The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:
>
>   Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)
>
> are available in the Git repository at:
>
>   https://git.kernel.org/pub/scm/linux/kernel/git/krzk/linux.git tags/samsung-defconfig-5.3
>
> for you to fetch changes up to dd50a69b5697532666023766688c6ea642e5a443:
>
>   ARM: exynos_defconfig: Enable Panfrost and Lima drivers (2019-06-19 19:23:35 +0200)
>
> ----------------------------------------------------------------
> Samsung defconfig changes for v5.3
>
> 1. Trim several configs with savedefconfig.
> 2. Enable Lima and Panfrost drivers for Mali GPU.

Hi,

I forgot to mention possible merge conflicts (although Stephen Cc-ed
you on mails). Resolution is to accept both sides:

--- a/arch/arm/configs/exynos_defconfig
+++ b/arch/arm/configs/exynos_defconfig
@@@ -4,12 -5,7 +5,8 @@@ CONFIG_PREEMPT=
  CONFIG_CGROUPS=y
  CONFIG_BLK_DEV_INITRD=y
  CONFIG_PERF_EVENTS=y
- CONFIG_MODULES=y
- CONFIG_MODULE_UNLOAD=y
- CONFIG_PARTITION_ADVANCED=y
  CONFIG_ARCH_EXYNOS=y
- CONFIG_ARCH_EXYNOS3=y
 +CONFIG_CPU_ICACHE_MISMATCH_WORKAROUND=y

--- a/arch/arm/configs/s3c2410_defconfig
+++ b/arch/arm/configs/s3c2410_defconfig
@@@ -181,10 -178,11 +178,10 @@@ CONFIG_CFG80211=
  CONFIG_MAC80211=m
  CONFIG_MAC80211_MESH=y
  CONFIG_MAC80211_LEDS=y
 -CONFIG_UEVENT_HELPER_PATH="/sbin/hotplug"
  CONFIG_MTD=y
+ CONFIG_MTD_CMDLINE_PARTS=y
  CONFIG_MTD_REDBOOT_PARTS=y
  CONFIG_MTD_REDBOOT_PARTS_UNALLOCATED=y
- CONFIG_MTD_CMDLINE_PARTS=y

--- a/arch/arm/configs/s3c6400_defconfig
+++ b/arch/arm/configs/s3c6400_defconfig
@@@ -18,9 -15,12 +15,11 @@@ CONFIG_MACH_HMT=
  CONFIG_MACH_SMARTQ5=y
  CONFIG_MACH_SMARTQ7=y
  CONFIG_MACH_WLF_CRAGG_6410=y
- CONFIG_AEABI=y
  CONFIG_CMDLINE="console=ttySAC0,115200 root=/dev/ram init=/linuxrc
initrd=0x51000000,6M ramdisk_size=6144"
  CONFIG_VFP=y
 -CONFIG_UEVENT_HELPER_PATH="/sbin/hotplug"
+ CONFIG_MODULES=y
+ CONFIG_MODULE_UNLOAD=y
+ # CONFIG_BLK_DEV_BSG is not set

Best regards,
Krzysztof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
