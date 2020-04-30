Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F6951BF391
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 10:53:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t9SI25FJDfLTex5BUNxDtfMQB6NQGK5N/1OgpZtOf1A=; b=a//JBt6QoMOfIw
	9n1+s35lz1wkfl4HTZ2UYls349gUTRBHuaEhwHMOO9sQVVmvcURkYZRcQlyMZwu2quMTrKD1SP40m
	uYczmUSYyPYUQ+nRX42qQHIV0ZPJzHicAhqHNVoDc+G5GmaFjUvZP9vawQBV8ulxxmRmarkEixfqU
	B/fw1XGxu23zF5elcvE+GrYCV1wg+DXRWkZwKD+rrMOrIAKOKC1xoQAZX4LjnK+1Ojp2nBwWatS4x
	Qhf1JBMAOF7HVyOVhzu3dmcrdxmPrjIffC+e5R88mJUCizsZsNDqYC4K/6LJ6gJbYmbG2KaAPYLFp
	ZorZW5jkEp72w5yQiAVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU4wO-0003e0-Ns; Thu, 30 Apr 2020 08:53:08 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU4wC-0003ck-Qz; Thu, 30 Apr 2020 08:52:58 +0000
X-UUID: 50d981712e534e598780660e3cadc618-20200430
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=wmJJNzcR3k9GVE2jLM5Fa1SIp2IO4dqVkL3WED3AOeo=; 
 b=i/1K6zjNXZJi+oSRhdM8EvkjycK5IKRIg1T7ZY0DwPOjR4tamk41h6GExHbLrMGrBRzc2SrENvbF69goI6zafnOaWdiztrzBewaA7pg8kSC8aQfN7nDXF633Hkjc959YfOKr8KYTHBkOg9Pzd9GM0lS9pv5rr+6ya4DOV60YH6w=;
X-UUID: 50d981712e534e598780660e3cadc618-20200430
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <dongchun.zhu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1469614275; Thu, 30 Apr 2020 00:52:46 -0800
Received: from MTKMBS31N2.mediatek.inc (172.27.4.87) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 30 Apr 2020 01:43:26 -0700
Received: from MTKCAS32.mediatek.inc (172.27.4.184) by MTKMBS31N2.mediatek.inc
 (172.27.4.87) with Microsoft SMTP Server (TLS) id 15.0.1497.2;
 Thu, 30 Apr 2020 16:43:22 +0800
Received: from [10.17.3.153] (10.17.3.153) by MTKCAS32.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Thu, 30 Apr 2020 16:43:21 +0800
Message-ID: <1588236152.8804.88.camel@mhfsdcap03>
Subject: Re: [V4, 1/2] media: i2c: dw9768: Add DT support and MAINTAINERS entry
From: Dongchun Zhu <dongchun.zhu@mediatek.com>
To: Rob Herring <robh@kernel.org>
Date: Thu, 30 Apr 2020 16:42:32 +0800
In-Reply-To: <20200410172527.GA24529@bogus>
References: <20200330123634.363-1-dongchun.zhu@mediatek.com>
 <20200330123634.363-2-dongchun.zhu@mediatek.com>
 <20200410172527.GA24529@bogus>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: ECC204BF1CE98C25F6F81482310D100CC86CD6865F2FBC31D2991D5DB77265862000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_015256_874075_C64F90BA 
