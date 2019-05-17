Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3660D22034
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 18 May 2019 00:23:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MvrAc/iFHdEvE/5PhxG/en3pALUoByQR08BqbtZfl1w=; b=bSWsu8XpJTHc27
	GBeCuIPloREJaEu7Qpyffo7R+Kn8VLacJutmGimx/tJHkRvxdTF2tssEdAG37blBETcxL4DGpkWZJ
	SFCnUzgBZLab2HW1LxAklDbk1cBn7BB2+cEbjozYD1e8Q4njOdw5fhJExENp3Qj1Zq4ehFQLx30wU
	rESddfxq4h1YRikMBuBGmfVRFfbrJ/KuvyBLkdIx2J/5xvoUv3f7GCS2Eikhljm879ADVo5D3Pzip
	Z7wMWr6UhRbo5ghqnsLDuNKU5u8uQDgdpoHeURF2yxFmBuxySwxt3prb4ydOjKUYHZBVvEKJZYkQr
	noZOwsvmJ9qVwSgKxnnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRlFm-0003H2-3x; Fri, 17 May 2019 22:23:02 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRlFe-0003GM-4Q; Fri, 17 May 2019 22:22:55 +0000
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com
 [209.85.160.176])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6DD2221734;
 Fri, 17 May 2019 22:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558131773;
 bh=wy3tUZPJTfjLA6B2iSkaBZEFlBpyvFUKCy44GXr0yjI=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=1H8AXHsM/HDg4uE/AoRizeknctHuF4pbibpUykeWsjQrOTs0uwSaNYbA+O6l/2Xs9
 Ov6lBU00JS8+Tb8R+N/06VtXt0SHNrz52/TeDKk0D6sLF58BZTsWtnjdtblWRqqJie
 R2I4HibvqDOpWRkqITAOovENVOXUYTjn/z18L03w=
Received: by mail-qt1-f176.google.com with SMTP id a39so9865366qtk.2;
 Fri, 17 May 2019 15:22:53 -0700 (PDT)
X-Gm-Message-State: APjAAAUgI1Cjd//dHdytBYN1z9YtyRZGBuTn+zNba3nVfiQY0E9EQh/k
 SUW0LArd8kS/vc4qQlOwOBIco2X1Eyd4JzeOCQ==
X-Google-Smtp-Source: APXvYqxCG14RTMkHi4AFjCOBJ2jDfMBdP6IR9Yo55aGoXHKbHkWK52ZrzIrGRx1VvIDs46fF56pwC87n9mQ89Qff9Qc=
X-Received: by 2002:a0c:f350:: with SMTP id e16mr48812969qvm.72.1558131772630; 
 Fri, 17 May 2019 15:22:52 -0700 (PDT)
MIME-Version: 1.0
References: <20190417104511.21514-1-frederic.chen@mediatek.com>
 <20190417104511.21514-2-frederic.chen@mediatek.com>
 <20190430011506.GA8514@bogus>
 <1557238925.11663.21.camel@mtksdccf07>
 <CAL_JsqKGW9WqyNgqKD0MxsqxYHKZ+VNV5A2p+neGqwmKmiODOQ@mail.gmail.com>
 <CAAFQd5BVWjcxp9Tia9Pmgn_54bc9n5Vs1s__G7YWHiezfVVYpA@mail.gmail.com>
In-Reply-To: <CAAFQd5BVWjcxp9Tia9Pmgn_54bc9n5Vs1s__G7YWHiezfVVYpA@mail.gmail.com>
From: Rob Herring <robh@kernel.org>
Date: Fri, 17 May 2019 17:22:41 -0500
X-Gmail-Original-Message-ID: <CAL_Jsq+hcgth5gT4gCKPiWtFvje8eOHFs1PxtkHJ6Raj8TOw3w@mail.gmail.com>
Message-ID: <CAL_Jsq+hcgth5gT4gCKPiWtFvje8eOHFs1PxtkHJ6Raj8TOw3w@mail.gmail.com>
Subject: Re: [RFC PATCH V1 1/6] dt-bindings: mt8183: Add binding for DIP
 shared memory
