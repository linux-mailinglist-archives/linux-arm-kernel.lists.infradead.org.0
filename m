Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8911A1F36B7
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 11:14:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-Reply-To:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=bm498zhow7duYrJYHiOGffqBf8RnTSF15YcBOgXUHJc=; b=n10crKPUvFFsHO5k4cD/0KeSlq
	t/JR5YWxrDxlJ+w4e3GfrwOkb7eX9ltw8lDyNcY11BVbByRXL2PUV9NruYtV9PZzgBX63sRjL7KId
	9gHd/Efg3bVJhotjJlPxbDe56CHK7AoCbZRr3tyrTljLNnI8sOJsyDUef9/BYt61Y9jFqIcxKHVis
	yildF4xi4LvVt9wMae2WIx0ryyrmkK66gOdbFFwM4FuDIuQotXecZnVVDtjKRz3WCfGsotr7FV+45
	s2UDRu9UMj10vTUWv+6xqVTK2VeVuiwfK5gm+0KI+YpaUBtMygV01yPnm5G3LbH1NBSxHNgW38W6R
	Hx64ovPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiaKf-00078m-Pa; Tue, 09 Jun 2020 09:14:09 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiaKX-00077e-Nu
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 09:14:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1591694041; x=1623230041;
 h=references:from:to:cc:subject:in-reply-to:date:
 message-id:mime-version;
 bh=4gmH4roZ31BbBtOY/irMvwRh3t1QNa19BtAidrntvuM=;
 b=bjlLIK/4n3T1Dia7OTsE8KrJJiBRJFniUq2HzRZUfl+esMcBvBpw/Qpy
 5jNqSdFpoeFImUR3GLhZ3KtsVAPzxlXxXY2eUFe0BrbN1TvjRROqVj7nQ
 5Xw/2Rr2VXRS/fxJKY597NkkyaBRm9YfUBUAki+BjAV7Dz+F1N9sIDwwi
 I4chccyLBKnMKYN2/4K9A/d9NjcJRHouv3wbe1Cz0WI8ckUEyFbHAgMcz
 CVW0oUEQovyMIM1w6SqFrKio2kd9ZqyyBI5e4vzPsr3dsyQnFv7eXtw+a
 7J8QCqBhyP9vzuBF7dHzSZ1b7NwFh70dzX/6dQvJ17PKQSbPtm2849xot Q==;
IronPort-SDR: VLYk1EEpijJRleQur2LDMOMpKQMGgwyaEf7wD34q+JX5WGTUZUwOWjxi1cLyHnGwvqQoFh4znt
 PD+6Cs+FVj/7nqOT0IVwVhKO0jeEKt2j3QZuYWoTg1iFOzypxd7USwXd4V5ldslOQlNLyHq6xk
 Le8BwgbLtGkLpqFEganF8yy8QODIlPizMZRGBCHZZUdvU6TnU3/bRRw3RxY2GXrC9EhHh0/f4d
 fvPR/R+JWJRdv+ejB81eL7EBaC+/UZGSnEWyKC/ELrQMfqUhuCR+nOwMq623x15E2gS5XbewU6
 CGo=
X-IronPort-AV: E=Sophos;i="5.73,491,1583218800"; d="scan'208";a="15071190"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 09 Jun 2020 02:13:55 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1847.3; Tue, 9 Jun 2020 02:13:54 -0700
Received: from soft-dev15.microsemi.net.microchip.com (10.10.115.15) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1847.3
 via Frontend Transport; Tue, 9 Jun 2020 02:13:51 -0700
References: <20200513140031.25633-1-lars.povlsen@microchip.com>
 <20200513140031.25633-2-lars.povlsen@microchip.com>
 <20200602191025.ywo77nslrgswh6sw@mobilestation>
From: Lars Povlsen <lars.povlsen@microchip.com>
To: Serge Semin <Sergey.Semin@baikalelectronics.ru>
Subject: Re: [PATCH 01/10] spi: dw: Add support for polled operation via no
 IRQ specified in DT
