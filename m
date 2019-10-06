Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C0E7CD325
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  6 Oct 2019 17:49:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=apliUHEkUMAisxiC9yt4rTlDaos+Vy7jzYluuh5bMK8=; b=a59i0kkCCOgkFU
	Pf4z/GzzYyRMxQKLr8vL2au8ty+XJYUQeyi2YZQpAVSmor3fW/K4B03PHb1ho+/1EvvvfMuJpupi3
	4mxiHCatpJMlcJgVenX0JieIH1afFs4a8jV185tkEo3CUU66Ai4DfIafiaLZlxiKn1V90PHzHqr+7
	iGbh5gukplm+RfwriScdOyWIvY33geaUItrpxuTawSKO5LcFpAwE3GTPMobuIBKScTMxwvrKO0L38
	+nSyaXXW4llGaK8ieugx2m8EyWx7SBgx4uEt73PZs0OifA8rONdWX+Fck0kPnLx0Omdj/KwbocWGZ
	ATf66u300uccT1DUH8vw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iH8mY-00008e-3I; Sun, 06 Oct 2019 15:49:14 +0000
Received: from mail-wr1-f66.google.com ([209.85.221.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iH8mN-00007R-F2
 for linux-arm-kernel@lists.infradead.org; Sun, 06 Oct 2019 15:49:04 +0000
Received: by mail-wr1-f66.google.com with SMTP id q9so12371817wrm.8
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 06 Oct 2019 08:49:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Gjm1dCZFYN9Q0YRQn+rV7fKQn2zR/3c5cBtHPYJQJTI=;
 b=il4/3iwqV2gsGjtcHUve00Oa/avrVXdKDFu5uJMmpPvPiy86IXXyRMhtj7mhb/gwtY
 8C/2QUUwCmtSZ4Fo2dqufVVpncv7heZvPola5s7P9jYtKjl0P4xKbkA8MbCCGG10BLtB
 +2z9okoEXfPR5ICkZUoQxG4REbQVGtCswmXnTyeERpTKR+z29J3sVXq4hrwSxrUAz8/I
 K1lqKX7FX44urdcu9oMzNNWRh8eMMmLbelrxBUsLqgeuRG31Yk+MVr/vRuRVIlc7bjBm
 dUlYBZZeC/ghAcLgHkzUMaOm31vI1zQucnyTNsCejlKmhKSRiiwKDu/kBIRXAkElpb+S
 RSgw==
X-Gm-Message-State: APjAAAWd1NjV+YWWk4c6/anM6Vv0SjGWcw9sJLcybj49PVXvLGmAW/WM
 eG8UPJ56apZ/SFVwVYRsp+A=
X-Google-Smtp-Source: APXvYqzy7hw7qBX+7YQlQBBRw9ZUpQoHKBW0OQ2DhXkAPv3j2tRRGjKiNpfzHfsJ4XmI2fnvsuRIaQ==
X-Received: by 2002:adf:e84c:: with SMTP id d12mr18308509wrn.373.1570376941723; 
 Sun, 06 Oct 2019 08:49:01 -0700 (PDT)
Received: from kozik-lap ([194.230.155.145])
 by smtp.googlemail.com with ESMTPSA id y18sm31455093wro.36.2019.10.06.08.48.59
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 06 Oct 2019 08:49:01 -0700 (PDT)
Date: Sun, 6 Oct 2019 17:48:57 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Kukjin Kim <kgene@kernel.org>,
 =?utf-8?Q?Beno=C3=AEt?= Cousson <bcousson@baylibre.com>,
 Tony Lindgren <tony@atomide.com>,
 Jason Cooper <jason@lakedaemon.net>, Andrew Lunn <andrew@lunn.ch>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Santosh Shilimkar <ssantosh@kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-omap@vger.kernel.org,
 linux-tegra@vger.kernel.org
Subject: Re: [PATCH v3 03/10] ARM: dts: exynos: Rename SysRAM node to "sram"
Message-ID: <20191006154857.GB29365@kozik-lap>
References: <20191002164316.14905-1-krzk@kernel.org>
 <20191002164316.14905-3-krzk@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191002164316.14905-3-krzk@kernel.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191006_084903_503437_9A09ACE5 
X-CRM114-Status: GOOD (  11.93  )
X-Spam-Score: 3.8 (+++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (3.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.66 listed in list.dnswl.org]
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [194.230.155.145 listed in zen.spamhaus.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.66 listed in wl.mailspike.net]
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 02, 2019 at 06:43:09PM +0200, Krzysztof Kozlowski wrote:
> The device node name should reflect generic class of a device so rename
> the SysRAM node from "sysram" to "sram".  The child nodes stay as before
> as "smp-sysram" to match their real purpose.  This will be also in sync
> with upcoming DT schema.  No functional change.
> 
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> ---
>  arch/arm/boot/dts/exynos3250.dtsi | 2 +-
>  arch/arm/boot/dts/exynos4210.dtsi | 2 +-
>  arch/arm/boot/dts/exynos4412.dtsi | 2 +-
>  arch/arm/boot/dts/exynos5250.dtsi | 2 +-
>  arch/arm/boot/dts/exynos54xx.dtsi | 2 +-

Applied this one to samsung-soc.

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
