Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DBF61295C1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Dec 2019 12:59:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1UMU1uxJlrMwv7pHLMlHu53nLVxF4FxUfBbhSd0WsE4=; b=W/oJ6uS9QSt7/f
	GxSz6qWp0jxW/amx2Bdk+imnJdDMrWTTURWJmsoHJ+GdQLfkjzzTwTaFlbdsLRqbavXwLrQa42LVw
	xZ9pF62s7rLkjn8b0pGTtCEwAzVHpwVBs2dpT7VdGqWfYd4n55nDUD5+Xedo2WZFE1J2DwMxx3xXi
	n8qLOCWCystj++nAjk2D8YU30m+KBrspefpp3qzP3s+VyUGvPN+x5HAty8F5uZ852p46AewIxB0pT
	Pqw/qCqJzr4iYign8ClFGi3SE0QCFj1rI4la7bq+e49h8Jg2GWzX7qOZVrY20MQrLeENmGMG/Afx8
	nQi+3Bvuj5DYlw80Nu9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijMMX-0002BW-LQ; Mon, 23 Dec 2019 11:59:01 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijMMO-0002Ao-Aw
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Dec 2019 11:58:53 +0000
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 40F3E20709;
 Mon, 23 Dec 2019 11:58:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1577102332;
 bh=QyuoZyIhNs4xmOxwsNxxEhCCg7Gu9hD6h7ZqKd7+bQY=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=OYvEt+yz5urzWr1WlgfkJ4G2hB4fZdPGZ/uPQp5TtdxwDerjLj47mX9ylrJ49Qo/j
 HRYwoqj30Xd68PMERLUotZFsxD7O+uwplwlj0IsjbuwF+SROc6LUpXwt/lcepFujDO
 1QkGz5jX+nZyK8+2dTCa7JcaJuQtyIYuZqLCWdEg=
Date: Mon, 23 Dec 2019 11:58:47 +0000
From: Jonathan Cameron <jic23@kernel.org>
To: <Eugen.Hristev@microchip.com>
Subject: Re: [PATCH 02/10] dt-bindings: iio: adc: at91-sama5d2: add
 rtc-trigger optional property
Message-ID: <20191223115847.244c1406@archlinux>
In-Reply-To: <1576686157-11939-3-git-send-email-eugen.hristev@microchip.com>
References: <1576686157-11939-1-git-send-email-eugen.hristev@microchip.com>
 <1576686157-11939-3-git-send-email-eugen.hristev@microchip.com>
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191223_035852_400852_2D9CFB07 
X-CRM114-Status: GOOD (  15.65  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-rtc@vger.kernel.org, devicetree@vger.kernel.org,
 alexandre.belloni@bootlin.com, a.zummo@towertech.it, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org, Ludovic.Desroches@microchip.com,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 18 Dec 2019 16:23:58 +0000
<Eugen.Hristev@microchip.com> wrote:

> From: Eugen Hristev <eugen.hristev@microchip.com>
> 
> Add property to connect RTC-type trigger to the ADC block.
> The ADC is connected internally with a line to the RTC block.
> The RTC can provide a trigger signal to the ADC to start conversions.
> 
> Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
As discussed, might want to just be the rtc handle rather than a new
trigger one.

> ---
>  Documentation/devicetree/bindings/iio/adc/at91-sama5d2_adc.txt | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/iio/adc/at91-sama5d2_adc.txt b/Documentation/devicetree/bindings/iio/adc/at91-sama5d2_adc.txt
> index 4a3c1d4..1980f0e 100644
> --- a/Documentation/devicetree/bindings/iio/adc/at91-sama5d2_adc.txt
> +++ b/Documentation/devicetree/bindings/iio/adc/at91-sama5d2_adc.txt
> @@ -23,6 +23,9 @@ Optional properties:
>    See ../../dma/dma.txt for details.
>    - #io-channel-cells: in case consumer drivers are attached, this must be 1.
>    See <Documentation/devicetree/bindings/iio/iio-bindings.txt> for details.
> +  - atmel,rtc-trigger: The ADC IP block can be triggered by the RTC block
> +inside the SoC. This property is a phandle to a node that provides a
> +trigger device, if the ADC block supports it.

Do we want to be more specific on devices that do support it?
Maybe it's enough of a complex mess that we don't.

>  
>  Properties for consumer drivers:
>    - Consumer drivers can be connected to this producer device, as specified
> @@ -44,6 +47,7 @@ adc: adc@fc030000 {
>  	vddana-supply = <&vdd_3v3_lp_reg>;
>  	vref-supply = <&vdd_3v3_lp_reg>;
>  	atmel,trigger-edge-type = <IRQ_TYPE_EDGE_BOTH>;
> +	atmel,rtc-trigger = <&rtc_adc_trigger>;
>  	dmas = <&dma0 (AT91_XDMAC_DT_MEM_IF(0) | AT91_XDMAC_DT_PER_IF(1) | AT91_XDMAC_DT_PERID(25))>;
>  	dma-names = "rx";
>  	#io-channel-cells = <1>;


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
