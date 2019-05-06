Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0737614442
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 May 2019 07:26:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LFpiMUfMM8tvVuZkj0xjfFb9knx4neEwxK4liT141GQ=; b=WtL4XczRBYXlCm
	Sb6sV7AuvgKNJFo+vN3CPlwuNprAZjx/2+tW9AvffJVA9Rk1FGiTUie5klzCU3MkxgbHRb0q/D0u1
	mVUgF4GDWyvQm+drc1EPam++kqfW+Ht/fCishYGdPSWeSg/8dh9sH1eMT3JCzpQeexO0aJFa8fYMS
	Q9KvLfdtTW2wNT1ET6jT91ExNVrrR/HiDLGduDebRQZ1vYU1+CMhYFYPfXzMShi/D52tDoGZuBF5r
	LNn6RgRagbfATIMRd2lGe04oTbT22Twg/sMWVlQW+mgUOsy+fO/bIjhzh/lewCdd1xToAi3qZJJ5L
	U3shRbBftLGX0KH1K6GQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNW8T-0004yw-Bt; Mon, 06 May 2019 05:25:57 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNW8L-0004yX-LC; Mon, 06 May 2019 05:25:52 +0000
X-UUID: 3064a709d5674f8b9d487ccc9bc8ead9-20190505
X-UUID: 3064a709d5674f8b9d487ccc9bc8ead9-20190505
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <eddie.huang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1200256665; Sun, 05 May 2019 21:25:41 -0800
Received: from mtkmbs08n2.mediatek.inc (172.21.101.56) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 5 May 2019 22:25:40 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs08n2.mediatek.inc (172.21.101.56) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 6 May 2019 13:25:32 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 6 May 2019 13:25:32 +0800
Message-ID: <1557120332.13225.2.camel@mtksdaap41>
Subject: Re: [PATCH 3/8] arm64: dts: mt8183: Add #cooling-cells to CPU nodes
From: Eddie Huang <eddie.huang@mediatek.com>
To: michael.kao <michael.kao@mediatek.com>
Date: Mon, 6 May 2019 13:25:32 +0800
In-Reply-To: <1556793795-25204-4-git-send-email-michael.kao@mediatek.com>
References: <1556793795-25204-1-git-send-email-michael.kao@mediatek.com>
 <1556793795-25204-4-git-send-email-michael.kao@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: CE8BF35983F880354250BBA5CCFA2DB768ECC27B1165A24DE23EE3EEF84EC4B72000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190505_222549_702494_0478BC49 
X-CRM114-Status: GOOD (  11.09  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 JamesJJ Liao =?UTF-8?Q?=28=E5=BB=96=E5=BB=BA=E6=99=BA=29?=
 <jamesjj.liao@mediatek.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Louis Yu =?UTF-8?Q?=28=E6=B8=B8=E6=94=BF=E9=8C=95=29?= <louis.yu@mediatek.com>,
 Dawei Chien =?UTF-8?Q?=28=E9=8C=A2=E5=A4=A7=E8=A1=9B=29?=
 <Dawei.Chien@mediatek.com>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>, Daniel
 Lezcano <daniel.lezcano@linaro.org>,
 Roger Lu =?UTF-8?Q?=28=E9=99=B8=E7=91=9E=E5=82=91=29?= <Roger.Lu@mediatek.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Eduardo Valentin <edubezval@gmail.com>,
 Fan Chen =?UTF-8?Q?=28=E9=99=B3=E5=87=A1=29?= <fan.chen@mediatek.com>,
 Rob Herring <robh+dt@kernel.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, Zhang Rui <rui.zhang@intel.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Michael,

On Thu, 2019-05-02 at 18:43 +0800, michael.kao wrote:
> The #cooling-cells property needs to be specified to allow a CPU
> to be used as cooling device.
> 
> Signed-off-by: michael.kao <Michael.Kao@mediatek.com>
> ---
>  arch/arm64/boot/dts/mediatek/mt8183.dtsi | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/mediatek/mt8183.dtsi b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
> index 5668fb8..95f1d7b 100644
> --- a/arch/arm64/boot/dts/mediatek/mt8183.dtsi
> +++ b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
> @@ -11,6 +11,8 @@
>  #include <dt-bindings/power/mt8183-power.h>
>  #include <dt-bindings/reset-controller/mt8183-resets.h>
>  #include "mt8183-pinfunc.h"
> +#include <dt-bindings/thermal/thermal.h>
> +
>  / {
>  	compatible = "mediatek,mt8183";
>  	interrupt-parent = <&sysirq>;

It seems this patch don't have #cooling-cells but in your 2/8 patch in
this series



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
