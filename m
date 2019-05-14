Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 387931CCCE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 May 2019 18:20:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NZISu6AvtGDAEmATah89nsq67ewSShy8sAHDWaI5Zd0=; b=VJkH8WJCjuGdB0
	wLDUzdV3xKVelEUH/thqpAqpWixbu2M3nhDvrxHCPdAG5RBP+fDei00K+9ZgIMfpg5bLn95YIVqQM
	nYqTVjw949BBKtSNqQy/RMjBPWu2CMk8VQ8LD2JYkt8vdKk4pxZp+G4FJniMxyXS+n/4bB9HqAwmH
	kclty1NiMVW4b3sqRDKZ81OGymnOgIbiC/WDn8RNd5hfu1IlyJcbb9FaQHf2ywBjhdUKhcyVVkQ7h
	T6tEzWHVapTDOhlyJsICSM6kahw7INb9FIYaaLFA+P3P9yS5w7vzZzA2Aqd0InE6RrG2jrEKVBfqS
	DtZkKUTiBWucbImSFRwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQa9m-0007oa-Vr; Tue, 14 May 2019 16:19:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQa9f-0007o8-0u; Tue, 14 May 2019 16:19:52 +0000
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com
 [209.85.160.181])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7F44A20862;
 Tue, 14 May 2019 16:19:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1557850790;
 bh=qzOY5O00XWu9ltpfoa6ZpPJ9ETaX0rvyq0x+5T3QeMY=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=LDdzJZZR0zPqXRSts4eVzoabG9u/04+N8xqmoyKWmbf9bfLaGGtz9FglclolDmYnc
 VZhBS8SikBU3vD2X6G3UwTY7OpwuBaiBqtgnyNhSEMA8zvk1JmOurOmilkncQnUGQp
 2XB0b0giGzlXj8r7kDAJSWMdrI7q6UUb+SC/5rR4=
Received: by mail-qt1-f181.google.com with SMTP id j53so19663885qta.9;
 Tue, 14 May 2019 09:19:50 -0700 (PDT)
X-Gm-Message-State: APjAAAUQZTPMPO8YfJjZHnQSrdT2WlEaLfxqqf/0JnxYxm3bEgvFFmbx
 5RWn/QO2sfoOpR4jufZmGIhKimVhlWh61R9ktQ==
X-Google-Smtp-Source: APXvYqy/kSHQj4PRwOSVHrR1mu6BOErL78nzm6ufh9vWL2uISjxCvFbdDDvbMa+HOHIkfJYRZbIMBn1G+SPJCs366Qo=
X-Received: by 2002:ac8:610f:: with SMTP id a15mr29576466qtm.257.1557850789752; 
 Tue, 14 May 2019 09:19:49 -0700 (PDT)
MIME-Version: 1.0
References: <20190417104511.21514-1-frederic.chen@mediatek.com>
 <20190417104511.21514-2-frederic.chen@mediatek.com>
 <20190430011506.GA8514@bogus>
 <1557238925.11663.21.camel@mtksdccf07>
In-Reply-To: <1557238925.11663.21.camel@mtksdccf07>
From: Rob Herring <robh@kernel.org>
Date: Tue, 14 May 2019 11:19:38 -0500
X-Gmail-Original-Message-ID: <CAL_JsqKGW9WqyNgqKD0MxsqxYHKZ+VNV5A2p+neGqwmKmiODOQ@mail.gmail.com>
Message-ID: <CAL_JsqKGW9WqyNgqKD0MxsqxYHKZ+VNV5A2p+neGqwmKmiODOQ@mail.gmail.com>
Subject: Re: [RFC PATCH V1 1/6] dt-bindings: mt8183: Add binding for DIP
 shared memory
