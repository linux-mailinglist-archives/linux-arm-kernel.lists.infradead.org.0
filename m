Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63C56DD87A
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 19 Oct 2019 13:25:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DVU8YkHdIdEF1OUjs3e2+Ipa8bitcdlgNeqAYlg5I2Q=; b=cV+8rR5m6p+eMq
	ibpN+UxatqdyTJwr6ujuAuFojJWSaVdafXhl3SpWaP4t8wKDRuOQeKikJNTqfxi2HHl9X8hFPgeeJ
	LQihrr4AW7aECkeeCE+iTHcrjj9CT6vuC0KfQH9IF+95IqfpgXGGhO4GWYeViYfoLzjMvwYCziG8Q
	32D5dazS1jhvm1Ebn4D5Ea0ZKfa6EPuxRD/LqO7a6395C1Kpux4Flveb7En5ppmP0YD1CJMBLqeel
	WeCEzap4tLwynK1nrB8TVMLzNQbL/wFGOctBlv+rGcfMdO4otBVv1HG8Wlp1he7jyrMnmGINsG0fr
	zP/s/tktenGD88PmqYOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLmrk-00009D-57; Sat, 19 Oct 2019 11:25:48 +0000
Received: from mo6-p02-ob.smtp.rzone.de ([2a01:238:20a:202:5302::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLmra-00008n-90
 for linux-arm-kernel@lists.infradead.org; Sat, 19 Oct 2019 11:25:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1571484335;
 s=strato-dkim-0002; d=goldelico.com;
 h=To:References:Message-Id:Cc:Date:In-Reply-To:From:Subject:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=7L/sjFraJ4hVObqz6n+Hjde2x2GWCuAJ3/E9bu48O6s=;
 b=f9glZTcv+9mtbYo7pmo1pt7K0zNKAVUlQNFJvpoumi69X4RuqNEDAAGzx1sju4vz7F
 6eut20FjHyBRX9/ExQoutbiEr/uJ2WMowPCS5PxxFY4sUkAxcVDs7wpwykNBGZAgm6CI
 8jQEQNn7K5hi5tWa+WyzGBbv196vrP8Tmcz+SE+K1JACXcv/rtF86ImyyU7Pq8q/qohx
 UJ5BEB9iY7YutgYsB2X23b+1FfyPLT3okEYXdHShn7a4bIbhP977jKxacLNeblCwngso
 iPJeE8EjYPTUmnCpg1Y+f2SOTtDpNP4xTPlYL4xBPrW3eyR0Rzi/tP+6I/IGmL4JRb6K
 sErg==
X-RZG-AUTH: ":JGIXVUS7cutRB/49FwqZ7WcJeFKiMgPgp8VKxflSZ1P34KBj4Qpw9iZeHmAkw4voSw=="
X-RZG-CLASS-ID: mo00
Received: from imac.fritz.box by smtp.strato.de (RZmta 44.28.1 DYNA|AUTH)
 with ESMTPSA id R0b2a8v9JBPKEpk
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (curve secp521r1 with 521 ECDH
 bits, eq. 15360 bits RSA)) (Client did not present a certificate);
 Sat, 19 Oct 2019 13:25:20 +0200 (CEST)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
Subject: Re: [PATCH 0/9] OpenPandora: make wl1251 connected to mmc3 sdio port
 of OpenPandora work again
From: "H. Nikolaus Schaller" <hns@goldelico.com>
In-Reply-To: <87sgnpvvsu.fsf@kamboji.qca.qualcomm.com>
Date: Sat, 19 Oct 2019 13:25:20 +0200
Message-Id: <584D2E2D-7617-4F7D-A567-507C7CCB4A53@goldelico.com>
References: <cover.1571430329.git.hns@goldelico.com>
 <87sgnpvvsu.fsf@kamboji.qca.qualcomm.com>
To: Kalle Valo <kvalo@codeaurora.org>
X-Mailer: Apple Mail (2.3124)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191019_042538_913321_1D611627 
X-CRM114-Status: GOOD (  14.44  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a01:238:20a:202:5302:0:0:1 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 devicetree@vger.kernel.org, Tony Lindgren <tony@atomide.com>,
 linux-wireless@vger.kernel.org, Kefeng Wang <wangkefeng.wang@huawei.com>,
 Bjorn Helgaas <bhelgaas@google.com>, letux-kernel@openphoenux.org,
 "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
 Russell King <linux@armlinux.org.uk>, Mike Rapoport <rppt@linux.ibm.com>,
 Yangtao Li <tiny.windzz@gmail.com>, linux-arm-kernel@lists.infradead.org,
 Petr Mladek <pmladek@suse.com>,
 =?utf-8?Q?Beno=C3=AEt_Cousson?= <bcousson@baylibre.com>,
 kernel@pyra-handheld.com, Alexios Zavras <alexios.zavras@intel.com>,
 Rob Herring <robh+dt@kernel.org>, John Stultz <john.stultz@linaro.org>,
 David Sterba <dsterba@suse.com>, Thomas Gleixner <tglx@linutronix.de>,
 linux-omap@vger.kernel.org, Allison Randal <allison@lohutok.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-mmc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Sakari Ailus <sakari.ailus@linux.intel.com>,
 netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

> Am 19.10.2019 um 13:06 schrieb Kalle Valo <kvalo@codeaurora.org>:
> 
> "H. Nikolaus Schaller" <hns@goldelico.com> writes:
> 
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
>> H. Nikolaus Schaller (9):
>>  Documentation: dt: wireless: update wl1251 for sdio
>>  net: wireless: ti: wl1251 add device tree support
>>  DTS: ARM: pandora-common: define wl1251 as child node of mmc3
>>  mmc: host: omap_hsmmc: add code for special init of wl1251 to get rid
>>    of pandora_wl1251_init_card
>>  omap: pdata-quirks: remove openpandora quirks for mmc3 and wl1251
>>  mmc: sdio: fix wl1251 vendor id
>>  mmc: core: fix wl1251 sdio quirks
>>  net: wireless: ti: wl1251 use new SDIO_VENDOR_ID_TI_WL1251 definition
>>  net: wireless: ti: remove local VENDOR_ID and DEVICE_ID definitions
> 
> I didn't get patches 3-7

oh sorry. I don't know why.

Here they are all: https://patchwork.kernel.org/cover/11199599/

> so I don't know what they have, but what's the
> plan how these should be applied? Normally wl1251 patches go via
> wireless-drivers-next but are you planning something else?

Well, I have no plan for that except that all should end up fixed in mainline
and stable.

The issue is that multiple subsystems are involved (net/wireless, mmc and arm/omap)
and all patches should be ideally be applied in combination.

BR and thanks,
Nikolaus


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
