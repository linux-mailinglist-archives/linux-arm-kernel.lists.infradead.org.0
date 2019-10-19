Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EEEADDD88A
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 19 Oct 2019 13:35:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DfHKZ0bUYTC/Osv+OW0B5JVGXbUNNTPnG5iqYFlkFNE=; b=UiMi1m4xSwjU5y
	o/F3CM+yumxIYr1Tp081UorZ6L5InIpOj7HMzFEO7xV9jCD8KeYb7T6zer9ie0dnlaGs+9wT6Yn93
	z0VIq3aS0sn42otUBDJimNSTcksxIYi7ENwVhKoi/WzRhznpyhhUahTRnne4SyLVBGxMuaqOqntMa
	dgFlaCI1MpZe/yUy4CzJlr4W1A9T4uAJKq25GYCX+RHy47cWpo22MBeuG4r6/RLT7kofuYU8Qxjfl
	dOl98vZREHu6NYYgx5pwgInd6zIHCflwi+K4LrAmKKpWWjtKyGQsjWCo3aS8JcJ/2g0/R+FFL8NvG
	OIpEw5Emcb7IBf8hk+pQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLn0w-0003XQ-Qu; Sat, 19 Oct 2019 11:35:18 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLn0m-0003Ts-0L
 for linux-arm-kernel@lists.infradead.org; Sat, 19 Oct 2019 11:35:09 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 6F7FB60D58; Sat, 19 Oct 2019 11:35:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1571484907;
 bh=2Xx/PoFNBKT4cvQQWZqZuKa3vjJHJ9OPdlZAX5aVIgg=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=SAysUsZYh9P8k1dX9KyTcyzvT6Nn5nOwtBib/jo52daUzwIbdADuRajitkY8h82A2
 rjxMOC4R65kyQSEZIhrKoV+aL7CLjO5BNEBSFpxD3Eud23EsOHvLdzqaaRAaOxs4CP
 p6ajZWBjeYMKL69L84pR1YLkjpksi6W2eTx+elho=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: kvalo@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 88F67601EA;
 Sat, 19 Oct 2019 11:34:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1571484905;
 bh=2Xx/PoFNBKT4cvQQWZqZuKa3vjJHJ9OPdlZAX5aVIgg=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=dgwjPI86YslgyZtCByFuNG0ZcDPASaMoues6By5VUtSUYDCEbKXOD3luVCNv8pUTR
 p7HGPy9hOYJAuk70bVirNgBMNTAKeUSKLheDm07QT1l9y5mVFEjEb5OYNIQ5yKfZzU
 Fat4Amj3p2tyRb3vMlcKSuLEOQ5e/xPH4z/dM6Hw=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 88F67601EA
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: "H. Nikolaus Schaller" <hns@goldelico.com>
Subject: Re: [PATCH 0/9] OpenPandora: make wl1251 connected to mmc3 sdio port
 of OpenPandora work again
References: <cover.1571430329.git.hns@goldelico.com>
 <87sgnpvvsu.fsf@kamboji.qca.qualcomm.com>
 <584D2E2D-7617-4F7D-A567-507C7CCB4A53@goldelico.com>
Date: Sat, 19 Oct 2019 14:34:57 +0300
In-Reply-To: <584D2E2D-7617-4F7D-A567-507C7CCB4A53@goldelico.com> (H. Nikolaus
 Schaller's message of "Sat, 19 Oct 2019 13:25:20 +0200")
Message-ID: <87d0etvuhq.fsf@kamboji.qca.qualcomm.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191019_043508_093905_6725313F 
X-CRM114-Status: GOOD (  19.06  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 =?utf-8?Q?Beno=C3=AEt?= Cousson <bcousson@baylibre.com>,
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

"H. Nikolaus Schaller" <hns@goldelico.com> writes:

> Hi,
>
>> Am 19.10.2019 um 13:06 schrieb Kalle Valo <kvalo@codeaurora.org>:
>> 
>> "H. Nikolaus Schaller" <hns@goldelico.com> writes:
>> 
>>> Here we have a set of scattered patches to make the OpenPandora WiFi work again.
>>> 
>>> v4.7 did break the pdata-quirks which made the mmc3 interface
>>> fail completely, because some code now assumes device tree
>>> based instantiation.
>>> 
>>> Fixes: 81eef6ca9201 ("mmc: omap_hsmmc: Use dma_request_chan() for requesting DMA channel")
>>> 
>>> v4.11 did break the sdio qirks for wl1251 which made the driver no longer
>>> load, although the device was found as an sdio client.
>>> 
>>> Fixes: 884f38607897 ("mmc: core: move some sdio IDs out of quirks file")
>>> 
>>> To solve these issues:
>>> * we convert mmc3 and wl1251 initialization from pdata-quirks
>>>  to device tree
>>> * we make the wl1251 driver read properties from device tree
>>> * we fix the mmc core vendor ids and quirks
>>> * we fix the wl1251 (and wl1271) driver to use only vendor ids
>>>  from header file instead of (potentially conflicting) local
>>>  definitions
>>> 
>>> 
>>> H. Nikolaus Schaller (9):
>>>  Documentation: dt: wireless: update wl1251 for sdio
>>>  net: wireless: ti: wl1251 add device tree support
>>>  DTS: ARM: pandora-common: define wl1251 as child node of mmc3
>>>  mmc: host: omap_hsmmc: add code for special init of wl1251 to get rid
>>>    of pandora_wl1251_init_card
>>>  omap: pdata-quirks: remove openpandora quirks for mmc3 and wl1251
>>>  mmc: sdio: fix wl1251 vendor id
>>>  mmc: core: fix wl1251 sdio quirks
>>>  net: wireless: ti: wl1251 use new SDIO_VENDOR_ID_TI_WL1251 definition
>>>  net: wireless: ti: remove local VENDOR_ID and DEVICE_ID definitions
>> 
>> I didn't get patches 3-7
>
> oh sorry. I don't know why.
>
> Here they are all: https://patchwork.kernel.org/cover/11199599/

Thanks.

>> so I don't know what they have, but what's the
>> plan how these should be applied? Normally wl1251 patches go via
>> wireless-drivers-next but are you planning something else?
>
> Well, I have no plan for that except that all should end up fixed in mainline
> and stable.
>
> The issue is that multiple subsystems are involved (net/wireless, mmc and arm/omap)
> and all patches should be ideally be applied in combination.

Ok, I then assume someone else is going to handle these, wl1251 rarely
has any changes so the chance of conflicts is small anyway, and I'll
drop the wl1251 patches from my patchwork.

For wl1251 patches 1, 2, 8 and 9:

Acked-by: Kalle Valo <kvalo@codeaurora.org>

-- 
https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
