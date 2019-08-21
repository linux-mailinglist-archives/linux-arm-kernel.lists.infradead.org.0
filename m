Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFB8B98282
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 20:15:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v47nJ8JdhECAu0x+59k4C78v1sOrzawM9tc7fBi8nVA=; b=EQwAyMItj/XBqd
	pUIHtU6yeslWecTBsCZHvOZlYp8Q5XnpOtKTjVCzmwrZFupxjMuS+NlRr7urzG1WjR/p4N5Nj0xiN
	pX7ibyqkcPDMewv0+URmk0Vh+hOIeW/KcAxtL/DehvqVHR57NNhoF1UbnxY3qphPoHXBcpwW2oCC+
	IjPWEly1uDaoZFVDTLSabV0kvTyUJ3a7VmL85CaHMoaPR/ulYlEYoCb5y7JUmdw0sU3rAmi4e7L7d
	+fKEkb1nbPPRjin7JN3knwk3YV4ttB4oR9/qcz+g0UySPCkzCetxesWTR9UH7zJrvpJeLhWO5Ry+z
	FXKO+I3K8IGr6PUsOi6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0V8c-0004gj-4f; Wed, 21 Aug 2019 18:15:14 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0V8O-0004UE-RJ; Wed, 21 Aug 2019 18:15:02 +0000
Received: by mail-oi1-f193.google.com with SMTP id 16so2323899oiq.6;
 Wed, 21 Aug 2019 11:15:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=m5nuLuMsfkxZNIzHnYqhL4fj6+pQ1WScxNpfqvSjJaI=;
 b=PZoJcz3NSw2yZ1kc/xY9u4yw6X4wkR1XuJ30qpOLy+JXvPxIAI6BozihNrMvXYk26q
 XyDOTRvSjyRE12+CeZ715sno3Wiye9YciH7rx65SedsWYckjDAOg34R/UO9SjJcHpaW9
 S2F+UmItb/ROmhf7v9dHi7L3Qjf8rx1ZzV3CROJXwdcLc00H5+cVcS89iUrUQ/Wcmh4T
 BvGuQdMhJRmXh13gYzLC8IJ0KByCZ4mRWK63v3ZMBBxqjtuTW+7otd62IejXkeO/l3JN
 5TVVStkLuu7Pf355kMDB213gu63Of4oVViYNzq/RUQjNWE7McDNXLyhkbQ8Z3JZqv18M
 4jbw==
X-Gm-Message-State: APjAAAULKdGhS+YpaI3CrNICrY8lh21qgfpk7K3hWy7Wjbin3y1LBBOc
 yyGtK4Jh476Mkxr4ba6dFQ==
X-Google-Smtp-Source: APXvYqzwhKlJjpqtFevAij5ECQaAFh8CyzecW1FB3eA+DYuuqoWkt1MaKqYsC9EIdtIdbe4Chhf4HQ==
X-Received: by 2002:aca:b989:: with SMTP id j131mr951663oif.147.1566411299295; 
 Wed, 21 Aug 2019 11:14:59 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id p11sm7874311oto.4.2019.08.21.11.14.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Aug 2019 11:14:58 -0700 (PDT)
Date: Wed, 21 Aug 2019 13:14:58 -0500
From: Rob Herring <robh@kernel.org>
To: Carlo Caione <ccaione@baylibre.com>
Subject: Re: [PATCH v2 2/4] nvmem: meson-efuse: bindings: Add secure-monitor
 phandle
Message-ID: <20190821181458.GA2886@bogus>
References: <20190731082339.20163-1-ccaione@baylibre.com>
 <20190731082339.20163-3-ccaione@baylibre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190731082339.20163-3-ccaione@baylibre.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_111500_885892_AF9E7BF9 
X-CRM114-Status: GOOD (  15.83  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, narmstrong@baylibre.com, khilman@baylibre.com,
 srinivas.kandagatla@linaro.org, linux-amlogic@lists.infradead.org,
 tglx@linutronix.de, linux-arm-kernel@lists.infradead.org, jbrunet@baylibre.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 31, 2019 at 09:23:37AM +0100, Carlo Caione wrote:
> Add a new property to link the nvmem driver to the secure-monitor. The
> nvmem driver needs to access the secure-monitor to be able to access the
> fuses.
> 
> Signed-off-by: Carlo Caione <ccaione@baylibre.com>
> ---
>  Documentation/devicetree/bindings/nvmem/amlogic-efuse.txt | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/nvmem/amlogic-efuse.txt b/Documentation/devicetree/bindings/nvmem/amlogic-efuse.txt
> index 2e0723ab3384..f7b3ed74db54 100644
> --- a/Documentation/devicetree/bindings/nvmem/amlogic-efuse.txt
> +++ b/Documentation/devicetree/bindings/nvmem/amlogic-efuse.txt
> @@ -4,6 +4,7 @@ Required properties:
>  - compatible: should be "amlogic,meson-gxbb-efuse"
>  - clocks: phandle to the efuse peripheral clock provided by the
>  	  clock controller.
> +- secure-monitor: phandle to the secure-monitor node
>  
>  = Data cells =
>  Are child nodes of eFuse, bindings of which as described in
> @@ -16,6 +17,7 @@ Example:
>  		clocks = <&clkc CLKID_EFUSE>;
>  		#address-cells = <1>;
>  		#size-cells = <1>;
> +		secure-monitor = <&sm>;
>  
>  		sn: sn@14 {
>  			reg = <0x14 0x10>;
> @@ -30,6 +32,10 @@ Example:
>  		};
>  	};
>  
> +	sm: secure-monitor {
> +		compatible = "amlogic,meson-gxbb-sm";
> +	};

I guess I acked this a while back, but I'm not sure I would today. It 
seems incomplete and a node with only a compatible string and no 
resources doesn't need to be in DT. But that's already done...

There's no need for 'secure-monitor' anyways. Just do 
'of_find_compatible_node(NULL, NULL, "amlogic,meson-gxbb-sm")' or search 
for the driver directly. It's not like there's more than one secure 
monitor...

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
