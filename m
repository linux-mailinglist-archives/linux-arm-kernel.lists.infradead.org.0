Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54CC213B92D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 06:45:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WJOf9jP56Y/ZQE1KwuoQU9hLh1hXRZ0S9PNxfnhfV9g=; b=RqCBPYDggGV53Y
	ftydLTrISi2NXiuTdt/xeX4RTvmcj7BqTHYS9szjko+i+UjcM7c/p9jwLhtNFBrowY53ZtPbLMCvy
	Jijy0Pz2dQJhPBCO+O8ELa3VBtsRwCe2ssG4DOg3PNcnqUSGd+CTJd7zcdJ/MN4mIJkVejvH2x+C8
	nG5YyUfDTQGMdGh2SNKRDpb7kXUIrydfmDiXuRDTSlw5kZ/rGtkAGRC254DTpFkGkVP86CNq0O8M7
	N1+v/31fuSBG5diZejf3CgvP0A2ctZlAyGWl9K0re4DP1hChTk4k6xxzSVW5Rn9H+p8QvY06y7+KG
	aAPBFV6AedqJyNDIBC+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irbUq-00081V-Hf; Wed, 15 Jan 2020 05:45:40 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irbUe-0007zc-Fb; Wed, 15 Jan 2020 05:45:32 +0000
X-UUID: bd478c67681544338298888cb7183376-20200114
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=8HQMlldpfzphe6qDYQf4mrwDoRiBfm5R7hxsF+yJmA4=; 
 b=kK6Upe17zxY6wWyy9So/d2R+fPk1Uv6p8do16Gx+FZCDZGKUWkkrXgnFNCoTiyqOSRD6o0l4vI51z5vWOph8ARie6wSSxQgDMTeftcTRREvpF7RorFULXaR7ypf5DhlLE4TovyYlMu+x8JPsc77kPX6Jc5GQ3ZS8mjScqoOAzbQ=;
X-UUID: bd478c67681544338298888cb7183376-20200114
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <weiyi.lu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1186341263; Tue, 14 Jan 2020 21:45:17 -0800
Received: from MTKMBS02N1.mediatek.inc (172.21.101.77) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 14 Jan 2020 21:46:06 -0800
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs02n1.mediatek.inc (172.21.101.77) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 15 Jan 2020 13:44:03 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 15 Jan 2020 13:45:15 +0800
Message-ID: <1579067107.32486.6.camel@mtksdaap41>
Subject: Re: [PATCH v11 01/10] dt-bindings: mediatek: Add property to mt8183
 smi-common
From: Weiyi Lu <weiyi.lu@mediatek.com>
To: Matthias Brugger <matthias.bgg@gmail.com>
Date: Wed, 15 Jan 2020 13:45:07 +0800
In-Reply-To: <1576813564-23927-2-git-send-email-weiyi.lu@mediatek.com>
References: <1576813564-23927-1-git-send-email-weiyi.lu@mediatek.com>
 <1576813564-23927-2-git-send-email-weiyi.lu@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_214528_537977_DC6A487B 
X-CRM114-Status: GOOD (  12.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Rob Herring <robh@kernel.org>, Nicolas Boichat <drinkcat@chromium.org>,
 srv_heupstream@mediatek.com, James Liao <jamesjj.liao@mediatek.com>,
 linux-kernel@vger.kernel.org, Fan Chen <fan.chen@mediatek.com>,
 linux-mediatek@lists.infradead.org, Sascha Hauer <kernel@pengutronix.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 2019-12-20 at 11:45 +0800, Weiyi Lu wrote:
> For scpsys driver using regmap based syscon driver API.
> 
> Signed-off-by: Weiyi Lu <weiyi.lu@mediatek.com>
> ---
>  .../devicetree/bindings/memory-controllers/mediatek,smi-common.txt      | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/memory-controllers/mediatek,smi-common.txt b/Documentation/devicetree/bindings/memory-controllers/mediatek,smi-common.txt
> index b478ade..01744ec 100644
> --- a/Documentation/devicetree/bindings/memory-controllers/mediatek,smi-common.txt
> +++ b/Documentation/devicetree/bindings/memory-controllers/mediatek,smi-common.txt
> @@ -20,7 +20,7 @@ Required properties:
>  	"mediatek,mt2712-smi-common"
>  	"mediatek,mt7623-smi-common", "mediatek,mt2701-smi-common"
>  	"mediatek,mt8173-smi-common"
> -	"mediatek,mt8183-smi-common"
> +	"mediatek,mt8183-smi-common", "syscon"
>  - reg : the register and size of the SMI block.
>  - power-domains : a phandle to the power domain of this local arbiter.
>  - clocks : Must contain an entry for each entry in clock-names.

Hi Matthias,

For the preparation of v12, may I have your comments on this v11
series ?
Many thanks.
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