To: Frederic Chen <frederic.chen@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_091951_104738_6702A468 
X-CRM114-Status: GOOD (  26.55  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: shik@chromium.org, devicetree@vger.kernel.org, Sean.Cheng@mediatek.com,
 Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
 Rynn.Wu@mediatek.com, christie.yu@mediatek.com,
 srv_heupstream <srv_heupstream@mediatek.com>, holmes.chiou@mediatek.com,
 suleiman@chromium.org, Jerry-ch Chen <Jerry-ch.Chen@mediatek.com>,
 Tomasz Figa <tfiga@chromium.org>, jungo.lin@mediatek.com,
 sj.huang@mediatek.com, yuzhao@chromium.org,
 Hans Verkuil <hans.verkuil@cisco.com>, zwisler@chromium.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 7, 2019 at 9:22 AM Frederic Chen <frederic.chen@mediatek.com> wrote:
>
> Dear Rob,
>
> I appreciate your comments.
>
> On Mon, 2019-04-29 at 20:15 -0500, Rob Herring wrote:
> > On Wed, Apr 17, 2019 at 06:45:06PM +0800, Frederic Chen wrote:
> > > This patch adds the binding for describing the shared memory
> > > used to exchange configuration and tuning data between the
> > > co-processor and Digital Image Processing (DIP) unit of the
> > > camera ISP system on Mediatek SoCs.
> > >
> > > Signed-off-by: Frederic Chen <frederic.chen@mediatek.com>
> > > ---
> > >  .../mediatek,reserve-memory-dip_smem.txt      | 45 +++++++++++++++++++
> > >  1 file changed, 45 insertions(+)
> > >  create mode 100644 Documentation/devicetree/bindings/reserved-memory/mediatek,reserve-memory-dip_smem.txt
> > >
> > > diff --git a/Documentation/devicetree/bindings/reserved-memory/mediatek,reserve-memory-dip_smem.txt b/Documentation/devicetree/bindings/reserved-memory/mediatek,reserve-memory-dip_smem.txt
> > > new file mode 100644
> > > index 000000000000..64c001b476b9
> > > --- /dev/null
> > > +++ b/Documentation/devicetree/bindings/reserved-memory/mediatek,reserve-memory-dip_smem.txt
> > > @@ -0,0 +1,45 @@
> > > +Mediatek DIP Shared Memory binding
> > > +
> > > +This binding describes the shared memory, which serves the purpose of
> > > +describing the shared memory region used to exchange data between Digital
> > > +Image Processing (DIP) and co-processor in Mediatek SoCs.
> > > +
> > > +The co-processor doesn't have the iommu so we need to use the physical
> > > +address to access the shared buffer in the firmware.
> > > +
> > > +The Digital Image Processing (DIP) can access memory through mt8183 IOMMU so
> > > +it can use dma address to access the memory region.
> > > +(See iommu/mediatek,iommu.txt for the detailed description of Mediatek IOMMU)
> > > +
> > > +
> > > +Required properties:
> > > +
> > > +- compatible: must be "mediatek,reserve-memory-dip_smem"
> >
> > Don't use '_'.
>
> I got it. I will use "mediatek,reserve-memory-dip-smem" instead in next
> version of the patch
>
> >
> > > +
> > > +- reg: required for static allocation (see reserved-memory.txt for
> > > +  the detailed usage)
> > > +
> > > +- alloc-range: required for dynamic allocation. The range must
> > > +  between 0x00000400 and 0x100000000 due to the co-processer's
> > > +  addressing limitation
> >
> > Generally, you should pick either static or dynamic allocation for a
> > given binding. Static if there's some address restriction or sharing,
> > dynamic if not.
> >
> > Sounds like static in this case.
> >
>
> DIP reserved memory has address restriction so it is the static case. I
> would like to remove the dynamic allocation part and modify the
> description as following:
>
> - reg: required for DIP. The range must be between 0x00000400 and
>   0x100000000 due to the co-processor's addressing limitation.
>   The size must be 26MB. Please see reserved-memory.txt for the
>   detailed usage.

You can use dma-ranges to define addressing translations and
restrictions like this. That will in turn set the device's dma-mask to
ensure allocations are done in a region that is addressable.

But if you have a known, fixed size, then a carve out with
reserved-memory is fine.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
