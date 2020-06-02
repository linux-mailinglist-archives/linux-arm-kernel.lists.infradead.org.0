Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 081C01EB734
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 10:18:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-Reply-To:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=0Lur9kiP8gKhhsS90K75va5KtmKCIzDT1zvF8+ZO3mQ=; b=javCYT3OdEAI/sMgED9Mwuf5UW
	RlVheRmWsmHJjo2LJHolVdJ95JKng5wFHd1SNAuOlyM4VcPxIdtFsn74u5+rZDWijzSZF3eId0kjU
	vP+sdVp2FnnrZO51AMGj80rnySXrCtkEoceLeDxvmWaRk/HFZInFHgSof0hn7MaFU3iPAH0k7CdHB
	CsQff0dnnY5Cnj/1zE5s7Wvz+bvg1eHm03lHto4GgA+SIgJXqcr7h8YggRXrIoGWFmtzN+8OY/hsn
	pJPMquGBIE3F2x5cnV+LORvsY0nzRzDqjHPjaE4iD7DLygEst02VQV4bw18cRn1VqzQVA4PhGrwLU
	YPP7veqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jg28J-0006vF-Eo; Tue, 02 Jun 2020 08:18:51 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jg28C-0006tr-Sa
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jun 2020 08:18:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1591085925; x=1622621925;
 h=references:from:to:cc:subject:in-reply-to:date:
 message-id:mime-version;
 bh=3qntvJu5hZf6NiiWOF/rC2X4oeQHa+Lu7499eTjv9dQ=;
 b=e4WBxeXrR+XfOqEwDDrYFq3rEmVb5AP1oZGYcpSR+EsfdlEvaaapkdYS
 owaf1AWP+ANYp1h5dVrctxNo+0rhX8GVLicJcJ9mvb/w6TTM0ZWjjfEpe
 /jfjcwJiUEzqp654xVh0w8/1fYx61PXBR23RKWkS8cNwcLrbPTfZkdfwG
 XaVHB+zYhoZVTdwst6WEmXZmenNORcxXEs8oyUGYeJQhGt9Dv9ZpokJNB
 rkTnCms4i9Lu/fAV+hyS/8S1f66CryG8OIhBH5xcxIyY5soejWo5wX2wG
 EoxfjWSMtg7stjkbC+U/g7bNdZ5VPBWssz268dv/3VWzszu73w9nPWpat Q==;
IronPort-SDR: s5o+IBS6/JNEQ7wKvOXOhREeKVcIIXGYbDHcjkfYBX+4Md5mh2V0jTi/yJ4zR4C2bigz2aXE7v
 bQ/zdJb9USgfM3zycHBzgTSHso5olRyqpbKltfn1KjWvu0ioDCQYa4Lha3ZrX/8zJf8Yof60Jg
 v2TJrOvldDzsRi1wLnDaELNo/BL8Qu+Rps1l8Z7SkV1R/rlQj+sgCIysZn7EPkcS1XZGEKusKC
 RX7TMKlCMA19r11DALUQaakzlb5IbjVNp4DJGLmeaVuTO//xrQJNxiICDqOnH6g12EmMaWycAj
 jyE=
X-IronPort-AV: E=Sophos;i="5.73,463,1583218800"; d="scan'208";a="77876474"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 02 Jun 2020 01:18:33 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 2 Jun 2020 01:18:32 -0700
Received: from soft-dev15.microsemi.net.microchip.com (10.10.115.15) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 2 Jun 2020 01:18:30 -0700
References: <20200513140031.25633-1-lars.povlsen@microchip.com>
 <20200529162130.hsjcde27xhohl6jl@mobilestation>
