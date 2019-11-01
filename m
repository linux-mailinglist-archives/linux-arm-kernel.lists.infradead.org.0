Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D344EBF32
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 09:27:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4ZGwTCiXhbtkWIFbn1+ZPyLPAUYxbRWQz4Tv0vju+R8=; b=LQSx2VHXXvYpR7
	bH/HuqCT2lirbmOpREQmvaqGT2TJ9lMnQ/TwGzaolNuNVNuhLx//iHXjykIO9cRvJrcqBXa2EjK1N
	b0Ljl/pwu7WAA8yFpa4vXAo+qfV0WkjknZ/rnaGKmk7Cn0TX0HKDq3dIdsqkVsG1cLAVeLl7TKh+V
	MYWde2+mXLFDoT3g6fX8qoHuf+mTDJ4/M0ppuYdMNwWJOUe1YkwJA+kiv/9ziWO5OIKYoZhLiUPPY
	fk5I/sicz7+3mkPEfnpxaRt7OOsFrCbPgfGRzwzze4h2IjYw4sHZGPVa75Mjdjspj4OSM57cn7YhT
	QVeT8PsOLXBQJTiBuC6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQSHX-0001NG-5S; Fri, 01 Nov 2019 08:27:43 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQSHQ-0001Mp-UR
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 08:27:38 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 93E34208CB;
 Fri,  1 Nov 2019 08:27:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572596856;
 bh=UGrR3iRTKwrbEPN+BHW52XhDbxZkXvMXHC6V2nHaiuU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=bmNAWnJ4mnMMumb5K9Z5TPfbVMVSG14pUOCb3DPJ2XA3W3x2H1DIt1TB7ofMdQf/9
 xPDRzfPxGa0pirP3JilU8xsrw6ZA13MRWl7fwDeFP0EsYSKwGnLb8Rpw92376oeBOC
 5oB8tSHl21zhhbFjvyD42aR6cbPogZi4FsIaQY2k=
Date: Fri, 1 Nov 2019 09:02:56 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Hugo Grostabussiat <bonstra@bonstra.fr.eu.org>
Subject: Re: [PATCH v2 1/3] dt-bindings: net: bluetooth: add DT binding for
 Realtek controllers
Message-ID: <20191101080256.gjc4tacltehro3iw@hendrix>
References: <20191030224333.70241-1-bonstra@bonstra.fr.eu.org>
 <20191030224333.70241-2-bonstra@bonstra.fr.eu.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191030224333.70241-2-bonstra@bonstra.fr.eu.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_012737_002693_26EFFFBC 
X-CRM114-Status: GOOD (  17.69  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Johan Hedberg <johan.hedberg@gmail.com>, Marcel Holtmann <marcel@holtmann.org>,
 linux-bluetooth@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Hugo,

On Wed, Oct 30, 2019 at 11:43:31PM +0100, Hugo Grostabussiat wrote:
> The rtl_bt driver already supports some Realtek controllers on ACPI
> platforms.
> This commit adds bindings for DT-only platforms.
>
> Signed-off-by: Hugo Grostabussiat <bonstra@bonstra.fr.eu.org>
> ---
>  .../bindings/net/realtek-bluetooth.txt        | 25 +++++++++++++++++++
>  1 file changed, 25 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/net/realtek-bluetooth.txt

You should write that binding using a YAML description. Free-form
device tree bindings are more or less deprecated now.

> diff --git a/Documentation/devicetree/bindings/net/realtek-bluetooth.txt b/Documentation/devicetree/bindings/net/realtek-bluetooth.txt
> new file mode 100644
> index 000000000000..01d4ed146705
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/net/realtek-bluetooth.txt
> @@ -0,0 +1,25 @@
> +Realtek Bluetooth controllers
> +=============================
> +
> +This documents the binding structure and properties for the serial
> +attached Bluetooth controllers from Realtek.
> +
> +Required properties:
> +- compatible: currently, only "realtek,rt8723bs-bt" is supported
> +
> +Optional properties:
> +- enable-gpio: gpio line controlling the power down (BT_DIS#) signal
> +- device-wake: gpio line controlling the device wakeup (BT_WAKE) signal
> +- config-name: postfix added to the name of the firmware file
> +  containing the chip configuration
> +
> +Example:
> +
> +&uart1 {
> +	bluetooth {
> +		compatible = "realtek,rtl8723bs-bt";
> +		enable-gpio = <&r_pio 0 4 GPIO_ACTIVE_HIGH>; /* PL4 */
> +		device-wake-gpio = <&r_pio 0 6 GPIO_ACTIVE_HIGH>; /* PL6 */
> +		config-name = "teres_a64_i";

IIRC, that has been discussed before and the standard "model" property
was to be preferred.

Maxime

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
