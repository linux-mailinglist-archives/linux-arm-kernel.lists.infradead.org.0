Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82581739CD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 21:43:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dKuv3FXndN2m8IudkMQz6BgtyO4OsLO656JvXPB0I3U=; b=ZJkhaBaK9IXLNW
	2LGwWdFWj6xnL7jQtA5ysxqfghEDwi+9Ke4M2T3hQJmJEltCREX+F+OmsMchvhGdZgi7L9/I+kYzS
	2A7DkFdkhe3hb5+gYTAyVyucpT6JhgU//IdjpjyHT91pPRX7P0hn0E9jM2pcIjfLgoa6b/OXE5tm/
	ak3AUMT6mgeWAhEHGj0qdLm2VE+2N1v/LLUU50foN9m7Gx+9qUQz9S4Eh5oIJRZCeNl+mXMEtT1fO
	n/FlVqxrrU1AYwbAjMkQui8Z496wq65qCU5OwCtqgHVn1+G5ODFmIEZ5uudJgGn7u+MFrVmwe/Teu
	W3YqT2RoiQT8LEa1W67A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqNB5-0006DZ-SD; Wed, 24 Jul 2019 19:43:56 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqNAk-0006Bp-8Y
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 19:43:35 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x6OJgYP0083356;
 Wed, 24 Jul 2019 14:42:34 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1563997354;
 bh=AJm71xiQOBjSdWSqksSb6orWtMZCBYh0pcNBwqXoWdQ=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=kK94ypqr0C9M7sOcw1gFudGjaHNocKLuwvjvdo3NuKOzadWnHKCH0m5/wmXuq59Qi
 SBk4QiMOx+PAaNg8HjZr/fXwwRu/6ahQMFsWaIeGrhb9aPi9n8yaPkpplOtVdVMdMZ
 JAf3XTh2E9j1Fh6PGEVYqIQuBk7Se1H0btTuyF8U=
Received: from DLEE115.ent.ti.com (dlee115.ent.ti.com [157.170.170.26])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x6OJgYke104572
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 24 Jul 2019 14:42:34 -0500
Received: from DLEE109.ent.ti.com (157.170.170.41) by DLEE115.ent.ti.com
 (157.170.170.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Wed, 24
 Jul 2019 14:42:33 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Wed, 24 Jul 2019 14:42:33 -0500
Received: from [128.247.58.153] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id x6OJgXvZ096227;
 Wed, 24 Jul 2019 14:42:33 -0500
Subject: Re: [PATCH 1/6] dt-bindings: irqchip: Add PRUSS interrupt controller
 bindings
To: Rob Herring <robh@kernel.org>
References: <20190708035243.12170-1-s-anna@ti.com>
 <20190708035243.12170-2-s-anna@ti.com> <20190724163419.GA29254@bogus>
From: Suman Anna <s-anna@ti.com>
Message-ID: <6871c381-9fc6-f6be-6386-f183fcc5546a@ti.com>
Date: Wed, 24 Jul 2019 14:42:33 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190724163419.GA29254@bogus>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_124334_405121_617059AD 
X-CRM114-Status: GOOD (  15.19  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On 7/24/19 11:34 AM, Rob Herring wrote:
> On Sun, 7 Jul 2019 22:52:38 -0500, Suman Anna wrote:
>> The Programmable Real-Time Unit Subsystem (PRUSS) contains an interrupt
>> controller (INTC) that can handle various system input events and post
>> interrupts back to the device-level initiators. The INTC can support
>> upto 64 input events on most SoCs with individual control configuration
>> and hardware prioritization. These events are mapped onto 10 interrupt
>> lines through two levels of many-to-one mapping support. Different
>> interrupt lines are routed to the individual PRU cores or to the
>> host CPU or to other PRUSS instances.
>>
>> The K3 AM65x and J721E SoCs have the next generation of the PRU-ICSS IP,
>> commonly called ICSSG. The ICSSG interrupt controller on K3 SoCs provide
>> a higher number of host interrupts (20 vs 10) and can handle an increased
>> number of input events (160 vs 64) from various SoC interrupt sources.
>>
>> Add the bindings document for these interrupt controllers on all the
>> applicable SoCs. It covers the OMAP architecture SoCs - AM33xx, AM437x
>> and AM57xx; the Keystone 2 architecture based 66AK2G SoC; the Davinci
>> architecture based OMAPL138 SoCs, and the K3 architecture based AM65x
>> and J721E SoCs.
>>
>> Signed-off-by: Suman Anna <s-anna@ti.com>
>> Signed-off-by: Andrew F. Davis <afd@ti.com>
>> Signed-off-by: Roger Quadros <rogerq@ti.com>
>> ---
>> Prior version: https://patchwork.kernel.org/patch/10795771/
>>
>>  .../interrupt-controller/ti,pruss-intc.txt    | 92 +++++++++++++++++++
>>  1 file changed, 92 insertions(+)
>>  create mode 100644 Documentation/devicetree/bindings/interrupt-controller/ti,pruss-intc.txt
>>
> 
> Reviewed-by: Rob Herring <robh@kernel.org>
> 

Thanks Rob. I am going to submit a v2 with some minor reword changes
based on couple of comments, but no addition or removal of properties.
Should I be retaining your Reviewed-by for v2?

regards
Suman



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
