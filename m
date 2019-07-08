Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6824B62B63
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 00:20:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mj+8mvJILr+dCDC1QtZFZtWeu2X3FP3bFdDIO7QiXV8=; b=gpYdvRs5PfHa94
	gbIcWv3Fe9eIWh2auWNYN1hINyReh4q50jD4y5MI0XB4vFsGuA6FB/fR8XtTh2g7tjzN/crGu9kKQ
	3JnrEBtPXVKTta1p+n8CffT5wC0oiOEGF5hSOqDsRgfIiFGwyXdvV9MzXdiEbwleSTxsRFgYHk7bI
	jt4QcBoLrCw0YoCa4cxNq6HQEkRO4KG3jzaTzX7OmEr63Uf97u5mZFYpPVo+KTgp643HHcl5Q8jg2
	IZvCwHIm6bvMJnbMU9Fo1pOQpXaYPxBEpKE7LNQfHzwOTzJhEX8/Aw+bnElBcyh/WnjCm8AOn02B1
	rNOZx4XaPx44RF+wQlwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkbzY-0007LU-E6; Mon, 08 Jul 2019 22:20:12 +0000
Received: from mail-io1-f65.google.com ([209.85.166.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkbzF-0007Kd-At
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jul 2019 22:19:55 +0000
Received: by mail-io1-f65.google.com with SMTP id g20so17761977ioc.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 08 Jul 2019 15:19:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=mN46vG+/AOz/nYTuDQPNV5277nOfHBKNL+k2+anwNSQ=;
 b=nEAv6tTQOaIfM6Wf7zXwEVn8sLh0Srw2RBanKPfXEWWRQqgLAJDr87Z/+v2crc+8UG
 D5C+xbEjrxmRHIk37xBmA1weElONHYVYpNtOrvaVIUvGNH15ytg3tDamyfc0zB/48V4d
 k+WmJhXutH4Ejbosray5sJ47jjB+In1T9AxNDe2AhVeRkBdWqUmXeFop9ABxeRE4olHu
 cSDk5k3rVLFwYFSHo2MdELh1yL2g0dBrk2K+Ugu1T+jqI192Mp9jB62342zWj6cTm81s
 k4fCCtmVfXMi1dpVGuw8hbCOaJYvML4WCdKcxwsmPLoFINA3K7t2Hzh0IZ5LKrbAIvch
 Y91w==
X-Gm-Message-State: APjAAAW8fBsaBqL87/bZNdNUGTJrh2Z9a+Q6w8L9OT+lktfasPfZoXq5
 U0pHBfiL1McViJdBYlTSmg==
X-Google-Smtp-Source: APXvYqyFCtd9RZAWexm1ovEMHGgSm3Adn/B2Dt7+BZSqwk7NopQ7+ycbM6hzReeqC1agYla95EW74Q==
X-Received: by 2002:a02:1607:: with SMTP id a7mr23310703jaa.123.1562624389648; 
 Mon, 08 Jul 2019 15:19:49 -0700 (PDT)
Received: from localhost ([64.188.179.252])
 by smtp.gmail.com with ESMTPSA id q22sm14923152ioj.56.2019.07.08.15.19.48
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 08 Jul 2019 15:19:48 -0700 (PDT)
Date: Mon, 8 Jul 2019 16:19:47 -0600
From: Rob Herring <robh@kernel.org>
To: peng.fan@nxp.com
Subject: Re: [PATCH V2 1/2] DT: mailbox: add binding doc for the ARM SMC
 mailbox
Message-ID: <20190708221947.GA13552@bogus>
References: <20190603083005.4304-1-peng.fan@nxp.com>
 <20190603083005.4304-2-peng.fan@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190603083005.4304-2-peng.fan@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_151953_379945_AC1ECD8D 
X-CRM114-Status: GOOD (  27.29  )
X-Spam-Score: 2.1 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.65 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, f.fainelli@gmail.com,
 festevam@gmail.com, jassisinghbrar@gmail.com, linux-kernel@vger.kernel.org,
 andre.przywara@arm.com, linux-imx@nxp.com, kernel@pengutronix.de,
 sudeep.holla@arm.com, van.freenix@gmail.com, shawnguo@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 03, 2019 at 04:30:04PM +0800, peng.fan@nxp.com wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> The ARM SMC mailbox binding describes a firmware interface to trigger
> actions in software layers running in the EL2 or EL3 exception levels.
> The term "ARM" here relates to the SMC instruction as part of the ARM
> instruction set, not as a standard endorsed by ARM Ltd.
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---
> 
> V2:
> Introduce interrupts as a property.
> 
> V1:
> arm,func-ids is still kept as an optional property, because there is no
> defined SMC funciton id passed from SCMI. So in my test, I still use
> arm,func-ids for ARM SIP service.
> 
>  .../devicetree/bindings/mailbox/arm-smc.txt        | 101 +++++++++++++++++++++
>  1 file changed, 101 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mailbox/arm-smc.txt
> 
> diff --git a/Documentation/devicetree/bindings/mailbox/arm-smc.txt b/Documentation/devicetree/bindings/mailbox/arm-smc.txt
> new file mode 100644
> index 000000000000..401887118c09
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/mailbox/arm-smc.txt
> @@ -0,0 +1,101 @@
> +ARM SMC Mailbox Interface
> +=========================
> +
> +This mailbox uses the ARM smc (secure monitor call) instruction to trigger
> +a mailbox-connected activity in firmware, executing on the very same core
> +as the caller. By nature this operation is synchronous and this mailbox
> +provides no way for asynchronous messages to be delivered the other way
> +round, from firmware to the OS, but asynchronous notification could also
> +be supported. However the value of r0/w0/x0 the firmware returns after
> +the smc call is delivered as a received message to the mailbox framework,
> +so a synchronous communication can be established, for a asynchronous
> +notification, no value will be returned. The exact meaning of both the
> +action the mailbox triggers as well as the return value is defined by
> +their users and is not subject to this binding.
> +
> +One use case of this mailbox is the SCMI interface, which uses shared memory
> +to transfer commands and parameters, and a mailbox to trigger a function
> +call. This allows SoCs without a separate management processor (or when
> +such a processor is not available or used) to use this standardized
> +interface anyway.
> +
> +This binding describes no hardware, but establishes a firmware interface.
> +Upon receiving an SMC using one of the described SMC function identifiers,
> +the firmware is expected to trigger some mailbox connected functionality.
> +The communication follows the ARM SMC calling convention[1].
> +Firmware expects an SMC function identifier in r0 or w0. The supported
> +identifiers are passed from consumers, or listed in the the arm,func-ids
> +properties as described below. The firmware can return one value in
> +the first SMC result register, it is expected to be an error value,
> +which shall be propagated to the mailbox client.
> +
> +Any core which supports the SMC or HVC instruction can be used, as long as
> +a firmware component running in EL3 or EL2 is handling these calls.
> +
> +Mailbox Device Node:
> +====================
> +
> +This node is expected to be a child of the /firmware node.
> +
> +Required properties:
> +--------------------
> +- compatible:		Shall be "arm,smc-mbox"
> +- #mbox-cells		Shall be 1 - the index of the channel needed.
> +- arm,num-chans		The number of channels supported.
> +- method:		A string, either:
> +			"hvc": if the driver shall use an HVC call, or
> +			"smc": if the driver shall use an SMC call.
> +
> +Optional properties:
> +- arm,func-ids		An array of 32-bit values specifying the function
> +			IDs used by each mailbox channel. Those function IDs
> +			follow the ARM SMC calling convention standard [1].
> +			There is one identifier per channel and the number
> +			of supported channels is determined by the length
> +			of this array.
> +- interrupts		SPI interrupts may be listed for notification,
> +			each channel should use a dedicated interrupt
> +			line.
> +
> +Example:
> +--------
> +
> +	sram@910000 {
> +		compatible = "mmio-sram";
> +		reg = <0x0 0x93f000 0x0 0x1000>;
> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +		ranges = <0 0x0 0x93f000 0x1000>;
> +
> +		cpu_scp_lpri: scp-shmem@0 {
> +			compatible = "arm,scmi-shmem";
> +			reg = <0x0 0x200>;
> +		};
> +
> +		cpu_scp_hpri: scp-shmem@200 {
> +			compatible = "arm,scmi-shmem";
> +			reg = <0x200 0x200>;
> +		};
> +	};
> +
> +	smc_mbox: mailbox {

This should be a child of 'firmware' node at least and really a child of 
the firmware component that implements the feature.

> +		#mbox-cells = <1>;
> +		compatible = "arm,smc-mbox";
> +		method = "smc";
> +		arm,num-chans = <0x2>;
> +		/* Optional */
> +		arm,func-ids = <0xc20000fe>, <0xc20000ff>;
> +	};
> +
> +	firmware {
> +		scmi {
> +			compatible = "arm,scmi";
> +			mboxes = <&mailbox 0 &mailbox 1>;
> +			mbox-names = "tx", "rx";
> +			shmem = <&cpu_scp_lpri &cpu_scp_hpri>;
> +		};
> +	};
> +
> +
> +[1]
> +http://infocenter.arm.com/help/index.jsp?topic=/com.arm.doc.den0028a/index.html
> -- 
> 2.16.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
