Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFDAA1683F5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 17:47:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0gCTN+K/3MvLshCYhJlukWfIA/xsR13TL+OlGV8Jt3g=; b=Nupuh15Y4OOILl
	Vc670egZCM05cYfX/ZCGhtJ5z/Z+FJwbMFQOMBNnQu8ULNSw0po7du/pUnD66tx53sEAjBA9rL8Sh
	2qYLCZI0cp7XszE4JFQDA4q94I35WXQxWwlL0rQ4Y1zH5Hn1vgxJM7mMrP8aqqOAnRlKICePfh/Cb
	K4UEy61NiV3Z8A0oPIMFVdi6iHHOoxxi8mB2XUaRa0MqRthOFHRr1QnkqtuAlu1j2HBwnTOxJhcdW
	5m7KH6QPrABvpVwiTXTzdRYV0si1GWqTTX2Q8in8osHkU9n8fzRzHGGkgoP7QDsuK+qXlFv0ReKeB
	oLqkw77/Q+DT7ghlH61g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5BSr-00068U-Gm; Fri, 21 Feb 2020 16:47:45 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5BSh-000684-Or
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 16:47:37 +0000
Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com
 [209.85.222.173])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 564182465D
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 21 Feb 2020 16:47:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582303655;
 bh=UFnupkuEDoqrc04q8jdKLGfA1GzFl1b0UoKJJZMQFao=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=wuDLptutO0uDqtoV5jd77T1qy+Hhi4cSREJS/MW38kle9cteOozL9nV01o4KCEyCF
 YDZWP2Nfoby7MVf/WKLvlnu7YRf77WNnqpNcMlVDLZ3stmkpK/fH2mZpofMhIu6KHY
 QuDJWk/nQzcfx42rLA5JUCo7bS9WkZ3jMaak0UsU=
Received: by mail-qk1-f173.google.com with SMTP id z19so2396153qkj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 21 Feb 2020 08:47:35 -0800 (PST)
X-Gm-Message-State: APjAAAU5B9ykxcCldLcRiE1enewKoxpwmUhZ2DenC7gpsmymdv9Rd9MS
 xnyTTdOzCepPDq5uoTSGuUZj3yZ5ANP4Zq4hlg==
X-Google-Smtp-Source: APXvYqwzykXA/llhTIK2x1jpCbxq/lDy9xawSBtgCPgf1YfnTn4ax60XEuwwK1egxvgGS6LsTn4b9eLD25XV52HLTz4=
X-Received: by 2002:ae9:f205:: with SMTP id m5mr35008078qkg.152.1582303654430; 
 Fri, 21 Feb 2020 08:47:34 -0800 (PST)
MIME-Version: 1.0
References: <20200117211628.27888-1-robh@kernel.org>
 <2d04f201-3457-08ad-db8e-735f8315d74e@redhat.com>
 <7ac3f864-6c39-76e9-ee4a-21be03abc044@arm.com>
 <CAL_JsqJRSD-7U8UH1tevBdD2P6qPWzApQLpXU-SVBmZ8=Yiy0A@mail.gmail.com>
 <d49b62f2-74f4-c3e0-ad97-a4fedd169b27@arm.com>
 <CAL_JsqKY1_WmwLOKySwBasyZ5Kb=Rx-Y6m8bDppRKVxzoY58xg@mail.gmail.com>
 <49847ca9-3ee8-4c08-a772-a93f10aa817f@arm.com>
In-Reply-To: <49847ca9-3ee8-4c08-a772-a93f10aa817f@arm.com>
From: Rob Herring <robh@kernel.org>
Date: Fri, 21 Feb 2020 10:47:23 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJam8qO-XAfQTXNZ0y_gLdOx0LAX28XnKjXd2yh7y3_Uw@mail.gmail.com>
Message-ID: <CAL_JsqJam8qO-XAfQTXNZ0y_gLdOx0LAX28XnKjXd2yh7y3_Uw@mail.gmail.com>
Subject: Re: [PATCH v2] iommu/arm-smmu-v3: Add SMMUv3.2 range invalidation
 support
