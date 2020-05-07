Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2540C1C8B75
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 14:54:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JWodH/zr5N+1UdF310E0yDR4hS0uH6z4BU42FP9ibP8=; b=TXXEZUaZpkG1XD
	A8Hm9T67mXvQubaQPUUXeagVu/qLubMFyBFPBv+qfQjphxMhsB9VRi0avF2IiPaNQVGgluw2q0c77
	DgWUIXYXjsN7XLCmteTWZ9ouQdaI7KworW1NCucM5R4l7tjFaPgyiOsqgiDYCLLtyMsQHCbcggMvT
	Pm+m/D9KBKRQliJcH6JukLeZetjIdzteZFbF5o/4UpY45g+5XQG/dn5eyD0weeS9ZZHgg0f1w0I47
	PCfT95uJgsgAQ4bjfKv6UYdfMLT+H5ltNyARlRFRz7RfmKH5sXZ7FUvoStTbWqc2AztOVxUSsxxbQ
	kDDed0gKlc07mLyC8nng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWg2Z-0000i7-MS; Thu, 07 May 2020 12:54:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWg2Q-0000hI-5F
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 12:54:07 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AEE472082E;
 Thu,  7 May 2020 12:54:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588856043;
 bh=ejai9cTPU/wXSWdxchfGt1itA5yy8fQdOCXV1pCVHB8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=RQWnluLJiArcmPu9fOV36aetvJ89LlV4OkXKlOag7m8wEFYv8k8CmgXArbDzu6Wsq
 pswbvEeTfFU5iF88PS7C3PtcspXniovK40FRu2E7ppNmm6cyjd3Iso9XksHltSy6+K
 p+BGlBgqY06MAoY6CKRIfJ85jBPtzde5OXgykwOI=
Date: Thu, 7 May 2020 13:53:58 +0100
From: Will Deacon <will@kernel.org>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH] iomm/arm-smmu: Add stall implementation hook
Message-ID: <20200507125357.GA31783@willie-the-truck>
References: <20200421202004.11686-1-saiprakash.ranjan@codeaurora.org>
 <b491e02ad790a437115fdeab6b21bc48@codeaurora.org>
 <1ced023b-157c-21a0-ac75-1adef7f029f0@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1ced023b-157c-21a0-ac75-1adef7f029f0@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_055406_244358_FEA5EC70 
X-CRM114-Status: GOOD (  19.18  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
 linux-arm-msm@vger.kernel.org, Joerg Roedel <joro@8bytes.org>,
 Jordan Crouse <jcrouse@codeaurora.org>, iommu@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, Rob Clark <robdclark@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 07, 2020 at 11:55:54AM +0100, Robin Murphy wrote:
> On 2020-05-07 11:14 am, Sai Prakash Ranjan wrote:
> > On 2020-04-22 01:50, Sai Prakash Ranjan wrote:
> > > Add stall implementation hook to enable stalling
> > > faults on QCOM platforms which supports it without
> > > causing any kind of hardware mishaps. Without this
> > > on QCOM platforms, GPU faults can cause unrelated
> > > GPU memory accesses to return zeroes. This has the
> > > unfortunate result of command-stream reads from CP
> > > getting invalid data, causing a cascade of fail.
> =

> I think this came up before, but something about this rationale doesn't a=
dd
> up - we're not *using* stalls at all, we're still terminating faulting
> transactions unconditionally; we're just using CFCFG to terminate them wi=
th
> a slight delay, rather than immediately. It's really not clear how or why
> that makes a difference. Is it a GPU bug? Or an SMMU bug? Is this reliable
> (or even a documented workaround for something), or might things start
> blowing up again if any other behaviour subtly changes? I'm not dead set
> against adding this, but I'd *really* like to have a lot more confidence =
in
> it.

Rob mentioned something about the "bus returning zeroes" before, but I agree
that we need more information so that we can reason about this and maintain
the code as the driver continues to change. That needs to be a comment in
the driver, and I don't think "but android seems to work" is a good enough
justification. There was some interaction with HUPCF as well.

As a template, I'd suggest:

> > > diff --git a/drivers/iommu/arm-smmu.h b/drivers/iommu/arm-smmu.h
> > > index 8d1cd54d82a6..d5134e0d5cce 100644
> > > --- a/drivers/iommu/arm-smmu.h
> > > +++ b/drivers/iommu/arm-smmu.h
> > > @@ -386,6 +386,7 @@ struct arm_smmu_impl {
> > > =A0=A0=A0=A0 int (*init_context)(struct arm_smmu_domain *smmu_domain);
> > > =A0=A0=A0=A0 void (*tlb_sync)(struct arm_smmu_device *smmu, int page,=
 int sync,
> > > =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 int status);

/*
 * Stall transactions on a context fault, where they will be terminated
 * in response to the resulting IRQ rather than immediately. This should
 * pretty much always be set to "false" as stalling can introduce the
 * potential for deadlock in most SoCs, however it is needed on Qualcomm
 * XXXX because YYYY.
 */

> > > +=A0=A0=A0 bool stall;

Hmm, the more I think about this, the more I think this is an erratum
workaround in disguise, in which case this could be better named...

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
