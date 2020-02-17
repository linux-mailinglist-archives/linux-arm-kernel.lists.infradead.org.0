Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B257160E4F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 10:18:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=OVEf1PkXYrM5HLGyWvKTit5wJjDIw0Y6CJVoZKd3eFQ=; b=upLS5S8xtuFUAxwXwCDZSUe1D
	HN8Y2eom4XpeRZ3kxyO9Ivfkg0wonwP9fUKWYKH5n/zcgJCVhrLsOZVnpdeFqsH+arZuJC9EiVuvx
	OuOBPT7O0aEGUY8/zT4S62AcTrYjZVcdPVbGBiwgxnLcrhsYl9D5CmNE8pUgBSEQxuxlG28VFnQ1+
	HAHMhN9yq8Qe4UYYsBa2CspgXQJqKY3YkQeFKe20ba3O54RLe+gTWI1VZL8Wb1ofIQE8baIUd9DSs
	TphlPbzMVt+MOGlMbe5Q+zHgFhlHzgBucyne620JiIpfmxiyaHHRMcexPcDH7EP/qRUEATgyWirsC
	UBXWmdIxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3cXw-0001bI-Eq; Mon, 17 Feb 2020 09:18:32 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3cXn-0001av-63
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 09:18:24 +0000
Received: from DGGEMS413-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 8B5BF7C85E4B5CC973CB;
 Mon, 17 Feb 2020 17:18:18 +0800 (CST)
Received: from [127.0.0.1] (10.173.222.27) by DGGEMS413-HUB.china.huawei.com
 (10.3.19.213) with Microsoft SMTP Server id 14.3.439.0; Mon, 17 Feb 2020
 17:18:11 +0800
Subject: Re: [PATCH v4 02/20] irqchip/gic-v3: Use SGIs without active state if
 offered
To: Marc Zyngier <maz@kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <kvmarm@lists.cs.columbia.edu>, <kvm@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
References: <20200214145736.18550-1-maz@kernel.org>
 <20200214145736.18550-3-maz@kernel.org>
From: Zenghui Yu <yuzenghui@huawei.com>
Message-ID: <d8dc634f-bdd6-b2e6-a398-02b7e04efe67@huawei.com>
Date: Mon, 17 Feb 2020 17:18:10 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.0
MIME-Version: 1.0
In-Reply-To: <20200214145736.18550-3-maz@kernel.org>
Content-Language: en-US
X-Originating-IP: [10.173.222.27]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_011823_396320_773D6146 
X-CRM114-Status: GOOD (  12.11  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

Hi Marc,

On 2020/2/14 22:57, Marc Zyngier wrote:
> To allow the direct injection of SGIs into a guest, the GICv4.1
> architecture has to sacrifice the Active state so that SGIs look
> a lot like LPIs (they are injected by the same mechanism).
> 
> In order not to break existing software, the architecture gives
> offers guests OSs the choice: SGIs with or without an active
> state. It is the hypervisors duty to honor the guest's choice.
> 
> For this, the architecture offers a discovery bit indicating whether
> the GIC supports GICv4.1 SGIs (GICD_TYPER2.nASSGIcap), and another
> bit indicating whether the guest wants Active-less SGIs or not
> (controlled by GICD_CTLR.nASSGIreq).
> 
> A hypervisor not supporting GICv4.1 SGIs would leave nASSGIcap
> clear, and a guest not knowing about GICv4.1 SGIs (or definitely
> wanting an Active state) would leave nASSGIreq clear (both being
> thankfully backward compatible with oler revisions of the GIC).
older?

> 
> Since Linux is perfectly happy without an active state on SGIs,
> inform the hypervisor that we'll use that if offered.
> 
> Signed-off-by: Marc Zyngier <maz@kernel.org>

Per the description of these two bits in the commit message,

Reviewed-by: Zenghui Yu <yuzenghui@huawei.com>


Thanks


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