To: Robin Murphy <robin.murphy@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_084735_848329_4B862975 
X-CRM114-Status: GOOD (  23.53  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Jean-Philippe Brucker <jean-philippe@linaro.org>,
 Joerg Roedel <joro@8bytes.org>, Auger Eric <eric.auger@redhat.com>,
 Linux IOMMU <iommu@lists.linux-foundation.org>, Will Deacon <will@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Feb 21, 2020 at 10:19 AM Robin Murphy <robin.murphy@arm.com> wrote:
>
> On 20/02/2020 5:54 pm, Rob Herring wrote:
> > On Mon, Feb 17, 2020 at 1:17 PM Robin Murphy <robin.murphy@arm.com> wrote:
> >>
> >> On 13/02/2020 9:49 pm, Rob Herring wrote:
> >>> On Thu, Jan 30, 2020 at 11:34 AM Robin Murphy <robin.murphy@arm.com> wrote:
> >>>>
> >>>> On 30/01/2020 3:06 pm, Auger Eric wrote:
> >>>>> Hi Rob,
> >>>>> On 1/17/20 10:16 PM, Rob Herring wrote:
> >>>>>> Arm SMMUv3.2 adds support for TLB range invalidate operations.
> >>>>>> Support for range invalidate is determined by the RIL bit in the IDR3
> >>>>>> register.
> >>>>>>
> >>>>>> The range invalidate is in units of the leaf page size and operates on
> >>>>>> 1-32 chunks of a power of 2 multiple pages. First, we determine from the
> >>>>>> size what power of 2 multiple we can use. Then we calculate how many
> >>>>>> chunks (1-31) of the power of 2 size for the range on the iteration. On
> >>>>>> each iteration, we move up in size by at least 5 bits.
> >>>>>>
> >>>>>> Cc: Eric Auger <eric.auger@redhat.com>
> >>>>>> Cc: Jean-Philippe Brucker <jean-philippe@linaro.org>
> >>>>>> Cc: Will Deacon <will@kernel.org>
> >>>>>> Cc: Robin Murphy <robin.murphy@arm.com>
> >>>>>> Cc: Joerg Roedel <joro@8bytes.org>
> >>>>>> Signed-off-by: Rob Herring <robh@kernel.org>
> >>>
> >>>
> >>>>>> @@ -2003,7 +2024,7 @@ static void arm_smmu_tlb_inv_range(unsigned long iova, size_t size,
> >>>>>>     {
> >>>>>>        u64 cmds[CMDQ_BATCH_ENTRIES * CMDQ_ENT_DWORDS];
> >>>>>>        struct arm_smmu_device *smmu = smmu_domain->smmu;
> >>>>>> -    unsigned long start = iova, end = iova + size;
> >>>>>> +    unsigned long start = iova, end = iova + size, num_pages = 0, tg = 0;
> >>>>>>        int i = 0;
> >>>>>>        struct arm_smmu_cmdq_ent cmd = {
> >>>>>>                .tlbi = {
> >>>>>> @@ -2022,12 +2043,50 @@ static void arm_smmu_tlb_inv_range(unsigned long iova, size_t size,
> >>>>>>                cmd.tlbi.vmid   = smmu_domain->s2_cfg.vmid;
> >>>>>>        }
> >>>>>>
> >>>>>> +    if (smmu->features & ARM_SMMU_FEAT_RANGE_INV) {
> >>>>>> +            /* Get the leaf page size */
> >>>>>> +            tg = __ffs(smmu_domain->domain.pgsize_bitmap);
> >>>>>> +
> >>>>>> +            /* Convert page size of 12,14,16 (log2) to 1,2,3 */
> >>>>>> +            cmd.tlbi.tg = ((tg - ilog2(SZ_4K)) / 2) + 1;
> >>>>
> >>>> Given the comment, I think "(tg - 10) / 2" would suffice ;)
> >>>
> >>> Well, duh...
> >>>
> >>>>
> >>>>>> +
> >>>>>> +            /* Determine what level the granule is at */
> >>>>>> +            cmd.tlbi.ttl = 4 - ((ilog2(granule) - 3) / (tg - 3));
> >>>>
> >>>> Is it possible to rephrase that with logs and shifts to avoid the division?
> >>>
> >>> Well, with a loop is the only other way I came up with:
> >>>
> >>> bpl = tg - 3;
> >>> ttl = 3;
> >>> mask = BIT(bpl) - 1;
> >>> while ((granule & (mask << ((4 - ttl) * bpl + 3))) == 0)
> >>>       ttl--;
> >>>
> >>> Doesn't seem like much improvement to me given we have h/w divide...
> >>
> >> Sure, it doesn't take too many extra instructions to start matching
> >> typical IDIV latency, so there's no point being silly if there really
> >> isn't a clean alternative.
> >>
> >> Some quick scribbling suggests "4 - ilog2(granule) / 10" might actually
> >> be close enough, but perhaps that's a bit too cheeky.
> >
> > How does divide by 10 save a divide?
>
> Well, by that point I was more just thinking about the smallest
> expression, since *some* division seems unavoidable. Although GCC does
> apparently still think that transforming constant division is a win ;)

Okay. Still, divide by 10 happens to work, but it is very much not
obvious. It also doesn't work for level 1 and 16 or 64KB pages (though
we'll never see that granule). Subtracting 3 is not that obvious
either, but is at least in the spec for calculating the bits per
level.

I think we've spent enough time micro-optimizing this and have better
things to worry about.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
