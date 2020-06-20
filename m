Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C7E720256C
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 20 Jun 2020 18:55:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i1tCnslOCKTVzu9Wf6s4dWWkhV2j++tVXrM8GnRVOzQ=; b=I3CbPrwbYNcwGI
	GPctAoTL8NYuPsnVdNzDMBN3RULvXBhcDmMqLNdKnuE2S63l88ekhLap2R0riVr4WogdqzWzOAbmV
	UwtPikGPt3Zdx3jWSMpuagAaOvWi5vrjAuaBzKwwMij9JOoNsxz80d3OirRYfwLGfq9UHk5vxLqoq
	m6VE27zOljqiDp+kn26Il6ayIzPyNdb84pR5wExQQlSrCtUq1rWv0HL1fyGsv7plcC/7ofU+WtTTY
	63L9CPcFN9qLMheVezFZRHfsUybvCT4sroBiEMceIZU1gQMeXylUclqt2LzIa5Yeu2LIzv6WNDFNE
	gdVrn6eWV5oSS0vLOspQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmgmA-0003Jr-0y; Sat, 20 Jun 2020 16:55:30 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmgm0-0003JD-Di; Sat, 20 Jun 2020 16:55:21 +0000
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 63B9C206C1;
 Sat, 20 Jun 2020 16:55:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592672120;
 bh=jh+Dtd6XxyvfeBpJwr5NXJeG+cGq9HQ6DALEAl2vhK8=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=JPRzqSsXNNflaSN9W1VKLjKK2Tr5YQxLrly67XS/Qe764zuYMr+E9uH1bYZASM9Hv
 nA9zxaJ/PEbaeWS/EdE2E8sgv8IGN1OZPB2q9h/1cC4du8Aj50MfGUkH/37NFIzkO8
 b6E2rydpktC6hsBzvJSxhwYRnDREOCga+4RJ/QHw=
Date: Sat, 20 Jun 2020 17:55:12 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Gene Chen <gene.chen.richtek@gmail.com>
Subject: Re: [PATCH v2 0/4] dt-bindings: mfd: Add bindings for the Mediatek
 MT6360
Message-ID: <20200620175512.1e11d12c@archlinux>
In-Reply-To: <1592567631-20363-1-git-send-email-gene.chen.richtek@gmail.com>
References: <1592567631-20363-1-git-send-email-gene.chen.richtek@gmail.com>
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200620_095520_485221_297D7051 
X-CRM114-Status: GOOD (  12.01  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: gene_chen@richtek.com, lars@metafoo.de, pmeerw@pmeerw.net,
 lgirdwood@gmail.com, linux-kernel@vger.kernel.org, cy_huang@richtek.com,
 benjamin.chao@mediatek.com, broonie@kernel.org,
 linux-mediatek@lists.infradead.org, jacek.anaszewski@gmail.com, pavel@ucw.cz,
 knaack.h@gmx.de, matthias.bgg@gmail.com, shufan_lee@richtek.com,
 lee.jones@linaro.org, linux-arm-kernel@lists.infradead.org, dmurphy@ti.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 19 Jun 2020 19:53:47 +0800
Gene Chen <gene.chen.richtek@gmail.com> wrote:

> This patch series add mt6360 sub-device adc/regulator and
> fix mfd architecture and add dt-binding document

Hi Gene

Please make sure you include linux-iio@vger.kernel.org in the cc list
for any iio related series.  For now I'll take a quick look at the
ADC driver patch (and +cc the list for my reply)

Thanks,

Jonathan

> 
> changelogs between v1 & v2
> - adjust binding document schema include mfd/adc/regulator
> - adc: use IIO_CHAN_INFO_PROCESSED only
> - adc: use devm_iio_triggered_buffer_setup
> - adc: use use s64 to record timestamp
> - regulator: merge regmap to mfd driver for r/w with crc
> 
> Gene Chen (4)
>   dt-bindings: mfd: Add bindings for the Mediatek MT6360
>   mfd: mt6360: implement i2c R/W with CRC
>   iio: adc: mt6360: Add ADC driver for MT6360
>   regulator: mt6360: Add support for MT6360 regulator
> 
>  Documentation/devicetree/bindings/mfd/mt6360.txt |  122 +++++
>  drivers/iio/adc/Kconfig                          |   11 
>  drivers/iio/adc/Makefile                         |    1 
>  drivers/iio/adc/mt6360-adc.c                     |  388 ++++++++++++++++
>  drivers/mfd/Kconfig                              |    1 
>  drivers/mfd/mt6360-core.c                        |  541 +++++++++++++++--------
>  drivers/regulator/Kconfig                        |    9 
>  drivers/regulator/Makefile                       |    1 
>  drivers/regulator/mt6360-regulator.c             |  485 ++++++++++++++++++++
>  include/dt-bindings/mfd/mt6360.h                 |   15 
>  include/linux/mfd/mt6360.h                       |  240 ----------
>  11 files changed, 1389 insertions(+), 425 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/mfd/mt6360.txt
>  create mode 100644 include/dt-bindings/mfd/mt6360.h
>  delete mode 100644 include/linux/mfd/mt6360.h
>  create mode 100644 drivers/iio/adc/mt6360-adc.c
>  create mode 100644 drivers/regulator/mt6360-regulator.c


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
