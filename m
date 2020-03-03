Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 595951777AA
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 14:47:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=POkEFbUFu1pTOq3tmj5h1eGhZgH1v0stQdfo45hUZ7Q=; b=mszSUvNW5X1C+rMq81ZupqRIN
	f/rSt3VlfPEUEBHtuJR+nWfLgpvRMhDWhBTyApTcDDIFWwjfqjc8qZDk0d6WQqFfZAfff78fD9DB7
	CLe2zfkFUUu56DAWUYcmsX6JmVthb7hgQl67Ep4CALtZXTLluMmiIQIBTlfPGNX5V/UYPPJSXDTUG
	IboQEr5VvhjDNO8thH4U1pmCNiH3uzzGW/bn6xKgYTYW3q8hp9CgNS4D8NwWYeIM/xSdbNLQ+8LxF
	HFIl9xUSy1rxj91VtAoBvfUhY28AvHiOvsUOTliXHhv/7AVt/Umv9goEsLbZwhR8mIKF6xg9es2z2
	XHFnP0BDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j97tG-0000DN-1q; Tue, 03 Mar 2020 13:47:18 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j97t5-0000C1-Kd
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Mar 2020 13:47:09 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9DC8CFEC;
 Tue,  3 Mar 2020 05:47:04 -0800 (PST)
Received: from [10.1.196.37] (e121345-lin.cambridge.arm.com [10.1.196.37])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4043D3F6C4;
 Tue,  3 Mar 2020 05:47:03 -0800 (PST)
Subject: Re: sunxi: a83t: does not boot anymore in BigEndian
To: Corentin Labbe <clabbe.montjoie@gmail.com>, maz@kernel.org,
 wens@csie.org, mripard@kernel.org
References: <20200303074326.GA9935@Red>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <65498b8e-a6c3-9edb-873f-6c011582a2eb@arm.com>
Date: Tue, 3 Mar 2020 13:47:02 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200303074326.GA9935@Red>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_054707_767302_A1245EFE 
X-CRM114-Status: GOOD (  12.77  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: mark.rutland@arm.com, lorenzo.pieralisi@arm.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux@armlinux.org.uk
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 03/03/2020 7:43 am, Corentin Labbe wrote:
> Hello
> 
> My sun8i-a83t-bananapi-m3 does not boot anymore in BE.
> Others sunxi platform I have seems not affected (a10, a20, a64, h3, h5, h6)
> 
> I have bisected this problem:
> git bisect start
> # bad: [98d54f81e36ba3bf92172791eba5ca5bd813989b] Linux 5.6-rc4
> git bisect bad 98d54f81e36ba3bf92172791eba5ca5bd813989b
> # bad: [d5226fa6dbae0569ee43ecfc08bdcd6770fc4755] Linux 5.5
> git bisect bad d5226fa6dbae0569ee43ecfc08bdcd6770fc4755
> # good: [219d54332a09e8d8741c1e1982f5eae56099de85] Linux 5.4
> git bisect good 219d54332a09e8d8741c1e1982f5eae56099de85
> # bad: [8c39f71ee2019e77ee14f88b1321b2348db51820] Merge git://git.kernel.org/pub/scm/linux/kernel/git/netdev/net
> git bisect bad 8c39f71ee2019e77ee14f88b1321b2348db51820
> # bad: [3b397c7ccafe0624018cb09fc96729f8f6165573] Merge tag 'regmap-v5.5' of git://git.kernel.org/pub/scm/linux/kernel/git/broonie/regmap
> git bisect bad 3b397c7ccafe0624018cb09fc96729f8f6165573
> # good: [924ea58dadea23cc28b60d02b9c0896b7b168a6f] Merge tag 'mt76-for-kvalo-2019-11-20' of https://github.com/nbd168/wireless
> git bisect good 924ea58dadea23cc28b60d02b9c0896b7b168a6f
> # good: [3f3c8be973af10875cfa1e7b85a535b6ba76b44f] Merge tag 'for-linus-5.5a-rc1-tag' of git://git.kernel.org/pub/scm/linux/kernel/git/xen/tip
> git bisect good 3f3c8be973af10875cfa1e7b85a535b6ba76b44f
> # bad: [642356cb5f4a8c82b5ca5ebac288c327d10df236] Merge git://git.kernel.org/pub/scm/linux/kernel/git/herbert/crypto-2.6
> git bisect bad 642356cb5f4a8c82b5ca5ebac288c327d10df236
> # good: [57d8154f15e89f53dfb412f4ed32ebe3c3d755a0] crypto: atmel-aes - Change data type for "lastc" buffer
> git bisect good 57d8154f15e89f53dfb412f4ed32ebe3c3d755a0
> # bad: [752272f16dd18f2cac58a583a8673c8e2fb93abb] Merge tag 'for-linus' of git://git.kernel.org/pub/scm/virt/kvm/kvm
> git bisect bad 752272f16dd18f2cac58a583a8673c8e2fb93abb
> # good: [9477f4449b0b011ce1d058c09ec450bfcdaab784] KVM: VMX: Add helper to check reserved bits in IA32_PERF_GLOBAL_CTRL
> git bisect good 9477f4449b0b011ce1d058c09ec450bfcdaab784
> # bad: [cd7056ae34af0e9424da97bbc7d2b38246ba8a2c] Merge remote-tracking branch 'kvmarm/misc-5.5' into kvmarm/next
> git bisect bad cd7056ae34af0e9424da97bbc7d2b38246ba8a2c
> # bad: [c7892db5dd6afe921ead502aff7440a1e450d947] KVM: arm64: Select TASK_DELAY_ACCT+TASKSTATS rather than SCHEDSTATS
> git bisect bad c7892db5dd6afe921ead502aff7440a1e450d947
> # bad: [8564d6372a7d8a6d440441b8ed8020f97f744450] KVM: arm64: Support stolen time reporting via shared structure
> git bisect bad 8564d6372a7d8a6d440441b8ed8020f97f744450
> # bad: [55009c6ed2d24fc0f5521ab2482f145d269389ea] KVM: arm/arm64: Factor out hypercall handling from PSCI code
> git bisect bad 55009c6ed2d24fc0f5521ab2482f145d269389ea
> # bad: [6a7458485b390f48e481fcd4a0b20e6c5c843d2e] KVM: arm64: Document PV-time interface
> git bisect bad 6a7458485b390f48e481fcd4a0b20e6c5c843d2e
> # bad: [dcac930e9901d765234bc15004db4f7d4416db71] Merge remote-tracking branch 'arm64/for-next/smccc-conduit-cleanup' into kvm-arm64/stolen-time
> git bisect bad dcac930e9901d765234bc15004db4f7d4416db71
> # first bad commit: [dcac930e9901d765234bc15004db4f7d4416db71] Merge remote-tracking branch 'arm64/for-next/smccc-conduit-cleanup' into kvm-arm64/stolen-time
> 
> But bisect lead to a merge request.

FWIW once you've bisected to a merge commit, you can always then try 
bisecting down the merged branch itself (i.e. between 5.4-rc3 and 
e6ea46511b1a in this case) to narrow things down further.

Given that that branch is supposed to be a functionally-inert cleanup, 
and (judging by the DTS) this platform apparently isn't using PSCI 
anyway, it does seem a bit odd. Can you get any earlycon/earlyprintk 
output to suggest what the actual cause of the boot failure is?

Robin.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
