Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CB3A1C072D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 21:59:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7raUfXlNwt5YU/R/UxgIjZSzM/qf5D/KXM13bXsfXeM=; b=qbLdRyMsZ7Rrf8
	EMuUtZN8XsggUX+vxypXtk9r0IjdRk838A8LmOzkSwA3q3/7gmlskAZwNtmo+Xbc2zh1j34dxgjyF
	ld2kktC3YXxBCsFRiNTx7/y1jboyD2dZ9EOCue8+NLY2uY2mJAaMLEgbLz3D85CfkfKtWp/LEANTz
	AYyuv9lA3W4jE6LIqUMLq7rIvsq/FwZfx1/7xx1PueeMCxcpXcmJUihYwaQHWZwalZvN0dK+3yKTp
	fdB6Oly4ozs3q3G96Gr+m+7TImN2ElGqGIWXloRHxBu6tvYKBudtB+rVRW/sFv0uxF424CzIk1qEq
	dtBLyaHFraiPr2UG2M3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUFL2-0006Wx-Eo; Thu, 30 Apr 2020 19:59:16 +0000
Received: from mga11.intel.com ([192.55.52.93])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUFKt-0006W6-Rj
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 19:59:09 +0000
IronPort-SDR: c2nSeHtaP7QyGsipNOmbHNrIE1sDtdsvG+TfuoGHaZ9FzDVkTHcKlLeOpTcC1x2sPZlerp60wy
 nWCx0hubgHbg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2020 12:59:05 -0700
IronPort-SDR: s1mjBUu/ajRwjZ3ZpNgANTVYmxk6oLFeP0VXuFISLP9/D38GZlsNzWaTxlfq4vHTzFC9hmPVwR
 WLJx4yNqwbgQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,337,1583222400"; d="scan'208";a="248370687"
Received: from irsmsx153.ger.corp.intel.com ([163.33.192.75])
 by fmsmga007.fm.intel.com with ESMTP; 30 Apr 2020 12:59:04 -0700
Received: from irsmsx103.ger.corp.intel.com ([169.254.3.44]) by
 IRSMSX153.ger.corp.intel.com ([169.254.9.216]) with mapi id 14.03.0439.000;
 Thu, 30 Apr 2020 20:49:37 +0100
From: "Alessandrelli, Daniele" <daniele.alessandrelli@intel.com>
To: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 0/1] Add IMR driver for Keem Bay
Thread-Topic: [PATCH 0/1] Add IMR driver for Keem Bay
Thread-Index: AQHWF/bwdmCqRgB2xEunJAxCAmyaOqiSEEGA
Date: Thu, 30 Apr 2020 19:49:36 +0000
Message-ID: <d3f045b05c83d0eca1d5498587493ca485e0a1a0.camel@intel.com>
References: <cover.1587485099.git.daniele.alessandrelli@intel.com>
In-Reply-To: <cover.1587485099.git.daniele.alessandrelli@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.252.22.135]
Content-ID: <A6BF041FE16A394DA13BF5020330A280@intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_125907_907530_705F3FEF 
X-CRM114-Status: GOOD (  20.36  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "robh@kernel.org" <robh@kernel.org>, "Shevchenko,
 Andriy" <andriy.shevchenko@intel.com>, "arnd@arndb.de" <arnd@arndb.de>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>, "Murphy,
 Paul J" <paul.j.murphy@intel.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 2020-04-21 at 17:36 +0100, Daniele Alessandrelli wrote:
> The following is a patch for a new Intel Movidius SoC, code-named
> Keem
> Bay.
> 
> Keem Bay needs a driver to disable the Isolated Memory Region (IMR)
> set up by the SoC bootloader during early boot.
> 
> If such an IMR is not disabled and some device tries to access it,
> the system will reboot.
> 
> Since this driver is SoC-specific and Keem Bay is a new SoC, I was
> unsure of where to put this driver. In the end I decided to create a
> new 'keembay' directory in 'drivers/soc'. I hope that's reasonable,
> if
> not, just let me know.
> 
> 
> Daniele Alessandrelli (1):
>   soc: keembay: Add Keem Bay IMR driver
> 
>  MAINTAINERS                       |  5 ++++
>  drivers/soc/Kconfig               |  1 +
>  drivers/soc/Makefile              |  1 +
>  drivers/soc/keembay/Kconfig       | 22 +++++++++++++++++
>  drivers/soc/keembay/Makefile      |  5 ++++
>  drivers/soc/keembay/keembay-imr.c | 40
> +++++++++++++++++++++++++++++++
>  6 files changed, 74 insertions(+)
>  create mode 100644 drivers/soc/keembay/Kconfig
>  create mode 100644 drivers/soc/keembay/Makefile
>  create mode 100644 drivers/soc/keembay/keembay-imr.c
> 

Adding some more people (Arnd and linux-arm-kernel ML) in CC in the
hope of getting some guidance on how to have this patch merged.

I'm a novice, so I wonder if the lack of feedback is because I'm doing
something wrong or if I just sent the initial email to the wrong people
/ ML.

I'd appreciate any help you can provide.
--------------------------------------------------------------
Intel Research and Development Ireland Limited
Registered in Ireland
Registered Office: Collinstown Industrial Park, Leixlip, County Kildare
Registered Number: 308263


This e-mail and any attachments may contain confidential material for the sole
use of the intended recipient(s). Any review or distribution by others is
strictly prohibited. If you are not the intended recipient, please contact the
sender and delete all copies.
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
