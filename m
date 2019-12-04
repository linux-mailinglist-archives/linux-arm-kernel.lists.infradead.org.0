Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F24C1131AE
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 19:02:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G9uWFaAQTFrASHPTHhE1/WX+sPocKoLRmThmyyIZisQ=; b=IaCH6oVhQgKtQS
	VElJzDrgEgcbyFf/lvBsqrKH6ZEg0bPqUxAuDwDgnNeWVDqz0s3iFUjohzNIzolcfAG+Q+1QAoygU
	nlJytXS6sq2gnT56offDYQSy0PRbqLnJrH5LiOqivYmdV5xX7soaeyW98PW/Q1aKgZoRtY1/noPUX
	qnrZ5wcR5ptNJpI+/dQsiN7FYcNVY1MSkVi8HzdQGC/zRUe3Bil7+3ZCER8bMGHbc8LBM7P5NKoJ3
	i8A9/EIzAk6WjR9jmAsYEVdCY/UMwJuBI5AfJjk+2+/KKVkCOC89titaA9QHOuewB/x8rBEec0day
	tR38KXmyGjEVczShLdXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icYyR-0004av-Jq; Wed, 04 Dec 2019 18:02:03 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icYyJ-0004ZJ-UN
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 18:01:57 +0000
Received: by mail-ed1-x543.google.com with SMTP id c93so155771edf.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Dec 2019 10:01:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=mvp9L8yGr+7Q73cf5DiMFkH0tKxVcTrdu8kuP8KT/wA=;
 b=AnLIlKDxiENCXMUrbqTM8dDUPRPRHtCYpWJQ8og66XUs0vdaxN8hGdg8m117J2krEJ
 SJ2rAhNZms6onCSAEhb1qbbpGHdAC1mNwB1yBzp4a46YCvh4DYplVBpVi9hnAnUdTk3V
 7u+AMPmaRBp2zv5wG50ryD9qcrQW5TYYYwRmOFGRps5AMuyfZUiqtmkQZCMW1y1LJeOa
 DRVwsjJb7aZBa4lcDk/NWOrtV9UDX2xwfA8hVKNB2z+B1q8U/7/BNl9KF3mOCI0qisZE
 E+Pm16Xc42UW7lkGqqQY1hd/GGQfyoVxJXRWw9ipzYEk34PlwrqXzIRMfYLNeN/9jAsg
 NaAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=mvp9L8yGr+7Q73cf5DiMFkH0tKxVcTrdu8kuP8KT/wA=;
 b=RnnrhdQECvAe1htgnLApEhf3KZYLjQLKgAma+HaeHQHwJ7Iy3em9SC/pXVlq6QHZe8
 2fLxh22aNTTldsTQR95irIfYz7LtEjq5mb305LQa/+qxG7CWLAdZ2gTgIJFKf2d0kj8o
 z/ebrfqkeWv3kifvwvkuwcj0/Py3XyiomBGXtnF2UgVVs/iT6r3KZfRdqUG58Auv7JN3
 Gg+p2eJivyVVheanWPTyV3xc6Z04wlKwLSlpd4j3KaEyHZBTcd+/7VLUjhJumncTtwNF
 TEj3U34uk2rFF23vNIB0sEbKz1H4ciJuqvmxdcuL6tT2Q+6RKGXQ5tIGe55KXcZtNx0d
 Vjlg==
X-Gm-Message-State: APjAAAXCQ9zSfvzg6LRkStGu5R8WPePSnmOBXVp4a59EVuU2D8f+sg8h
 04tY/5hhxfgN/lz7X94eNo42VJEUdcfJg4/B3GQ=
X-Google-Smtp-Source: APXvYqyH+H1j/zREsxP/LJQ/Q6PhP0dprWgGzUYK4IWlJ02sNpCzzk2ec/2tRbkR3GG2lr++MiA4m7gV4rTsfvod+5U=
X-Received: by 2002:aa7:d64f:: with SMTP id v15mr5520399edr.71.1575482513957; 
 Wed, 04 Dec 2019 10:01:53 -0800 (PST)
MIME-Version: 1.0
References: <1574465484-7115-1-git-send-email-jcrouse@codeaurora.org>
 <0101016e95751c0b-33c9379b-6b8c-43b1-8785-e5e1b6f084f1-000000@us-west-2.amazonses.com>
 <3a283a7c-df75-a30a-1bcb-74e631f06a71@arm.com>
In-Reply-To: <3a283a7c-df75-a30a-1bcb-74e631f06a71@arm.com>
From: Rob Clark <robdclark@gmail.com>
Date: Wed, 4 Dec 2019 10:01:42 -0800
Message-ID: <CAF6AEGuxgUQNuSQVECiUzpj4DM0R7UYme0Q9ggF1a=JCxAJsBA@mail.gmail.com>
Subject: Re: [PATCH v2 1/8] dt-bindings: arm-smmu: Add Adreno GPU variant
To: Robin Murphy <robin.murphy@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_100155_979796_E102CCAD 
X-CRM114-Status: GOOD (  17.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robdclark[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>,
 Joerg Roedel <joro@8bytes.org>, " <iommu@lists.linux-foundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Jordan Crouse <jcrouse@codeaurora.org>, Rob Herring <robh+dt@kernel.org>,
 Will Deacon <will@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Dec 4, 2019 at 7:56 AM Robin Murphy <robin.murphy@arm.com> wrote:
>
> On 22/11/2019 11:31 pm, Jordan Crouse wrote:
> > Add a compatible string to identify SMMUs that are attached
> > to Adreno GPU devices that wish to support split pagetables.
>
> A software policy decision is not, in itself, a good justification for a
> DT property. Is the GPU SMMU fundamentally different in hardware* from
> the other SMMU(s) in any given SoC?

The GPU CP has some sort of mechanism to switch pagetables.. although
I guess under the firmware it is all the same.  Jordan should know
better..

BR,
-R

> (* where "hardware" may encompass hypervisor shenanigans)
>
> > Signed-off-by: Jordan Crouse <jcrouse@codeaurora.org>
> > ---
> >
> >   Documentation/devicetree/bindings/iommu/arm,smmu.yaml | 6 ++++++
> >   1 file changed, 6 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/iommu/arm,smmu.yaml b/Documentation/devicetree/bindings/iommu/arm,smmu.yaml
> > index 6515dbe..db9f826 100644
> > --- a/Documentation/devicetree/bindings/iommu/arm,smmu.yaml
> > +++ b/Documentation/devicetree/bindings/iommu/arm,smmu.yaml
> > @@ -31,6 +31,12 @@ properties:
> >                 - qcom,sdm845-smmu-v2
> >             - const: qcom,smmu-v2
> >
> > +      - description: Qcom Adreno GPU SMMU iplementing split pagetables
> > +        items:
> > +          - enum:
> > +              - qcom,adreno-smmu-v2
> > +          - const: qcom,smmu-v2
>
> Given that we already have per-SoC compatibles for Qcom SMMUs in
> general, this seems suspiciously vague.
>
> Robin.
>
> > +
> >         - description: Qcom SoCs implementing "arm,mmu-500"
> >           items:
> >             - enum:
> >
> _______________________________________________
> iommu mailing list
> iommu@lists.linux-foundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/iommu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
