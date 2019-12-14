Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 647F411F3C5
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 14 Dec 2019 21:03:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o0iLFcVJX18090JKyb7o6F5OdDRIBPEfCf3BNlic9Mc=; b=nsTG0C0b+AJboB
	AgGfLRtsGddWpipAuw4ZOWENQ8eD9dERZlauZYp18iBSlOodSc4gzUBh6GFq6CohxW+R1yMqOk2VV
	mlUnGi87Lw2lR+0AjZg1iaDthrurscyjHd30twy22Cm70ndALmw1Zhxq+RkU8j28ScU/1qvn59yfj
	t2iJczeKWRYMs8JY2ZNQtD4wi5FGELP8SediIpGsvZyM7JDLSbAkUgW4CcGzp8RSc02c5GcfKaWpX
	wkPGlGGaz/Why4EIp+brbZAZwjNd0W8VwIXf8FSHVWKzWJlXoy9O5itXq9WmQwDI2IzZlUwWBNZPY
	ydFzowYYGoyxvQDNmbvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igDdN-0004pp-09; Sat, 14 Dec 2019 20:03:25 +0000
Received: from mo6-p01-ob.smtp.rzone.de ([2a01:238:20a:202:5301::9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igDdG-0004pP-FG; Sat, 14 Dec 2019 20:03:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1576353796;
 s=strato-dkim-0002; d=goldelico.com;
 h=To:References:Message-Id:Cc:Date:In-Reply-To:From:Subject:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=DPuTsZ3nF0GQ/mkxy1iKe+y0Pe4EavbpO5IBrMhpzbw=;
 b=b30rXUm/EKDErwQ9vsIDG6PL+ep9i8zrWMRiw6waCqIbf4CXEjcdDQxfdzaQE1VjTd
 9zclSECizHo1MuHyJAconocyPxMOlwS/LxvuuY+O+8RigGlnonSbfbiRgnih27NnoKNY
 kKlvlm1Rzk2ZI75cDuEPrd9jU3btpWNslHRpRJLM7EPj4VlRurnS8xlVCkoMIu7wRazE
 9GXpJQII1afsfhP7nTfFVY/KyxnTmXM5ReiFBpgZ+mKja2ai0/C2/kM+1x1jXj4Mfs10
 MNLqCmNvJtGEdK2JndXrjfOLtTLbY9KJvOZ5dP/2n/w/wUA0bGiKhgMv3Q5/M9/Zzv5E
 35eA==
X-RZG-AUTH: ":JGIXVUS7cutRB/49FwqZ7WcJeFKiMgPgp8VKxflSZ1P34KBj7wpz8NMGHPruwDCvIHw="
X-RZG-CLASS-ID: mo00
Received: from imac.fritz.box by smtp.strato.de (RZmta 46.0.7 DYNA|AUTH)
 with ESMTPSA id i03ca8vBEK2vCBh
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (curve X9_62_prime256v1 with 256
 ECDH bits, eq. 3072 bits RSA))
 (Client did not present a certificate);
 Sat, 14 Dec 2019 21:02:57 +0100 (CET)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
Subject: Re: BUG - was: [GIT PULL 2/3] bcm2835-soc-next-2019-10-15
From: "H. Nikolaus Schaller" <hns@goldelico.com>
In-Reply-To: <f6f38340-2555-7907-6b89-748c34cd2978@gmx.net>
Date: Sat, 14 Dec 2019 21:02:56 +0100
Message-Id: <A0CE3E97-00E3-401F-AB89-153700B4D93F@goldelico.com>
References: <1571159725-5090-1-git-send-email-wahrenst@gmx.net>
 <1571159725-5090-2-git-send-email-wahrenst@gmx.net>
 <12244E4E-A1A0-4EE9-ACD3-EA165D9A2C79@goldelico.com>
 <f6f38340-2555-7907-6b89-748c34cd2978@gmx.net>
To: Stefan Wahren <wahrenst@gmx.net>
X-Mailer: Apple Mail (2.3124)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191214_120319_105153_E8F5A41E 
X-CRM114-Status: GOOD (  13.96  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a01:238:20a:202:5301:0:0:9 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Florian Fainelli <f.fainelli@gmail.com>, Tony Lindgren <tony@atomide.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Russell King <linux@armlinux.org.uk>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 Discussions about the Letux Kernel <letux-kernel@openphoenux.org>,
 Linux-OMAP <linux-omap@vger.kernel.org>,
 arm-soc <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi all,
I think I have found the issue, it is not ZONE_DMA, see below.

> Am 14.12.2019 um 17:54 schrieb Stefan Wahren <wahrenst@gmx.net>:
> 
> Hi Nikolaus,
> 
> [add Nicolas as the new BCM2835 maintainer]
> 
> Am 14.12.19 um 11:54 schrieb H. Nikolaus Schaller:
>> Hi Stefan,
>> 
>>> Am 15.10.2019 um 19:15 schrieb Stefan Wahren <wahrenst@gmx.net>:
>>> 
>>> Hi Florian,
>>> 
>>> The following changes since commit 54ecb8f7028c5eb3d740bb82b0f1d90f2df63c5c:
>>> 
>>> Linux 5.4-rc1 (2019-09-30 10:35:40 -0700)
>>> 
>>> are available in the git repository at:
>>> 
>>> git://github.com/anholt/linux tags/bcm2835-soc-next-2019-10-15
>>> 
>>> for you to fetch changes up to 781fa0a954240c8487683ddf837fb2c4ede8e7ca:
>>> 
>>> ARM: bcm: Add support for BCM2711 SoC (2019-10-10 19:21:03 +0200)
>> this patch has finally arrived in v5.5-rc1 but it seems to break
>> multiplatform build.
>> 
>> We run a distribution kernel that supports OMAP3/4/5, i.MX6 and RasPi 3B+
>> but since rebasing to v5.5-rc1 the kernel hangs after "Starting Kernel ...".
>> On all ARM devices (incl. RasPi 3B+).
> 
> i wasn't able to reproduce this issue with the RPi 3B+ so far and i
> don't have any OMAP hardware:
> 
> Linux 5.3 (bcm2835_defconfig) + FW 2019-02-12 => okay
> Linux 5.3 (bcm2835_defconfig + ZONE_DMA) + FW 2019-02-12 => okay
> Linux 5.5-rc1 (bcm2835_defconfig) + FW 2019-02-12 => okay
> Linux 5.5-rc1 (multi_v7_defconfig) + FW 2019-02-12 => okay
> 
> So please provide more information about your RPi 3B+ setup:
> 
> - VC firmware version
> - additional bootloader (U-Boot)
> - boot source (SD card, USB, network)
> - kernel config
> 
> Did you tested the mainline kernel or the letux kernel?

On the OMAP I did test the mainline kernel with omap2plus_defconfig.
RasPi 3B+ experiment was with Letux kernel and config.


But I was lucky to find the issue by code inspection:

bcm2711_compat[] is missing a NULL sentinel.

Therefore, enabling CONFIG_ARCH_BCM2835 is sufficient to trigger the
problem unless you may have been lucky getting something starting with
a NULL packed after it on your bcm2835_defconfig or multi_v7_defconfig
build.

Patch submitted.

BR,
Nikolaus


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
