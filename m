Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CC651E72FD
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 05:06:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3DmNdHcU7sFXrTcLi1sHCK8z/wYxSriyHyiW5gErInU=; b=ZCLD2dLuYfy9iT
	LFtz096UGJUjNmnkjqW8ZYhoNaIZxhGkNUJEz7uN1cuPT2yMKodBptOq8HWTmH9Y4LMlA5DvV19yA
	gk89YeiydyU6o03PeX2dbtnu1B5VUglH7UYrTEa0SwhjZX+BMZZu5eYBzTvcmPeQmzekHyjq9P+IL
	UvEtpJBlmkiUgFF3FL1JG5IAGevLPi0wF9iV18NAONkOdPcR1yf1b3XTlB61fckPMvQQEo6lGzQaQ
	/gQpCbtvlT9Ao8tWt4Q2lQEebPY/qHh5qFd5PP7VR+9QYVyXU0qk5Os03dCc1bB2bpYc0+jJK75YI
	TvJm+TMhpjdUgLC45KYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeVLa-0005tj-6I; Fri, 29 May 2020 03:06:14 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeVLR-0005tD-LL; Fri, 29 May 2020 03:06:07 +0000
X-UUID: b83c381d01c943a187c3c8655e72d7d3-20200528
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=2DSr7ykOqmhgi2+WieyVzdmY00Ec4k69EeBwPT4JtEE=; 
 b=tfLXq4IV/3yMKhXLcFLsUIHaTF17jMU6W6B+2m+z4rfmf4qzysh22b4OXgVvY+yRXIX/6mDPw6G7B2zgtT1wLzXhS1c8bNHtY/VJSSqp6V0rk7GjoY3sdS7AqThypoxdDVRuE2RS/JSG5myFwIT2b1VXk79AbouEQLf/5DD19No=;
X-UUID: b83c381d01c943a187c3c8655e72d7d3-20200528
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <ryder.lee@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 606231795; Thu, 28 May 2020 19:06:08 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 28 May 2020 20:05:59 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 29 May 2020 11:05:54 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Fri, 29 May 2020 11:05:58 +0800
Message-ID: <1590721559.23866.0.camel@mtkswgap22>
Subject: Re: [PATCH v2 0/4] Spilt PCIe node to comply with hardware design
From: Ryder Lee <ryder.lee@mediatek.com>
To: <chuanjia.liu@mediatek.com>
Date: Fri, 29 May 2020 11:05:59 +0800
In-Reply-To: <20200528061648.32078-1-chuanjia.liu@mediatek.com>
References: <20200528061648.32078-1-chuanjia.liu@mediatek.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_200605_707689_5C83419F 
X-CRM114-Status: GOOD (  12.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, lorenzo.pieralisi@arm.com,
 srv_heupstream@mediatek.com, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, jianjun.wang@mediatek.com, bhelgaas@google.com,
 robh+dt@kernel.org, linux-mediatek@lists.infradead.org, yong.wu@mediatek.com,
 matthias.bgg@gmail.com, linux-arm-kernel@lists.infradead.org,
 amurray@thegoodpenguin.co.uk
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 2020-05-28 at 14:16 +0800, chuanjia.liu@mediatek.com wrote:
> There are two independent PCIe controllers in MT2712/MT7622 platform,
> and each of them should contain an independent MSI domain.
> 
> In current architecture, MSI domain will be inherited from the root
> bridge, and all of the devices will share the same MSI domain.
> Hence that, the PCIe devices will not work properly if the irq number
> which required is more than 32.
> 
> Split the PCIe node for MT2712/MT7622 platform to fix MSI issue and
> comply with the hardware design.
> 
> change note:
> v2: change the allocation of mt2712 PCIe MMIO space due to the allcation
> size is not right in v1.
> 
> chuanjia.liu (4):
>   dt-bindings: PCI: Mediatek: Update PCIe binding
>   PCI: mediatek: Use regmap to get shared pcie-cfg base
>   arm64: dts: mediatek: Split PCIe node for MT2712/MT7622
>   ARM: dts: mediatek: Update mt7629 PCIe node
> 
>  .../bindings/pci/mediatek-pcie-cfg.yaml       |  38 +++++
>  .../devicetree/bindings/pci/mediatek-pcie.txt | 144 +++++++++++-------
>  arch/arm/boot/dts/mt7629-rfb.dts              |   3 +-
>  arch/arm/boot/dts/mt7629.dtsi                 |  23 +--
>  arch/arm64/boot/dts/mediatek/mt2712e.dtsi     |  75 +++++----
>  .../dts/mediatek/mt7622-bananapi-bpi-r64.dts  |  16 +-
>  arch/arm64/boot/dts/mediatek/mt7622-rfb1.dts  |   6 +-
>  arch/arm64/boot/dts/mediatek/mt7622.dtsi      |  68 ++++++---
>  drivers/pci/controller/pcie-mediatek.c        |  25 ++-
>  9 files changed, 258 insertions(+), 140 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/pci/mediatek-pcie-cfg.yaml
> 
> --
> 2.18.0
> 
> 
For the series:
Acked-by: Ryder Lee <ryder.lee@mediatek.com>
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
