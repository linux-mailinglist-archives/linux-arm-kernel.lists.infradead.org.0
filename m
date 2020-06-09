Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7964E1F3792
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 12:05:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-Reply-To:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=hoBiQEbKL0xC+on65mKxPdcUxWvLqsZq/unyCzm79iI=; b=DeVu3eS3DtF1J8IKkxiPrQMtF7
	xc5eAHZyg6OBIUgM5McoQWsQ8fo3J1ABD0I6rmo36tSLUelyxaFjYkKli7pOiUBcEUYzTXi3qXzdy
	LkC4J+8X3Eo2tLH0hiyN3jRl4QTFqKQoG9Zx5pLugb7nPk1s7QU+51LmVr8wMV5PaIYfIzvMVp1Be
	LIVrUIIELNmGuMteZ5ornYDX2Q7Fg3wlPqJ8eobNs3BFPiT8U75A7ySN6CMcX0H4ZX5f8iSWBCuYe
	BUpttkWX4P0Smk1oj4ed7J00nnPe9EY0xKYSWFdODnrhAmk0PSMpsc0HM1p7xuBiD8vkt9R5tw5KS
	HgFC+6CQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jib7o-0004Tc-HD; Tue, 09 Jun 2020 10:04:56 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jib7e-0004Sb-IH
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 10:04:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1591697086; x=1623233086;
 h=references:from:to:cc:subject:in-reply-to:date:
 message-id:mime-version;
 bh=ZmXV2xgrfpgFum+8pnc7CH3E62B5WGtZ4Qsdsa4m4hg=;
 b=sIUaJN5wDMP/ZTqCtezfhWgNgt4zFMW8i1wEgiWDwMVGkUlA9hb8RSDv
 i1NNXOa6NqkhiEzgHnz2HjD3r1kklQtPXaWetboaaDQmLAxBoQvYttd2c
 oRvnZxjwkMyDOT1/Ztn48oY+Okaj6BmlxWinTNZDqHseuzD3kuotZPJE/
 rcNncgyQDl00sePnyV+hF5LmE02LpiP69renXrMT1CQvSPQfKnrl+yQ9b
 Hl9TaYGFUBs/YOm2dv7u+zC02xUy66DyPb4FWhQ7L6XVUShRbpS2XSOS7
 h2gauNniRAXbgb3chIL1xOSEcVKS4lxOg10xhteg1lz7nQvomtNzYHdbT A==;
IronPort-SDR: YwfQayJCWJ5disVGuhwB4XgBX+zV/UTIpQhysY2EftvltOzRimEwGnDy+nJvg4FaXL9vJQMnsc
 ktp1x/nn09CZPLehYdvFL4WVtfV7y2ABqp9XNiZryYISfbPH88po1cGe/BbrTQ3zI3Ak12Nv5i
 kxx0bEYX8xoDsK+3WnyOrDZpiKp7a+VdMfwFrSzw/3kzHF2FdIJ2IHHF0wyBaAqgWKfHJSaNrT
 CTNV1D0DVAyrDjNYKu4fatvQkVC1YCHrmGiMYOS7DpHv6WCcxuyRcptny0Sj0N2S0b5D2pIMfG
 rTw=
X-IronPort-AV: E=Sophos;i="5.73,491,1583218800"; d="scan'208";a="78721100"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 09 Jun 2020 03:04:35 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1847.3; Tue, 9 Jun 2020 03:04:30 -0700
Received: from soft-dev15.microsemi.net.microchip.com (10.10.115.15) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 9 Jun 2020 03:04:27 -0700
References: <20200513140031.25633-1-lars.povlsen@microchip.com>
 <20200513140031.25633-3-lars.povlsen@microchip.com>
 <20200602193931.vl36k3c6uyiaizah@mobilestation>
From: Lars Povlsen <lars.povlsen@microchip.com>
To: Serge Semin <Sergey.Semin@baikalelectronics.ru>
Subject: Re: [PATCH 02/10] spi: dw: Add support for RX sample delay register
In-Reply-To: <20200602193931.vl36k3c6uyiaizah@mobilestation>
Date: Tue, 9 Jun 2020 12:04:26 +0200
Message-ID: <87k10gimhh.fsf@soft-dev15.microsemi.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_030446_620913_FA59B0F7 
X-CRM114-Status: GOOD (  19.22  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.150.166 listed in list.dnswl.org]
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

