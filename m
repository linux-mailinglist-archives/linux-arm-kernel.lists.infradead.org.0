Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CAA441D8E19
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 05:12:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rznZPcxdGva1gMV0YiigLS9Y8PzptQqy1HnjdfRfWDM=; b=bRREIuk1sLKEbg
	xpj7TNO1E3zILR7cLwT+nAbfUKF4MyfftRR/10PHTfFtGDBxTejEqwL2XFaRsuW2zfvDit3WaLUsG
	1+oF1dOaPcAKqRu4SKDFtDlvfjG5Eahc/Fs6a0UH8z1UNzo6FmkUFLWXnTsEBGdRhd+NpWyWwB1QA
	ypfu7z5MlYueMZO6V6GjFtDlmExmnhlk+9HuKBWyG/389OBgEEDNde5RmA0RJvMm+CjUESJcC6pZu
	pDrJi0nlgLB86FuC9q8fNxhTHM2Z5hvaQxilyHiI/qVME0ttmhldpQzpQTO8Zg3za+z4rWCsIjxGh
	DHP4N3makMFZRTSGpsdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jasgB-00029x-Vz; Tue, 19 May 2020 03:12:32 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jasfz-00028j-Ba; Tue, 19 May 2020 03:12:22 +0000
X-UUID: b889564de63b4083ac0bfc008d8a26d4-20200518
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=r8eGAgqgE0pJRDFIe1Bekk6atwC/VS0Nd4EW/+LDtrk=; 
 b=F8dSsK/7FlMDsw7B1Znb8w/TMPhbawPSg+hm71SluQmc2fMPKkv+SAlo2MlXQBEos8kZxNw+jsUMjqkZyan0956GhRNEXZ3daEgYhHtA0DZ/lFRzmb3sXixMu6qXJOp5C7+YcwQlYVuaMJpakcX/DFyyvHR7BzvigU/9TwlyQF8=;
X-UUID: b889564de63b4083ac0bfc008d8a26d4-20200518
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <dongchun.zhu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 792296670; Mon, 18 May 2020 19:11:37 -0800
Received: from MTKMBS31DR.mediatek.inc (172.27.6.102) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Mon, 18 May 2020 20:12:12 -0700
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by MTKMBS31DR.mediatek.inc
 (172.27.6.102) with Microsoft SMTP Server (TLS) id 15.0.1497.2;
 Tue, 19 May 2020 11:12:09 +0800
Received: from [10.17.3.153] (10.17.3.153) by MTKCAS36.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Tue, 19 May 2020 11:12:08 +0800
Message-ID: <1589857839.8804.368.camel@mhfsdcap03>
Subject: Re: [V6, 1/2] media: dt-bindings: media: i2c: Document DW9768 bindings
From: Dongchun Zhu <dongchun.zhu@mediatek.com>
To: Rob Herring <robh@kernel.org>
Date: Tue, 19 May 2020 11:10:39 +0800
In-Reply-To: <20200518143148.GA18032@bogus>
References: <20200518132731.20855-1-dongchun.zhu@mediatek.com>
 <20200518132731.20855-2-dongchun.zhu@mediatek.com>
 <CAAFQd5Byvc8Fb0f3_81xSKsuyvsQJm-8g8y1Kx2aUcC=PwpS7w@mail.gmail.com>
 <20200518143148.GA18032@bogus>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 10BF97F5F2B8C09090C06F8889D22CE821A519C8A6B26C57BE0218C418F075C12000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_201220_219195_53970B24 
