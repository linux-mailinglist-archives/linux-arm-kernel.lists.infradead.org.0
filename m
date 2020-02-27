Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A74E172A58
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 22:42:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OSYwu5+T8ZZFOz17tid3zZStmjl6NJJBxrqBz4zc9Dw=; b=uxyUph2r3Mvy3O
	V3rP4z3VmZWVIAYB7DanFOX/FretK734zDLBArN1GamaKAOsgbprjtmdReyTbfl5+70H/jc8tnoso
	uD+QIfb5UZnjOteXI+qD3I9RYyzWTMtVxcy3QddUvtxm5pvkxwB4R90klCBRMekXM3Ru6xpxfatdA
	2cKGYDp5e1E40xbhgOrY2x38+3DNPM/A9E0sVPoS8gNiOhwf9H+Hq2SyeE9teTT4YIe6pv3XlPRKu
	gYp0Giow4pERnNhOTdi4O0ck9cIZZ4te3W5UZNNO+0sTXaactNfHYHbiZuXdI7FQt1XP/G7zYch/J
	emvVnlZbM1Va4ZMjGMCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7QvP-0000uH-WD; Thu, 27 Feb 2020 21:42:32 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7QvF-0000tK-Jl
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 21:42:23 +0000
Received: by mail-oi1-f194.google.com with SMTP id l12so761656oil.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Feb 2020 13:42:20 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=hxSUt8ecSkxryci9k7+9ny1llgrPw7O7ypz9WTmNE9A=;
 b=NwZJCEbfCLn83yPWUkNF7njMhENdP5NjK17HAa8b23GPcq0Dii/D8ln+mJIA2/UcET
 L1RiJcJPuoNqX9N2HHS2Mwh8x3n6cBKBhRfpucG5OxCTq+SjVBhMpHkc2sWeyh0l40IU
 hzNsZcgRBUOSP1VI1uZ90rR9uwm2ZQv+BNQlv8Ms2yRBzCEv02nvwrODbVrWoP4LxaPk
 +WooXNtlpyGS//jtzXRXKwY3sdBBADC8Mra665UEqwHwYp11/jfNtJCFuAQa1cATjN0z
 BV2DLuobKtrxwKsXNALAWkH5SZSng/af6yGmTVfLwG0pfNLvD/mOe4AkxFnvKw5A6qnn
 uTlQ==
X-Gm-Message-State: APjAAAW2B38wki839tQY7H9EbT4/RC0QT3b4NQt25PuUAI3SbUdIPILM
 9lcV1Sy2eude2TSJyphb4wHqpYQ=
X-Google-Smtp-Source: APXvYqyJuw4LqldUP8MH0Ja45kzZ5rHTt45NPh9538Dg11MACmv0nYndqV17CAWIl0VA6KmbgC3AIA==
X-Received: by 2002:a05:6808:618:: with SMTP id
 y24mr832198oih.86.1582839740003; 
 Thu, 27 Feb 2020 13:42:20 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id t20sm2365430oij.19.2020.02.27.13.42.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 Feb 2020 13:42:19 -0800 (PST)
Received: (nullmailer pid 2192 invoked by uid 1000);
 Thu, 27 Feb 2020 21:42:18 -0000
Date: Thu, 27 Feb 2020 15:42:18 -0600
From: Rob Herring <robh@kernel.org>
To: Andre Przywara <andre.przywara@arm.com>
Subject: Re: [PATCH v2 01/13] arm: dts: calxeda: Basic DT file fixes
Message-ID: <20200227214218.GA26010@bogus>
References: <20200227182210.89512-1-andre.przywara@arm.com>
 <20200227182210.89512-2-andre.przywara@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200227182210.89512-2-andre.przywara@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_134221_652470_D849D3B8 
X-CRM114-Status: GOOD (  17.57  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, Jon Loeliger <jdl@jdl.com>,
 Mark Langsdorf <mlangsdo@redhat.com>, Robert Richter <rric@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 Maxime Ripard <mripard@kernel.org>, Eric Auger <eric.auger@redhat.com>,
 soc@kernel.org, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 27, 2020 at 06:21:58PM +0000, Andre Przywara wrote:
> The .dts files for the Calxeda machines are quite old, so carry some
> sloppy mistakes that the DT schema checker will complain about.
> 
> Fix those issues, they should not have any effect on functionality.
> 
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> ---
>  arch/arm/boot/dts/ecx-2000.dts | 3 ---
>  arch/arm/boot/dts/highbank.dts | 7 ++-----
>  2 files changed, 2 insertions(+), 8 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/ecx-2000.dts b/arch/arm/boot/dts/ecx-2000.dts
> index 5651ae6dc969..81eb382b4c23 100644
> --- a/arch/arm/boot/dts/ecx-2000.dts
> +++ b/arch/arm/boot/dts/ecx-2000.dts
> @@ -13,7 +13,6 @@
>  	compatible = "calxeda,ecx-2000";
>  	#address-cells = <2>;
>  	#size-cells = <2>;
> -	clock-ranges;
>  
>  	cpus {
>  		#address-cells = <1>;
> @@ -83,8 +82,6 @@
>  		intc: interrupt-controller@fff11000 {
>  			compatible = "arm,cortex-a15-gic";
>  			#interrupt-cells = <3>;
> -			#size-cells = <0>;
> -			#address-cells = <1>;

This is needed if there's an interrupt-map pointing to the gic node. 
However, it should be 0 in that case. 

I thought we had to fix this at some point, but I can't find any record 
of it. So I guess fine to remove. 

Reviewed-by: Rob Herring <robh@kernel.org>

>  			interrupt-controller;
>  			interrupts = <1 9 0xf04>;
>  			reg = <0xfff11000 0x1000>,
> diff --git a/arch/arm/boot/dts/highbank.dts b/arch/arm/boot/dts/highbank.dts
> index f4e4dca6f7e7..9e34d1bd7994 100644
> --- a/arch/arm/boot/dts/highbank.dts
> +++ b/arch/arm/boot/dts/highbank.dts
> @@ -13,7 +13,6 @@
>  	compatible = "calxeda,highbank";
>  	#address-cells = <1>;
>  	#size-cells = <1>;
> -	clock-ranges;
>  
>  	cpus {
>  		#address-cells = <1>;
> @@ -96,7 +95,7 @@
>  		};
>  	};
>  
> -	memory {
> +	memory@0 {
>  		name = "memory";
>  		device_type = "memory";
>  		reg = <0x00000000 0xff900000>;
> @@ -128,14 +127,12 @@
>  		intc: interrupt-controller@fff11000 {
>  			compatible = "arm,cortex-a9-gic";
>  			#interrupt-cells = <3>;
> -			#size-cells = <0>;
> -			#address-cells = <1>;
>  			interrupt-controller;
>  			reg = <0xfff11000 0x1000>,
>  			      <0xfff10100 0x100>;
>  		};
>  
> -		L2: l2-cache {
> +		L2: cache-controller {
>  			compatible = "arm,pl310-cache";
>  			reg = <0xfff12000 0x1000>;
>  			interrupts = <0 70 4>;
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
