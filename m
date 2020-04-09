Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21F3E1A2EE9
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 08:00:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lIPhi6qtUJzOldlIzTqoUZ3ZrCy2xpCSRkH6stvGnzg=; b=U/cgjHKR1YwbM2
	INl2/kLOadzvXEcSTyNwFpgoQoPVD9oZayX1utF9zOuIC9AzuD741G7lCMVq7wedmHl+1zcr5nx34
	aYVXnvqls7839gdeA4YLIDSsxsPV3elmIjHlpFwwyZCX7RY3cDFhbL1CjhIOvbOJm7HpNc1FZrMRo
	Aohlcn1BHKaHeJq7gM0cVV9B/pVyAX3NP4gwB+Vcbv41DPMvfOx6im6nVx6BGkTrtKbRqVz4oUO1y
	bk54zfvQjk99lVrc2mKeZXLMzSnV0JkAW28clrwlKaApu+Y6X1mnRkrynDS0AvxpuKytG5cxspDVZ
	485dPyqOie7rBfrqumAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMQEh-00043R-JO; Thu, 09 Apr 2020 06:00:23 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMQEb-000434-3o
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 06:00:18 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 039602cF076105;
 Thu, 9 Apr 2020 01:00:02 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1586412002;
 bh=s4NGEtbZ5WYEhRGTwG73IITDcV3DTILxumrNxiY14yA=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=KInjLFJRVLXusMx96Svk4Gbi7ix1TYjECmt+JP9oO+41VlD5G3Qug1F6vWKoJCF6L
 VBCs6iVLXV4EyB3eRU0Zvt3zMCoW9Iu6O76KcEp/0R+lgfKddbtVTM3FtLoKTnGphA
 M62uMWshi3CGYn0cMeZArdLCXbgM3DIRhe22IIq8=
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 039601YW128360
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 9 Apr 2020 01:00:01 -0500
Received: from DFLE109.ent.ti.com (10.64.6.30) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Thu, 9 Apr
 2020 01:00:01 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Thu, 9 Apr 2020 01:00:01 -0500
Received: from [10.24.69.20] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 0395xvDZ048578;
 Thu, 9 Apr 2020 00:59:58 -0500
Subject: Re: [PATCH] irqchip/ti-sci-inta: fix processing of masked irqs
To: Grygorii Strashko <grygorii.strashko@ti.com>, Nishanth Menon <nm@ti.com>, 
 Tero Kristo <t-kristo@ti.com>, Santosh Shilimkar <ssantosh@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Jason Cooper <jason@lakedaemon.net>, Marc Zyngier <maz@kernel.org>
References: <20200408191532.31252-1-grygorii.strashko@ti.com>
From: Lokesh Vutla <lokeshvutla@ti.com>
Message-ID: <85de7f21-2e9b-da16-589e-b4c2144f3ab4@ti.com>
Date: Thu, 9 Apr 2020 11:29:56 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20200408191532.31252-1-grygorii.strashko@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_230017_216150_88F6B6BE 
X-CRM114-Status: GOOD (  11.34  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Peter Ujfalusi <peter.ujfalusi@ti.com>, Sekhar Nori <nsekhar@ti.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Vignesh Raghavendra <vigneshr@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 09/04/20 12:45 AM, Grygorii Strashko wrote:
> The ti_sci_inta_irq_handler() does not take into account INTA IRQs state
> (masked/unmasked) as it uses INTA_STATUS_CLEAR_j register to get INTA IRQs
> status, which provides raw status value.
> This causes hard IRQ handlers to be called or threaded handlers to be
> scheduled many times even if corresponding INTA IRQ is masked.
> Above, first of all, affects the LEVEL interrupts processing and causes
> unexpected behavior up the system stack or crash.
> 
> Fix it by using the Interrupt Masked Status INTA_STATUSM_j register which
> provides masked INTA IRQs status.
> 
> Fixes: 9f1463b86c13 ("irqchip/ti-sci-inta: Add support for Interrupt Aggregator driver")
> Signed-off-by: Grygorii Strashko <grygorii.strashko@ti.com>

Reviewed-by: Lokesh Vutla <lokeshvutla@ti.com>

Thanks and regards,
Lokesh


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
