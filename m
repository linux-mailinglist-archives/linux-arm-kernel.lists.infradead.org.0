Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE4FF165592
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 04:22:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=L/iDIxWtjSB++w+QdZP0S6j+MOJSFhqIxKekmLTdMqQ=; b=LVDF7sODUfM5y5ASRTvlMk6TP
	7DlQDWkbTQYRYXi645ASl1Z92FcgV5UeC+BjDKRtHsFDoDop3Nr2X5VqNVdDV8anlCXiClYFgwSku
	x+BimNBa9aufq7IOgEMM8RkvaHUVCyI28OZD0Aj3CQrNT/ogLXEcrBLmC4nd1ps+BSphwCSReNjI2
	338TgSsmgQxuzKJSsSILCK+SSJnhLO2UcdIExk5c+kMev8NN6h4idNe/6C+Yviw9mgoUJ5tPcItEf
	8KrJJJXofa12xOpb5rNEF5Vt72dpkg9Pq3HSzNEJDc9IEbHJ5sdJXWyl1esAZT6yY1w+lsg7S5MZO
	CSX+n4Qfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4cPf-0001ix-4O; Thu, 20 Feb 2020 03:22:07 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4cPW-0001hY-Mq
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 03:22:00 +0000
Received: from DGGEMS405-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 8EB969452846FC500A28;
 Thu, 20 Feb 2020 11:21:52 +0800 (CST)
Received: from [127.0.0.1] (10.173.222.27) by DGGEMS405-HUB.china.huawei.com
 (10.3.19.205) with Microsoft SMTP Server id 14.3.439.0; Thu, 20 Feb 2020
 11:21:44 +0800
Subject: Re: [PATCH v4 05/20] irqchip/gic-v4.1: Plumb skeletal VSGI irqchip
To: Marc Zyngier <maz@kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <kvmarm@lists.cs.columbia.edu>, <kvm@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
References: <20200214145736.18550-1-maz@kernel.org>
 <20200214145736.18550-6-maz@kernel.org>
From: Zenghui Yu <yuzenghui@huawei.com>
Message-ID: <b1053b00-721a-cfd3-8f2f-04c674490121@huawei.com>
Date: Thu, 20 Feb 2020 11:21:43 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.0
MIME-Version: 1.0
In-Reply-To: <20200214145736.18550-6-maz@kernel.org>
Content-Language: en-US
X-Originating-IP: [10.173.222.27]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_192158_914939_105FE4F6 
X-CRM114-Status: UNSURE (   8.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Jason Cooper <jason@lakedaemon.net>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Eric Auger <eric.auger@redhat.com>, Robert Richter <rrichter@marvell.com>,
 James Morse <james.morse@arm.com>, Thomas
 Gleixner <tglx@linutronix.de>, Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 2020/2/14 22:57, Marc Zyngier wrote:
> Since GICv4.1 has the capability to inject 16 SGIs into each VPE,
> and that I'm keen not to invent too many specific interfaces to
> manupulate these interrupts, let's pretend that each of these SGIs
manipulate?

> is an actual Linux interrupt.
> 
> For that matter, let's introduce a minimal irqchip and irqdomain
> setup that will get fleshed up in the following patches.
> 
> Signed-off-by: Marc Zyngier<maz@kernel.org>

Reviewed-by: Zenghui Yu <yuzenghui@huawei.com>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
