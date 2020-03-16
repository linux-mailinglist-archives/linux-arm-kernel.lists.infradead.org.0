Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32CBF1869C6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 12:09:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ubpL3OR3wA/jk6YavkEX8cTaP2qDZxePMD3TZcoZArk=; b=dsv3YLjqBGU10jOvuuqGjx4AH
	oD8zU6rk2S1bzFteGK6WQ6gwnM9HCd7RDkDkluEw2rNoc4jLuYCXx9yMBYAdBOndeKgRxxSuc7LnF
	3sUfbFHvaorGC0OA8vWnE03M+tpPGNQ6oEjCM3zNtDH691or6J55o3Khadpq/VQ/+uNGhfm5Kx+eM
	xQZWad6iFrN9lPwW0wxG8CYDTWHCNsZWYZuYEPyhavrE8k9HuSnE3WOrVql6b7kdH8ZWFaidPVSLE
	q9t6UpTV1DsuEQ7ePueOEDTpFocE7/KaPWIoiUkJGpZuw5QZnbEjOXoiham17XCQSdVFQMKwJMLM4
	/kxnE19cw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDncQ-0007PJ-4h; Mon, 16 Mar 2020 11:09:14 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDncI-0007OR-Lh
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 11:09:07 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0371C205ED;
 Mon, 16 Mar 2020 11:09:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584356945;
 bh=7GnxZNUgFtH4VyMWdhOlCXj+A6q4k8+r/Ert4LPiEUg=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=fXh7WLR86Zz7FIHD9/0xetiYssyqwbwXtbSusOmYKXIZUVB57528z/q+NGy6FA0zS
 uyFKf/ZYX3TH9TVaLtgy7bkAZvRI9/ESDSsLxCKo6SlK4RTHvEF9LJgvNHauqpITXU
 3IRFo6Uwdgo4ma5B8B81byHZPU6ckH3rloLCWW5Y=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jDncF-00D3fu-D8; Mon, 16 Mar 2020 11:09:03 +0000
MIME-Version: 1.0
Date: Mon, 16 Mar 2020 11:09:03 +0000
From: Marc Zyngier <maz@kernel.org>
To: Zenghui Yu <yuzenghui@huawei.com>
Subject: Re: [PATCH] KVM: arm64: Use the correct timer for accessing CNT
In-Reply-To: <7ed91b9b-e968-770c-28f9-0ca479359657@huawei.com>
References: <1584351546-5018-1-git-send-email-karahmed@amazon.de>
 <7ed91b9b-e968-770c-28f9-0ca479359657@huawei.com>
Message-ID: <a8b72d6c0a28e0554050e98d011f32d9@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.10
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: yuzenghui@huawei.com, karahmed@amazon.de,
 linux-kernel@vger.kernel.org, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_040906_732527_1D13FD70 
X-CRM114-Status: GOOD (  12.78  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: KarimAllah Ahmed <karahmed@amazon.de>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Zenghui,

On 2020-03-16 10:49, Zenghui Yu wrote:
> Hi,
> 
> On 2020/3/16 17:39, KarimAllah Ahmed wrote:
>> Use the physical timer object when reading the physical timer counter
>> instead of using the virtual timer object. This is only visible when
>> reading it from user-space as kvm_arm_timer_get_reg() is only executed 
>> on
>> the get register patch from user-space.
> 
> s/patch/path/
> 
> I think the physical counter hasn't yet been accessed by the current
> userspace, wrong?

I don't think userspace can access it, as the ONE_REG API only exposes 
the virtual
timer so far, and userspace is much better off just reading the counter 
directly
(it has access to the virtual counter, and the guarantee that cntvoff is 
0 in this
context).

But as we move towards a situation where we can save/restore the 
physical timer
just like the virtual one, we're going to use this path and hit this 
bug.

> 
>> 
>> Cc: Marc Zyngier <maz@kernel.org>
>> Cc: James Morse <james.morse@arm.com>
>> Cc: Julien Thierry <julien.thierry.kdev@gmail.com>
>> Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
>> Cc: linux-arm-kernel@lists.infradead.org
>> Cc: kvmarm@lists.cs.columbia.edu
>> Cc: linux-kernel@vger.kernel.org
>> Signed-off-by: KarimAllah Ahmed <karahmed@amazon.de>
> 
> Reviewed-by: Zenghui Yu <yuzenghui@huawei.com>
> 
> And this might also deserve:
> 
> Fixes: 84135d3d18da ("KVM: arm/arm64: consolidate arch timer trap 
> handlers")

Indeed. Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
