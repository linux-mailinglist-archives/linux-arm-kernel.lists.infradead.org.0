Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A81D4EB0DA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 14:08:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mwzmsZs32uSjiF+LTaZmiMsBAY1zTgZF58wUeK9de54=; b=GJwErtRWJ18T0t
	rR8cp3YmBEBei3WDBA0HbO4FyTBeOsw/v4Y1Lw5enKvw9jrneeyWWsrFJNAIzqXcTMuKCX4+Sgwvf
	Uy67wTyhPu9I6FNtEqqLpFW8v18WbpFhjVWEaWqMrktEonyxEEBj7bpdnTtBrlyCTgDaWBiS3KVTM
	oXybZTzu8hVVk3TgdV7Zco89xPkRr8W34J4HOiJTioF4+Or4JiTaTc6iSrpuTAJetDTcUZw6iAvCf
	zdmZ9qvGCQ0XBwoDE3q6evmS/mOm7wU+ZS2gqPb3ukM/zHAeZZSby+bNKgvOPfGDfUrVfiwf+1aei
	fA8ifATEvkTjn3Qf3vxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQAC0-00062W-US; Thu, 31 Oct 2019 13:08:48 +0000
Received: from mail-ed1-f67.google.com ([209.85.208.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQAB7-0005lE-8z
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 13:07:54 +0000
Received: by mail-ed1-f67.google.com with SMTP id y7so4697248edo.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 31 Oct 2019 06:07:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=33+edZoJSD4COmLxAmuLRBayFF47TyCyfQ5sB53fkNg=;
 b=XUMDu02u9CKVp85nWwJfwW3LAb3eB0u6ufHOquMAma4CWSlvSglsPVUb7I5bmYyxWC
 CrjNS1PNi4I3RQP/C/oqTuC4VVCNDk+kE7j6+75rJbr2OB+vYfKyfZ5LoZAfoO9iK7S+
 jAMD8o+KEaSq44qiMoc7PtrGuZjL5qggqrDlxsQzjIXf8Ao7BPFIUwP5/zhaDZK60n9z
 v9BhVsjYd3S9SvOsvPFFLN5LkZN0uRXR3guqx9UuFVK96TIoWm0GXpfzbXet+GNaKTwm
 AvBaG1u7Q0NTQUWEcHDFy2Rxh1SoLmnZgHGY10waIiwyAkbj1KXsaUOkILyCP9GmtsAr
 1m/g==
X-Gm-Message-State: APjAAAUWUi57ppMY3DVnfWejEp9fWWNNYl/MQTDlxZSl8BZqSNzB/as2
 aECRcz+Hg5bQxagUtfGy0uM=
X-Google-Smtp-Source: APXvYqz4VxBrjaFKNam8HxGYebLyu4OQUFPsJAleYl1IAKYrh6TRa2TfdjIxJwYwEwR4b6LuyxC7Xw==
X-Received: by 2002:a17:906:a986:: with SMTP id
 jr6mr3834820ejb.158.1572527271575; 
 Thu, 31 Oct 2019 06:07:51 -0700 (PDT)
Received: from pi3 ([194.230.155.180])
 by smtp.googlemail.com with ESMTPSA id a102sm27645edf.46.2019.10.31.06.07.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 31 Oct 2019 06:07:50 -0700 (PDT)
Date: Thu, 31 Oct 2019 14:07:48 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Schrempf Frieder <frieder.schrempf@kontron.de>
Subject: Re: [PATCH v2 11/11] ARM: dts: imx6ul-kontron-n6310-s-43: Add
 missing includes for GPIOs and IRQs
Message-ID: <20191031130748.GC27967@pi3>
References: <20191029112655.15058-1-frieder.schrempf@kontron.de>
 <20191029112655.15058-12-frieder.schrempf@kontron.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191029112655.15058-12-frieder.schrempf@kontron.de>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_060753_356565_B4CBA2CF 
X-CRM114-Status: GOOD (  16.07  )
X-Spam-Score: 3.8 (+++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (3.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.67 listed in list.dnswl.org]
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [194.230.155.180 listed in zen.spamhaus.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.67 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 29, 2019 at 11:28:16AM +0000, Schrempf Frieder wrote:
> From: Frieder Schrempf <frieder.schrempf@kontron.de>
> 
> Signed-off-by: Frieder Schrempf <frieder.schrempf@kontron.de>
> Fixes: 1ea4b76cdfde ("ARM: dts: imx6ul-kontron-n6310: Add Kontron i.MX6UL N6310 SoM and boards")
> ---
>  arch/arm/boot/dts/imx6ul-kontron-n6310-s-43.dts | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/imx6ul-kontron-n6310-s-43.dts b/arch/arm/boot/dts/imx6ul-kontron-n6310-s-43.dts
> index 5bad29683cc3..295bc3138fea 100644
> --- a/arch/arm/boot/dts/imx6ul-kontron-n6310-s-43.dts
> +++ b/arch/arm/boot/dts/imx6ul-kontron-n6310-s-43.dts
> @@ -7,6 +7,9 @@
>  
>  #include "imx6ul-kontron-n6310-s.dts"
>  
> +#include <dt-bindings/interrupt-controller/irq.h>
> +#include <dt-bindings/gpio/gpio.h>

This is not needed. This includes imx6ul-kontron-n6310-s.dts, which
includes imx6ul-kontron-n6310-som.dtsi which has proper GPIO include. It
also polls imx6ul.dtsi which has the IRQ defines.

My comment from v1 was for a case where you have a DTSI standing on its
own. If it does not include anything else, then it should have all
necessary inclusions (not only GPIO but also iMX-specific pinctrl and clock).

Best regards,
Krzysztof


> +
>  / {
>  	model = "Kontron N6310 S 43";
>  	compatible = "kontron,imx6ul-n6310-s-43", "kontron,imx6ul-n6310-s",
> -- 
> 2.17.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
