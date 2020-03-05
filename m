Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14797179E56
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Mar 2020 04:40:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=YbU/fN2OFdzIezMRsgTRA/FIaah8IttGESc8s6K7cno=; b=So9oLAaLWGHV4IEe8WLnQ5MgK
	oXiloSGgELTZoNasJWeKqyAVf6guxH/+QRAWzP1MkfYsOyBvuYQAy+cXozf1fNiZdqRIsq4MNtICo
	OF0eHx1jcfAT10uVLdDNpVQoqkFILy3wL3AY21V01zlKP15IGNFstxsrB8SJ8+t3myI40sn9ClfaU
	zxT93a23j3w95hvqsLzpMvVRf92YcNvF/pGxHTswpQdIQNt/kw+jughw4QKzA6lri0uEN+zxtTOe6
	XcDJJoRCIydF8JEmlsoVVMVkExJKlqYhGJfBCam4q0gxGUMCq7y3OL67wToh5tmbFoIebxjmOb/Cc
	vLMCInFTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9hMv-0001fT-OQ; Thu, 05 Mar 2020 03:40:17 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9hMo-0000j2-5g
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Mar 2020 03:40:12 +0000
Received: from DGGEMS401-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id AD4361CEF13762CC0BFD;
 Thu,  5 Mar 2020 11:40:00 +0800 (CST)
Received: from [127.0.0.1] (10.173.222.27) by DGGEMS401-HUB.china.huawei.com
 (10.3.19.201) with Microsoft SMTP Server id 14.3.439.0; Thu, 5 Mar 2020
 11:39:52 +0800
Subject: Re: [PATCH v5 00/23] irqchip/gic-v4: GICv4.1 architecture support
To: Marc Zyngier <maz@kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <kvmarm@lists.cs.columbia.edu>, <kvm@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
References: <20200304203330.4967-1-maz@kernel.org>
From: Zenghui Yu <yuzenghui@huawei.com>
Message-ID: <5613bec0-a207-1e59-82d0-8d44fc65a0a4@huawei.com>
Date: Thu, 5 Mar 2020 11:39:50 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.0
MIME-Version: 1.0
In-Reply-To: <20200304203330.4967-1-maz@kernel.org>
Content-Language: en-US
X-Originating-IP: [10.173.222.27]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_194010_384097_47C3A18A 
X-CRM114-Status: GOOD (  20.35  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
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

Hi Marc,

On 2020/3/5 4:33, Marc Zyngier wrote:
> This (now shorter) series expands the existing GICv4 support to deal
> with the new GICv4.1 architecture, which comes with a set of major
> improvements compared to v4.0:
> 
> - One architectural doorbell per vcpu, instead of one doorbell per VLPI
> 
> - Doorbell entirely managed by the HW, with an "at most once" delivery
>    guarantee per non-residency phase and only when requested by the
>    hypervisor
> 
> - A shared memory scheme between ITSs and redistributors, allowing for an
>    optimised residency sequence (the use of VMOVP becomes less frequent)
> 
> - Support for direct virtual SGI delivery (the injection path still involves
>    the hypervisor), at the cost of losing the active state on SGIs. It
>    shouldn't be a big deal, but some guest operating systems might notice
>    (Linux definitely won't care).
> 
> On the other hand, public documentation is not available yet, so that's a
> bit annoying...
> 
> The series is roughly organised in 3 parts:
> 
> (0) Fixes
> (1) v4.1 doorbell management
> (2) Virtual SGI support
> (3) Plumbing of virtual SGIs in KVM
> 
> Notes:
> 
>    - The whole thing is tested on a FVP model, which can be obtained
>      free of charge on ARM's developer website. It requires you to
>      create an account, unfortunately... You'll need a fix for the
>      devicetree that is in the kernel tree (should be merged before
>      the 5.6 release).
> 
>    - This series has uncovered a behaviour that looks like a HW bug on
>      the Cavium ThunderX (aka TX1) platform. I'd very much welcome some
>      clarification from the Marvell/Cavium folks on Cc, as well as an
>      official erratum number if this happens to be an actual bug.
> 
>      [v3 update]
>      People have ignored for two months now, and it is fairly obvious
>      that support for this machine is slowly bit-rotting. Maybe I'll
>      drop the patch and instead start the process of removing all TX1
>      support from the kernel (we'd certainly be better off without it).
> 
>      [v4 update]
>      TX1 is now broken in mainline, and nobody cares. Make of this what
>      you want.
> 
>    - I'm extremely grateful for Zenghui Yu's huge effort in carefully
>      reviewing this rather difficult series (if we ever get to meet
>      face to face, drinks are definitely on me!).

It's a pleasure to review this work and it's pretty useful for
understanding how Linux works as a GICv4.1-capable hypervisor.
Yay, cheers ;-)!

I'll go through the v4.1 spec one more time before the final
review of this series, as we still have plenty of time to do
some reviews (and even some tests) before the 5.7 MW.

> 
>    - Unless someone cries wolf, I plan to take this into 5.7.

Good news!


Thanks,
Zenghui


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
