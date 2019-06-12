Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97F7542EB3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 20:29:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rb9YZRZwM2kR0a1AeO7pqdlheNXlGN/9YALv5ohCYIs=; b=txZtxWwE+TcMIG
	uGSoaiTEOJZdvHFeIoKHnOENA33078xulyxiD3h7Z+fP6AuQWbxw5a4hs5nRoLE18YMVUiBtIcfh+
	0AtbStGGpbGXxSbpxRrBoFaq6tyIl8bS9vRl3Ye6eGCJFwbCdTTCHAGUVXXG0IY/oAuxeOm+I6bMZ
	/PEvq30u+rpiuuHgdouu2Khj3Lu4quv+523QXkgFrMOlylOaOjCEbLWA74Iv+M3/A3A8OHLiIGxgY
	qhKyYyDtMORoXbD2Mz6xatcyGXK0dyxLTYx4/o6914cS3J/lQslvYKb1mGJ9svCFpts/KsNXblmNr
	ebKZP89O4dWjZr2IFjzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb7zx-0002It-0f; Wed, 12 Jun 2019 18:29:25 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb7zV-00028l-K1
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 18:28:59 +0000
Received: by mail-pg1-x543.google.com with SMTP id 196so9386743pgc.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 12 Jun 2019 11:28:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=+79M0qC52KBqcZi+aAUpykO9qkYyBvSKoD8+NYjzNgM=;
 b=UMBN/yACkW2pNaFWRj1LqT4MeRqs6jVBZFDrKU77NJNGt1VVfDJJhryte4q7uKq3Ib
 fn1OfIpyKXGCm7/wU587tEChAQygjDEwkz/IvzS4nUjtKgzz1jngIK+x1Owt2Eia+HVu
 /H3V5yPWRDxfYXA9Zhsb+5mKKfM9WZcjmkQ0aUy0DC6BZQF9QdY+AKqLMUnXcuBjUYUQ
 cjyNOX/IaQ9GipKJj+d2B3ic/GXtZiogNyyhysUgWqMt1PnGnLNvJbhM01n4sMR9wSzK
 Jod4ubMgCZ1RKt2iHUw+WaJtNpBjESm5rnza2DmyPbXAeLFJLpY+m13EdM+fbV/wan6J
 WYUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=+79M0qC52KBqcZi+aAUpykO9qkYyBvSKoD8+NYjzNgM=;
 b=k3BR8l0g5aDV3UeV+y6Nd/mghawmSNmPbtfiQ/oHePOa8yalQ6rY9X+Zrv0NSNLd9h
 U8TqnGX4mDaoqauKlaJdyYmlftzuxL1cNiZ4mIpqYniCmrh8jH/uYH4opu295dz3DsBF
 ITfN7iT613sSddg/oaZHM1aihZ2Lj7KvtnnjeKdhF/2P4raUSTAKCtjGzq2sAS/yB94Y
 s2xYC1FYADumIwLmeENu3ULtytEyySDaiVaPFVaNDItSUEh1w/JyPEhuO3aa5YrmoUFG
 kx8X0GXKlQdWD1rsrtESEfFlmfUM8+wCgbQVVdWZdSBIVTpd4fkWQ/8WUAfomEVFuJ/A
 0m0g==
X-Gm-Message-State: APjAAAX6qRhHlYIMIFEiNQ4It90t1oAob42+GlnxLUAK3oW6u9UeNnar
 9iMr/5IieRtbprIzD0+yLGuy/w==
X-Google-Smtp-Source: APXvYqxcLb0CPq068YSlGSvzRAqyu+g9y/Z69rYUysAsAXumU30uGmd1vWH79G+P3Vh9Thbj9PPDXQ==
X-Received: by 2002:a63:a08:: with SMTP id 8mr26483042pgk.46.1560364135521;
 Wed, 12 Jun 2019 11:28:55 -0700 (PDT)
