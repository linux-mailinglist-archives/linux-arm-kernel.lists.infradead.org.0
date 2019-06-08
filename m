Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C24A39FD7
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  8 Jun 2019 15:08:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=suypQg1VPVf7oQoNfPKotl7BKlTHRrKMwZ6Q55eg7OU=; b=Pp0L2IpWfQx46Q
	A8LUmLIgqaZuxyaoamF1suWzG9mj/xF/UdxEt3wL3rlbglQXnsIaMBPh3R0/95BFjf6s2rYufCAoj
	igFbe3KnrRYel0iNG0D8YOJPDJ+vq8M/bLe8xYjSZjyy+ubCQg/rGfSrYqQPCLgKjrXir42xAhFqH
	rwNpcYjb7MoYwSfp/wsdRzFNG+CnprnKJcJSWNc60INaIjk78pWp9YLG4BdYI5meqq0JNX1HMNsPI
	9Z0pW7h/ob+zefHVTVNOUcm7//ylM1r09uyROXjX7zgadw/94bizW8ZIbxbPhXrJ2KWcSacVjxjFm
	n7lcQsADTrfxoNu91dYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZb5Z-00040b-RR; Sat, 08 Jun 2019 13:08:53 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZb5Q-0003zG-9K; Sat, 08 Jun 2019 13:08:45 +0000
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D235C214D8;
 Sat,  8 Jun 2019 13:08:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559999322;
 bh=qibYb2+Tw2dU1CRX2K6Pe0fUHlSQcrMnJPszrmFTEhU=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=kTRP1lkBO7Th+hJvCqVvf+XqzIVK/0uWu3eIEfvOUMeo08sbbZhNqAWA4tBhpRAAU
 cxZT+WUFVo+JH59Hs5VOuMgzNoEe2MsbRoE+A3YnHo+I1inieh/m26DbgtMebGfp3g
 QTlveRLXp53g509Wy8dIXpS6xQCnxcwBp/vZKkEw=
Date: Sat, 8 Jun 2019 14:08:37 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Guillaume La Roque <glaroque@baylibre.com>
Subject: Re: [PATCH 1/3] Documentation: dt-bindings: add the Amlogic Meson
 Temperature Sensor
Message-ID: <20190608140837.34a499a4@archlinux>
In-Reply-To: <20190604144714.2009-2-glaroque@baylibre.com>
References: <20190604144714.2009-1-glaroque@baylibre.com>
 <20190604144714.2009-2-glaroque@baylibre.com>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190608_060844_344531_BDB03356 
X-CRM114-Status: GOOD (  16.87  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, linux-iio@vger.kernel.org, khilman@baylibre.com,
 linux-kernel@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue,  4 Jun 2019 16:47:12 +0200
Guillaume La Roque <glaroque@baylibre.com> wrote:

> This adds the devicetree binding documentation for the Temperature
> Sensor found in the Amlogic Meson G12 SoCs.
> Currently only the G12A SoCs are supported.
> 
> Signed-off-by: Guillaume La Roque <glaroque@baylibre.com>

Hi Guillaume,

I'm afraid we decided a month or so back that all new dt bindings proposed
for IIO drivers should be in yaml format.

Please reformat this appropriately for v2 and make sure to run
make dt_bindings_check.

There are a few examples in tree already, but we are deliberately
not converting existing bindings too quickly to avoid overloading
reviewers.

Thanks,

Jonathan

> ---
>  .../iio/temperature/amlogic,meson-tsensor.txt | 31 +++++++++++++++++++
>  1 file changed, 31 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/iio/temperature/amlogic,meson-tsensor.txt
> 
> diff --git a/Documentation/devicetree/bindings/iio/temperature/amlogic,meson-tsensor.txt b/Documentation/devicetree/bindings/iio/temperature/amlogic,meson-tsensor.txt
> new file mode 100644
> index 000000000000..d064db0e9cac
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/iio/temperature/amlogic,meson-tsensor.txt
> @@ -0,0 +1,31 @@
> +* Amlogic Meson Temperature Sensor
> +
> +Required properties:
> +- compatible:	depending on the SoC and the position of the sensor,
> +		this should be one of:
> +		- "amlogic,meson-g12a-cpu-tsensor" for the CPU G12A SoC sensor
> +		- "amlogic,meson-g12a-ddr-tsensor" for the DDR G12A SoC sensor
> +		followed by the common :
> +		- "amlogic,meson-g12a-tsensor" for G12A SoC family
> +- reg:		the physical base address and length of the registers
> +- interrupts:	the interrupt indicating end of sampling
> +- clocks:	phandle identifier for the reference clock of temperature sensor
> +- #io-channel-cells: must be 1, see ../iio-bindings.txt
> +- amlogic,ao-secure: phandle to the ao-secure syscon
> +
> +Optional properties:
> +- amlogic,critical-temperature: temperature value in milli degrees Celsius
> +	to set automatic reboot on too high temperature
> +
> +Example:
> +	cpu_temp: temperature-sensor@ff634800 {
> +		compatible = "amlogic,meson-g12a-cpu-tsensor",
> +			     "amlogic,meson-g12a-tsensor";
> +		reg = <0x0 0xff634800 0x0 0x50>;
> +		interrupts = <GIC_SPI 35 IRQ_TYPE_EDGE_RISING>;
> +		clocks = <&clkc CLKID_TS>;
> +		status = "okay";
> +		#io-channel-cells = <1>;
> +		amlogic,meson-ao-secure = <&sec_AO>;
> +		amlogic,critical-temperature = <115000>;
> +	};


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
