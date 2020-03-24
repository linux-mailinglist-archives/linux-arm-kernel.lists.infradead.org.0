Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9909519038E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 03:28:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7l8zFAiRs//AjHT4KT9Rdmb5HAFMn5G1y6DYXoUXqJs=; b=YZqagAsggBnK419KohAwraOKY
	PoN7ruFBUozh0QGK/TbDgFBB7cGOHGFK7yE0bu7donOqTE4xE28MYJIZBFE5M/kjKAP4GwU2dUAhA
	6HKN47xMU2daNXNnnFlbl9YSSdyeKkctmXA6PIlaPPLazmb4YSfATP79a2CGPYMYuRCSzE8046O7q
	KBJ3jXiir+cPmwcpV2uUEoto8GbX9qfJy2L9ELugz/62SWF/tp0gS39rnGd/ttLvq5jVJtg/3UVgn
	cYLxE2JmgApDP6NncFFrUu9La8oCYSEbZ40nOdRW6McpfyjCP9B71XI4egxQXyyeGa+C/Zpcsd/t/
	+MtRYwXKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGZIF-0008A3-9w; Tue, 24 Mar 2020 02:27:51 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGZI7-00088k-4B
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Mar 2020 02:27:45 +0000
Received: from DGGEMS406-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 561DB2697814C2E51B79;
 Tue, 24 Mar 2020 10:27:27 +0800 (CST)
Received: from [127.0.0.1] (10.173.222.27) by DGGEMS406-HUB.china.huawei.com
 (10.3.19.206) with Microsoft SMTP Server id 14.3.487.0; Tue, 24 Mar 2020
 10:27:19 +0800
Subject: Re: [PATCH v6 08/23] irqchip/gic-v4.1: Plumb skeletal VSGI irqchip
To: Marc Zyngier <maz@kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <kvmarm@lists.cs.columbia.edu>, <kvm@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
References: <20200320182406.23465-1-maz@kernel.org>
 <20200320182406.23465-9-maz@kernel.org>
From: Zenghui Yu <yuzenghui@huawei.com>
Message-ID: <0ac3af1c-5160-a528-f2b4-aac4833ce32c@huawei.com>
Date: Tue, 24 Mar 2020 10:27:18 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.0
MIME-Version: 1.0
In-Reply-To: <20200320182406.23465-9-maz@kernel.org>
Content-Language: en-US
X-Originating-IP: [10.173.222.27]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_192743_730206_41A36B8E 
X-CRM114-Status: UNSURE (   9.09  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
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
 Eric Auger <eric.auger@redhat.com>, James Morse <james.morse@arm.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020/3/21 2:23, Marc Zyngier wrote:
> +static int its_sgi_set_affinity(struct irq_data *d,
> +				const struct cpumask *mask_val,
> +				bool force)
> +{
> +	/*
> +	 * There is no notion of affinity for virtual SGIs, at least
> +	 * not on the host (since they can only be targetting a vPE).
> +	 * Tell the kernel we've done whetever it asked for.

new typo?
s/whetever/whatever/

> +	 */
> +	return IRQ_SET_MASK_OK;
> +}


Thanks,
Zenghui


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
