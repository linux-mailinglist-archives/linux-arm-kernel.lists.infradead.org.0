Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 426DE1E53EA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 04:29:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=INKdrvp86Urh27pJutJ8wgqr+1X/SPJt6BEjgt2YaIA=; b=LuXhWgsSURPEtr
	mdYzQ5p8abN5lMESeOcsmBwFansZaWDeByb5hOWS7bMkuWWolYcJ4scyTaGj4yNYSevMXddxWNH5O
	HYFQ7uCcQ7vVv4LwVxYR9ReTqyCw49XzoDRcvEhTkVJDv1aw62vAlvVx+DlvWt/fLQJyc/5fRwT7E
	bbUb3cEs7e1zpMScyZ3K27OJQFgeP2lHYq5escVA7NaOkV4eDsjhC42NbFTpiG7mtdQ/aLtFC+Mse
	+4WxLnJxhQdKvh0rG7DXD5PbxRo9o/Qg1SwbOdUE8o1OyFcjNYfzCLbDbCQED+CYrg8R+n1J1/VeT
	q2J5t2W2MKjr4m4P504w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1je8Ik-0001bJ-5S; Thu, 28 May 2020 02:29:46 +0000
Received: from mail-io1-f66.google.com ([209.85.166.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1je8IY-0001aW-K2
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 02:29:35 +0000
Received: by mail-io1-f66.google.com with SMTP id p20so14932673iop.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 May 2020 19:29:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=uKUnnOxF9cpoRDQnA++h7CPfUqtyF29gVMBaKZyv/Y0=;
 b=EUPL2BBQFO3qFBwP/k/7eC6u/XG5ZvcXrr118BK1XgVCwbVO5icrwcf6glCAEDm9/G
 2Mvq5FDrXH+IvxJ/JErw52aTbXs19pMGEtIYgThB2kjghXMU1a5hH3qXreJzKqfb9cVK
 ykwaqTE7mTzAfnPMkzUPvjkE6xUCOBZKiwh7jrzXpAK1WSOlQP92LBAOpjwrN+uER+ea
 FicA9BdAYIeAKD/pCANNV7OcGovWtpMaKg1F2zNwPBz9YGVl02wRhZrk0IeId/39wT5M
 40gsDWXTCigDNABZyuZSCfmskNW0ze9bbUlzeo9rLIZGmwp8bczMrRvjNk5P/lPt96OP
 9CFQ==
X-Gm-Message-State: AOAM53370WoyiEMg3dy710IriFPVwbkz0nIGhbQw2NXzfmSgUlgLKrop
 1B/zdQ9bOwmWYF3Hg4Vc3w==
X-Google-Smtp-Source: ABdhPJwYED2xCAsIzgBVyE9vczourY10RCn6ClYw2lvBmJb5XU3kxN6F+mP9W19n8mYNqGq07R2dMg==
X-Received: by 2002:a05:6638:101c:: with SMTP id
 r28mr815783jab.84.1590632973069; 
 Wed, 27 May 2020 19:29:33 -0700 (PDT)
Received: from xps15 ([64.188.179.252])
 by smtp.gmail.com with ESMTPSA id z75sm2638939ilc.50.2020.05.27.19.29.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 27 May 2020 19:29:32 -0700 (PDT)
Received: (nullmailer pid 3243939 invoked by uid 1000);
 Thu, 28 May 2020 02:29:31 -0000
Date: Wed, 27 May 2020 20:29:31 -0600
From: Rob Herring <robh@kernel.org>
To: Lars Povlsen <lars.povlsen@microchip.com>
Subject: Re: [PATCH 2/3] arm64: dts: sparx5: Add hwmon temperature sensor
Message-ID: <20200528022931.GA3238321@bogus>
References: <20200513134140.25357-1-lars.povlsen@microchip.com>
 <20200513134140.25357-3-lars.povlsen@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200513134140.25357-3-lars.povlsen@microchip.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_192934_656722_4F681D6E 
X-CRM114-Status: GOOD (  15.07  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.66 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.66 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: linux-hwmon@vger.kernel.org, devicetree@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Jean Delvare <jdelvare@suse.com>, linux-kernel@vger.kernel.org,
 Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
 SoC Team <soc@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 13, 2020 at 03:41:39PM +0200, Lars Povlsen wrote:
> This adds a hwmon temperature node sensor to the Sparx5 SoC.
> 
> Reviewed-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
> Signed-off-by: Lars Povlsen <lars.povlsen@microchip.com>
> ---
>  arch/arm64/boot/dts/microchip/sparx5.dtsi | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/microchip/sparx5.dtsi b/arch/arm64/boot/dts/microchip/sparx5.dtsi
> index f09a49c41ce19..b5f2d088af30e 100644
> --- a/arch/arm64/boot/dts/microchip/sparx5.dtsi
> +++ b/arch/arm64/boot/dts/microchip/sparx5.dtsi
> @@ -233,5 +233,11 @@ i2c1: i2c@600103000 {
>  			clock-frequency = <100000>;
>  			clocks = <&ahb_clk>;
>  		};
> +
> +		tmon0: tmon@610508110 {
> +			compatible = "microchip,sparx5-temp";
> +			reg = <0x6 0x10508110 0xc>;

These nodes are all very odd with a couple of registers spread out at 
randomish addresses. DT nodes should roughly correlate to h/w blocks, 
not sets of registers for a driver like this seems to be.

Please make the dts files one patch. Reviewing a node at a time is not 
all that effective.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
