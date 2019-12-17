Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5645B122E45
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 15:15:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cnwOfw4WGo8RQMshPm6V/sfBqfmGwWdmeWwdRw2QR4M=; b=S/ekwojUXodtUL
	e7vXzjlAFv89F5yGSptF2YqSGJVxMt4Nev23P69Jh38IXVCF9ar0GnON18CzcnaOza5DBWcDKjq6K
	jReZRmBA0BZ03LuTvWysDHzXxj4iQy8xI+w0hRMprKSVjVTZtqYApayTndtR0IPN9tMmdPN6+CG0K
	qtqODf1SgddLcwsKuVkJwoLEHJ4wmhtBv2x3nGVS6i8/QwRE3UfMyGziqCa+0XU7+mbF/538NPMYF
	P7TpnY4gmbPIpctxR9eTFx6hcVnj+SLhzyXdy7CA66ukdnUgAg7UIgqO71KqtkRmsqbupH3qByvcc
	up+VkzVpOHtdv6mNhlAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihDch-00008P-39; Tue, 17 Dec 2019 14:14:51 +0000
Received: from smtp1.de.adit-jv.com ([93.241.18.167])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihDcX-00007x-W4
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 14:14:43 +0000
Received: from localhost (smtp1.de.adit-jv.com [127.0.0.1])
 by smtp1.de.adit-jv.com (Postfix) with ESMTP id 4239A3C057F;
 Tue, 17 Dec 2019 15:14:40 +0100 (CET)
Received: from smtp1.de.adit-jv.com ([127.0.0.1])
 by localhost (smtp1.de.adit-jv.com [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id a5abf8uTubOv; Tue, 17 Dec 2019 15:14:35 +0100 (CET)
Received: from HI2EXCH01.adit-jv.com (hi2exch01.adit-jv.com [10.72.92.24])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by smtp1.de.adit-jv.com (Postfix) with ESMTPS id 0A8123C00BB;
 Tue, 17 Dec 2019 15:14:35 +0100 (CET)
Received: from vmlxhi-102.adit-jv.com (10.72.93.66) by HI2EXCH01.adit-jv.com
 (10.72.92.24) with Microsoft SMTP Server (TLS) id 14.3.468.0; Tue, 17 Dec
 2019 15:14:34 +0100
Date: Tue, 17 Dec 2019 15:14:34 +0100
From: Eugeniu Rosca <erosca@de.adit-jv.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>
Subject: Re: [PATCH v2 5/6] arm64: dts: renesas: r8a77961: Add I2C nodes
Message-ID: <20191217141434.GC27250@vmlxhi-102.adit-jv.com>
References: <20191216124740.16647-1-geert+renesas@glider.be>
 <20191216124740.16647-6-geert+renesas@glider.be>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191216124740.16647-6-geert+renesas@glider.be>
X-Originating-IP: [10.72.93.66]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_061442_182654_21A6A74B 
X-CRM114-Status: GOOD (  11.15  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: devicetree@vger.kernel.org, Eugeniu Rosca <roscaeugeniu@gmail.com>,
 Magnus Damm <magnus.damm@gmail.com>, linux-renesas-soc@vger.kernel.org,
 Eugeniu Rosca <erosca@de.adit-jv.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Geert,

On Mon, Dec 16, 2019 at 01:47:39PM +0100, Geert Uytterhoeven wrote:
> Add device nodes for the I2C and IIC Controllers on the Renesas R-Car
> M3-W+ (r8a77961) SoC, including DMA properties linking them to the DMA
> controllers.
> 
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> ---
> v2:
>   - No changes.
> 
> Test procedure (MAX9611 ADC, BR24T01 EEPROM):
>   1. "grep . /sys/bus/iio/devices/iio:device[01]/in*",
>   2. "hd /sys/devices/platform/soc/e60b0000.i2c/i2c-?/?-0050/eeprom".
> ---
>  arch/arm64/boot/dts/renesas/r8a77961.dtsi | 117 +++++++++++++++++++++-
>  1 file changed, 114 insertions(+), 3 deletions(-)

FWIW, I notice changed i2c indexes in dmesg depending if I include the
i2c aliases visible in below commits:

fcb008a75702c9 ("arm64: dts: r8a7796: add I2C support")
32bc0c51be7c9d ("arm64: renesas: r8a7795: add I2C support")

Reviewed-by: Eugeniu Rosca <erosca@de.adit-jv.com>
Tested-by: Eugeniu Rosca <erosca@de.adit-jv.com>

-- 
Best Regards,
Eugeniu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