X-CRM114-Status: GOOD (  17.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, drinkcat@chromium.org,
 srv_heupstream@mediatek.com, shengnan.wang@mediatek.com,
 andriy.shevchenko@linux.intel.com, tfiga@chromium.org, louis.kuo@mediatek.com,
 sj.huang@mediatek.com, linux-mediatek@lists.infradead.org,
 sakari.ailus@linux.intel.com, matthias.bgg@gmail.com, bingbu.cao@intel.com,
 mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Rob,

Thanks for the review.

On Fri, 2020-04-10 at 12:25 -0500, Rob Herring wrote:
> On Mon, Mar 30, 2020 at 08:36:33PM +0800, Dongchun Zhu wrote:
> > This patch is to add the Devicetreee binding documentation and
> > MAINTAINERS entry for dw9768 actuator.
> > 
> > Signed-off-by: Dongchun Zhu <dongchun.zhu@mediatek.com>
> > ---
> >  .../bindings/media/i2c/dongwoon,dw9768.yaml        | 62 ++++++++++++++++++++++
> >  MAINTAINERS                                        |  7 +++
> >  2 files changed, 69 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/media/i2c/dongwoon,dw9768.yaml
> > 
> > diff --git a/Documentation/devicetree/bindings/media/i2c/dongwoon,dw9768.yaml b/Documentation/devicetree/bindings/media/i2c/dongwoon,dw9768.yaml
> > new file mode 100644
> > index 0000000..8a353dc
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/media/i2c/dongwoon,dw9768.yaml
> > @@ -0,0 +1,62 @@
> > +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> > +# Copyright (c) 2020 MediaTek Inc.
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/media/i2c/dongwoon,dw9768.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Dongwoon Anatech DW9768 Voice Coil Motor (VCM) Device Tree Bindings
> > +
> > +maintainers:
> > +  - Dongchun Zhu <dongchun.zhu@mediatek.com>
> > +
> > +description: |-
> > +  The Dongwoon DW9768 is a single 10-bit digital-to-analog (DAC) converter
> > +  with 100 mA output current sink capability. VCM current is controlled with
> > +  a linear mode driver. The DAC is controlled via a 2-wire (I2C-compatible)
> > +  serial interface that operates at clock rates up to 1MHz. This chip
> > +  integrates Advanced Actuator Control (AAC) technology and is intended for
> > +  driving voice coil lenses in camera modules.
> > +
> > +properties:
> > +  compatible:
> > +    const: dongwoon,dw9768
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  vin-supply:
> > +    description:
> > +      Definition of the regulator used as I2C I/O interface power supply.
> > +    maxItems: 1
> 
> You can drop this. *-supply is always a single entry.
> 

Fixed in next release.

> > +
> > +  vdd-supply:
> > +    description:
> > +      Definition of the regulator used as VCM chip power supply.
> > +    maxItems: 1
> 
> Same here.
> 

Fixed in next release.

> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - vin-supply
> > +  - vdd-supply
> > +
> > +additionalProperties: false
> > +
> > +examples:
> > +  - |
> > +    i2c2: i2c@11009000 {
> 
> i2c {
> 

Fixed in next release.

> > +        clock-frequency = <400000>;
> > +        #address-cells = <1>;
> > +        #size-cells = <0>;
> > +
> > +        dw9768: camera-lens@c {
> > +            compatible = "dongwoon,dw9768";
> > +            reg = <0x0c>;
> > +
> > +            vin-supply = <&mt6358_vcamio_reg>;
> > +            vdd-supply = <&mt6358_vcama2_reg>;
> > +        };
> > +    };
> > +
> > +...
> > diff --git a/MAINTAINERS b/MAINTAINERS
> > index 38fe2f3..5e124d2 100644
> > --- a/MAINTAINERS
> > +++ b/MAINTAINERS
> > @@ -5134,6 +5134,13 @@ S:	Maintained
> >  F:	drivers/media/i2c/dw9714.c
> >  F:	Documentation/devicetree/bindings/media/i2c/dongwoon,dw9714.txt
> >  
> > +DONGWOON DW9768 LENS VOICE COIL DRIVER
> > +M:	Dongchun Zhu <dongchun.zhu@mediatek.com>
> > +L:	linux-media@vger.kernel.org
> > +S:	Maintained
> > +T:	git git://linuxtv.org/media_tree.git
> > +F:	Documentation/devicetree/bindings/media/i2c/dongwoon,dw9768.yaml
> > +
> >  DONGWOON DW9807 LENS VOICE COIL DRIVER
> >  M:	Sakari Ailus <sakari.ailus@linux.intel.com>
> >  L:	linux-media@vger.kernel.org
> > -- 
> > 2.9.2

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
