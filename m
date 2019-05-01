Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4E9F10DBF
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 May 2019 22:08:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bbpvEdRaBatxLQQPBGQfsEW8QSZ1XjGGXX8Tgl08Xpc=; b=M7oCowrlsUTX9Y
	Bpxqw4Yu8+HtxYNnuyuPp8AuxpFwVMGDjX/i0UOEXOtm8Sl/WSfZ8tZtzz78g+NJ6tZFzsQpubSPa
	TO+B07P+WDhgAOLJZB8wluteYLYUwVzYAk0c52zlhR2XlvAm1h2/toWy0XnJkRPJ7Kc7i/7CwPybj
	l+Wu6J98Ds42dvFsqAx8hDdRQ3+mAnl0GbGyxIguO8+lNHCWUGdxLMe9HtyDe1LqYmx1JlxEJwbml
	3Fa/jIKn5Jjaepny7tc6E/PHERuhafT5t9ZFlcpxTxjPVT0q7ax/CW0iq8zqNTJ7ySBxiLy2YfE9T
	ByJkplnDko9sPmzcKXOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLvWj-00047V-BE; Wed, 01 May 2019 20:08:25 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLvVa-00041K-CL
 for linux-arm-kernel@lists.infradead.org; Wed, 01 May 2019 20:07:20 +0000
Received: by mail-oi1-f193.google.com with SMTP id d62so8795370oib.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 01 May 2019 13:07:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=mKg6SA0SX5HV854mYVNTFbSlG/IOsGPH6fFYgeCQFmk=;
 b=BjuI8UtrTIsoJ/9g3MWFuaHhNVDMquxFDgnZgiGW06aelqzoFlrnjRXVSvTg+NDXWu
 vjLREbTGi1dW55oeGxo/Ar4jgVWoXbuAmV7uHy4AdYIo4/oxo0j6rzi+LdrGeiNthtEq
 VyyncN5/Od7A8pN0XogkTkIQgJe7xv43gbm90oejYgPdnxiY1AGfNH6PsK8mOHezqwCj
 7G/XcvtW942D+Ynz3yxN4HkQPhpxKmtW2hrvC3+I5NnnCeZKK5N+8WSqCOW8VPggk00z
 4f13dpiCmXohlFs/Q+WZZF9b9dL5EGhN6fPApbXGAjKdIRN7RweIB6jK11kHdraTNEdu
 Pftw==
X-Gm-Message-State: APjAAAXU1pBO1EErFw6aOYm1uKlT6aWPXqRTUw1eMoNfk/IqzKT1xQyE
 5RECEvMQLnNW1v9Zm0w4nA==
X-Google-Smtp-Source: APXvYqx5r0LA6i5YuqMDOd9NBN4QAPVZsvNiRZb0YS/Pv4676PBqH7lCEcuJdpsY+bfpypfvpEhe4g==
X-Received: by 2002:aca:ec41:: with SMTP id k62mr42673oih.147.1556741233322;
 Wed, 01 May 2019 13:07:13 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id h24sm15848390otr.39.2019.05.01.13.07.11
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 01 May 2019 13:07:12 -0700 (PDT)
Date: Wed, 1 May 2019 15:07:11 -0500
From: Rob Herring <robh@kernel.org>
To: Robin Gong <yibin.gong@nxp.com>
Subject: Re: [PATCH v2 08/15] dt-bindings: spi: imx: add i.mx6ul to state
 errata fixed
Message-ID: <20190501200711.GA31231@bogus>
References: <1556265512-9130-1-git-send-email-yibin.gong@nxp.com>
 <1556265512-9130-9-git-send-email-yibin.gong@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1556265512-9130-9-git-send-email-yibin.gong@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_130715_935224_26EA004F 
X-CRM114-Status: GOOD (  17.08  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "plyatov@gmail.com" <plyatov@gmail.com>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-spi@vger.kernel.org" <linux-spi@vger.kernel.org>,
 "broonie@kernel.org" <broonie@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "u.kleine-koenig@pengutronix.de" <u.kleine-koenig@pengutronix.de>,
 "dmaengine@vger.kernel.org" <dmaengine@vger.kernel.org>,
 "dan.j.williams@intel.com" <dan.j.williams@intel.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Apr 26, 2019 at 08:05:51AM +0000, Robin Gong wrote:
> ERR009165 fixed from i.mx6ul, add it to show the errata fixed.
> 
> Signed-off-by: Robin Gong <yibin.gong@nxp.com>
> ---
>  Documentation/devicetree/bindings/spi/fsl-imx-cspi.txt | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/spi/fsl-imx-cspi.txt b/Documentation/devicetree/bindings/spi/fsl-imx-cspi.txt
> index 2d32641..32c4263d 100644
> --- a/Documentation/devicetree/bindings/spi/fsl-imx-cspi.txt
> +++ b/Documentation/devicetree/bindings/spi/fsl-imx-cspi.txt
> @@ -10,6 +10,8 @@ Required properties:
>    - "fsl,imx35-cspi" for SPI compatible with the one integrated on i.MX35
>    - "fsl,imx51-ecspi" for SPI compatible with the one integrated on i.MX51
>    - "fsl,imx53-ecspi" for SPI compatible with the one integrated on i.MX53 and later Soc
> +  - "fsl,imx6ul-ecspi" ERR009165 fixed on i.MX6UL and later Soc
> +    (https://www.nxp.com/docs/en/errata/IMX6DQCE.pdf)

What about other i.MX6 chips?

Seems like this is missing some fallbacks. The binding doc should make 
it clear what are all valid combinations of compatible strings.

>    - "fsl,imx8mq-ecspi" for SPI compatible with the one integrated on i.MX8M
>  - reg : Offset and length of the register set for the device
>  - interrupts : Should contain CSPI/eCSPI interrupt
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
