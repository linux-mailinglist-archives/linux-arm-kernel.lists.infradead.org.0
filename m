Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54B3338EDC
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 17:22:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=21Im1NoLVJK5LsWL/fDoS7jjU+iTYc06FWTm8InzvDc=; b=rPgxC9ky4txuTP
	i/w6ZYeOQxKWDHqGN2DAcO2dwtAfEnKd8fgjDqbO/vrt6JNcPfkrNi38MaH9U3eLGXV9l2n9/b/fP
	gWQCB84VX9bklOJmZ84s/641MIK4CNCGtJnbqYKSX2PT/WcGYhSto4dbC8D04C3JTLMZNy3tFSctk
	f3U0EAL2KtOEMsdXDg6PeE5Ac28/+fU6Zk7tpbYcGj172Qj6tyWou97miACNhXgzbyaYP+bj6bMwU
	n9QwgxrRlFuesIeYy62sVXCQa6A03shQM0Zv1+95vozydFEnfDbIvEMmAPJDnz4mjERR4akXEPugt
	Rzqqy7i+rkqfHObEgJEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZGgr-0004en-JS; Fri, 07 Jun 2019 15:22:01 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZGgi-0004dD-0H
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 15:21:55 +0000
Received: from [192.168.1.31] (cpe-70-114-128-244.austin.res.rr.com
 [70.114.128.244])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4ACCB208C3;
 Fri,  7 Jun 2019 15:21:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559920911;
 bh=C4wSxFGlR6b9yxuGgWtjERfZiktf9Nic7InAMLS2vlc=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=f0Y+3vyWwKNie94rK4lNNs5Gjz8Njf4YDzV52+JvXjDibV6vA1j7g+A8+RGBRvj5T
 aaSxRqJeEcqn1xYFeeR6+oHhuwoUYd3Ykl5qUZS+uRVrtj+BgoL4Wi95MUwVr4wQ7s
 jMGhgXO4r5jl56S4D74j47sX5KRVgaB83H5rtT5g=
Subject: Re: [PATCHv16 1/3] ARM:dt-bindings:display Intel FPGA Video and Image
 Processing Suite
To: "Hean-Loong, Ong" <hean.loong.ong@intel.com>,
 Rob Herring <robh+dt@kernel.org>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Randy Dunlap <rdunlap@infradead.org>
References: <20190607143022.427-1-hean.loong.ong@intel.com>
 <20190607143022.427-2-hean.loong.ong@intel.com>
From: Dinh Nguyen <dinguyen@kernel.org>
Openpgp: preference=signencrypt
Autocrypt: addr=dinguyen@kernel.org; prefer-encrypt=mutual; keydata=
 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
Message-ID: <9695f3e1-92ab-23ce-5922-71fbb7d8149f@kernel.org>
Date: Fri, 7 Jun 2019 10:21:49 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190607143022.427-2-hean.loong.ong@intel.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_082152_890169_B05667E5 
X-CRM114-Status: GOOD (  21.32  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
 chin.liang.see@intel.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Hean-Loong:

Please format your commit message like this:

<Commit message>

Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Ong, Hean Loong <hean.loong.ong@intel.com>
---
V15:
v14:


The version history needs go after the ---

Dinh

On 6/7/19 9:30 AM, Hean-Loong, Ong wrote:
> From: "Ong, Hean Loong" <hean.loong.ong@intel.com>
> 
> Device tree binding for Intel FPGA Video and Image Processing Suite.
> The bindings would set the max width, max height,
> bits per pixel and memory port width.
> The device tree binding only supports the Intel
> Arria10 devkit and its variants. Vendor name retained as altr.
> 
> Reviewed-by: Rob Herring <robh@kernel.org>
> 
> V15:
> Reviewed
> 
> V14:
> No Change
> 
> V13:
> No change
> 
> V12:
> Wrap comments and fix commit message
> 
> V11:
> No change
> 
> V10:
> No change
> 
> V9:
> Remove Display port node
> 
> V8:
> *Add port to Display port decoder
> 
> V7:
> *Fix OF graph for better description
> *Add description for encoder
> 
> V6:
> *Description have not describe DT device in general
> 
> V5:
> *remove bindings for bits per symbol as it has only one value which is 8
> 
> V4:
> *fix properties that does not describe the values
> 
> V3:
> *OF graph not in accordance to graph.txt
> 
> V2:
> *Remove Linux driver description
> 
> V1:
> *Missing vendor prefix
> 
> Signed-off-by: Ong, Hean Loong <hean.loong.ong@intel.com>
> ---
>  .../bindings/display/altr,vip-fb2.txt         | 63 +++++++++++++++++++
>  1 file changed, 63 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/altr,vip-fb2.txt
> 
> diff --git a/Documentation/devicetree/bindings/display/altr,vip-fb2.txt b/Documentation/devicetree/bindings/display/altr,vip-fb2.txt
> new file mode 100644
> index 000000000000..89a3b9e166a8
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/altr,vip-fb2.txt
> @@ -0,0 +1,63 @@
> +Intel Video and Image Processing(VIP) Frame Buffer II bindings
> +
> +Supported hardware: Intel FPGA SoC Arria10 and above with display port IP
> +
> +The Video Frame Buffer II in Video Image Processing (VIP) suite is an IP core
> +that interfaces between system memory and Avalon-ST video ports. The IP core
> +can be configured to support the memory reader (from memory to Avalon-ST)
> +and/or memory writer (from Avalon-ST to memory) interfaces.
> +
> +More information the FPGA video IP component can be acquired from
> +https://www.altera.com/content/dam/altera-www/global/en_US/pdfs\
> +/literature/ug/ug_vip.pdf
> +
> +DT-Bindings:
> +=============
> +Required properties:
> +----------------------------
> +- compatible: "altr,vip-frame-buffer-2.0"
> +- reg: Physical base address and length of the framebuffer controller's
> +	registers.
> +- altr,max-width: The maximum width of the framebuffer in pixels.
> +- altr,max-height: The maximum height of the framebuffer in pixels.
> +- altr,mem-port-width = the bus width of the avalon master port
> +	on the frame reader
> +
> +Optional sub-nodes:
> +- ports: The connection to the encoder
> +
> +Connections between the Frame Buffer II and other video IP cores in the system
> +are modelled using the OF graph DT bindings. The Frame Buffer II node has up
> +to two OF graph ports. When the memory writer interface is enabled, port 0
> +maps to the Avalon-ST Input (din) port. When the memory reader interface is
> +enabled, port 1 maps to the Avalon-ST Output (dout) port.
> +
> +The encoder is built into the FPGA HW design and therefore would not
> +be accessible from the DDR.
> +
> +		Port 0				Port1
> +---------------------------------------------------------
> +ARRIA10 AVALON_ST (DIN)		AVALON_ST (DOUT)
> +
> +Required Properties Example:
> +----------------------------
> +
> +framebuffer@100000280 {
> +		compatible = "altr,vip-frame-buffer-2.0";
> +		reg = <0x00000001 0x00000280 0x00000040>;
> +		altr,max-width = <1280>;
> +		altr,max-height = <720>;
> +		altr,mem-port-width = <128>;
> +
> +		ports {
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +
> +			port@1 {
> +				reg = <1>;
> +					fb_output: endpoint {
> +						remote-endpoint = <&dp_encoder_input>;
> +					};
> +			};
> +		};
> +};
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
