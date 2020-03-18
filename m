Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB2D8189460
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 04:18:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wU3IWz/cIZLtAsj+iDbsz34goRM4In4WUuUrUQ+t7Gk=; b=a4FWTM5+lrZ5rw5xqV7iwXtEz
	aSOEeJm2w+k7/m39zxbHuvAt7N6nwe+7c+9nx6ePOX93zVcrQKrpZ77g3mtE9CRgGX0ZYG1F8BnIs
	Iu/eIMsROjttBSGwrn2lFJB7AAleoCtc8R6S2Ntx9egPcl9Pbcff9C3R01t7O7OJ0SPJ9wayUbroK
	YTTB8SUT8DdqHLzbXBiDeGZbD4t8f3vZqvDEUfnxtbh+OHq1fvY3vYDY1Y7YWZSyj8SMdl4zy/rvl
	S/w/gzJ05OEFs9JuPgoHO4ZbNQFHqFg/sbYC373PfM7mUiGSkJl43LYqM/2IRZLC2teXJzOqWPcEt
	SOMiIKuZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEPE3-00077d-M0; Wed, 18 Mar 2020 03:18:35 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEPDp-00075d-2i
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Mar 2020 03:18:22 +0000
Received: from DGGEMS409-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id A972390756A414F4186A;
 Wed, 18 Mar 2020 11:18:08 +0800 (CST)
Received: from [127.0.0.1] (10.173.222.27) by DGGEMS409-HUB.china.huawei.com
 (10.3.19.209) with Microsoft SMTP Server id 14.3.487.0; Wed, 18 Mar 2020
 11:17:59 +0800
Subject: Re: [PATCH v5 21/23] KVM: arm64: GICv4.1: Reload VLPI configuration
 on distributor enable/disable
To: Marc Zyngier <maz@kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <kvmarm@lists.cs.columbia.edu>, <kvm@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
References: <20200304203330.4967-1-maz@kernel.org>
 <20200304203330.4967-22-maz@kernel.org>
From: Zenghui Yu <yuzenghui@huawei.com>
Message-ID: <7f112d75-166b-24eb-538d-e100242d8e9a@huawei.com>
Date: Wed, 18 Mar 2020 11:17:57 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.0
MIME-Version: 1.0
In-Reply-To: <20200304203330.4967-22-maz@kernel.org>
Content-Language: en-US
X-Originating-IP: [10.173.222.27]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_201821_287684_097E0C46 
X-CRM114-Status: UNSURE (   8.68  )
X-CRM114-Notice: Please train this message.
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

On 2020/3/5 4:33, Marc Zyngier wrote:
> Each time a Group-enable bit gets flipped, the state of these bits
> needs to be forwarded to the hardware. This is a pretty heavy
> handed operation, requiring all vcpus to reload their GICv4
> configuration. It is thus implemented as a new request type.

[note to myself]
... and the status are forwarded to HW by programming VGrp{0,1}En
fields of GICR_VPENDBASER when vPEs are made resident next time.

> 
> Of course, we only support Group-1 for now...
> 
> Signed-off-by: Marc Zyngier <maz@kernel.org>

Reviewed-by: Zenghui Yu <yuzenghui@huawei.com>


Thanks


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
