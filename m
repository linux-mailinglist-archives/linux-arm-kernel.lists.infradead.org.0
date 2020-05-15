Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8983F1D492A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 11:12:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-Reply-To:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=T9ImOiy4BjI+Jd1hpPvnFao1YJrz87eid32QqI4SXVc=; b=t02VwuUjVkcCZev842UIRvnHKN
	XPOtG16oKRaoNIc6Sb3mDEbwJURkqsbdmIu72PZ3yLGuGyTi4PK+Mfazzo7X4+22+Viy8G8eUsXBI
	gWpThk6tgv2ufuPzVleXefIvFEj1KF9QDoRr1JZNbI2PpmqlxFP9yDw/7taDuSwtJa9EffgYYDnJT
	7oR9f/v2mYmHkJoFqLyGV3BlR4Sb9+GD1KHs1woCCrP/2Uv0HZxuB7+5OB9Sh+hBxARtBWKWO0nl4
	Sg10kq0pkj05SnKLx7+iKjHjlHNWgeQqq16+EIl+akiGLBllMjARoc4WtqIBR0zhrFaPvDZeURhFC
	0oVexcdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZWO6-0003Xq-Bf; Fri, 15 May 2020 09:12:14 +0000
Received: from esa1.microchip.iphmx.com ([68.232.147.91])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZWNv-0003BI-D8
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 09:12:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1589533923; x=1621069923;
 h=references:from:to:cc:subject:in-reply-to:date:
 message-id:mime-version;
 bh=wmtlMa/ByzxofhuCC0VPeSnxK6BCfzWRYql8RxVBaqc=;
 b=MZAqo+2VmnnrNNDiNjQxYQG9fAkBotUvE43X0CLsGikWh47PYPNzNgko
 nu/QwFMmxXXYRlkl8kPw5kOyPoKgbXBLdK1H45I/ayJzKs7PXuS3bUBNH
 jwkTknZz3I/kIzq5NZqJxjJMsA/ElBIohh1tgdPpvRsh3YFV6DD1xrxDi
 DNsIvSH4GKmZh4neB9ShipJKNDuT+zuVm1kqKFmiE+B/tNRMT7a4fMlr5
 Q0hWB2adom212yrooCDPGQZfLHj5VrdxN2m2R5EQ3Tw3iZbs43K66Trul
 9pjZ10ct2FV6o/Z1MS5WSNdWUvwndLGKwjYu8HGRDUB1/cG1wTnARB97i A==;
IronPort-SDR: DiM+U75P+/Md9FzuxnzG9/z0ceXFZvbHHtzFIn11OpL0g9Q1x1Uby3/VZY5m1NeVYWhvUBPmE+
 fgXUBBDmoZtQ367KyOjQZknEXfD5iM3FrLkBAERTap365oNNgrj1v8ezcplKZf610CTi+9QIoE
 o5MSEPl/7koBuzmySNOL7Y4LO3u9rXNzVcL3jJlTliM6j+9gKvuMN9IwP6het51vlvoYSL5FN4
 fOUTEcECWvT0h+Gp2PovBvNtR1UGsmCCQYbZxYGTpCE4WgWkOBOKcEjLw/SxtEbpYrTSxwouNm
 V6c=
X-IronPort-AV: E=Sophos;i="5.73,394,1583218800"; d="scan'208";a="79762318"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 15 May 2020 02:11:52 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 15 May 2020 02:11:52 -0700
Received: from soft-dev15.microsemi.net.microchip.com (10.10.115.15) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 15 May 2020 02:11:49 -0700
References: <20200513140031.25633-1-lars.povlsen@microchip.com>
 <20200513140031.25633-2-lars.povlsen@microchip.com>
 <20200513142050.GH4803@sirena.org.uk>
 <20200514130407.guyk3r4ltjvszy5s@mobilestation>
From: Lars Povlsen <lars.povlsen@microchip.com>
To: Serge Semin <Sergey.Semin@baikalelectronics.ru>
Subject: Re: [PATCH 01/10] spi: dw: Add support for polled operation via no
 IRQ specified in DT
In-Reply-To: <20200514130407.guyk3r4ltjvszy5s@mobilestation>
Date: Fri, 15 May 2020 11:11:48 +0200
Message-ID: <874kshpnor.fsf@soft-dev15.microsemi.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_021203_494756_A4C74B63 
X-CRM114-Status: GOOD (  14.86  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.147.91 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 linux-kernel@vger.kernel.org, Serge Semin <fancer.lancer@gmail.com>,
 linux-spi@vger.kernel.org, SoC Team <soc@kernel.org>,
 Mark Brown <broonie@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
 Lars Povlsen <lars.povlsen@microchip.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


Serge Semin writes:

> Hi Mark
>
> On Wed, May 13, 2020 at 03:20:50PM +0100, Mark Brown wrote:
>> On Wed, May 13, 2020 at 04:00:22PM +0200, Lars Povlsen wrote:
>> > With this change a SPI controller can be added without having a IRQ
>> > associated, and causing all transfers to be polled. For SPI controllers
>> > without DMA, this can significantly improve performance by less
>> > interrupt handling overhead.
>>
>> This overlaps substantially with some work that Serge Semin (CCed) has
>> in progress, please coordinate with him.
>
> Thanks for copying me these mails. I haven't been Cc'ed in the series and
> hasn't been subscribed to the SPI mailing list, so I would have definitely
> missed that.
>
> I would like to coordinate my efforts with Lars. I'll have the patchset reviewed
> soon in addition providing my comments/suggestions of how to make it useful for
> both mine and Lars solution.

Serge - thanks for taking on this.

Note that my primary concern now is to get Sparx5 upstreamed. The
mem_ops (or dirmap) and polled mode are both performance enhancements,
which can be pulled from my series if it creates too much noise. I can
then add the necessary on top of your work/current kernel at a later
time.

> One thing I can tell about the mem_ops he implemented, is that they aren't
> mem_ops, but dirmap (as you remember it's also implemented in my code, but with
> alignment specific), and the exec_mem_op partly consists of a code, which belong
> to the supports_op() callback. The rest of my comments will be inlined in the
> patches.
>
> -Sergey

-- 
Lars Povlsen,
Microchip

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
