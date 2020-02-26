Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E5EB170606
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 18:25:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sLl1vLWfKz/MM8p1EcwMq1fw/a1DdmctBaMKmkj0y2Y=; b=YCEZc/MBMRVUC7
	wP5JaSL5EdrYqUQZW5IoJghBlphtq2Ouu5ivjljcB+RxGpy3UlcCg1kIzDmYCU9MveS02d/7TLqE3
	OeQT81tO9OJE6nYCgJi45oU7WzOliEjcrplI2QcyxIzqPe4lXw5VAOahcnvhpVWqd2gkxK7QTWec/
	NvHhxp7ZsWwLWU4+GN9vZ8DjwbTHxj6czfyROhUauAlac8rRXemjUAPWg/wpRL7eoU83RSianLC6M
	LhcrCBClMxuav4OjNlMXhP9aE+R3L2ppBhwFV+11qUJreXABIZj8VU+FT3WBPd71LK7k+R6/4dvJ+
	zsSkSI09K7lrvI5pcpjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j70R1-0007p7-15; Wed, 26 Feb 2020 17:25:23 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j70Qh-0006xI-Sq
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 17:25:05 +0000
Received: by mail-ot1-f66.google.com with SMTP id j20so178489otq.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Feb 2020 09:25:01 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=yb77lX4u8E1KgquIZ2ynLlBnmpMTUMg6FQSIil/Vxcs=;
 b=JEwqQsJO220F5vUWLoNZsMLltDv7cOesUOj7+QH4SY/N5kjHqDIefup5yzL3uxOui+
 rH9dHbcTDuNZWv+cif+rJm0nZpNwtC9w89WydMfb8Kz/l6n584UrXm5EBzsP7ZVx4fg8
 bMDjcCXKztDVFe7YFhx0NmIM9QeeGAm3+XNy9r2e6p2QVmBbsQVBDjuwLEQxQtau7Tff
 asaeh8SpHy44ryG6hAWvo9kUYh0aeJhNI++VLeKwDzSKhLpkMUwkou+Sas8zdTOUj+1V
 mednpPK2MACL+JN7sAfEI3zQUHHw6NND6uoXV5YnxkZnHXTF9O3B06hq+QoJRHLgLtFu
 ht8g==
X-Gm-Message-State: APjAAAVhQu+UOyeBmNsLL0P6ebpvK6gLtMeHmb/MwKkjw2LZDhxjbs/4
 YoY2UXtQHJXpIuYXymtuyw==
X-Google-Smtp-Source: APXvYqxh7OvOm+I6luRzH5Ps9jscYhc0/25GuLaMVgFT8ccRv6XeYmD+XjX31DFJisEiuomHvdre1A==
X-Received: by 2002:a9d:624e:: with SMTP id i14mr4079861otk.371.1582737900975; 
 Wed, 26 Feb 2020 09:25:00 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id a30sm964052otc.79.2020.02.26.09.24.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 26 Feb 2020 09:24:59 -0800 (PST)
Received: (nullmailer pid 5983 invoked by uid 1000);
 Wed, 26 Feb 2020 17:24:57 -0000
Date: Wed, 26 Feb 2020 11:24:57 -0600
From: Rob Herring <robh@kernel.org>
To: sherry sun <sherry.sun@nxp.com>
Subject: Re: [PATCH 1/3] dt-bindings: memory-controllers: Add i.MX8MP DDRC
 binding doc
Message-ID: <20200226172457.GA3267@bogus>
References: <1582267156-20189-1-git-send-email-sherry.sun@nxp.com>
 <1582267156-20189-2-git-send-email-sherry.sun@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1582267156-20189-2-git-send-email-sherry.sun@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_092503_944564_B97C40CB 
X-CRM114-Status: GOOD (  15.23  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, tony.luck@intel.com,
 s.hauer@pengutronix.de, frank.li@nxp.com, michal.simek@xilinx.com,
 linux-kernel@vger.kernel.org, rrichter@marvell.com, james.morse@arm.com,
 linux-imx@nxp.com, bp@alien8.de, mchehab@kernel.org, shawnguo@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-edac@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Feb 21, 2020 at 02:39:14PM +0800, sherry sun wrote:
> From: Sherry Sun <sherry.sun@nxp.com>
> 
> Add documentation for i.MX8MP DDRC binding based on synopsys_edac doc,
> which use the same memory-controller IP.
> 
> Signed-off-by: Sherry Sun <sherry.sun@nxp.com>
> ---
>  .../devicetree/bindings/memory-controllers/synopsys.txt   | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/memory-controllers/synopsys.txt b/Documentation/devicetree/bindings/memory-controllers/synopsys.txt
> index 9d32762c47e1..5c03959a451f 100644
> --- a/Documentation/devicetree/bindings/memory-controllers/synopsys.txt
> +++ b/Documentation/devicetree/bindings/memory-controllers/synopsys.txt
> @@ -6,16 +6,20 @@ bus width configurations.
>  The Zynq DDR ECC controller has an optional ECC support in half-bus width
>  (16-bit) configuration.
>  
> -These both ECC controllers correct single bit ECC errors and detect double bit
> +The i.MX8MP DDR ECC controller has an ECC support in 64-bit bus width
> +configurations.
> +
> +These all ECC controllers correct single bit ECC errors and detect double bit

All the ECC...

With that,

Reviewed-by: Rob Herring <robh@kernel.org>

>  ECC errors.
>  
>  Required properties:
>   - compatible: One of:
>  	- 'xlnx,zynq-ddrc-a05' : Zynq DDR ECC controller
>  	- 'xlnx,zynqmp-ddrc-2.40a' : ZynqMP DDR ECC controller
> +	- 'fsl,imx8mp-ddrc' : i.MX8MP DDR ECC controller
>   - reg: Should contain DDR controller registers location and length.
>  
> -Required properties for "xlnx,zynqmp-ddrc-2.40a":
> +Required properties for "xlnx,zynqmp-ddrc-2.40a" and "fsl,imx8mp-ddrc":
>   - interrupts: Property with a value describing the interrupt number.
>  
>  Example:
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