To: Tomasz Figa <tfiga@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_152254_207902_C667C64E 
X-CRM114-Status: GOOD (  33.61  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Shik Chen <shik@chromium.org>, devicetree@vger.kernel.org,
 =?UTF-8?B?U2VhbiBDaGVuZyAo6YSt5piH5byYKQ==?= <Sean.Cheng@mediatek.com>,
 Frederic Chen <frederic.chen@mediatek.com>,
 =?UTF-8?B?UnlubiBXdSAo5ZCz6IKy5oGpKQ==?= <Rynn.Wu@mediatek.com>,
 =?UTF-8?B?Q2hyaXN0aWUgWXUgKOa4uOmbheaDoCk=?= <christie.yu@mediatek.com>,
 srv_heupstream <srv_heupstream@mediatek.com>,
 =?UTF-8?B?SG9sbWVzIENoaW91ICjpgrHmjLop?= <holmes.chiou@mediatek.com>,
 suleiman@chromium.org, Jerry-ch Chen <Jerry-ch.Chen@mediatek.com>,
 yuzhao@chromium.org,
 =?UTF-8?B?SnVuZ28gTGluICjmnpfmmI7kv4op?= <jungo.lin@mediatek.com>,
 Sj Huang <sj.huang@mediatek.com>,
 Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
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

On Thu, May 16, 2019 at 1:12 AM Tomasz Figa <tfiga@chromium.org> wrote:
>
> On Wed, May 15, 2019 at 1:19 AM Rob Herring <robh@kernel.org> wrote:
> >
> > On Tue, May 7, 2019 at 9:22 AM Frederic Chen <frederic.chen@mediatek.com> wrote:
> > >
> > > Dear Rob,
> > >
> > > I appreciate your comments.
> > >
> > > On Mon, 2019-04-29 at 20:15 -0500, Rob Herring wrote:
> > > > On Wed, Apr 17, 2019 at 06:45:06PM +0800, Frederic Chen wrote:
> > > > > This patch adds the binding for describing the shared memory
> > > > > used to exchange configuration and tuning data between the
> > > > > co-processor and Digital Image Processing (DIP) unit of the
> > > > > camera ISP system on Mediatek SoCs.
> > > > >
> > > > > Signed-off-by: Frederic Chen <frederic.chen@mediatek.com>
> > > > > ---
> > > > >  .../mediatek,reserve-memory-dip_smem.txt      | 45 +++++++++++++++++++
> > > > >  1 file changed, 45 insertions(+)
> > > > >  create mode 100644 Documentation/devicetree/bindings/reserved-memory/mediatek,reserve-memory-dip_smem.txt
> > > > >
> > > > > diff --git a/Documentation/devicetree/bindings/reserved-memory/mediatek,reserve-memory-dip_smem.txt b/Documentation/devicetree/bindings/reserved-memory/mediatek,reserve-memory-dip_smem.txt
> > > > > new file mode 100644
> > > > > index 000000000000..64c001b476b9
> > > > > --- /dev/null
> > > > > +++ b/Documentation/devicetree/bindings/reserved-memory/mediatek,reserve-memory-dip_smem.txt
> > > > > @@ -0,0 +1,45 @@
> > > > > +Mediatek DIP Shared Memory binding
> > > > > +
> > > > > +This binding describes the shared memory, which serves the purpose of
> > > > > +describing the shared memory region used to exchange data between Digital
> > > > > +Image Processing (DIP) and co-processor in Mediatek SoCs.
> > > > > +
> > > > > +The co-processor doesn't have the iommu so we need to use the physical
> > > > > +address to access the shared buffer in the firmware.
> > > > > +
> > > > > +The Digital Image Processing (DIP) can access memory through mt8183 IOMMU so
> > > > > +it can use dma address to access the memory region.
> > > > > +(See iommu/mediatek,iommu.txt for the detailed description of Mediatek IOMMU)
> > > > > +
> > > > > +
> > > > > +Required properties:
> > > > > +
> > > > > +- compatible: must be "mediatek,reserve-memory-dip_smem"
> > > >
> > > > Don't use '_'.
> > >
> > > I got it. I will use "mediatek,reserve-memory-dip-smem" instead in next
> > > version of the patch
> > >
> > > >
> > > > > +
> > > > > +- reg: required for static allocation (see reserved-memory.txt for
> > > > > +  the detailed usage)
> > > > > +
> > > > > +- alloc-range: required for dynamic allocation. The range must
> > > > > +  between 0x00000400 and 0x100000000 due to the co-processer's
> > > > > +  addressing limitation
> > > >
> > > > Generally, you should pick either static or dynamic allocation for a
> > > > given binding. Static if there's some address restriction or sharing,
> > > > dynamic if not.
> > > >
> > > > Sounds like static in this case.
> > > >
> > >
> > > DIP reserved memory has address restriction so it is the static case. I
> > > would like to remove the dynamic allocation part and modify the
> > > description as following:
> > >
> > > - reg: required for DIP. The range must be between 0x00000400 and
> > >   0x100000000 due to the co-processor's addressing limitation.
> > >   The size must be 26MB. Please see reserved-memory.txt for the
> > >   detailed usage.
> >
> > You can use dma-ranges to define addressing translations and
> > restrictions like this. That will in turn set the device's dma-mask to
> > ensure allocations are done in a region that is addressable.
> >
> > But if you have a known, fixed size, then a carve out with
> > reserved-memory is fine.
>
> There is also another aspect here. The coprocessor that we're
> allocating the memory for is behind an MPU that must be programmed
> completely in one go and locked for security reasons to ensure that
> the coprocessor itself doesn't rewrite the MPU settings. That means
> that we need to have all the allocations completed before booting that
> coprocessor.
>
> To be honest, I'd adopt a completely different design here.
>
> We're going to have a driver for that coprocessor (SCP) and IMHO any
> shared memory areas should belong to it. Then, any specific drivers
> talking to the firmware running on SCP should ask the SCP driver to
> allocate some memory from its fixed pool. WDYT?

That's more than just an address restriction, so yeah, use a
reserved-memory area.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