From: Lars Povlsen <lars.povlsen@microchip.com>
To: Serge Semin <Sergey.Semin@baikalelectronics.ru>
Subject: Re: [PATCH 00/10] spi: Adding support for Microchip Sparx5 SoC
In-Reply-To: <20200529162130.hsjcde27xhohl6jl@mobilestation>
Date: Tue, 2 Jun 2020 10:18:28 +0200
Message-ID: <87img9q3sb.fsf@soft-dev15.microsemi.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_011844_936404_98CA3E4D 
X-CRM114-Status: GOOD (  17.01  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.150.166 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Serge Semin <fancer.lancer@gmail.com>, linux-spi@vger.kernel.org,
 SoC Team <soc@kernel.org>, Mark Brown <broonie@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Microchip Linux
 Driver Support <UNGLinuxDriver@microchip.com>,
 Lars Povlsen <lars.povlsen@microchip.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


Serge Semin writes:

> Hello Lars,
>
> On Wed, May 13, 2020 at 04:00:21PM +0200, Lars Povlsen wrote:
>> This is an add-on series to the main SoC Sparx5 series
>> (Message-ID: <20200513125532.24585-1-lars.povlsen@microchip.com>).
>>
>> The series add support for Sparx5 on top of the existing
>> ocelot/jaguar2 spi driver.
>>
>> It spins off the existing support for the MSCC platforms into a
>> separate driver, as adding new platforms from the MSCC/Microchip
>> product lines will further complicate (clutter) the original driver.
>>
>> New YAML dt-bindings are provided for the resulting driver.
>>
>> It is expected that the DT patches are to be taken directly by the arm-soc
>> maintainers.
>
> Regarding our cooperation. It can be implemented as follows. Since your patchset
> is less cumbersome than mine and is more ready to be integrated into the generic DW
> APB SSI code, it would be better to first make it through Mark', Andy' and my reviews
> to be further merged into the kernel version of the driver. After that I'll have
> my code altered so it could be applied on top of your patches. When everything
> is done we'll have a more comprehensive DW APB SSI driver with poll-based
> PIO operations support, new features like rx-delay, etc.
>

Hi Serge!

I think I would be able to work on the SPI patches this week. Should I
base it on the current spi-next or 5.7? Then address the comments and
send out a new revision?

Thanks for reaching out.

---Lars

> Thank you one more time for the series you've shared with us. Let's see what can
> be done to improve it...
>
> -Sergey
>
>>
>> Lars Povlsen (10):
>>   spi: dw: Add support for polled operation via no IRQ specified in DT
>>   spi: dw: Add support for RX sample delay register
>>   spi: dw: Add support for client driver memory operations
>>   dt-bindings: spi: Add bindings for spi-dw-mchp
>>   spi: spi-dw-mmio: Spin off MSCC platforms into spi-dw-mchp
>>   dt-bindings: spi: spi-dw-mchp: Add Sparx5 support
>>   spi: spi-dw-mchp: Add Sparx5 support
>>   arm64: dts: sparx5: Add SPI controller
>>   arm64: dts: sparx5: Add spi-nor support
>>   arm64: dts: sparx5: Add spi-nand devices
>>
>>  .../bindings/spi/mscc,ocelot-spi.yaml         |  89 ++++
>>  .../bindings/spi/snps,dw-apb-ssi.txt          |   7 +-
>>  MAINTAINERS                                   |   2 +
>>  arch/arm64/boot/dts/microchip/sparx5.dtsi     |  37 ++
>>  .../boot/dts/microchip/sparx5_pcb125.dts      |  16 +
>>  .../boot/dts/microchip/sparx5_pcb134.dts      |  22 +
>>  .../dts/microchip/sparx5_pcb134_board.dtsi    |   9 +
>>  .../boot/dts/microchip/sparx5_pcb135.dts      |  23 +
>>  .../dts/microchip/sparx5_pcb135_board.dtsi    |   9 +
>>  arch/mips/configs/generic/board-ocelot.config |   2 +-
>>  drivers/spi/Kconfig                           |   7 +
>>  drivers/spi/Makefile                          |   1 +
>>  drivers/spi/spi-dw-mchp.c                     | 399 ++++++++++++++++++
>>  drivers/spi/spi-dw-mmio.c                     |  93 ----
>>  drivers/spi/spi-dw.c                          |  31 +-
>>  drivers/spi/spi-dw.h                          |   4 +
>>  16 files changed, 644 insertions(+), 107 deletions(-)
>>  create mode 100644 Documentation/devicetree/bindings/spi/mscc,ocelot-spi.yaml
>>  create mode 100644 drivers/spi/spi-dw-mchp.c
>>
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
