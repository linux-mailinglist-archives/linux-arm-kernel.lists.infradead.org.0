Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1680982BAE
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 08:32:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=rQBQH/8tNNlq67IY+pobenUltzzr8c96XTU31HuW59k=; b=TdCsa0IDCGFrA/mWJI1+bejFr
	SUngFXGmG+uGhltDsyarXqtOl/R++jwzr3drPuO/yNjmCyAY+3+48pa0N2rhib4Dvs5oojVAPj3hH
	3zsp4z0Dxl3XE+5zgFxh6HDLtqW6z8WjzCwTJT4Fyq3KBQhWzxi/d+Q4LaNQ+zpB+bqMAtxVSJ/cm
	Xrhf0jniETDdyWh/CveaPUlo9V4XRfaAgJ/H2cIsNu85hvd5HwhrBtxF7Gy2do9y2jFuKFUmRNRqJ
	FybcnKPeakgfG83LdsbEdwUoS/4/Jk6w6LajbwA9qv7sgdnFMaiQmyJ9baNwf2MM66O+9W46XcsKO
	kJac4xqog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hut19-0004c6-OA; Tue, 06 Aug 2019 06:32:19 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hut0z-0004b7-5x
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 06:32:11 +0000
Received: from DGGEMS405-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id E3131677EF7A9412FF53;
 Tue,  6 Aug 2019 14:31:56 +0800 (CST)
Received: from [127.0.0.1] (10.184.12.158) by DGGEMS405-HUB.china.huawei.com
 (10.3.19.205) with Microsoft SMTP Server id 14.3.439.0; Tue, 6 Aug 2019
 14:31:46 +0800
Subject: Re: [PATCH 1/2] KVM: arm64: Don't write junk to sysregs on reset
To: Marc Zyngier <maz@kernel.org>, <kvm@vger.kernel.org>,
 <kvmarm@lists.cs.columbia.edu>, <linux-arm-kernel@lists.infradead.org>
References: <20190805121555.130897-1-maz@kernel.org>
 <20190805121555.130897-2-maz@kernel.org>
From: Zenghui Yu <yuzenghui@huawei.com>
Message-ID: <01b74492-c59f-dfd9-e439-752e6b1c53dc@huawei.com>
Date: Tue, 6 Aug 2019 14:29:20 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:64.0) Gecko/20100101
 Thunderbird/64.0
MIME-Version: 1.0
In-Reply-To: <20190805121555.130897-2-maz@kernel.org>
Content-Language: en-US
X-Originating-IP: [10.184.12.158]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_233209_412797_541D40FE 
X-CRM114-Status: GOOD (  12.53  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
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
Cc: Andrew Jones <drjones@redhat.com>, James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marc,

On 2019/8/5 20:15, Marc Zyngier wrote:
> At the moment, the way we reset system registers is mildly insane:
> We write junk to them, call the reset functions, and then check that
> we have something else in them.
> 
> The "fun" thing is that this can happen while the guest is running
> (PSCI, for example). If anything in KVM has to evaluate the state
> of a system register while junk is in there, bad thing may happen.
> 
> Let's stop doing that. Instead, we track that we have called a
> reset function for that register, and assume that the reset
> function has done something. This requires fixing a couple of
> sysreg refinition in the trap table.
> 
> In the end, the very need of this reset check is pretty dubious,
> as it doesn't check everything (a lot of the sysregs leave outside of
> the sys_regs[] array). It may well be axed in the near future.
> 
> Signed-off-by: Marc Zyngier <maz@kernel.org>

(Regardless of whether this check is needed or not,) I tested this patch
with kvm-unit-tests:

for i in {1..100}; do QEMU=/path/to/qemu-system-aarch64 accel=kvm 
arch=arm64 ./run_tests.sh; done

And all the tests passed!


Thanks,
zenghui


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
