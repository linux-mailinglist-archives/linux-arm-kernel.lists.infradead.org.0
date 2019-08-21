Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C5389864E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 23:11:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p9c9rSuRoMdG+swc3OQabHMGvpJ0/0FkGu+0g0U1J5s=; b=b2i3f42vZk39FY
	IVtXc54uFU/ifbVg7xPb2A6LATMJGRjJamo23XJGU58+GR0ih/N0Qr3viE51CQqMPLIExtBJzHrNR
	6KwOfVVSpW7sRkj/qg1n6mIa07xrgzHmWpdLeGAHFYm1e95TLrfyb5y8tT+wuXt8nU0nAyuMNAQP8
	LQamLyTG8aBQnHbU8xJxD97MjAos8m1suPTp2o4zDVYLhe7TmhCvQSpRo8bZzxX5gckAd1RsU9z26
	S+mp+C1dzvzOSUJICHA2wBbdGaUW+gbTwV2GU64dYmP8N0T2fyMbBE9ji/8oQBQ8Qw6SSgF8aPS5z
	NvMOywEmXmmfFWdWpunQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0Xsv-0005F2-RX; Wed, 21 Aug 2019 21:11:13 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0Xsn-0005Ef-Dt
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 21:11:06 +0000
Received: by mail-oi1-f194.google.com with SMTP id o6so2717376oic.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 21 Aug 2019 14:11:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=WRsSuAZz6QfRjgNZ8P6+tSp6lptZDI8kWZHn7cMGurw=;
 b=PzKKQm38+M7ODNDZTzBl0FbpVywaF6+yVWf6czqBnVrDMjxPPiED5ivqOhsVAkjkMJ
 dhMCFrEzZi7NTQ7XzwenAzbJ+HarAA2NspTVuGKgdV4wEzmu1XOqj+iWtT/0C0bypCD8
 1i1YxYiqNPAV9a9d9Q+LWz6cQp3JhMOIFkSmFPyitP6KpgfRLwqizDA/rju7C9UW7x+3
 VBmja9aaZxahtbdSv51VBy/h4hhv7NsFXZGYFF4zmGN1cxs99U3ezSeeStWdHaOWkaq6
 1FgwETsZQMIB8CmhJUS1Zhx55SB18wTLmHgxIJmm47yH175qYHKabZpnhV82DPA8Rb8N
 4K6A==
X-Gm-Message-State: APjAAAUsTNN8RdZbJ1E3JUmAtw/nC439aeYSTNq7wvqu4W4iiHS33yUq
 4iguj4uYcA7kVWEoINS+HA==
X-Google-Smtp-Source: APXvYqxSDZHs4c1PVvP+wjeXiVw6s6Xa1KEl627aBD7it4c2vHLG2m+iz6Z0UmTJ9EmpncnD8q2VwA==
X-Received: by 2002:aca:4950:: with SMTP id w77mr1468364oia.28.1566421864593; 
 Wed, 21 Aug 2019 14:11:04 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id v5sm8184684otk.64.2019.08.21.14.11.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Aug 2019 14:11:04 -0700 (PDT)
Date: Wed, 21 Aug 2019 16:11:03 -0500
From: Rob Herring <robh@kernel.org>
To: Lubomir Rintel <lkundrak@v3.sk>
Subject: Re: [PATCH 03/19] dt-bindings: mrvl,intc: Add a MMP3 interrupt
 controller
Message-ID: <20190821211103.GA32263@bogus>
References: <20190809093158.7969-1-lkundrak@v3.sk>
 <20190809093158.7969-4-lkundrak@v3.sk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190809093158.7969-4-lkundrak@v3.sk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_141105_471686_358B8CD1 
X-CRM114-Status: GOOD (  20.98  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Jason Cooper <jason@lakedaemon.net>, Stephen Boyd <sboyd@kernel.org>,
 Marc Zyngier <maz@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 Russell King <linux@armlinux.org.uk>, Kishon Vijay Abraham I <kishon@ti.com>,
 linux-arm-kernel@lists.infradead.org, Olof Johansson <olof@lixom.net>,
 Thomas Gleixner <tglx@linutronix.de>, linux-clk@vger.kernel.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 09, 2019 at 11:31:42AM +0200, Lubomir Rintel wrote:
> Similar to MMP2 one, but has an extra range for the other core. The
> muxes stay the same.
> 
> Signed-off-by: Lubomir Rintel <lkundrak@v3.sk>
> ---
>  .../interrupt-controller/mrvl,intc.txt        | 23 ++++++++++++++-----
>  1 file changed, 17 insertions(+), 6 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/interrupt-controller/mrvl,intc.txt b/Documentation/devicetree/bindings/interrupt-controller/mrvl,intc.txt
> index 608fee15a4cfc..41c131d026f94 100644
> --- a/Documentation/devicetree/bindings/interrupt-controller/mrvl,intc.txt
> +++ b/Documentation/devicetree/bindings/interrupt-controller/mrvl,intc.txt
> @@ -1,13 +1,15 @@
>  * Marvell MMP Interrupt controller
>  
>  Required properties:
> -- compatible : Should be "mrvl,mmp-intc", "mrvl,mmp2-intc" or
> -  "mrvl,mmp2-mux-intc"
> +- compatible : Should be "mrvl,mmp-intc", "mrvl,mmp2-intc",
> +  "marvell,mmp3-intc", "mrvl,mmp2-mux-intc"

Reformat to 1 valid combination per line.

>  - reg : Address and length of the register set of the interrupt controller.
>    If the interrupt controller is intc, address and length means the range
> -  of the whole interrupt controller. If the interrupt controller is mux-intc,
> -  address and length means one register. Since address of mux-intc is in the
> -  range of intc. mux-intc is secondary interrupt controller.
> +  of the whole interrupt controller. The "marvell,mmp3-intc" controller
> +  also has a secondary range for the second CPU core.  If the interrupt
> +  controller is mux-intc, address and length means one register. Since
> +  address of mux-intc is in the range of intc. mux-intc is secondary
> +  interrupt controller.
>  - reg-names : Name of the register set of the interrupt controller. It's
>    only required in mux-intc interrupt controller.
>  - interrupts : Should be the port interrupt shared by mux interrupts. It's
> @@ -20,7 +22,7 @@ Required properties:
>  - mrvl,clr-mfp-irq : Specifies the interrupt that needs to clear MFP edge
>    detection first.
>  
> -Example:
> +Examples:
>  	intc: interrupt-controller@d4282000 {
>  		compatible = "mrvl,mmp2-intc";
>  		interrupt-controller;
> @@ -29,6 +31,15 @@ Example:
>  		mrvl,intc-nr-irqs = <64>;
>  	};
>  
> +	intc: interrupt-controller@d4282000 {

What's special about this to warrant another example. Examples aren't 
supposed to be an enumeration of all possible dts entries.

> +		compatible = "marvell,mmp3-intc";
> +		interrupt-controller;
> +		#interrupt-cells = <1>;
> +		reg = <0xd4282000 0x1000>,
> +		      <0xd4284000 0x100>;
> +		mrvl,intc-nr-irqs = <64>;
> +	};
> +
>  	intcmux4@d4282150 {
>  		compatible = "mrvl,mmp2-mux-intc";
>  		interrupts = <4>;
> -- 
> 2.21.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
