Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CAD7C11FBEC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 00:43:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FXhl38ZDNQiQSUlOSWIJLmSIEOyspuKyYaCNPwny1xg=; b=ZxsfAoHY0ulJY5
	IyWn5J1z867AWjt/sUZwsmdMs11M9XwjHBsU2mUgPukJcNBZKRxqklLnY42N9k7KV+W3AIsJ+uoTc
	ZrCGJOYGJMZBNbKgWRP6AbFamlxGP4aYVS5FMEmm7G5Z8ovMnq12COEUfg5QvqxnRku5vW83BVhQo
	xZdEoTZ9AhZFQ2uoDR0FH2j3S2tJrZRuEwBQfNA/HgjNUFUtpr9MzX9Ao1ua9bcDfzfwmY8BhW/oC
	gZ/vlmUwv29VN8Ht+e/kLm2XQNd1ZUTNQAN2HCIocdwFjjSRFWxYa8WyraNQMd3+biNAcrKV/d92x
	oEfPDZtlujrDgT0yUj3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igdY6-0001ed-N5; Sun, 15 Dec 2019 23:43:42 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igdXt-0001dL-Ds; Sun, 15 Dec 2019 23:43:30 +0000
Received: from ip5f5a5f74.dynamic.kabel-deutschland.de ([95.90.95.116]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1igdXn-0004g5-FK; Mon, 16 Dec 2019 00:43:23 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Soeren Moch <smoch@web.de>
Subject: Re: [PATCH v2 0/9] brcmfmac: add support for BCM4359 SDIO chipset
Date: Mon, 16 Dec 2019 00:43:22 +0100
Message-ID: <2685733.IzV8dBlDb2@diego>
In-Reply-To: <22526722-1ae8-a018-0e24-81d7ad7512dd@web.de>
References: <20191211235253.2539-1-smoch@web.de>
 <1daadfe0-5964-db9b-818c-6e4c75ac6a69@web.de>
 <22526722-1ae8-a018-0e24-81d7ad7512dd@web.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191215_154329_618358_6684442E 
X-CRM114-Status: GOOD (  15.94  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: brcm80211-dev-list.pdl@broadcom.com, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 brcm80211-dev-list@cypress.com, Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Soeren,

Am Sonntag, 15. Dezember 2019, 22:24:10 CET schrieb Soeren Moch:
> On 12.12.19 11:59, Soeren Moch wrote:
> > On 12.12.19 10:42, Kalle Valo wrote:
> >> Soeren Moch <smoch@web.de> writes:
> >>
> >>> Add support for the BCM4359 chipset with SDIO interface and RSDB support
> >>> to the brcmfmac wireless network driver in patches 1-7.
> >>>
> >>> Enhance devicetree of the RockPro64 arm64/rockchip board to use an
> >>> AP6359SA based wifi/bt combo module with this chipset in patches 8-9.
> >>>
> >>>
> >>> Chung-Hsien Hsu (1):
> >>>   brcmfmac: set F2 blocksize and watermark for 4359
> >>>
> >>> Soeren Moch (5):
> >>>   brcmfmac: fix rambase for 4359/9
> >>>   brcmfmac: make errors when setting roaming parameters non-fatal
> >>>   brcmfmac: add support for BCM4359 SDIO chipset
> >>>   arm64: dts: rockchip: RockPro64: enable wifi module at sdio0
> >>>   arm64: dts: rockchip: RockPro64: hook up bluetooth at uart0
> >>>
> >>> Wright Feng (3):
> >>>   brcmfmac: reset two D11 cores if chip has two D11 cores
> >>>   brcmfmac: add RSDB condition when setting interface combinations
> >>>   brcmfmac: not set mbss in vif if firmware does not support MBSS
> >>>
> >>>  .../boot/dts/rockchip/rk3399-rockpro64.dts    | 50 +++++++++++---
> >>>  .../broadcom/brcm80211/brcmfmac/bcmsdh.c      |  8 ++-
> >>>  .../broadcom/brcm80211/brcmfmac/cfg80211.c    | 68 +++++++++++++++----
> >>>  .../broadcom/brcm80211/brcmfmac/chip.c        | 54 ++++++++++++++-
> >>>  .../broadcom/brcm80211/brcmfmac/chip.h        |  1 +
> >>>  .../broadcom/brcm80211/brcmfmac/pcie.c        |  2 +-
> >>>  .../broadcom/brcm80211/brcmfmac/sdio.c        | 17 +++++
> >>>  include/linux/mmc/sdio_ids.h                  |  2 +
> >>>  8 files changed, 176 insertions(+), 26 deletions(-)
> >> Just to make sure we are on the same page, I will apply patches 1-7 to
> >> wireless-drivers-next and patches 8-9 go to some other tree? And there
> >> are no dependencies between the brcmfmac patches and dts patches?
> >>
> > Yes, this also is my understanding. I'm glad if you are fine with
> > patches 1-7.
> > Heiko will pick up patches 8-9 later for linux-rockchip independently.
> > And if we need another round of review for patches 8-9, I think we don't
> > need to bother linux-wireless with this.
> 
> Heiko,
> 
> is this OK for you when patches 1-7 are merged now in wireless-drivers,
> and then I send a v3 for patches 8-9 only for you to merge in
> linux-rockchip later? Or do you prefer a full v3 for the whole series
> with only this pending clock name update in patch 9?

Nope, merging 1-7 from this v2 and then getting a v3 with only the dts
stuff is perfectly fine :-)

Heiko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
