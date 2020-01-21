Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EC4714483A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Jan 2020 00:21:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CdaKNiUBgF/po/Xrmkmis8NB5tp5WN65FK6/J+0+Rgk=; b=WHNRI8VmnP8XST
	xxsy3aqLOYJUOtnL8i+vtJAu68wfxvAGfw0RN5m8WCT9fCseY7ulun+EfeXkedfBbXAi/ixlVjVte
	EvqZr/G5JZMyfxFsfCcoE11WfJUFORNCIeKJWDHC/BJOuzypRBddkdNJaf3RI2OHqH3GtCmszK+Nz
	kfnFgHtSey+uka0lTmWZZ5azUdc7+LWs1ea6XGrBQMg9UvJNL9Xdtl5xDIXS3xzeDMU/1sr+HlUhW
	8pcIwVSg+DVKQOSeUF6EzW0YjGcS8lTTS05o81MisYbJckUPc2zv2dp3WYEeHd0zXRK+42wfphjmW
	QjHODM1vAjDbxXvVvVww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iu2q7-0008LP-C9; Tue, 21 Jan 2020 23:21:43 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iu2pu-0008Kn-CG
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 23:21:31 +0000
Received: by mail-ot1-f65.google.com with SMTP id 66so4590004otd.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 Jan 2020 15:21:30 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=b2BXYpfDPDVNcyG1ziQ8Rflzz+weHKCKYw4Qh7CsVWE=;
 b=MFnU1EpYNTl3lTRvJEEXx54Mlcv8ziuWmz8E9RpYfJO83FftrxVUvD/fj3d+gydtur
 dmzRcY5O/1XrajNOqHo+Fpq8raz4jEG7KUsv+G9C6TZBxlghhBy6JZTBABgqkiQ+4cvI
 is4Qknk/ipkXKzzFHoQkGPqQ3MWR5LZzGXmto3/8NGiZrvgLINo3hb1c3viFUXW4ciUK
 VBJTL6DUwf4M/820QZFYfTlDOSW0huIrgQANO1D9sLtzqpj9p/yN2ZMhMyytuGlUkaW4
 hX+/BL9JaoGW7Q4njpfHL8gOgM029KeWfcgnNmwpe/M5KiXltoYdDzP3ZBCQxJxmN4QH
 avMQ==
X-Gm-Message-State: APjAAAW+s9WObyk0X3yHbdNOPcCi9IpcdkwXtyTgHjm+EoC6HU7BzsZu
 3TMTGTaMSQlXQdDhgcLhVA==
X-Google-Smtp-Source: APXvYqytAEUvtzJujZe8GWtr4e6O/z3bPHvI6P3e8CzKdbUqWFIB7E7b8Ba8QvUU5rjNmAUkw9qENA==
X-Received: by 2002:a05:6830:1d4c:: with SMTP id
 p12mr5576747oth.198.1579648889363; 
 Tue, 21 Jan 2020 15:21:29 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id e13sm12591350oie.0.2020.01.21.15.21.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Jan 2020 15:21:28 -0800 (PST)
Received: (nullmailer pid 29220 invoked by uid 1000);
 Tue, 21 Jan 2020 23:21:27 -0000
Date: Tue, 21 Jan 2020 17:21:27 -0600
From: Rob Herring <robh@kernel.org>
To: Peng Fan <peng.fan@nxp.com>
Subject: Re: [PATCH] dt-bindings: soc: imx: add binding doc for aips bus
Message-ID: <20200121232127.GA21925@bogus>
References: <1579154877-13210-1-git-send-email-peng.fan@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1579154877-13210-1-git-send-email-peng.fan@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_152130_416367_38748065 
X-CRM114-Status: GOOD (  16.59  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jan 16, 2020 at 06:12:12AM +0000, Peng Fan wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> Add binding doc for fsl,aips-bus
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---
>  .../devicetree/bindings/soc/imx/fsl,aips-bus.yaml  | 38 ++++++++++++++++++++++
>  1 file changed, 38 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/soc/imx/fsl,aips-bus.yaml
> 
> diff --git a/Documentation/devicetree/bindings/soc/imx/fsl,aips-bus.yaml b/Documentation/devicetree/bindings/soc/imx/fsl,aips-bus.yaml
> new file mode 100644
> index 000000000000..73ce1b7fc306
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/soc/imx/fsl,aips-bus.yaml
> @@ -0,0 +1,38 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/soc/imx/fsl,aips-bus.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: i.MX AHB to IP Bridge
> +
> +maintainers:
> +  - Peng Fan <peng.fan@nxp.com>
> +
> +description: |
> +  This particular peripheral is designed as the bridge between
> +  AHB bus and peripherals with the lower bandwidth IP Slave (IPS)
> +  buses.
> +
> +properties:
> +  compatible:
> +    oneOf:
> +      - const: fsl,aips-bus
> +
> +  reg:
> +    maxItems: 1
> +
> +required:
> +  - compatible
> +  - reg
> +
> +examples:
> +  - |
> +    bus@30000000 {
> +      compatible = "fsl,aips-bus", "simple-bus";

'make dt_binding_check' should be failing for you because this doesn't 
match the schema. You need to add 'simple-bus'. However doing so will 
make this schema match on any node with 'simple-bus'. See 'select' in 
various arm,primecell schemas for how to avoid this problem.

Rob

> +      reg = <0x30000000 0x400000>;
> +      #address-cells = <1>;
> +      #size-cells = <1>;
> +      ranges;
> +    };
> +...
> -- 
> 2.16.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
