Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C7EA87181
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 07:32:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ACZbJW30X9C6u839OokWrg+1/rydi6BKiyBCyC6XQy4=; b=N5Lm9ROQODLuPs
	jIPWnWH0daco2Dswv0Qgz4xY+H6c5ycHXR0XvyPM3qWohhC4GLBXFy5Y0nS52O7lzXghvumb/WgnP
	w6NrfC+d1mNMWPwWh9pCdLdGnI7rB9TFHhqehBjPHNkuEpXvKocMyzHWy0wpGirWMW49TF/tEpgTS
	qv840LtTSciI9Rgw2vAs0eqClJg8dGxkHuK4C9MtX9cvoR9F8LAcp/mzu4AI19yL+M4Dwd5N/LXJl
	D0SMVeM6DFFphn9FDpjS39vEC1EdR+c2/SbdDGe3XKY4pkiLUr17UTB5gnbGVoc9EGOJy/vc90gNx
	TBGvLeKyydg/dB9en+dw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvxWB-0001Ux-Ph; Fri, 09 Aug 2019 05:32:47 +0000
Received: from mga02.intel.com ([134.134.136.20])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvxVz-0001UI-WA
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 05:32:37 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Aug 2019 22:32:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,364,1559545200"; d="scan'208";a="193315385"
Received: from pipin.fi.intel.com (HELO pipin) ([10.237.72.175])
 by fmsmga001.fm.intel.com with ESMTP; 08 Aug 2019 22:32:29 -0700
From: Felipe Balbi <felipe.balbi@linux.intel.com>
To: Arnd Bergmann <arnd@arndb.de>, Tony Lindgren <tony@atomide.com>,
 Aaro Koskinen <aaro.koskinen@iki.fi>, Alan Stern <stern@rowland.harvard.edu>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH 03/22] ARM: omap1: move omap15xx local bus handling to
 usb.c
In-Reply-To: <20190808212234.2213262-4-arnd@arndb.de>
References: <20190808212234.2213262-1-arnd@arndb.de>
 <20190808212234.2213262-4-arnd@arndb.de>
Date: Fri, 09 Aug 2019 08:32:28 +0300
Message-ID: <87y302ewer.fsf@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_223236_077625_22C8D1AB 
X-CRM114-Status: GOOD (  11.88  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.20 listed in list.dnswl.org]
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
Cc: Arnd Bergmann <arnd@arndb.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Linus Walleij <linus.walleij@linaro.org>, linux-usb@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 Tomi Valkeinen <tomi.valkeinen@ti.com>, linux-omap@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Arnd Bergmann <arnd@arndb.de> writes:

> The mach/memory.h file only exists to implement a dma offset for "Local
> Bus" devices, and that consists of the OHCI USB controller for practical
> purposes.
>
> The generic dma-mapping interface has gained this exact feature some
> years ago and can do it much more efficiently, so replace the complex
> __arch_virt_to_dma/__arch_dma_to_pfn/... logic with a much simpler boot
> time initialization.
>
> This should also make any code that performs dma mapping calls at
> runtime much more efficient, by eliminating the strcmp() along with
> the computation.
>
> Similar, a portion of the ohci-omap driver is just there for configuring
> the memory translation, this too can get moved into usb.c
>
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

For all of these patches related to usb:

Acked-by: Felipe Balbi <felipe.balbi@linux.intel.com>

Thanks for cleaning this up, Arnd.

-- 
balbi

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
