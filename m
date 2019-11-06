Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F5D8F1AF6
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 17:17:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fIneUyoVBwvlYJQcWDwtU6T2CQxaWfRV/KrWq+q9iTk=; b=ccYBbYJgDrfuYF
	E9zXg1tcRSsnkd68GDnF/x1yGHv6a78kX6C08kyQiMq73uQ0S4i+vEOJT6hfFFBXz5LD8AgM+sT9S
	JB641ZestQfYl5cD8V/OmYqL2nJtHBEiwGa8eC7i3+w4/7gANLoUTLUswH5G/5jNuo6iULZ119JjA
	zAFXYRN1kuE/BTDDzlAeLKTdvDvxUKgluaTZ0MttP+4rfGWS30e3JGf7pDiHkUfbNwUe97n7AizF7
	KuKcmB6770Hlm1D+68pG9uXNKIQ4WTmQKkqugrFduuRUFJ5Nh2FdX3bLmLOUouYOe0cxmnKUoqp4N
	idiFNdvXwSi4TghQLiRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSNzP-0007ly-8V; Wed, 06 Nov 2019 16:16:59 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSNzI-0007lA-3m
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 16:16:53 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9286146A;
 Wed,  6 Nov 2019 08:16:50 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DDE263F719;
 Wed,  6 Nov 2019 08:16:48 -0800 (PST)
Date: Wed, 6 Nov 2019 16:16:43 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: Linux-next-20191106 : arm64: Internal error: Oops: 96000007
Message-ID: <20191106161642.GA57080@lakrids.cambridge.arm.com>
References: <CA+G9fYvm_QEq+9e+dni1Y+bJswr9bU5=shJcC+wKjjOyiPsXXQ@mail.gmail.com>
 <bfced8c8-c64f-982e-8797-d48b5ec65291@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <bfced8c8-c64f-982e-8797-d48b5ec65291@arm.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_081652_242092_02F1834E 
X-CRM114-Status: GOOD (  12.60  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Stephen Rothwell <sfr@canb.auug.org.au>, Arnd Bergmann <arnd@arndb.de>,
 catalin.marinas@arm.com, Naresh Kamboju <naresh.kamboju@linaro.org>,
 Russell King - ARM Linux <linux@armlinux.org.uk>, lkft-triage@lists.linaro.org,
 open list <linux-kernel@vger.kernel.org>, Mark Brown <broonie@kernel.org>,
 John Stultz <john.stultz@linaro.org>,
 Linux-Next Mailing List <linux-next@vger.kernel.org>, will@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Nov 06, 2019 at 04:07:52PM +0000, Robin Murphy wrote:
> On 06/11/2019 15:56, Naresh Kamboju wrote:
> > arm64 devices Juno-r2, hikey (Hi6220) and dragonboard (APQ 8016 SBC)
> > boot failed while running linux next 20191106 kernel. But qemu_arm64
> > boot pass.
> > 
> > Crash log from dragonboard,
> > 
> > [   10.656527] Unable to handle kernel paging request at virtual
> > address ffff800011b3ef68
> > [   10.656580] Mem abort info:
> > [   10.656587]   ESR = 0x96000007
> > [   10.656594]   EC = 0x25: DABT (current EL), IL = 32 bits
> > [   10.656600]   SET = 0, FnV = 0
> > [   10.656605]   EA = 0, S1PTW = 0
> > [   10.656610] Data abort info:
> > [   10.656616]   ISV = 0, ISS = 0x00000007
> > [   10.656621]   CM = 0, WnR = 0
> > [   10.656629] swapper pgtable: 4k pages, 48-bit VAs, pgdp=0000000081980000
> > [   10.656635] [ffff800011b3ef68] pgd=00000000bfeff003,
> > pud=00000000bfefe003, pmd=00000000bfefa003, pte=0000000000000000
> > [   10.656887] Internal error: Oops: 96000007 [#1] PREEMPT SMP
> > [   10.656894] Modules linked in: adv7511(+) cec msm(+) mdt_loader
> > drm_kms_helper qcom_rng drm socinfo rmtfs_mem qrtr fuse
> > [   10.656928] CPU: 0 PID: 230 Comm: systemd-udevd Not tainted
> > 5.4.0-rc6-next-20191106 #1
> > [   10.656933] Hardware name: Qualcomm Technologies, Inc. APQ 8016 SBC (DT)
> > [   10.656939] pstate: a0000085 (NzCv daIf -PAN -UAO)
> > [   10.656953] pc : __of_match_node.part.5+0x48/0x88
> > [   10.656960] lr : of_match_node+0x40/0x70
> > [   10.656964] sp : ffff8000132534d0
> > [   10.656968] x29: ffff8000132534d0 x28: ffff8000101d6260
> > [   10.656977] x27: ffff80001241a7a0 x26: ffff80001241a7a0
> > [   10.656985] x25: ffff80001241a860 x24: ffff80001241a6e8
> > [   10.656993] x23: 0000000000000000 x22: ffff00003fd08010
> > [   10.657001] x21: 0000000000000000 x20: 0000000000000000
> > [   10.657008] x19: ffff800011b3ef68 x18: ffffffffffffffff
> > [   10.657016] x17: 0000000000000000 x16: 0000000000000000
> > [   10.657024] x15: ffff8000121ffa48 x14: 4e3a666f3d534149
> > [   10.657032] x13: 0000000000000040 x12: 0000000000000028
> > [   10.657039] x11: 0000000000000001 x10: 0101010101010101
> > [   10.657047] x9 : ffff800012532c50 x8 : 0000000000000050
> > [   10.657055] x7 : ffff800010df1164 x6 : 0000000000000000
> > [   10.657063] x5 : 00000000a4fd7f12 x4 : ffff00003bd7cd18
> > [   10.657070] x3 : 0000000000000000 x2 : 0000000000000001
> > [   10.657078] x1 : ffff00003fd08010 x0 : ffff800010df1178
> > [   10.657086] Call trace:
> > [   10.657094]  __of_match_node.part.5+0x48/0x88
> 
> FWIW this smells like a builtin driver had its of_device_id table marked
> __init, leaving drv->of_match_table as a dangling pointer to freed memory by
> this point.

Yuck, there are lots of potential instances in mainline:

[mark@lakrids:~/src/linux]% git grep of_device_id | grep __init  | wc -l
141

... so we probably need to clean that up.

Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
