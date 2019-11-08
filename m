Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF6BEF4300
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 10:20:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zGVwSG2BTnNsV8MBjRP28gn+rOX7iH3A2TGNjr8yd1Q=; b=fM0Qu8wXRTFo7vfwKRseemqVq
	MWKYK+qK9fmDIToGPcNR8uGjgFts6ashl1b2Y85t3EI8TSzwL49Uzf30vo3/hO7lfmGNNCBQtts2v
	b92+gYGS0qqqZr4zw25s+JAQhr14R2uGKq0960rhEZvWIEbuHQLKq7I8dpC8fTpmSb22eJY1e+IP9
	GpAJrxDNbLIhkLqhIOcH9IDaS3b94EpSnFKZDy2M0tFNZ0s2nzijqfJtRRm3J2o9hakRyUzLMIebV
	g8VknZFGPKfnVvghsbn8gqTWsSMvRcZNaSZf2xAZmEjc96/IiTIo6wVeyToCBqlMtHqRp36X2gGiI
	YJlvC7+4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT0Rh-0004nP-9c; Fri, 08 Nov 2019 09:20:45 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT0RX-0004ln-SD
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 09:20:38 +0000
Received: from DGGEMS403-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 09EA77BC64AC8CBF97B3;
 Fri,  8 Nov 2019 17:20:25 +0800 (CST)
Received: from [127.0.0.1] (10.184.12.158) by DGGEMS403-HUB.china.huawei.com
 (10.3.19.203) with Microsoft SMTP Server id 14.3.439.0; Fri, 8 Nov 2019
 17:20:15 +0800
Subject: Re: [PATCH 2/2] KVM: arm64: Opportunistically turn off WFI trapping
 when using direct LPI injection
To: Marc Zyngier <maz@kernel.org>, <kvm@vger.kernel.org>,
 <kvmarm@lists.cs.columbia.edu>, <linux-arm-kernel@lists.infradead.org>
References: <20191107160412.30301-1-maz@kernel.org>
 <20191107160412.30301-3-maz@kernel.org>
From: Zenghui Yu <yuzenghui@huawei.com>
Message-ID: <3ca03337-2a10-4958-c551-721461dc0082@huawei.com>
Date: Fri, 8 Nov 2019 17:20:15 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:64.0) Gecko/20100101
 Thunderbird/64.0
MIME-Version: 1.0
In-Reply-To: <20191107160412.30301-3-maz@kernel.org>
Content-Language: en-US
X-Originating-IP: [10.184.12.158]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_012036_107515_3FF74A5D 
X-CRM114-Status: GOOD (  11.03  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marc,

On 2019/11/8 0:04, Marc Zyngier wrote:
> Just like we do for WFE trapping, it can be useful to turn off
> WFI trapping when the physical CPU is not oversubscribed (that
> is, the vcpu is the only runnable process on this CPU) *and*
> that we're using direct injection of interrupts.
> 
> The conditions are reevaluated on each vcpu_load(), ensuring that
> we don't switch to this mode on a busy system.
> 
> On a GICv4 system, this has the effect of reducing the generation
> of doorbell interrupts to zero when the right conditions are
> met, which is a huge improvement over the current situation
> (where the doorbells are screaming if the CPU ever hits a
> blocking WFI).
> 
> Signed-off-by: Marc Zyngier <maz@kernel.org>

Reviewed-by: Zenghui Yu <yuzenghui@huawei.com>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
