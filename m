Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9020F100A58
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 18:35:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qE0E3nfYLetRkedkTm9EiQw5iJ21zwbDdh403lsMtcY=; b=blQ/PkGredsLCq
	PuomrUdwV8OhYhIlVteiJr25ojRAjGgaPEorskhrutvacTKrgpPRss2qN/m6OehVmsXVtKWFvV1GD
	IA8qXRR5nxkx1NXUHT0Zvf5eMpsYZnW/6jcw3FChMLfIbwOQz6ILEuqoRPZyOHi2t8Eb5UH2E1VrV
	xNCo21LfpXTp4Pf9XgyTGhKAsrtaisIzrznSPNuvcTIbJfmNnzQtMC/yjYgm8mcYSK7UzpolbUEgF
	zWOg88KFa9JMV4s3Fy5WoUZy6i7TWHM9XoFr8dIcLJZ6vsGHgy8Ll1hGueLJoPHPMbl86q8aYb3HT
	TWUV7Xo3CDx2CEr9CMlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWkw1-0005n8-M9; Mon, 18 Nov 2019 17:35:33 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWkvs-0005ly-MX
 for linux-arm-kernel@lists.infradead.org; Mon, 18 Nov 2019 17:35:26 +0000
Received: by mail-oi1-f196.google.com with SMTP id y194so16097594oie.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 Nov 2019 09:35:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Jcjl+xEyXDK406FvNEw7KIB7W8gDcLzQthDaCbnKJGk=;
 b=uZNRRKdt927rjoP+aXra2kjCr+FAnEzUIuNBJTzORzxBZQhTlyklyjqzspznlKsfYd
 r0IISohkLbTrWOslEJG46RF29qBGYFYRIkHpCqudhJgdDxPTm2KxQcs9yOtlamXVjsNO
 OdUZhBkWM3ALKUeCyqHP5vpeHAx0JBZRdjoq2r6DAoSDzc3iRd0YVDm1z3bZz5Efdw1n
 XrPx5CmBLB2i/TdOS8u485yaA5gLRm371jGrbPuhRhfkLShxv/B+Qy/Ep1KKu2ifeZxv
 s90cstIWEdy17uVb/GulhvBTTjn8j/HaD1vUVet/FpdQgQZ32VHjua9y0V3K5OIk0Rnb
 DB7w==
X-Gm-Message-State: APjAAAWS244kC0JDZfEP/AyXatw4vvLv/e5Gvic1cQDg0hBUf2FKKIBi
 wM3LJE3r3lm6jMHJg4wuzg==
X-Google-Smtp-Source: APXvYqwfUzBQrNJcOeJA5zqpj+/wS2ZIsgG7m9QKMazBEknnz6EFpoefnzgkRP4MpUSzowTNdWON0g==
X-Received: by 2002:aca:d4c6:: with SMTP id l189mr108313oig.68.1574098522296; 
 Mon, 18 Nov 2019 09:35:22 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id d3sm6409543otq.25.2019.11.18.09.35.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 Nov 2019 09:35:21 -0800 (PST)
Date: Mon, 18 Nov 2019 11:35:20 -0600
From: Rob Herring <robh@kernel.org>
To: Rajan Vaja <rajan.vaja@xilinx.com>
Subject: Re: [PATCH 1/2] dt-bindings: power: reset: xilinx: Add bindings for
 ipi mailbox
Message-ID: <20191118173520.GA23767@bogus>
References: <1573564851-9275-1-git-send-email-rajan.vaja@xilinx.com>
 <1573564851-9275-2-git-send-email-rajan.vaja@xilinx.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1573564851-9275-2-git-send-email-rajan.vaja@xilinx.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_093524_737553_328D51CF 
X-CRM114-Status: GOOD (  20.79  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
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
Cc: mark.rutland@arm.com, tejas.patel@xilinx.com, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, sre@kernel.org, michal.simek@xilinx.com,
 jollys@xilinx.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Nov 12, 2019 at 05:20:50AM -0800, Rajan Vaja wrote:
> Add IPI mailbox property and its example in xilinx zynqmp-power
> documentation.
> 
> Signed-off-by: Rajan Vaja <rajan.vaja@xilinx.com>
> ---
>  .../bindings/power/reset/xlnx,zynqmp-power.txt     | 41 ++++++++++++++++++++--
>  1 file changed, 38 insertions(+), 3 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/power/reset/xlnx,zynqmp-power.txt b/Documentation/devicetree/bindings/power/reset/xlnx,zynqmp-power.txt
> index d366f1e..450f3a4 100644
> --- a/Documentation/devicetree/bindings/power/reset/xlnx,zynqmp-power.txt
> +++ b/Documentation/devicetree/bindings/power/reset/xlnx,zynqmp-power.txt
> @@ -8,9 +8,27 @@ Required properties:
>   - compatible:		Must contain:	"xlnx,zynqmp-power"
>   - interrupts:		Interrupt specifier
>  
> --------
> -Example
> --------
> +Optional properties:
> + - mbox-names	: Name given to channels seen in the 'mboxes' property.
> +		  "rx" - Mailbox corresponding to receive path
> +		  "tx" - Mailbox corresponding to transmit path

The order here doesn't match the example. The order should be defined.

> + - mboxes	: Standard property to specify a Mailbox. Each value of
> +		  the mboxes property should contain a phandle to the
> +		  mailbox controller device node and an args specifier
> +		  that will be the phandle to the intended sub-mailbox
> +		  child node to be used for communication. See
> +		  Documentation/devicetree/bindings/mailbox/mailbox.txt
> +		  for more details about the generic mailbox controller
> +		  and client driver bindings. Also see
> +		  Documentation/devicetree/bindings/mailbox/ \
> +		  xlnx,zynqmp-ipi-mailbox.txt for typical controller that
> +		  is used to communicate with this System controllers.
> +
> +--------
> +Examples
> +--------
> +
> +Example with interrupt method:
>  
>  firmware {
>  	zynqmp_firmware: zynqmp-firmware {
> @@ -23,3 +41,20 @@ firmware {
>  		};
>  	};
>  };
> +
> +Example with IPI mailbox method:
> +
> +firmware {
> +
> +	zynqmp_firmware: zynqmp-firmware {
> +		compatible = "xlnx,zynqmp-firmware";
> +		method = "smc";
> +
> +		zynqmp_power: zynqmp-power {
> +			compatible = "xlnx,zynqmp-power";
> +			mboxes = <&ipi_mailbox_pmu0 0>,
> +				 <&ipi_mailbox_pmu0 1>;
> +			mbox-names = "tx", "rx";

interrupts is required.

> +		};
> +	};
> +};
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