> On Wed, May 13, 2020 at 04:00:23PM +0200, Lars Povlsen wrote:
>> This add support for the RX_SAMPLE_DLY register. If enabled in the
>> Designware IP, it allows tuning of the rx data signal by means of an
>> internal rx sample fifo.
>>
>> The register is located at offset 0xf0, and if the option is not
>> enabled in the IP, changing the register will have no effect.
>>
>> Reviewed-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
>> Signed-off-by: Lars Povlsen <lars.povlsen@microchip.com>
>> ---
>>  drivers/spi/spi-dw.c | 7 +++++++
>>  drivers/spi/spi-dw.h | 2 ++
>>  2 files changed, 9 insertions(+)
>>
>> diff --git a/drivers/spi/spi-dw.c b/drivers/spi/spi-dw.c
>> index e572eb34a3c1a..32997f28fa5bb 100644
>> --- a/drivers/spi/spi-dw.c
>> +++ b/drivers/spi/spi-dw.c
>> @@ -81,6 +81,9 @@ static ssize_t dw_spi_show_regs(struct file *file, char __user *user_buf,
>>                       "DMATDLR: \t0x%08x\n", dw_readl(dws, DW_SPI_DMATDLR));
>>       len += scnprintf(buf + len, SPI_REGS_BUFSIZE - len,
>>                       "DMARDLR: \t0x%08x\n", dw_readl(dws, DW_SPI_DMARDLR));
>
>> +     len += scnprintf(buf + len, SPI_REGS_BUFSIZE - len,
>> +                      "RX_SAMPLE_DLY: \t0x%08x\n",
>> +                      dw_readl(dws, DW_SPI_RX_SAMPLE_DLY));
>
> debugfs_reg32 interface is now utilized in the driver to dump the registers
> state. So this will have to be converted to just a new entry in the
> dw_spi_dbgfs_regs array.
>

Ok, I'll have a look at this.

>>       len += scnprintf(buf + len, SPI_REGS_BUFSIZE - len,
>>                       "=================================\n");
>>
>> @@ -315,6 +318,10 @@ static int dw_spi_transfer_one(struct spi_controller *master,
>>               spi_set_clk(dws, chip->clk_div);
>>       }
>>
>
>> +     /* Apply RX sample delay, iff requested (nonzero) */
>
> s/iff/if
>
>> +     if (dws->rx_sample_dly)
>> +             dw_writel(dws, DW_SPI_RX_SAMPLE_DLY, dws->rx_sample_dly);
>> +
>>       dws->n_bytes = DIV_ROUND_UP(transfer->bits_per_word, BITS_PER_BYTE);
>>       dws->dma_width = DIV_ROUND_UP(transfer->bits_per_word, BITS_PER_BYTE);
>>
>> diff --git a/drivers/spi/spi-dw.h b/drivers/spi/spi-dw.h
>> index 1bf5713e047d3..ed6e47b3f50da 100644
>> --- a/drivers/spi/spi-dw.h
>> +++ b/drivers/spi/spi-dw.h
>> @@ -31,6 +31,7 @@
>>  #define DW_SPI_IDR                   0x58
>>  #define DW_SPI_VERSION                       0x5c
>>  #define DW_SPI_DR                    0x60
>> +#define DW_SPI_RX_SAMPLE_DLY         0xf0
>>  #define DW_SPI_CS_OVERRIDE           0xf4
>>
>>  /* Bit fields in CTRLR0 */
>> @@ -111,6 +112,7 @@ struct dw_spi {
>>
>>       int                     cs_override;
>>       u32                     reg_io_width;   /* DR I/O width in bytes */
>
>> +     u8                      rx_sample_dly;  /* RX fifo tuning (option) */
>
> This doesn't seem like a good place for this parameter. The sample delay is
> SPI-slave specific. So as I see it, the parameter should be moved to the
> chip_data.
>

Yes, I got that in other comments, and you are right I guess.

I will apply that approach of having rx_sample_dly per SPI slave.

---Lars

> -Sergey
>
>>       u16                     bus_num;
>>       u16                     num_cs;         /* supported slave numbers */
>>       void (*set_cs)(struct spi_device *spi, bool enable);
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