In-Reply-To: <20200602191025.ywo77nslrgswh6sw@mobilestation>
Date: Tue, 9 Jun 2020 11:13:50 +0200
Message-ID: <87lfkwiott.fsf@soft-dev15.microsemi.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_021401_862814_F4DF1DB3 
X-CRM114-Status: GOOD (  19.88  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.253 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [216.71.154.253 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
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

> On Wed, May 13, 2020 at 04:00:22PM +0200, Lars Povlsen wrote:
>> With this change a SPI controller can be added without having a IRQ
>> associated, and causing all transfers to be polled. For SPI controllers
>> without DMA, this can significantly improve performance by less
>> interrupt handling overhead.
>>
>> Reviewed-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
>> Signed-off-by: Lars Povlsen <lars.povlsen@microchip.com>
>> ---
>>  drivers/spi/spi-dw.c | 21 +++++++++++++--------
>>  1 file changed, 13 insertions(+), 8 deletions(-)
>>
>> diff --git a/drivers/spi/spi-dw.c b/drivers/spi/spi-dw.c
>> index 31e3f866d11a7..e572eb34a3c1a 100644
>> --- a/drivers/spi/spi-dw.c
>> +++ b/drivers/spi/spi-dw.c
>> @@ -19,6 +19,8 @@
>>  #include <linux/debugfs.h>
>>  #endif
>>
>
>> +#define VALID_IRQ(i) (i >= 0)
>
> Mark and Andy are right. It is a good candidate to be in a generic IRQ-related
> code as Anyd suggested:
>
>> > drivers/rtc/rtc-cmos.c:95:#define is_valid_irq(n)               ((n) > 0)
>> > Candidate to be in include/linux/irq.h ?
>
> So if you feel like to author additional useful patch integrated into the
> kernel, this one is a good chance for it.
>

Yeah, but with the poll_transfer() gone below, I think I'll settle on
just getting this into the current framework. Optimization (as this is)
has less priority. I'll put this on the back burner.

>> +
>>  /* Slave spi_dev related */
>>  struct chip_data {
>>       u8 tmode;               /* TR/TO/RO/EEPROM */
>> @@ -359,7 +361,7 @@ static int dw_spi_transfer_one(struct spi_controller *master,
>>                       spi_enable_chip(dws, 1);
>>                       return ret;
>>               }
>> -     } else if (!chip->poll_mode) {
>> +     } else if (!chip->poll_mode && VALID_IRQ(dws->irq)) {
>>               txlevel = min_t(u16, dws->fifo_len / 2, dws->len / dws->n_bytes);
>>               dw_writel(dws, DW_SPI_TXFLTR, txlevel);
>>
>> @@ -379,7 +381,7 @@ static int dw_spi_transfer_one(struct spi_controller *master,
>>                       return ret;
>>       }
>>
>> -     if (chip->poll_mode)
>> +     if (chip->poll_mode || !VALID_IRQ(dws->irq))
>>               return poll_transfer(dws);
>
> Please note. The chip->poll and the poll_transfer() methods've been discarded
> from the driver, since commit 1ceb09717e98 ("spi: dw: remove cs_control and
> poll_mode members from chip_data"). So you gonna have to get the
> poll_transfer-like method back.
>
> -Sergey
>
>>
>>       return 1;
>> @@ -487,11 +489,13 @@ int dw_spi_add_host(struct device *dev, struct dw_spi *dws)
>>
>>       spi_controller_set_devdata(master, dws);
>>
>> -     ret = request_irq(dws->irq, dw_spi_irq, IRQF_SHARED, dev_name(dev),
>> -                       master);
>> -     if (ret < 0) {
>> -             dev_err(dev, "can not get IRQ\n");
>> -             goto err_free_master;
>> +     if (VALID_IRQ(dws->irq)) {
>> +             ret = request_irq(dws->irq, dw_spi_irq, IRQF_SHARED,
>> +                               dev_name(dev), master);
>> +             if (ret < 0) {
>> +                     dev_err(dev, "can not get IRQ\n");
>> +                     goto err_free_master;
>> +             }
>>       }
>>
>>       master->use_gpio_descriptors = true;
>> @@ -539,7 +543,8 @@ int dw_spi_add_host(struct device *dev, struct dw_spi *dws)
>>       if (dws->dma_ops && dws->dma_ops->dma_exit)
>>               dws->dma_ops->dma_exit(dws);
>>       spi_enable_chip(dws, 0);
>> -     free_irq(dws->irq, master);
>> +     if (VALID_IRQ(dws->irq))
>> +             free_irq(dws->irq, master);
>>  err_free_master:
>>       spi_controller_put(master);
>>       return ret;
>> --
>> 2.26.2
>>
>> _______________________________________________
>> linux-arm-kernel mailing list
>> linux-arm-kernel@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

-- 
Lars Povlsen,
Microchip

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
