Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 131B4FC9AD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 16:16:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w1EXnbRkf5KfePV6BWW0Q9kC+hlWNgoAu1VGrJIyRME=; b=EU0knw7LbQMdH5
	ggmisNJZ0AMS3786JdlBClSGoYCMEqjenmtmn7MrUepplWGwLme3Gbha/QROeelJzTXTO941cSY+O
	l6OxMI7smMY02N9FaOJAXSwr2ZeJoGCADVBBBv+6i5tBLMPzXuKp5rRuRhNIfzvSmNoM40n163PMU
	oehakLc4JTpkFGi4+UHTW2TIYnZ48V+i5jBCwspJCiY8xl/3paQrSwj2ObAtnzAIZStv6+j3Z6toa
	nFbjtLlQNUVL5xzZUCZYLhwczkCCa/Y5C9GkSMjfWKmudS0qCFgFX6v79pHGfyAsAbNd1Fa7lDrSU
	yeSRllwh6Ke2JejvZaGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVGr9-0005px-Q4; Thu, 14 Nov 2019 15:16:23 +0000
Received: from mo6-p02-ob.smtp.rzone.de ([2a01:238:20a:202:5302::8])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVGr1-0005ov-9i
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 15:16:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1573744561;
 s=strato-dkim-0002; d=goldelico.com;
 h=To:References:Message-Id:Cc:Date:In-Reply-To:From:Subject:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=dIdO6+wWmfeQm+EP9ocIN+ER7iLsR+gearCu29RvDj8=;
 b=hk5g9JFjLes4VyFssbz6Tlg1+SPgEED+KFzOa1ji/07MpKGeDXcDyEf4UY0+cX+Ki4
 oKp717fBbWDPGeyx5vGZ+vi2HeQnDjKpM/DM8wDeeAIyWZ9hOKRzUMFWTJll0wDPjhZG
 FovxBONQC0V0sse3j4x6DeUAih2X6PBYwTWR2diA8f24SH6FmSUwJ4vb+sYow1gKAFuo
 +4QQPq/Y/dYtWbuCTfvx9Q2gJCy8K8e2RqOqu43bquiM7EZ0DlZ0dymKetayRIA68AOK
 STwo6ZEU99mPk64Eiie0qW4IaKrtdEyYKLUIjqbjtyVbtbwnz5Q/ztVc+5NSubRJYzux
 7tlg==
X-RZG-AUTH: ":JGIXVUS7cutRB/49FwqZ7WcJeFKiMgPgp8VKxflSZ1P34KBj5Qpw97WFDVCbXA4F8vU="
X-RZG-CLASS-ID: mo00
Received: from imac.fritz.box by smtp.strato.de (RZmta 44.29.0 DYNA|AUTH)
 with ESMTPSA id L09db3vAEFFiEyY
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (curve secp521r1 with 521 ECDH
 bits, eq. 15360 bits RSA)) (Client did not present a certificate);
 Thu, 14 Nov 2019 16:15:44 +0100 (CET)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
Subject: Re: [PATCH v3 00/12] OpenPandora: make wl1251 connected to mmc3 sdio
 port of OpenPandora work again
From: "H. Nikolaus Schaller" <hns@goldelico.com>
In-Reply-To: <CAPDyKFrntf2Kd9Zf7uxRCUk_OrKD8B3xOKmvPaf04X21L5HwWA@mail.gmail.com>
Date: Thu, 14 Nov 2019 16:15:44 +0100
Message-Id: <5F5A5FC0-8F91-4D5B-9EF6-AF36FE38B588@goldelico.com>
References: <cover.1573122644.git.hns@goldelico.com>
 <CAPDyKFrntf2Kd9Zf7uxRCUk_OrKD8B3xOKmvPaf04X21L5HwWA@mail.gmail.com>