X-CRM114-Status: GOOD (  24.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
 linux-devicetree <devicetree@vger.kernel.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Louis Kuo <louis.kuo@mediatek.com>,
 srv_heupstream <srv_heupstream@mediatek.com>,
 Linus Walleij <linus.walleij@linaro.org>, Shengnan
 Wang =?UTF-8?Q?=28=E7=8E=8B=E5=9C=A3=E7=94=B7=29?=
 <shengnan.wang@mediatek.com>, Tomasz Figa <tfiga@chromium.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Sj Huang <sj.huang@mediatek.com>, Nicolas Boichat <drinkcat@chromium.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Cao Bing
 Bu <bingbu.cao@intel.com>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 "list@263.net:IOMMU DRIVERS
 <iommu@lists.linux-foundation.org>, Joerg  Roedel <joro@8bytes.org>,
 " <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Tomasz, Rob,

Thanks for the timely review and good suggestions.

On Mon, 2020-05-18 at 08:31 -0600, Rob Herring wrote:
> On Mon, May 18, 2020 at 04:12:28PM +0200, Tomasz Figa wrote:
> > Hi Dongchun,
> > 
> > On Mon, May 18, 2020 at 3:29 PM Dongchun Zhu <dongchun.zhu@mediatek.com> wrote:
> > >
> > > Add DeviceTree binding documentation for Dongwoon Anatech DW9768 voice
> > > coil actuator.
> > 
> > Thanks for the patch. Please see my comments below.
> > 
> > >
> > > Signed-off-by: Dongchun Zhu <dongchun.zhu@mediatek.com>
> > > Reviewed-by: Rob Herring <robh@kernel.org>
> > 
> > This version includes significant changes, so the reviewed-by tag
> > shouldn't have been carried out.
> > 

Sorry, this is my fault.
In fact, I've struggled with it at the beginning.
Yes, you are right.
Now the new version of patch-set includes huge changes relative to the
last edition.
It would be removed in next release.

> > > ---
> > >  .../bindings/media/i2c/dongwoon,dw9768.yaml        | 105 +++++++++++++++++++++
> > >  MAINTAINERS                                        |   7 ++
> > >  2 files changed, 112 insertions(+)
> > >  create mode 100644 Documentation/devicetree/bindings/media/i2c/dongwoon,dw9768.yaml
> > >
> > > diff --git a/Documentation/devicetree/bindings/media/i2c/dongwoon,dw9768.yaml b/Documentation/devicetree/bindings/media/i2c/dongwoon,dw9768.yaml
> > > new file mode 100644
> > > index 0000000..b909e83
> > > --- /dev/null
> > > +++ b/Documentation/devicetree/bindings/media/i2c/dongwoon,dw9768.yaml
> > > @@ -0,0 +1,105 @@
> > > +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> > > +# Copyright (c) 2020 MediaTek Inc.
> > > +%YAML 1.2
> > > +---
> > > +$id: http://devicetree.org/schemas/media/i2c/dongwoon,dw9768.yaml#
> > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > +
> > > +title: Dongwoon Anatech DW9768 Voice Coil Motor (VCM) Lens Device Tree Bindings
> > > +
> > > +maintainers:
> > > +  - Dongchun Zhu <dongchun.zhu@mediatek.com>
> > > +
> > > +description: |-
> > > +  The Dongwoon DW9768 is a single 10-bit digital-to-analog (DAC) converter
> > > +  with 100 mA output current sink capability. VCM current is controlled with
> > > +  a linear mode driver. The DAC is controlled via a 2-wire (I2C-compatible)
> > > +  serial interface that operates at clock rates up to 1MHz. This chip
> > > +  integrates Advanced Actuator Control (AAC) technology and is intended for
> > > +  driving voice coil lenses in camera modules.
> > > +
> > > +properties:
> > > +  compatible:
> > > +    enum:
> > > +      # for DW9768 VCM
> > > +      - dongwoon,dw9768
> > > +      # for GT9769 VCM
> > > +      - giantec,gt9769
> > > +
> > > +  reg:
> > > +    maxItems: 1
> > > +
> > > +  vin-supply:
> > > +    description:
> > > +      Definition of the regulator used as I2C I/O interface power supply.
> > > +
> > > +  vdd-supply:
> > > +    description:
> > > +      Definition of the regulator used as VCM chip power supply.
> > > +
> > > +  dongwoon,aac-mode:
> > > +    description:
> > > +      Indication of AAC mode select.
> > > +    allOf:
> > > +      - $ref: "/schemas/types.yaml#/definitions/uint32"
> > > +      - enum:
> > > +          - 0    #  Direct (default)
> 
> Default can be expressed as 'default: 0'.
> 

Thanks for the reminder.
Next release I'd try to write DT property "dongwoon,aac-mode" like this:
dongwoon,aac-mode:
  description:
    Indication of AAC mode select.
  allOf:
    - $ref: "/schemas/types.yaml#/definitions/uint32"
    - enum:
        - 0  # Direct
        - 1  # AAC2 (operation time# 0.48 x Tvib)
        - 2  # AAC3 (operation time# 0.70 x Tvib)
        - 3  # AAC4 (operation time# 0.75 x Tvib)
        - 5  # AAC8 (operation time# 1.13 x Tvib)
      default: 0

> > > +          - 1    #  AAC2 (operation time# 0.48 x Tvib)
> > > +          - 2    #  AAC3 (operation time# 0.70 x Tvib)
> > > +          - 3    #  AAC4 (operation time# 0.75 x Tvib)
> > > +          - 4    #  Reserved
> > > +          - 5    #  AAC8 (operation time# 1.13 x Tvib)
> > > +          - 6    #  Reserved
> > > +          - 7    #  Reserved
> > 
> > I'll ultimately leave it to DT maintainers, but is there any reason to
> > define the reserved values?
> 
> No.
> 
> > 
> > > +
> > > +  dongwoon,aac-timing:
> > > +    description:
> > > +      Indication of AAC Timing count, unit of 0.1 milliseconds.
> 
> Why not just use standard units (-us)?
> 

That sounds nice.
I'd re-write the description like this in next release:
dongwoon,aac-timing:
  description:
    Number of AAC Timing count that controlled by one 6-bit period
    of vibration register AACT[5:0], the unit of which is 100us.
  allOf:
    - $ref: "/schemas/types.yaml#/definitions/uint32"
    - minimum: 0x00
    - maximum: 0x3F
    - default: 0x20

> > > +      Valid values vary from 0 to 63 (default 32).
> 
> Looks like constraints.
> 

Yes. This property is controlled by one 6-bit reg.
So here we need to constrain the data set to a narrow range.

> > > +    allOf:
> > > +      - $ref: "/schemas/types.yaml#/definitions/uint32"
> > > +
> > > +  dongwoon,clock-dividing-rate:
> > > +    description:
> > > +      Indication of VCM internal clock dividing rate select, as one multiple
> > > +      factor to calculate VCM ring periodic time Tvib.
> > > +    allOf:
> > > +      - $ref: "/schemas/types.yaml#/definitions/uint32"
> > > +      - enum:
> > > +          - 0    #  Dividing Rate -  2
> > > +          - 1    #  Dividing Rate -  1 (default)
> > > +          - 2    #  Dividing Rate -  1/2
> > > +          - 3    #  Dividing Rate -  1/4
> > > +          - 4    #  Dividing Rate -  8
> > > +          - 5    #  Dividing Rate -  4
> > > +          - 6    #  Dividing Rate -  Reserved
> > > +          - 7    #  Dividing Rate -  Reserved
> > 
> > Ditto.
> > 

Thanks for kindly reminder.
Reserved values would be removed in next release.
Like this:
dongwoon,clock-dividing-rate:
  description:
    Indication of VCM internal clock dividing rate select, as one    
    multiplier to calculate VCM ring periodic time Tvib.
  allOf:
    - $ref: "/schemas/types.yaml#/definitions/uint32"
    - enum:
        - 0   #  Dividing Rate -  2
        - 1   #  Dividing Rate -  1
        - 2    #  Dividing Rate -  1/2
        - 3    #  Dividing Rate -  1/4
        - 4    #  Dividing Rate -  8
        - 5    #  Dividing Rate -  4
      default: 1

> > Best regards,
> > Tomasz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
