Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DB1A1A44F0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Apr 2020 12:04:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dkWwjEeOknLVPSlvqDwh0jI7D9FbsiCEvQo2hDzFnW0=; b=XV5aryqMYad551
	6EqOx0/GNBfcQO3dSnUzwbUy2ZHT2cQuO6YNOQP8rtXrn0Sh6zWHq2nDdM7OdFMTb53vgawJPjean
	7k3KkcxkadFbDbi/gZGrEA2gEgh0qQbYY75M0+8uCdgENFoMpYMyOffyetuknyHISsvKQXE4KSyo7
	VGbzNnqQsnnQgkaCtvkyBxwnvZkISsr4ZCvduooZDBNvm0yBbflRS+aoBqgBHlylxsBVBjZzDJ4Zv
	d6LfAVTKjNRs0nDOZbSGs0LYHvZp4sRmN0YYOQxDzeclqy6ol2UCG+4vvDKl9wUgHNyV+3qEBauVn
	M+BdpLs1SF6uytNAI49w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMqWb-00014r-L8; Fri, 10 Apr 2020 10:04:37 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMqWU-000142-4n; Fri, 10 Apr 2020 10:04:31 +0000
X-UUID: fdc4bdce13624c07a238dab9f1b508fe-20200410
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=LeSP52FTso2EkwLO6QyHaBzAPIfPN+/Ucz6epX0Z0us=; 
 b=B0kuxl4RBQLZM50E9DWv8vwfSIwW4Xm8b5HYUtNwuNGD+LL1x9IhXmmA6yL2u42TfNEDQ3YBXmM9Y+DRcoJ/o3dRYo/ZpAUuiUjhI6x3hsXjTUyTXk+TtKzCDOkGOhDOduShZpkhXImZqnYuo0wQlC4eXwMiAecvNAyDqPm3JB0=;
X-UUID: fdc4bdce13624c07a238dab9f1b508fe-20200410
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <jungo.lin@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1783671136; Fri, 10 Apr 2020 02:04:11 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 10 Apr 2020 03:04:17 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 10 Apr 2020 18:04:15 +0800
Received: from [172.21.84.99] (172.21.84.99) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Fri, 10 Apr 2020 18:04:14 +0800
Message-ID: <1586513057.8406.101.camel@mtksdccf07>
Subject: Re: [v6, 1/5] media: dt-bindings: mt8183: Added camera ISP Pass 1
From: Jungo Lin <jungo.lin@mediatek.com>
To: Helen Koike <helen.koike@collabora.com>
Date: Fri, 10 Apr 2020 18:04:17 +0800
In-Reply-To: <77afc8e7-26b8-471d-0ec0-c77a9c379433@collabora.com>
References: <Jungo Lin <jungo.lin@mediatek.com>
 <20191219054930.29513-1-jungo.lin@mediatek.com>
 <20191219054930.29513-2-jungo.lin@mediatek.com>
 <77afc8e7-26b8-471d-0ec0-c77a9c379433@collabora.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200410_030430_188894_EDCE3850 
