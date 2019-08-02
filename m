Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CFCD67F60D
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  2 Aug 2019 13:32:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=efKztFKKBJY7zAN3GVeWbSVUAQiNrVpJnwD6SLKuMUA=; b=Ms7Qv7u9OeBFZn
	7O54jRq19LM+qI0iwvC8VmS/FffIkx4JYolp4Y0hj19kM7hXBnBefdWNvQUeMtps0telodecY0R3S
	DkNDrT6ldl8pH7P7Qndor8ml3nuSTjRk+73T8nCKdtVSW6ov75nZlpYJm6TbLTMt9yAHFHbQSQMiI
	tRxCjHBHTBehHNiZcclsm0Dn/N5GpikKbyHF3HKygMbwWU8SXjh0JNNAMp8M5mZ1tFf/Xb7nEueyT
	zZOvB3VyBrJNEjS667ErUG1T12IgEQU0A6mDLqhuqbPcvMHzN6y0VXmX8YTaLaCHXMwgHPr2wrRo1
	/jgyvSDSQ8E+6+Gn+kOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htVnW-0006bf-En; Fri, 02 Aug 2019 11:32:34 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htVnQ-0006az-VH
 for linux-arm-kernel@lists.infradead.org; Fri, 02 Aug 2019 11:32:30 +0000
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 8343E5AFD9;
 Fri,  2 Aug 2019 11:32:27 +0000 (UTC)
Received: from kamzik.brq.redhat.com (unknown [10.43.2.160])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 98BD25C220;
 Fri,  2 Aug 2019 11:32:25 +0000 (UTC)
Date: Fri, 2 Aug 2019 13:32:22 +0200
From: Andrew Jones <drjones@redhat.com>
To: Zenghui Yu <yuzenghui@huawei.com>
Subject: Re: kvm-unit-tests: psci_cpu_on_test FAILed
Message-ID: <20190802113222.l64u2sauiuxvh6be@kamzik.brq.redhat.com>
References: <3ddf8766-6f02-b655-1b80-d8a7fd016509@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3ddf8766-6f02-b655-1b80-d8a7fd016509@huawei.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.39]); Fri, 02 Aug 2019 11:32:27 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_043229_031855_646FD312 
X-CRM114-Status: GOOD (  17.79  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
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
Cc: kvm@vger.kernel.org, suzuki.poulose@arm.com, Marc Zyngier <maz@kernel.org>,
 James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org,
 "Wanghaibin \(D\)" <wanghaibin.wang@huawei.com>, kvmarm@lists.cs.columbia.edu,
 julien.thierry.kdev@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 02, 2019 at 06:56:51PM +0800, Zenghui Yu wrote:
> Hi folks,
> 
> Running kvm-unit-tests with Linux 5.3.0-rc2 on Kunpeng 920, we will get
> the following fail info:
> 
> 	[...]
> 	FAIL psci (4 tests, 1 unexpected failures)
> 	[...]
> and
> 	[...]
> 	INFO: unexpected cpu_on return value: caller=CPU9, ret=-2
> 	FAIL: cpu-on
> 	SUMMARY: 4 tests, 1 unexpected failures
> 
> 
> I think this is an issue had been fixed once by commit 6c7a5dce22b3
> ("KVM: arm/arm64: fix races in kvm_psci_vcpu_on"), which makes use of
> kvm->lock mutex to fix the race between two PSCI_CPU_ON calls - one
> does reset on the MPIDR register whilst another reads it.
> 
> But commit 358b28f09f0 ("arm/arm64: KVM: Allow a VCPU to fully reset
> itself") later moves the reset work into check_vcpu_requests(), by
> making a KVM_REQ_VCPU_RESET request in PSCI code. Thus the reset work
> has not been protected by kvm->lock mutex anymore, and the race shows up
> again...
> 
> Do we need a fix for this issue? At least achieve a mutex execution
> between the reset of MPIDR and kvm_mpidr_to_vcpu()?
> 
>

I noticed this too, but I put it pretty low on my TODO because it's a
safe failure (no host crash, just an unexpected PSCI_RET_INVALID_PARAMS
gets returned because the valid MPIDR doesn't look valid for a moment.)
Also, the test is quite pathological, especially when the host has many
CPUs, so I wouldn't expect this to show up on a sane guest. I agree
it would be nice to get it fixed eventually though.

Thanks,
drew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
