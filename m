Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8129733FC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 18:34:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zUhf1OHSDURHuAUw9R/44KJUcAEehbuP+j7JrrbR4kk=; b=QVJsLS566ejsnd
	0JCZiDB0bZTDsqw/zYTWZkRa3yB/OYdq4NsR5aRIjAYmM5AYzDFphgsOUb3hoNTBoDDsLPUVjM6Ug
	VA//7k6OaDmCVKE9rkbv3Kz7B8Yc3+kSCbsWhtkRZQmN1Mavk7SwKC+kXmfNzb9JcJUakXQcmNOKe
	7iSjey9wE/Db8BAym19m+/DnoiFr+Z1NWWTlxdDA8TtPSg1vTZNIcIUQa1d1Nl70frewcljf1Lw1h
	9x4QdJ6Kjz4dAaJOwg7gM3Yc5WsIxRFqqd5iQjIoxwn27uuF/1jusrH1ldyTNAkfIaXsXMgAUNb+1
	u9UEai5k77B84EfaE1Rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqKDr-00065y-Om; Wed, 24 Jul 2019 16:34:35 +0000
Received: from mail-io1-f65.google.com ([209.85.166.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqKDd-00062j-KC
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 16:34:23 +0000
Received: by mail-io1-f65.google.com with SMTP id q22so90901012iog.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 24 Jul 2019 09:34:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=/PlH4vZ2Uin7/bl42iN+WjnHNv+woMCrYa8NnQ7gWTo=;
 b=e4jVeQkD3grdxghc6HmkSZYBYlGY9iejMu0K+g4GrdVnoHIlbHDPpPbbaQE1Oeahtp
 r5aL8h5ZPD0D7mL74j2hfJ2jpKN3HDXfPjVmKxq5eQmFlaafNDiP1oaaS0wheyPC4O/f
 Xy6S5M9FLIPOZ2jtjxefEoeuZ2Sm9moBspTbwsCbt4oJkJZXYU2cWz3div9rSvYBrH4v
 tKchP7WbBPVX6Q42obLxS8txc5QbRcvhB3X5VYy7Av7aOvUufxGOM7IosvBBO9vqa17q
 BrbYsEtV++4eoXrykj9oxdRuFgJleVMKe88VmGfhPdlEEMDH3YPlxxhOA/BcqKbr+w21
 u9Cw==
X-Gm-Message-State: APjAAAVPBpfCyepmCEg2qZ5N1BSRg/TZnADkXOOHLtg4kkLrp2U9lwsm
 PLUVb3+LN3/PXmhkxHeqUMtdF+Q=
X-Google-Smtp-Source: APXvYqzjl58aQwxUq65IuKOZ/HpEXrjN4r3zsKMfMya48Uu06RIYqPgzl9UQEH9sk+bryVsjmlT/zg==
X-Received: by 2002:a02:29ce:: with SMTP id
 p197mr24690823jap.139.1563986060805; 
 Wed, 24 Jul 2019 09:34:20 -0700 (PDT)
Received: from localhost ([64.188.179.254])
 by smtp.gmail.com with ESMTPSA id l2sm33217795ioh.20.2019.07.24.09.34.19
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 24 Jul 2019 09:34:19 -0700 (PDT)
Date: Wed, 24 Jul 2019 10:34:19 -0600
From: Rob Herring <robh@kernel.org>
To: Suman Anna <s-anna@ti.com>
Subject: Re: [PATCH 1/6] dt-bindings: irqchip: Add PRUSS interrupt controller
 bindings
Message-ID: <20190724163419.GA29254@bogus>
References: <20190708035243.12170-1-s-anna@ti.com>
 <20190708035243.12170-2-s-anna@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190708035243.12170-2-s-anna@ti.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_093421_672330_CBDE960F 
X-CRM114-Status: GOOD (  14.69  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.65 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: David Lechner <david@lechnology.com>,
 Grygorii Strashko <grygorii.strashko@ti.com>,
 Jason Cooper <jason@lakedaemon.net>, devicetree@vger.kernel.org,
 Marc Zyngier <marc.zyngier@arm.com>, Sekhar Nori <nsekhar@ti.com>,
 linux-kernel@vger.kernel.org, "Andrew F. Davis" <afd@ti.com>,
 Tony Lindgren <tony@atomide.com>, Murali Karicheri <m-karicheri2@ti.com>,
 linux-arm-kernel@lists.infradead.org, Thomas Gleixner <tglx@linutronix.de>,
 linux-omap@vger.kernel.org, Lokesh Vutla <lokeshvutla@ti.com>,
 Roger Quadros <rogerq@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, 7 Jul 2019 22:52:38 -0500, Suman Anna wrote:
> The Programmable Real-Time Unit Subsystem (PRUSS) contains an interrupt
> controller (INTC) that can handle various system input events and post
> interrupts back to the device-level initiators. The INTC can support
> upto 64 input events on most SoCs with individual control configuration
> and hardware prioritization. These events are mapped onto 10 interrupt
> lines through two levels of many-to-one mapping support. Different
> interrupt lines are routed to the individual PRU cores or to the
> host CPU or to other PRUSS instances.
> 
> The K3 AM65x and J721E SoCs have the next generation of the PRU-ICSS IP,
> commonly called ICSSG. The ICSSG interrupt controller on K3 SoCs provide
> a higher number of host interrupts (20 vs 10) and can handle an increased
> number of input events (160 vs 64) from various SoC interrupt sources.
> 
> Add the bindings document for these interrupt controllers on all the
> applicable SoCs. It covers the OMAP architecture SoCs - AM33xx, AM437x
> and AM57xx; the Keystone 2 architecture based 66AK2G SoC; the Davinci
> architecture based OMAPL138 SoCs, and the K3 architecture based AM65x
> and J721E SoCs.
> 
> Signed-off-by: Suman Anna <s-anna@ti.com>
> Signed-off-by: Andrew F. Davis <afd@ti.com>
> Signed-off-by: Roger Quadros <rogerq@ti.com>
> ---
> Prior version: https://patchwork.kernel.org/patch/10795771/
> 
>  .../interrupt-controller/ti,pruss-intc.txt    | 92 +++++++++++++++++++
>  1 file changed, 92 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/interrupt-controller/ti,pruss-intc.txt
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
