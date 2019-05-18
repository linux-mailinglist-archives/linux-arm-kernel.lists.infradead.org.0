Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 003A12233F
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 18 May 2019 12:34:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BgM5911rmXFxxeGYdiq0N+XqvpMcl4n0dGBJkERrFOA=; b=UoqqwdeQxwiZw1
	RZI77vOoo9ckIFBduI8eAzryOiZFpRcoTsJGoCbyfWTNRmiyC/RXs1BsfdYWMqvfstZZencjP12xQ
	I/6buq2GDdDtD1SYIgxecNynItKg/Dv6PRvPUltMwSgDMDphaOveAJTdp89l5Q3fl1q+orX+6Tm28
	16SPDEvRCVXOUb4+26dzbYgHFY3iv4xFMCd/RAfMwKDDOBQ3CKYZHUNN31zj59cKionrOlzAY+/iX
	of0n2s35MBktJQhS2HS1eb3Ny9qeURPqxqbSDl85LPBNTiIRApXdDBh65XJga6slB+VLIRsjvD0zo
	KYD4Rmmv1a0EQcYjf21g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRwfT-0000Rr-Ds; Sat, 18 May 2019 10:34:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRwfC-0000G0-Tj; Sat, 18 May 2019 10:34:06 +0000
Received: from archlinux (cpc91196-cmbg18-2-0-cust659.5-4.cable.virginm.net
 [81.96.234.148])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9D19320B7C;
 Sat, 18 May 2019 10:33:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558175642;
 bh=VMARFvnnTUIC5vZdI9kptGm1fgzrLnWcRpVCTr+Ikfk=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=HB7JOOfXrSeQLf12FFYxdrQT7XLZDS2E6ebKyEbzH01r31WKlEby4x5AxHDqRlfpY
 kzl0kD5h0eIZGyIJB/ptMxdZ26lE9PuvWmQbZf22d/XbZlc0elxdxcoRJW+o4XiXYF
 o2oiVwDN8XRjAwd85HGOcilfWsXQZB+wT3RwSJj0=
Date: Sat, 18 May 2019 11:33:56 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Chun-Hung Wu <chun-hung.wu@mediatek.com>
Subject: Re: [PATCH 1/4] dt-bindings: iio: adc: mediatek: Add document for
 mt6765
Message-ID: <20190518113356.1cf99a31@archlinux>
In-Reply-To: <1557994247-16739-2-git-send-email-chun-hung.wu@mediatek.com>
References: <1557994247-16739-1-git-send-email-chun-hung.wu@mediatek.com>
 <1557994247-16739-2-git-send-email-chun-hung.wu@mediatek.com>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190518_033403_192531_ABE3F08E 
X-CRM114-Status: GOOD (  13.59  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Lars-Peter Clausen <lars@metafoo.de>, wsd_upstream@mediatek.com,
 linux-iio@vger.kernel.org, kuohong.wang@mediatek.com,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, peter.wang@mediatek.com,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>, Hartmut Knaack <knaack.h@gmx.de>,
 Matthias Brugger <matthias.bgg@gmail.com>, jg_poxu@mediatek.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 16 May 2019 16:10:44 +0800
Chun-Hung Wu <chun-hung.wu@mediatek.com> wrote:

> Add compatible node for mt6765 auxadc
> 
> Signed-off-by: Chun-Hung Wu <chun-hung.wu@mediatek.com>
Applied, but in numeric order.  There was also another clashing patch
that caused some fuzz.

thanks,

Jonathan

> ---
>  Documentation/devicetree/bindings/iio/adc/mt6577_auxadc.txt | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/iio/adc/mt6577_auxadc.txt b/Documentation/devicetree/bindings/iio/adc/mt6577_auxadc.txt
> index 0df9bef..ab7efab 100644
> --- a/Documentation/devicetree/bindings/iio/adc/mt6577_auxadc.txt
> +++ b/Documentation/devicetree/bindings/iio/adc/mt6577_auxadc.txt
> @@ -15,6 +15,7 @@ Required properties:
>      - "mediatek,mt2712-auxadc": For MT2712 family of SoCs
>      - "mediatek,mt7622-auxadc": For MT7622 family of SoCs
>      - "mediatek,mt8173-auxadc": For MT8173 family of SoCs
> +    - "mediatek,mt6765-auxadc": For MT6765 family of SoCs
>    - reg: Address range of the AUXADC unit.
>    - clocks: Should contain a clock specifier for each entry in clock-names
>    - clock-names: Should contain "main".


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
