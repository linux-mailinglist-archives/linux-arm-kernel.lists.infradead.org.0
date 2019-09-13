Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 546ACB28B9
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 14 Sep 2019 00:59:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e1w7eWJXBgnf+/vMz87D/fTyQkFg9nhUdS86FdUHZEM=; b=C4TIuw3IoJSQcK
	RQ6Vl5MPVsCQFZMF5/4V41OXUe+GZNniNEtH8qXo+RcGS7Xzwl0OCz0Anv80sv4KP19uI1DvKlY6W
	9g6llyC0jkW//00ATcoUVkJfObVC5rzXPJnPaJOJlI+Lpq8UZgYyHZQVbdwpBT8Md50Nn5gSI/nGC
	tXcd5WkyzTQt6BCHZ/ZnKRKFQgwg7L1LK7s54pr3AYFLDWBz5+mBfjLJ4bum0FYeV/hjiKP6CU0kU
	kDM5L5ekxYh3tiBW4RfrLIpTYBO0nQQV5QtUdOsN9/S+FFa0DSbS90MqiHupzeDZNgh43djyzGS+g
	Ts6PIl8EUveM59TOgyFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8uXM-0002WJ-Vw; Fri, 13 Sep 2019 22:59:33 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8uXA-0002Vg-R5
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Sep 2019 22:59:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Gz91tcAZKZlGrIVMxlgK2a+6W0NcPe51avZOJKC9IiM=; b=EESddT+nZeGoY5ijhPLaGQz43
 toQSQ9Rb93WAHxGS2X5emD7os5LHiK2t4Np5SEKHOgU8UkDqfKw/SL29sNiiQn9wbQFn8Jw9Xl7D8
 5AWioi0fcOUbLhA/O2hq4UsywZ1e5fQ3Isi4s89oGVbdFEbIvSp/hVUkjkiEN7PF3MW6qB9j3ZQQS
 +D8xTM7eRfhNfUkJ/rIdhKcXwHObfLmgdXlIBNI7TFa7XDJPbj+dbUwtg5TEx2v6BIECtvd/3byzM
 GL6g/SRW9HPPQ7TH2e2wwLvHPwItjvBAhDHyaNhhJHAwxXx7M4zB42OaqcrygRz4Rb0bheWQ6Ut6b
 pNzBvyE6Q==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:43326)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1i8uWy-0005JG-0V; Fri, 13 Sep 2019 23:59:08 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1i8uWu-0006Dk-Nw; Fri, 13 Sep 2019 23:59:04 +0100
Date: Fri, 13 Sep 2019 23:59:04 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH] iommu/arm-smmu: Report USF more clearly
Message-ID: <20190913225904.GC13294@shell.armlinux.org.uk>
References: <2762ffd4c196dc91d62e10eb8b753f256ea9b629.1568375317.git.robin.murphy@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2762ffd4c196dc91d62e10eb8b753f256ea9b629.1568375317.git.robin.murphy@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190913_155921_032055_9CE5769C 
X-CRM114-Status: GOOD (  16.47  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: joro@8bytes.org, will@kernel.org, iommu@lists.linux-foundation.org,
 linux-arm-kernel@lists.infradead.org, Douglas Anderson <dianders@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Sep 13, 2019 at 12:48:37PM +0100, Robin Murphy wrote:
> Although CONFIG_ARM_SMMU_DISABLE_BYPASS_BY_DEFAULT is a welcome tool
> for smoking out inadequate firmware, the failure mode is non-obvious
> and can be confusing for end users. Add some special-case reporting of
> Unidentified Stream Faults to help clarify this particular symptom.

Having encountered this on a board that turned up this week, it may
be better to use the hex representation of the stream ID, especially
as it seems normal for the stream ID to be made up of implementation
defined bitfields.

If we want to stick with decimal, maybe masking the stream ID with
the number of allowable bits would be a good idea, so that the
decimal value remains meaningful should other bits be non-zero?

> CC: Douglas Anderson <dianders@chromium.org>
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> ---
>  drivers/iommu/arm-smmu.c | 5 +++++
>  drivers/iommu/arm-smmu.h | 2 ++
>  2 files changed, 7 insertions(+)
> 
> diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
> index b7cf24402a94..76ac8c180695 100644
> --- a/drivers/iommu/arm-smmu.c
> +++ b/drivers/iommu/arm-smmu.c
> @@ -499,6 +499,11 @@ static irqreturn_t arm_smmu_global_fault(int irq, void *dev)
>  	dev_err_ratelimited(smmu->dev,
>  		"\tGFSR 0x%08x, GFSYNR0 0x%08x, GFSYNR1 0x%08x, GFSYNR2 0x%08x\n",
>  		gfsr, gfsynr0, gfsynr1, gfsynr2);
> +	if (IS_ENABLED(CONFIG_ARM_SMMU_DISABLE_BYPASS_BY_DEFAULT) &&
> +	    (gfsr & sGFSR_USF))
> +		dev_err_ratelimited(smmu->dev,
> +			"Stream ID %hu may not be described by firmware, try booting with \"arm-smmu.disable_bypass=0\"\n",
> +			(u16)gfsynr1);
>  
>  	arm_smmu_gr0_write(smmu, ARM_SMMU_GR0_sGFSR, gfsr);
>  	return IRQ_HANDLED;
> diff --git a/drivers/iommu/arm-smmu.h b/drivers/iommu/arm-smmu.h
> index c9c13b5785f2..46f7e161e83e 100644
> --- a/drivers/iommu/arm-smmu.h
> +++ b/drivers/iommu/arm-smmu.h
> @@ -79,6 +79,8 @@
>  #define ID7_MINOR			GENMASK(3, 0)
>  
>  #define ARM_SMMU_GR0_sGFSR		0x48
> +#define sGFSR_USF			BIT(2)

I do wonder if this is another instance where writing "(1 << 1)"
would have resulted in less chance of a mistake being made...
wrapping stuff up into macros is not always better!

9.6.15    SMMU_sGFSR, Global Fault Status Register

The SMMU_sGFSR bit assignments are:

USF, bit[1]       Unidentified stream fault. The possible values of this
                  bit are:
                  0          No Unidentified stream fault.
                  1          Unidentified stream fault.

So this wants to be:

#define sGFSR_USF			BIT(1)


-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
