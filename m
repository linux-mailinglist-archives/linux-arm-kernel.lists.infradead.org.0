Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DAEADF447A
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 11:28:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xz8XXV4MPerKUYvDKHCVNaz0yylAgClXB7WSNjG3k1E=; b=tDHghkRGKbLz8l
	LZ7uY0lOaPARLc92Umlnkuww30GO+sqaZ+U6B/5WbA05CtGV74geyJ7mJ4K/wcCWLQ5buQr54rlpv
	Cl8WvP7oQ3rLeOhARXgZK0PAp40gTJVtNmIOVx4Ch+UIhLwAmSy5ZuJdf1F3qEt1R2wSd1wrAC1P0
	MtcKRjW7wU9iIdfyHRlagJJJl4mHF2/jcGOsuMHxafbBs0LrsdKakF0J9IVlt2mUJXmpkcjMFSRzM
	IA4to04uIT7TB7hZuqdb0Lj7Ph0olpESrrgRH96mqT87FBcDx6xLnpp1AANqp7PcVbeH4oEPXJjN8
	V9TGcrCIx8KFF41HNOvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT1V3-00085U-9u; Fri, 08 Nov 2019 10:28:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT1Uw-00084h-9J
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 10:28:11 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 997DF206BA;
 Fri,  8 Nov 2019 10:28:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573208889;
 bh=AOSjNRac0P9NEqExaxB0xZTWmcyhkd13as5AIA1QlAA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=MMCWRLIPqRMeWNaDQUiiTnuQ2uS0dICkTS3gRPk7P+iNA8cyh/JeygV57zPG+NxmY
 kYgXxnjTO11HViK4KzLlph40W+a6qDazZbXc9CnT8tRfliiAzNCMxJTKq4Fdbir8td
 0KJT3vLj5HkWsVy6nOJNtxnn8ZKJlJtgBFH2cHHg=
Date: Fri, 8 Nov 2019 11:28:06 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Joel Stanley <joel@jms.id.au>
Subject: Re: [PATCH v2 08/11] dt-bindings: fsi: Add description of FSI master
Message-ID: <20191108102806.GA656785@kroah.com>
References: <20191108051945.7109-1-joel@jms.id.au>
 <20191108051945.7109-9-joel@jms.id.au>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191108051945.7109-9-joel@jms.id.au>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_022810_348325_01DFB72B 
X-CRM114-Status: GOOD (  16.14  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Alistar Popple <alistair@popple.id.au>,
 Eddie James <eajames@linux.ibm.com>, linux-kernel@vger.kernel.org,
 Steven Rostedt <rostedt@goodmis.org>, Rob Herring <robh+dt@kernel.org>,
 Jeremy Kerr <jk@ozlabs.org>, Ingo Molnar <mingo@redhat.com>,
 linux-arm-kernel@lists.infradead.org, linux-fsi@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Nov 08, 2019 at 03:49:42PM +1030, Joel Stanley wrote:
> This describes the FSI master present in the AST2600.
> 
> Signed-off-by: Joel Stanley <joel@jms.id.au>
> Acked-by: Alistair Popple <alistair@popple.id.au>
> ---
>  .../bindings/fsi/fsi-master-aspeed.txt        | 24 +++++++++++++++++++
>  1 file changed, 24 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/fsi/fsi-master-aspeed.txt
> 
> diff --git a/Documentation/devicetree/bindings/fsi/fsi-master-aspeed.txt b/Documentation/devicetree/bindings/fsi/fsi-master-aspeed.txt
> new file mode 100644
> index 000000000000..b758f91914f7
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/fsi/fsi-master-aspeed.txt
> @@ -0,0 +1,24 @@
> +Device-tree bindings for AST2600 FSI master
> +-------------------------------------------
> +
> +The AST2600 contains two identical FSI masters. They share a clock and have a
> +separate interrupt line and output pins.
> +
> +Required properties:
> + - compatible: "aspeed,ast2600-fsi-master"
> + - reg: base address and length
> + - clocks: phandle and clock number
> + - interrupts: platform dependent interrupt description
> + - pinctrl-0: phandle to pinctrl node
> + - pinctrl-names: pinctrl state
> +
> +Examples:
> +
> +    fsi-master {
> +        compatible = "aspeed,ast2600-fsi-master", "fsi-master";
> +        reg = <0x1e79b000 0x94>;
> +	interrupts = <GIC_SPI 100 IRQ_TYPE_LEVEL_HIGH>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_fsi1_default>;
> +	clocks = <&syscon ASPEED_CLK_GATE_FSICLK>;
> +    };
> -- 
> 2.24.0.rc1
> 

As these all seem like bog-standard properties, I'll take this now,
thanks.

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