X-CRM114-Status: GOOD (  22.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
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
Cc: ryan.yu@mediatek.com, frankie.chiu@mediatek.com,
 laurent.pinchart@ideasonboard.com, robh@kernel.org, Rynn.Wu@mediatek.com,
 suleiman@chromium.org, Jerry-ch.Chen@mediatek.com, frederic.chen@mediatek.com,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 hverkuil-cisco@xs4all.nl, sj.huang@mediatek.com, yuzhao@chromium.org,
 linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, Sean.Cheng@mediatek.com,
 srv_heupstream@mediatek.com, shik@chromium.org, tfiga@chromium.org,
 zwisler@chromium.org, ddavenport@chromium.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Helen:

Thanks for your comment.

On Tue, 2020-03-31 at 12:34 -0300, Helen Koike wrote:
> Hi Jungo,
> 
> On 12/19/19 3:49 AM, Jungo Lin wrote:
> > This patch adds DT binding document for the Pass 1 (P1) unit
> > in Mediatek's camera ISP system. The Pass 1 unit grabs the sensor
> > data out from the sensor interface, applies ISP image effects
> > from tuning data and outputs the image data or statistics data to DRAM.
> > 
> > Reviewed-by: Rob Herring <robh@kernel.org>
> > Signed-off-by: Jungo Lin <jungo.lin@mediatek.com>
> > ---
> > Changes from v6:
> >  - Add port node description in the dt-binding document.
> > ---
> >  .../bindings/media/mediatek,camisp.txt        | 83 +++++++++++++++++++
> 
> It would be really nice to convert this to yaml.
> 
> For reference: https://lwn.net/Articles/771621/
> 
> Regards,
> Helen
> 

We will plan to covert txt to yaml.
Hopefully, we could overcome the learning cue of yaml.

Thanks,

Jungo

> >  1 file changed, 83 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/media/mediatek,camisp.txt
> > 
> > diff --git a/Documentation/devicetree/bindings/media/mediatek,camisp.txt b/Documentation/devicetree/bindings/media/mediatek,camisp.txt
> > new file mode 100644
> > index 000000000000..a85f37c0b87d
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/media/mediatek,camisp.txt
> > @@ -0,0 +1,83 @@
> > +* Mediatek Image Signal Processor Pass 1 (ISP P1)
> > +
> > +The Pass 1 unit of Mediatek's camera ISP system grabs the sensor data out
> > +from the sensor interface, applies ISP effects from tuning data and outputs
> > +the image data and statistics data to DRAM. Furthermore, Pass 1 unit has
> > +the ability to output two different resolutions frames at the same time to
> > +increase the performance of the camera application.
> > +
> > +Required properties:
> > +- compatible: Must be "mediatek,mt8183-camisp" for MT8183.
> > +- reg: Physical base address of the camera function block register and
> > +  length of memory mapped region. Must contain an entry for each entry
> > +  in reg-names.
> > +- reg-names: Must include the following entries:
> > +  "cam_sys": Camera base function block
> > +  "cam_uni": Camera UNI function block
> > +  "cam_a": Camera ISP P1 hardware unit A
> > +  "cam_b": Camera ISP P1 hardware unit B
> > +  "cam_c": Camera ISP P1 hardware unit C
> > +- interrupts: Must contain an entry for each entry in interrupt-names.
> > +- interrupt-names : Must include the following entries:
> > +  "cam_uni": Camera UNI interrupt
> > +  "cam_a": Camera unit A interrupt
> > +  "cam_b": Camera unit B interrupt
> > +  "cam_c": Camera unit C interrupt
> > +- iommus: Shall point to the respective IOMMU block with master port
> > +  as argument, see Documentation/devicetree/bindings/iommu/mediatek,iommu.txt
> > +  for details.
> > +- clocks: A list of phandle and clock specifier pairs as listed
> > +  in clock-names property, see
> > +  Documentation/devicetree/bindings/clock/clock-bindings.txt for details.
> > +- clock-names: Must be "camsys_cam_cgpdn" and "camsys_camtg_cgpdn".
> > +- mediatek,larb: Must contain the local arbiters in the current SoCs, see
> > +  Documentation/devicetree/bindings/memory-controllers/mediatek,smi-larb.txt
> > +  for details.
> > +- power-domains: a phandle to the power domain, see
> > +  Documentation/devicetree/bindings/power/power_domain.txt for details.
> > +- mediatek,scp: The node of system control processor (SCP), see
> > +  Documentation/devicetree/bindings/remoteproc/mtk,scp.txt for details.
> > +- port: child port node corresponding to the data input, in accordance with
> > +  the video interface bindings defined in
> > +  Documentation/devicetree/bindings/media/video-interfaces.txt. The port
> > +  node must contain at least one endpoint.
> > +
> > +Example:
> > +SoC specific DT entry:
> > +
> > +	camisp: camisp@1a000000 {
> > +		compatible = "mediatek,mt8183-camisp";
> > +		reg = <0 0x1a000000 0 0x1000>,
> > +				<0 0x1a003000 0 0x1000>,
> > +				<0 0x1a004000 0 0x2000>,
> > +				<0 0x1a006000 0 0x2000>,
> > +				<0 0x1a008000 0 0x2000>;
> > +		reg-names = "cam_sys",
> > +				"cam_uni",
> > +				"cam_a",
> > +				"cam_b",
> > +				"cam_c";
> > +		interrupts = <GIC_SPI 253 IRQ_TYPE_LEVEL_LOW>,
> > +				<GIC_SPI 254 IRQ_TYPE_LEVEL_LOW>,
> > +				<GIC_SPI 255 IRQ_TYPE_LEVEL_LOW>,
> > +				<GIC_SPI 256 IRQ_TYPE_LEVEL_LOW>;
> > +		interrupt-names = "cam_uni",
> > +				"cam_a",
> > +				"cam_b",
> > +				"cam_c";
> > +		iommus = <&iommu M4U_PORT_CAM_IMGO>;
> > +		clocks = <&camsys CLK_CAM_CAM>,
> > +				<&camsys CLK_CAM_CAMTG>;
> > +		clock-names = "camsys_cam_cgpdn",
> > +				"camsys_camtg_cgpdn";
> > +		mediatek,larb = <&larb3>,
> > +				<&larb6>;
> > +		power-domains = <&scpsys MT8183_POWER_DOMAIN_CAM>;
> > +		mediatek,scp = <&scp>;
> > +
> > +		port {
> > +			camisp_endpoint: endpoint {
> > +				remote-endpoint = <&seninf_camisp_endpoint>;
> > +			};
> > +		};
> > +	};
> > 
> 
> _______________________________________________
> Linux-mediatek mailing list
> Linux-mediatek@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-mediatek

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