To: Ulf Hansson <ulf.hansson@linaro.org>
X-Mailer: Apple Mail (2.3124)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_071615_928710_79B17B6F 
X-CRM114-Status: GOOD (  18.45  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a01:238:20a:202:5302:0:0:8 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Kefeng Wang <wangkefeng.wang@huawei.com>, DTML <devicetree@vger.kernel.org>,
 Tony Lindgren <tony@atomide.com>,
 linux-wireless <linux-wireless@vger.kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Discussions about the Letux Kernel <letux-kernel@openphoenux.org>,
 "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
 Russell King <linux@armlinux.org.uk>, Mike Rapoport <rppt@linux.ibm.com>,
 Yangtao Li <tiny.windzz@gmail.com>, Kalle Valo <kvalo@codeaurora.org>,
 Petr Mladek <pmladek@suse.com>,
 =?utf-8?Q?Beno=C3=AEt_Cousson?= <bcousson@baylibre.com>,
 kernel@pyra-handheld.com, Alexios Zavras <alexios.zavras@intel.com>,
 Rob Herring <robh+dt@kernel.org>, John Stultz <john.stultz@linaro.org>,
 David Sterba <dsterba@suse.com>, Thomas Gleixner <tglx@linutronix.de>,
 linux-omap <linux-omap@vger.kernel.org>, Allison Randal <allison@lohutok.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>, netdev <netdev@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Ulf,

> Am 14.11.2019 um 15:18 schrieb Ulf Hansson <ulf.hansson@linaro.org>:
> 
> On Thu, 7 Nov 2019 at 11:31, H. Nikolaus Schaller <hns@goldelico.com> wrote:
>> 
>> 
>> * add a revisit note for special wl1251 handling code because it should
>>  be solved more generic in mmc core - suggested by Ulf Hansson <ulf.hansson@linaro.org>
>> * remove init_card callback from platform_data/hsmmc-omap.h - suggested by Ulf Hansson <ulf.hansson@linaro.org>
>> * remove obstructive always-on for vwlan regulator - suggested by Ulf Hansson <ulf.hansson@linaro.org>
>> * rename DT node - suggested by Rob Herring <robh@kernel.org>
>> * fix ARM: dts: subject prefix - suggested by Tony Lindgren <tony@atomide.com>
>> * also remove omap2_hsmmc_info and obc-y line in Makefile - suggested by Tony Lindgren <tony@atomide.com>
> 
> No further comments from my side. Let's just agree on how to deal with
> the ti,power-gpio, then I can apply this.

I'd say it can be a separate patch since it does not fix the Pandora
issues, but is a new and independent optimization.

And in case someone complains and uses it for some out-of tree purpose
it can be discussed or even be reverted easier if it is a separate patch.

I can do it in the next days.

> Thanks a lot for fixing all this mess!

I hope the users also appreciate our work.

Best regards,
Nikolaus

> 
> Kind regards
> Uffe
> 
>> 
>> PATCH V2 2019-10-19 20:41:47:
>> * added acked-by for wl1251 patches - Kalle Valo <kvalo@codeaurora.org>
>> * really removed old pdata-quirks code (not through #if 0)
>> * splited out a partial revert of
>>        efdfeb079cc3b ("regulator: fixed: Convert to use GPIO descriptor only")
>>  because that was introduced after v4.19 and stops the removal of
>>  the pdata-quirks patch from cleanly applying to v4.9, v4.14, v4.19
>>  - reported by Sasha Levin <sashal@kernel.org>
>> * added a new patch to remove old omap hsmmc since pdata quirks
>>  were last user - suggested by Tony Lindgren <tony@atomide.com>
>> 
>> PATCH V1 2019-10-18 22:25:39:
>> Here we have a set of scattered patches to make the OpenPandora WiFi work again.
>> 
>> v4.7 did break the pdata-quirks which made the mmc3 interface
>> fail completely, because some code now assumes device tree
>> based instantiation.
>> 
>> Fixes: 81eef6ca9201 ("mmc: omap_hsmmc: Use dma_request_chan() for requesting DMA channel")
>> 
>> v4.11 did break the sdio qirks for wl1251 which made the driver no longer
>> load, although the device was found as an sdio client.
>> 
>> Fixes: 884f38607897 ("mmc: core: move some sdio IDs out of quirks file")
>> 
>> To solve these issues:
>> * we convert mmc3 and wl1251 initialization from pdata-quirks
>>  to device tree
>> * we make the wl1251 driver read properties from device tree
>> * we fix the mmc core vendor ids and quirks
>> * we fix the wl1251 (and wl1271) driver to use only vendor ids
>>  from header file instead of (potentially conflicting) local
>>  definitions
>> 
>> 
>> H. Nikolaus Schaller (12):
>>  Documentation: dt: wireless: update wl1251 for sdio
>>  net: wireless: ti: wl1251 add device tree support
>>  ARM: dts: pandora-common: define wl1251 as child node of mmc3
>>  mmc: host: omap_hsmmc: add code for special init of wl1251 to get rid
>>    of pandora_wl1251_init_card
>>  omap: pdata-quirks: revert pandora specific gpiod additions
>>  omap: pdata-quirks: remove openpandora quirks for mmc3 and wl1251
>>  omap: remove omap2_hsmmc_info in old hsmmc.[ch] and update Makefile
>>  mmc: host: omap-hsmmc: remove init_card pdata callback from pdata
>>  mmc: sdio: fix wl1251 vendor id
>>  mmc: core: fix wl1251 sdio quirks
>>  net: wireless: ti: wl1251 use new SDIO_VENDOR_ID_TI_WL1251 definition
>>  net: wireless: ti: remove local VENDOR_ID and DEVICE_ID definitions
>> 
>> .../bindings/net/wireless/ti,wl1251.txt       |  26 +++
>> arch/arm/boot/dts/omap3-pandora-common.dtsi   |  36 +++-
>> arch/arm/mach-omap2/Makefile                  |   3 -
>> arch/arm/mach-omap2/common.h                  |   1 -
>> arch/arm/mach-omap2/hsmmc.c                   | 171 ------------------
>> arch/arm/mach-omap2/hsmmc.h                   |  32 ----
>> arch/arm/mach-omap2/pdata-quirks.c            | 105 -----------
>> drivers/mmc/core/quirks.h                     |   7 +
>> drivers/mmc/host/omap_hsmmc.c                 |  30 ++-
>> drivers/net/wireless/ti/wl1251/sdio.c         |  23 ++-
>> drivers/net/wireless/ti/wlcore/sdio.c         |   8 -
>> include/linux/mmc/sdio_ids.h                  |   2 +
>> include/linux/platform_data/hsmmc-omap.h      |   3 -
>> 13 files changed, 111 insertions(+), 336 deletions(-)
>> delete mode 100644 arch/arm/mach-omap2/hsmmc.c
>> delete mode 100644 arch/arm/mach-omap2/hsmmc.h
>> 
>> --
>> 2.23.0
>> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
