Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B657D1B59F6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 13:05:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xlQ1hH9vOr3xr5CvSNHCBL28wv5rfbYNwzYmY0FkSu8=; b=lSgw7oEG/Y+uMm
	Zf4BMkIfJxBeBgnUmXgEQ9OK8VuE1NmMmMot++fhaShLCYWDsBB6GqVAm/6r0rvyyos9HEdYCvVOe
	LmmC2IFVdaiDMg2vcmLapVwtaxcFvGgft7dISHS8Rx9ujJ3aKCAUNIzn0+fDSE/6DpVdou97rcJum
	VrsEz2kSQfb1eefrrmwlulhme820RpzINMbtrnUloidq4IFHYcKUIknBoPzgMGsvie1KL+i1H40vG
	WLkxM4BZnBaX2IwPEm0HFXIRE08mHlZfDyaSFIj/DCD/5I0WOLdF/kgQaDNUI1/sKQMxoPa9r2ivl
	H9qWDDyGUpY4G5hSdyXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRZfg-00009n-I8; Thu, 23 Apr 2020 11:05:32 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRZfW-00007v-A5
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Apr 2020 11:05:24 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2BDFC31B;
 Thu, 23 Apr 2020 04:05:19 -0700 (PDT)
Received: from [192.168.0.14] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D22623F68F;
 Thu, 23 Apr 2020 04:05:17 -0700 (PDT)
Subject: Re: [PATCH v3 4/6] KVM: arm: vgic-v2: Only use the virtual state when
 userspace accesses pending bits
To: Marc Zyngier <maz@kernel.org>
References: <20200422161844.3848063-1-maz@kernel.org>
 <20200422161844.3848063-5-maz@kernel.org>
From: James Morse <james.morse@arm.com>
Message-ID: <e5297164-b225-37d5-0ffc-b1e2e0227608@arm.com>
Date: Thu, 23 Apr 2020 12:05:03 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200422161844.3848063-5-maz@kernel.org>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_040522_393100_D0F312F0 
X-CRM114-Status: GOOD (  10.09  )
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
Cc: Julien Grall <julien@xen.org>, kvm@vger.kernel.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Andre Przywara <Andre.Przywara@arm.com>, Eric Auger <eric.auger@redhat.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Zenghui Yu <yuzenghui@huawei.com>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marc,

On 22/04/2020 17:18, Marc Zyngier wrote:
> There is no point in accessing the HW when writing to any of the
> ISPENDR/ICPENDR registers from userspace, as only the guest should
> be allowed to change the HW state.
> 
> Introduce new userspace-specific accessors that deal solely with
> the virtual state. Note that the API differs from that of GICv3,
> where userspace exclusively uses ISPENDR to set the state. Too
> bad we can't reuse it.

Reviewed-by: James Morse <james.morse@arm.com>


Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
