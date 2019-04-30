Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46A1FF659
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 13:46:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/Q8CxkbM3eBwNQDv0kiuYXS+ifMiudCA037OK/sNJq4=; b=BGoxZQNURS8Sjq
	kCcinWSBWH8Tj8emj/f9gsICvYPQq7wv4CbvR2MjVltQ1Izxd3KKUQYbkLGxPYGnITnipm6ISQ+Ss
	3jgSdndIQqaMvbGQnQMPZBoKbil11QBRWTS8whoDhK8P4aRV26kSMuaTZZ0MFFb/8KbM+cGTUXWjZ
	GUkLtbWN2SUSuv9dF0OEdct66fbbZG8XJLAX/biNNhOX2rOS+5q2ByzLw5jsizi0qN6IbfurC7inZ
	cq+jIm9aYaiVBJG8wd85beIvnDBfc6PPnrxOoLIJ2A2LNOi7lvPuBKVs/3FONIZSjYHd8P6E1RFyn
	BNw1csQvtkFdGl/Zoq6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLRDP-0004If-Hm; Tue, 30 Apr 2019 11:46:27 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLRDH-0004IJ-MB
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 11:46:21 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x3UBk69L053322;
 Tue, 30 Apr 2019 06:46:06 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1556624766;
 bh=MS/ebHHo25Z4rkEAJDu2R8iPbpujs41yXsTmY3TMBOA=;
 h=Date:From:To:CC:Subject:References:In-Reply-To;
 b=sW33nvnrlbzw36Q4MkQmmsvf19y3+NPrU9FVMx7iRGTb7/LachkvqCEcAo6iDGxIJ
 eU/E+o03rJW0lfKBTB4mvRocn4rxI0/7II7IB7gBxZggatIKDbbOrVIhKICm+Ic9Vn
 B3rNp2bCx7SHRHlIPBlkx0ANi9AA68n3tI0SytWQ=
Received: from DLEE112.ent.ti.com (dlee112.ent.ti.com [157.170.170.23])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x3UBk60j120491
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 30 Apr 2019 06:46:06 -0500
Received: from DLEE104.ent.ti.com (157.170.170.34) by DLEE112.ent.ti.com
 (157.170.170.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 30
 Apr 2019 06:46:06 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 30 Apr 2019 06:46:06 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x3UBk6BU042431;
 Tue, 30 Apr 2019 06:46:06 -0500
Date: Tue, 30 Apr 2019 06:45:12 -0500
From: Nishanth Menon <nm@ti.com>
To: Lokesh Vutla <lokeshvutla@ti.com>
Subject: Re: [PATCH v8 00/14] Add support for TISCI Interrupt controller
 drivers
Message-ID: <20190430114512.pde3uuh5e3qwve3m@kahuna>
References: <20190430101230.21794-1-lokeshvutla@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190430101230.21794-1-lokeshvutla@ti.com>
User-Agent: NeoMutt/20171215
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_044619_823902_93BA386E 
X-CRM114-Status: GOOD (  11.03  )
X-Spam-Score: -2.6 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Peter Ujfalusi <peter.ujfalusi@ti.com>,
 Grygorii Strashko <grygorii.strashko@ti.com>, jason@lakedaemon.net,
 Device Tree Mailing List <devicetree@vger.kernel.org>,
 Marc Zyngier <marc.zyngier@arm.com>, linus.walleij@linaro.org,
 Sekhar Nori <nsekhar@ti.com>, linux-kernel@vger.kernel.org,
 Tero Kristo <t-kristo@ti.com>, Tony Lindgren <tony@atomide.com>,
 Rob Herring <robh+dt@kernel.org>, Santosh Shilimkar <ssantosh@kernel.org>,
 tglx@linutronix.de,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 15:42-20190430, Lokesh Vutla wrote:
[...]
> Changes since v7:
> - Rebased on top of latest master.
> - Each patch has respective changes mentioned.
> 
> Grygorii Strashko (1):
>   firmware: ti_sci: Add support to get TISCI handle using of_phandle
> 
> Lokesh Vutla (12):
>   firmware: ti_sci: Add support for RM core ops
>   firmware: ti_sci: Add support for IRQ management
>   firmware: ti_sci: Add helper apis to manage resources
>   genirq: Introduce irq_chip_{request,release}_resource_parent() apis
>   gpio: thunderx: Use the default parent apis for
>     {request,release}_resources
>   dt-bindings: irqchip: Introduce TISCI Interrupt router bindings
>   irqchip: ti-sci-intr: Add support for Interrupt Router driver
>   dt-bindings: irqchip: Introduce TISCI Interrupt Aggregator bindings
>   irqchip: ti-sci-inta: Add support for Interrupt Aggregator driver
>   soc: ti: Add MSI domain bus support for Interrupt Aggregator
>   irqchip: ti-sci-inta: Add msi domain support
>   arm64: arch_k3: Enable interrupt controller drivers
> 
> Peter Ujfalusi (1):
>   firmware: ti_sci: Add RM mapping table for am654
> 

For patches 1..5 (Firmware patches):

Acked-by: Nishanth Menon <nm@ti.com>

-- 
Regards,
Nishanth Menon

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
