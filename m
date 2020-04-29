Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B07A1BD357
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 06:03:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/rtdtgPOVCsvhocMcawvb4DcvplCTFW7AteYZhLtco0=; b=BEO2E1HFvwQ2YK
	X0dEIVvp+PNyhE9dsXzjqwnE0S30PRbTbPF7LQyHkKQRJ84BkxHxwYBilJe5Lk/J2Kz6yRerUV3B7
	6fooiMteICM4fhoyhfo6/LDQ9zU4TZ8CWqNIADaaBCUa55n6sJq8phHM+uZqEivWMPUT6ucp8N/TO
	uSuDzcSOnkHf/0udz7JLdEKhJB6MQnSAKLhAEY+1zJzElkHn9Tu8tyxDy/yB1EIIDRIaC+rI7qT4r
	Dlm6fUVpZg1vO1tJat12nVrEQWfvD3fp1c9qGEUmZfxPJ+bVvA4/zycnjmIznF1X4NYBb30PTeBhh
	aaNJO1Y4Jz+/K/KzE86A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTdwP-000068-Uq; Wed, 29 Apr 2020 04:03:22 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTdwH-0008WN-1U; Wed, 29 Apr 2020 04:03:15 +0000
X-UUID: 005e0d44e81b4616a6157b1a9dc4df99-20200428
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=OiZgzIWXliTigMWS4ngHmC2XsFCzxE9JvxbFZlR5Y5A=; 
 b=pum+Q+O5Zp2uxHclGYj9cXsT8SoFWIVRHAE44jy8rMaHtkwvzjTDHCVLKwZDxTSDb9/VXfQbXXqfMb/sFnS8IwTzQxOfFEMzLMCCbzxrLdhCmoEpAwYW4XAhWRMBQea5tVJnzld4V7EYuEZkaxp8o5jG722jRxyzcdvLg8/vvIA=;
X-UUID: 005e0d44e81b4616a6157b1a9dc4df99-20200428
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <eastl.lee@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1179775788; Tue, 28 Apr 2020 20:03:09 -0800
Received: from MTKMBS01N2.mediatek.inc (172.21.101.79) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Tue, 28 Apr 2020 20:53:04 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs01n2.mediatek.inc (172.21.101.79) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Wed, 29 Apr 2020 11:53:03 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Wed, 29 Apr 2020 11:53:02 +0800
Message-ID: <1588132383.16498.2.camel@mtkswgap22>
Subject: Re: [PATCH v3 1/2] dt-bindings: dmaengine: Add MediaTek
 Command-Queue DMA controller bindings
From: EastL <EastL.Lee@mediatek.com>
To: Rob Herring <robh@kernel.org>
Date: Wed, 29 Apr 2020 11:53:03 +0800
In-Reply-To: <1588125274311004.11906.seg@mailgw02.mediatek.com>
References: <1587955977-17207-1-git-send-email-EastL.Lee@mediatek.com>
 <1587955977-17207-2-git-send-email-EastL.Lee@mediatek.com>
 <1588125274311004.11906.seg@mailgw02.mediatek.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-TM-SNTS-SMTP: EA5880C4AA2B61D894C249225ED43DB19CC852CE1078F1987B00AF67E97FC2DB2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_210313_215592_1E3A59F3 
X-CRM114-Status: GOOD (  10.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, wsd_upstream@mediatek.com,
 Sean Wang <sean.wang@mediatek.com>, linux-kernel@vger.kernel.org,
 dmaengine@vger.kernel.org, vkoul@kernel.org, robh+dt@kernel.org,
 linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 2020-04-27 at 16:32 -0500, Rob Herring wrote:
> On Mon, 27 Apr 2020 10:52:56 +0800, EastL wrote:
> > Document the devicetree bindings for MediaTek Command-Queue DMA controller
> > which could be found on MT6779 SoC or other similar Mediatek SoCs.
> > 
> > Signed-off-by: EastL <EastL.Lee@mediatek.com>
> > ---
> >  .../devicetree/bindings/dma/mtk-cqdma.yaml         | 98 ++++++++++++++++++++++
> >  1 file changed, 98 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/dma/mtk-cqdma.yaml
> > 
> 
> My bot found errors running 'make dt_binding_check' on your patch:
> 
> /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/dma/mtk-cqdma.example.dt.yaml: dma-controller@10212000: interrupts: [[0, 139, 8], [0, 140, 8], [0, 141, 8]] is too short
> /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/dma/mtk-cqdma.example.dt.yaml: dma-controller@10212000: reg: [[0, 270606336, 0, 128], [0, 270606464, 0, 128], [0, 270606592, 0, 128]] is too short
> 
> See https://patchwork.ozlabs.org/patch/1277292
> 
> If you already ran 'make dt_binding_check' and didn't see the above
> error(s), then make sure dt-schema is up to date:
> 
> pip3 install git+https://github.com/devicetree-org/dt-schema.git@master --upgrade
> 
> Please check and re-submit.

OK, I'll fix it in next version.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
