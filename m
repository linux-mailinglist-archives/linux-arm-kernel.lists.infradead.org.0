Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51B0C5F630
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jul 2019 12:01:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bpicj/b5n5Her1sVg+yIQmbREFtetnaBrKn58rWRoEE=; b=BPhJnief7EhRoU
	oHvOvZfC1+xabxlyERPpHSBNEvvGh9PgTgmjSzghav20NQNsCxrLXZSRgJgYHhFm6d3cnKjS1JFyg
	dpf4tuqLc43P+AQRizpyTcuHKxHE5Qpih2Lqzu+priwhykuWNekkl6wUu95dK1LXceIGlePLp38in
	JaAssN4GJMcvwOhSLDU2v7pNelqH4zT+YQxhJgcqHJhKR2TY3Ioe5Qr7UgUV0pmXlWAHxZ1c57YyB
	kMxpOR/rINuTUXrsm4Te32LNWf9O7hyS4lpSDRwi6kpJqbSVbXaop0dgVzu1/apiEKJ982Blc1t+7
	jVJMbNpkPXxNKcRBDP4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiyY7-0001gC-TM; Thu, 04 Jul 2019 10:01:08 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiyXa-0001Qi-W4; Thu, 04 Jul 2019 10:00:36 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 087ED28A379;
 Thu,  4 Jul 2019 11:00:33 +0100 (BST)
Date: Thu, 4 Jul 2019 12:00:29 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Qii Wang <qii.wang@mediatek.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: i3c: Document MediaTek I3C master
 bindings
Message-ID: <20190704120029.4cc6d151@collabora.com>
In-Reply-To: <1561527388-4829-2-git-send-email-qii.wang@mediatek.com>
References: <1561527388-4829-1-git-send-email-qii.wang@mediatek.com>
 <1561527388-4829-2-git-send-email-qii.wang@mediatek.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_030035_158599_B8EC0320 
X-CRM114-Status: GOOD (  15.03  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: devicetree@vger.kernel.org, srv_heupstream@mediatek.com,
 bbrezillon@kernel.org, leilk.liu@mediatek.com, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, liguo.zhang@mediatek.com,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 matthias.bgg@gmail.com, linux-i3c@lists.infradead.org,
 xinping.qian@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 26 Jun 2019 13:36:27 +0800
Qii Wang <qii.wang@mediatek.com> wrote:

> Document MediaTek I3C master DT bindings.
> 

You forgot to Cc the DT maintainers/ML.

> Signed-off-by: Qii Wang <qii.wang@mediatek.com>
> ---
>  .../devicetree/bindings/i3c/mtk,i3c-master.txt     |   47 ++++++++++++++++++++
>  1 file changed, 47 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/i3c/mtk,i3c-master.txt
> 
> diff --git a/Documentation/devicetree/bindings/i3c/mtk,i3c-master.txt b/Documentation/devicetree/bindings/i3c/mtk,i3c-master.txt
> new file mode 100644
> index 0000000..3fd4f17
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/i3c/mtk,i3c-master.txt
> @@ -0,0 +1,47 @@
> +Bindings for MediaTek I3C master block
> +=====================================
> +
> +Required properties:
> +--------------------
> +- compatible: shall be "mediatek,i3c-master"
> +- reg: physical base address of the controller and apdma base, length of
> +  memory mapped region.
> +- reg-names: should be "main" for controller and "dma" for apdma.
> +- interrupts: interrupt number to the cpu.
> +- clocks: clock name from clock manager.
> +- clock-names: must include "main" and "dma".
> +
> +Mandatory properties defined by the generic binding (see
> +Documentation/devicetree/bindings/i3c/i3c.txt for more details):
> +
> +- #address-cells: shall be set to 3
> +- #size-cells: shall be set to 0
> +
> +Optional properties defined by the generic binding (see
> +Documentation/devicetree/bindings/i3c/i3c.txt for more details):
> +
> +- i2c-scl-hz
> +- i3c-scl-hz
> +
> +I3C device connected on the bus follow the generic description (see
> +Documentation/devicetree/bindings/i3c/i3c.txt for more details).
> +
> +Example:
> +
> +	i3c0: i3c@1100d000 {
> +		compatible = "mediatek,i3c-master";
> +		reg = <0x1100d000 0x100>,
> +		      <0x11000300 0x80>;
> +		reg-names = "main", "dma";
> +		interrupts = <GIC_SPI 44 IRQ_TYPE_LEVEL_LOW>;
> +		clocks = <&i3c0_ck>, <&ap_dma_ck>;
> +		clock-names = "main", "dma";
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +		i2c-scl-hz = <100000>;
> +
> +		nunchuk: nunchuk@52 {
> +			compatible = "nintendo,nunchuk";
> +			reg = <0x52 0x80000010 0>;
> +		};
> +	};


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
