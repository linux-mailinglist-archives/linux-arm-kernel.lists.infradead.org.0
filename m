Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A8EFEB0C9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 14:04:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8u1xhjLgW6Ejwm3W0fe3RZx+vl1PqHVHBltmHArcfXY=; b=aalwpUg3gWDEHZ
	gwMKTsvvao8D816XpEAVPcWbQdGy4jOFY1G/u2Ap7ggx25jSckEl9zBBlgDCy2FhVhBhy5gmcxDN6
	WZO5JELvWnytp47B12ABNsaivAq1dCDUI8qr+jPJ003hyVAbBukfpfG7vyqsvHFy4icQL7nPX3CWy
	8l3rQiymec+QHtEsq6Mm7Ld2DEAHvz5pGxrBOUrek8DB0ODAyNeJaNJCPStwVXptGvUgGAN/Pjq2d
	Pe8DU2P+mLLC2SwwANffdzf5055sUzGYwuBjdvVoTUOyUCETsepMLIEEcq5o8FVYLVh704/fxQQJN
	J+wMS4a9ZbJo5xW0uxeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQA7U-000432-0g; Thu, 31 Oct 2019 13:04:08 +0000
Received: from mail-ed1-f65.google.com ([209.85.208.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQA7H-00042O-VQ
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 13:03:57 +0000
Received: by mail-ed1-f65.google.com with SMTP id f7so1604335edq.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 31 Oct 2019 06:03:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=+PQJyexbtnGDK2uJq7K6j7gmpF2unU6d9dx98JUUEas=;
 b=suCIZ5uxC/zeopaeHH+vuJNvBwtrMDXVv9xd09COU889vU2agvH6lUU8ALzTmWfNCB
 Z4xGgXbPO2dEBi3etv5k1ptf/aSGOKZjlaNXyCXhejGBVPoK45FGPMmuW7QsFFKR+OtC
 8tT162N7PZiQVwVHHcUQxePivM32NiwV06SALF/DzN/paQ4fVUagG0dRYYFEp5sqMsqS
 N/GVFeSlCMQdop3WhOP7tiM95X3imHwDjagc26pW6xY/pNAried9zKvg2qpOT9iF33Zw
 17TRXUxaNAPKRYBR4VNuByTdz19t3FzxgnG6VRNnunlsjGIm5gNazuFsexHhanq9byl1
 9rKA==
X-Gm-Message-State: APjAAAU2g/E9tYBkp9sQkz9M4YUwa6ZIlopDz5WQsmJ88Ky7opyLtp35
 EvykezSnSTErRftz4I5Z0L0=
X-Google-Smtp-Source: APXvYqzN1wPdv61svA4m7DqM1igoTJ4AGX/nNpkJSYDUyg2S+Rlm9iUoqctcZfZGzWGx1r79/34yEA==
X-Received: by 2002:a17:906:1f8b:: with SMTP id
 t11mr3797383ejr.191.1572527033117; 
 Thu, 31 Oct 2019 06:03:53 -0700 (PDT)
Received: from pi3 ([194.230.155.180])
 by smtp.googlemail.com with ESMTPSA id c15sm86411edl.16.2019.10.31.06.03.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 31 Oct 2019 06:03:52 -0700 (PDT)
Date: Thu, 31 Oct 2019 14:03:50 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Schrempf Frieder <frieder.schrempf@kontron.de>
Subject: Re: [PATCH v2 03/11] ARM: dts: imx6ul-kontron-n6310-s: Move common
 nodes to a separate file
Message-ID: <20191031130350.GB27967@pi3>
References: <20191029112655.15058-1-frieder.schrempf@kontron.de>
 <20191029112655.15058-4-frieder.schrempf@kontron.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191029112655.15058-4-frieder.schrempf@kontron.de>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_060356_009690_678B0182 
X-CRM114-Status: GOOD (  13.24  )
X-Spam-Score: 3.8 (+++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (3.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.65 listed in list.dnswl.org]
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [194.230.155.180 listed in zen.spamhaus.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.65 listed in wl.mailspike.net]
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

On Tue, Oct 29, 2019 at 11:27:51AM +0000, Schrempf Frieder wrote:
> From: Frieder Schrempf <frieder.schrempf@kontron.de>
> 
> The baseboard for the Kontron N6310 SoM is also used for other SoMs
> such as N6311 and N6411. In order to share the code, we move the
> definitions of the baseboard to a separate dtsi file.
> 
> Signed-off-by: Frieder Schrempf <frieder.schrempf@kontron.de>
> ---
>  arch/arm/boot/dts/imx6ul-kontron-n6310-s.dts  | 405 +----------------
>  arch/arm/boot/dts/imx6ul-kontron-n6x1x-s.dtsi | 414 ++++++++++++++++++
>  2 files changed, 415 insertions(+), 404 deletions(-)
>  create mode 100644 arch/arm/boot/dts/imx6ul-kontron-n6x1x-s.dtsi
> 

Reviewed-by: Krzysztof Kozlowski <krzk@kernel.org>

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
