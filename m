Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 184501D3634
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 18:15:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v4Ql5xNDSNXBJiGVfJ9+ITfIUl3wWR7Xba8shmSoO3Q=; b=N730IMe61tvZTH
	N4TnRSiolU21KFLgWSzEX4MTX04OkDLiN2WT+omutaCT7EqjfSkjby26xsyQj1/uowitfnPGReVx6
	PACiniOPurW2eUfe9fdLzL+cTvZCv3rQB77FtQ1BC/aa7U/Va7HzuISRyVkVZGh31d4K3a5OiD6sK
	lStJNw1/ztx8+jnRrRGqqaEJUr/RJFS4kS9S2CFLiNkGSbgcyLIt4AgqAR1PstsQt5GulK8GRE2ch
	w0RysNJh2Ud1SyVOFAWDjudcPPJZfI5zJVfElTzswZS5QG9C4knQrCugoIb9IKZJ5jmDoFLwzzcPR
	6IhHEIS9epU3Q0kkN9pg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZGVz-0006pL-Ip; Thu, 14 May 2020 16:15:19 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZGVE-0006U2-4G
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 16:14:35 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 53BA61FB;
 Thu, 14 May 2020 09:14:31 -0700 (PDT)
Received: from gaia (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 44C223F7BB;
 Thu, 14 May 2020 09:14:30 -0700 (PDT)
Date: Thu, 14 May 2020 17:14:28 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: zhukeqian <zhukeqian1@huawei.com>
Subject: Re: [Question] Hardware management of stage2 page dirty state
Message-ID: <20200514161427.GD1907@gaia>
References: <0767678d-d580-eb02-c2f0-423b16526736@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0767678d-d580-eb02-c2f0-423b16526736@huawei.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_091432_215956_ACBFAFE1 
X-CRM114-Status: GOOD (  19.14  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Marc Zyngier <maz@kernel.org>, "Zengtao \(B\)" <prime.zeng@hisilicon.com>,
 yuzenghui@huawei.com, wanghaibin.wang@huawei.com, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Keqian,

On Thu, May 14, 2020 at 05:16:52PM +0800, zhukeqian wrote:
> I have some questions after deep reading your patch
> https://patchwork.kernel.org/patch/8824261/ which enables hardware updates
> of the Access Flag for Stage 2 page tables.
> 
> I notice that at the bottom of commit message, you said the following words:
> "After some digging through the KVM code, I concluded that hardware DBM
> (dirty bit management) support is not feasible for Stage 2. A potential
> user would be dirty logging but this requires a different bitmap exposed
> to Qemu and, to avoid races, the stage 2 mappings need to be mapped
> read-only on clean, writable on fault. This assumption simplifies the
> hardware Stage 2 AF support."
> 
> I have three questions here.
> 
> 1. I do not understand the reason well about "not feasible". Does the main reason
>    for this is the "races" you referred?

IIRC, dirty logging works by having a bitmap populated by the host
kernel when the guest writes a page. Such write triggers a stage 2 fault
and the kernel populates the bitmap. With S2 DBM, you wouldn't get a
fault when the guest writes the page, so the host kernel would have to
periodically check which S2 entries became writable to update the qemu
bitmap.

I think the race I had in mind was that the bitmap still reports the
page as clean while the guest already updated it.

Looking at this again, it may not matter much as qemu can copy those
pages again when migrating and before control is handed over to the new
host.

> 2. What does the "races" refer to? Do you mean the races between [hardware S2 DBM]
>    and [dirty information collection that executed by KVM]?

Yes.

>    During VM live migration, Qemu will send dirty page iteratively and finally stop
>    VM when dirty pages is not too much. We may miss dirty pages during each iteration
>    before VM stop, but there are no races after VM stop, so we won't miss dirty pages
>    finally. It seems that "races" is not a convinced reason for "not feasible".

You are probably right. But you'd have to change the dirty tracking from
a fault mechanism to a polling one checking the S2 page tables
periodically. Or, can you check then only once after VM stop?

> 3. You said that disable hardware S2 DBM support can simplify the hardware S2 AF support.
>    Could you please explain the reason in detail?

I probably meant that it simplifies the patch rather than something
specific to the AF support. If you add DBM, you'd need to make sure that
making a pte read-only doesn't lose the dirty information (see
ptep_set_wrprotect(), not sure whether KVM uses the same macro).

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