Received: from minitux (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id q198sm252178pfq.155.2019.06.12.11.28.53
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 12 Jun 2019 11:28:54 -0700 (PDT)
Date: Wed, 12 Jun 2019 11:28:52 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Jeffrey Hugo <jeffrey.l.hugo@gmail.com>
Subject: Re: [RFC 2/2] iommu: arm-smmu: Don't blindly use first SMR to
 calculate mask
Message-ID: <20190612182852.GA4814@minitux>
References: <20190605210856.20677-1-bjorn.andersson@linaro.org>
 <20190605210856.20677-3-bjorn.andersson@linaro.org>
 <CAOCk7Nocb7VO5xCcuK1FAPVdPr9U-7z8qOL4yt3ig=05e7brgg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOCk7Nocb7VO5xCcuK1FAPVdPr9U-7z8qOL4yt3ig=05e7brgg@mail.gmail.com>
User-Agent: Mutt/1.12.0 (2019-05-25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_112857_911425_D0A44422 
X-CRM114-Status: GOOD (  24.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Patrick Daly <pdaly@codeaurora.org>, Jeffrey Hugo <jhugo@codeaurora.org>,
 MSM <linux-arm-msm@vger.kernel.org>, Joerg Roedel <joro@8bytes.org>,
 Will Deacon <will.deacon@arm.com>, lkml <linux-kernel@vger.kernel.org>,
 iommu@lists.linux-foundation.org, Vivek Gautam <vivek.gautam@codeaurora.org>,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed 12 Jun 10:58 PDT 2019, Jeffrey Hugo wrote:

> On Wed, Jun 5, 2019 at 3:09 PM Bjorn Andersson
> <bjorn.andersson@linaro.org> wrote:
> >
> > With the SMRs inherited from the bootloader the first SMR might actually
> > be valid and in use. As such probing the SMR mask using the first SMR
> > might break a stream in use. Search for an unused stream and use this to
> > probe the SMR mask.
> >
> > Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
> 
> Reviewed-by: Jeffrey Hugo <jeffrey.l.hugo@gmail.com>
> 
> I don't quite like the situation where the is no SMR to compute the mask, but I
> think the way you've handled it is the best option/
> 

Right, if this happens we would end up using the smr_mask that was
previously calculated. We just won't update it based on the hardware.

> I'm curious, why is this not included in patch #1?  Seems like patch
> #1 introduces
> the issue, yet doesn't also fix it.
> 

You're right, didn't think about that. This needs to either predate that
patch or be included in it.

Thanks,
Bjorn

> > ---
> >  drivers/iommu/arm-smmu.c | 20 ++++++++++++++++----
> >  1 file changed, 16 insertions(+), 4 deletions(-)
> >
> > diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
> > index c8629a656b42..0c6f5fe6f382 100644
> > --- a/drivers/iommu/arm-smmu.c
> > +++ b/drivers/iommu/arm-smmu.c
> > @@ -1084,23 +1084,35 @@ static void arm_smmu_test_smr_masks(struct arm_smmu_device *smmu)
> >  {
> >         void __iomem *gr0_base = ARM_SMMU_GR0(smmu);
> >         u32 smr;
> > +       int idx;
> >
> >         if (!smmu->smrs)
> >                 return;
> >
> > +       for (idx = 0; idx < smmu->num_mapping_groups; idx++) {
> > +               smr = readl_relaxed(gr0_base + ARM_SMMU_GR0_SMR(idx));
> > +               if (!(smr & SMR_VALID))
> > +                       break;
> > +       }
> > +
> > +       if (idx == smmu->num_mapping_groups) {
> > +               dev_err(smmu->dev, "Unable to compute streamid_mask\n");
> > +               return;
> > +       }
> > +
> >         /*
> >          * SMR.ID bits may not be preserved if the corresponding MASK
> >          * bits are set, so check each one separately. We can reject
> >          * masters later if they try to claim IDs outside these masks.
> >          */
> >         smr = smmu->streamid_mask << SMR_ID_SHIFT;
> > -       writel_relaxed(smr, gr0_base + ARM_SMMU_GR0_SMR(0));
> > -       smr = readl_relaxed(gr0_base + ARM_SMMU_GR0_SMR(0));
> > +       writel_relaxed(smr, gr0_base + ARM_SMMU_GR0_SMR(idx));
> > +       smr = readl_relaxed(gr0_base + ARM_SMMU_GR0_SMR(idx));
> >         smmu->streamid_mask = smr >> SMR_ID_SHIFT;
> >
> >         smr = smmu->streamid_mask << SMR_MASK_SHIFT;
> > -       writel_relaxed(smr, gr0_base + ARM_SMMU_GR0_SMR(0));
> > -       smr = readl_relaxed(gr0_base + ARM_SMMU_GR0_SMR(0));
> > +       writel_relaxed(smr, gr0_base + ARM_SMMU_GR0_SMR(idx));
> > +       smr = readl_relaxed(gr0_base + ARM_SMMU_GR0_SMR(idx));
> >         smmu->smr_mask_mask = smr >> SMR_MASK_SHIFT;
> >  }
> >
> > --
> > 2.18.0
> >
> >
> > _______________________________________________
> > linux-arm-kernel mailing list
> > linux-arm-kernel@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
