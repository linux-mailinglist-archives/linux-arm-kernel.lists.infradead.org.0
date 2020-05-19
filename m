Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 298DC1D9452
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 12:26:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-Reply-To:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=f1GoFAgtCKB0wov98FpAWBkPtfx8FnuGRLg4ldVzRkc=; b=Pwa/7tJ5GBGlQwYplTWufyL47p
	BvvlqQeYii7/PYleP3m2c4HAZfO1E+edbHDwiLcss/o2aJlG4V2OOztb13n/OgTaDq3YZ9w7l3VY5
	cFzyMvYVHqIYZ9mVdAP8P0QAafoXQLQzVP0eCAM1W1gq12uqYJ8sq6FRqMT3UxjS3lFeFCZciX2Ss
	ALeCVy41jgbvd333Y5nUegudg0XI3SRNYTnbJgLYq/2WrqbC4725WPpN+9U7e50t+7L9svFl7FHfN
	WkJXhxYgkvg4sn0kw2NNPu+Me22ZJr1wikTgtk9G84whcLB5mbSYbs8c5l6Guq+/IVKHsWyluAoan
	NFlQcoQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jazRx-0000Cb-EJ; Tue, 19 May 2020 10:26:17 +0000
Received: from esa3.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jazRn-0000Bi-Cq
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 10:26:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1589883967; x=1621419967;
 h=references:from:to:cc:subject:in-reply-to:date:
 message-id:mime-version;
 bh=rt0ifteO2Q6DmuLLDH31oRBTPIJqimPHw4gnMaEY94M=;
 b=e/cnaHj6Eg0LpOEnpe3Y1TJdfdFeFPQz+i0FUtj0drXsDo/N5zuu2pK7
 pNlcYx3nSZ+LMlVJJqz+P0EdY6gcm1oLETPT4PFDiSGzG1PaQri7gJ4pU
 FguaTKl7BPomXbS5Ko6WP0PdtxAOaWgNonFuaH6kYnXG73ZkgwHobleDT
 cK17OJCmW4b80RWeqPElk83s5oetY7GNZRM+93dx19y33cxhC/ilWyrpx
 oiT55zFAGZyTMs5fWLBDeAxPkDhSL9RasKMA0xncFD2Op1ORW2nxsoRF1
 56/xbvbeILwyFIKM5OSTzbbnJyEeMVR9pJ66O47YdqVIn1FSJEb0AtXt9 w==;
IronPort-SDR: LdawkTFAm4n+RjRpzDLC2tUtB0nKBzLCfIAS+HLACuFeo7EkFgeCPl1TGx7GUd8jVy5JPcJRoq
 h/N3cUP2rlzaCgREWQ6bhD/rT/bYVm0EJNb+aFMriMbVsT4nhQUVhsjy7FgtejdcKvlJvxaTOm
 nTA8KGU9DjkqTLHL12uyrW/QbJk+y8HTtedTDOG8Lqgv9CweSedF6YVOR6HMoBdmlw3T4fGhjq
 3Z5EcZAamvESE2WYI0ThqVgKztDp32U/40OiaTIh/vOaxaI6hotPkDE0d/m0S4Ln3AImXxlhYz
 bY4=
X-IronPort-AV: E=Sophos;i="5.73,409,1583218800"; d="scan'208";a="77149472"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 19 May 2020 03:26:02 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.87.72) by
 chn-vm-ex02.mchp-main.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 19 May 2020 03:26:03 -0700
Received: from soft-dev15.microsemi.net.microchip.com (10.10.115.15) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 19 May 2020 03:26:01 -0700
References: <20200513140031.25633-1-lars.povlsen@microchip.com>
 <20200513140031.25633-2-lars.povlsen@microchip.com>
 <CAHp75VcA-oDboufsDNx1ZR4+HBwYt7LdLOpbfs7-bM9ByucKJA@mail.gmail.com>
From: Lars Povlsen <lars.povlsen@microchip.com>
To: Andy Shevchenko <andy.shevchenko@gmail.com>
Subject: Re: [PATCH 01/10] spi: dw: Add support for polled operation via no
 IRQ specified in DT
In-Reply-To: <CAHp75VcA-oDboufsDNx1ZR4+HBwYt7LdLOpbfs7-bM9ByucKJA@mail.gmail.com>
Date: Tue, 19 May 2020 12:25:58 +0200
Message-ID: <87a724p6fd.fsf@soft-dev15.microsemi.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_032607_446359_FBD0B2B0 
X-CRM114-Status: GOOD (  10.15  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.153.233 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree <devicetree@vger.kernel.org>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>, Linux
 Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-spi <linux-spi@vger.kernel.org>,
 Serge Semin <Sergey.Semin@baikalelectronics.ru>, SoC Team <soc@kernel.org>,
 Mark Brown <broonie@kernel.org>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
 Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
 Lars Povlsen <lars.povlsen@microchip.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


Andy Shevchenko writes:

> On Wed, May 13, 2020 at 5:03 PM Lars Povlsen <lars.povlsen@microchip.com> wrote:
>>
>> With this change a SPI controller can be added without having a IRQ
>> associated, and causing all transfers to be polled. For SPI controllers
>> without DMA, this can significantly improve performance by less
>> interrupt handling overhead.
>
> ...
>
>> +#define VALID_IRQ(i) (i >= 0)
>
> drivers/rtc/rtc-cmos.c:95:#define is_valid_irq(n)               ((n) > 0)
>
> Candidate to be in include/linux/irq.h ?
>
> ...
>
>> +       if (VALID_IRQ(dws->irq))
>> +               free_irq(dws->irq, master);
>
> Isn't free_irq() aware of invalid ones (not found IRQ in the tree or
> any other backend container won't do anything)?
>
>
>>  err_free_master:
>>         spi_controller_put(master);
>>         return ret;
>> --
>> 2.26.2

I'll rework this with Serge.

Thank you!

-- 
Lars Povlsen,
Microchip

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
