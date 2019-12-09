Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B2F9116898
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 09:48:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HcEyzVf6LC4ZAxas/mPvJ2hkVCnHlTutPw+vO7zWUVE=; b=hMxs8Tm+Ym4ZYU
	bqfyKLgIFq6Lrhjqt1zfD0y7E5+ky3vXxdPmFAcemYM4BuGHvwjmmz0+f1uor64S0FEqcsr9Z4GR8
	tTobfB3I9Spj5LSPBNQ10v6l+qJB+lyOHnTku7JWrdqIeQRhURL3g2B31fUVfVpMCF9/uNIW6zGww
	VF7rUhpkteeT5hb82/awEFWhc32i0HOo2FoCupH8g/oMkUkMUkHnfb8Ddz327Vc/kXXvImG1agXQj
	ZlutUvsZVkCSrdEFwEGRSNeZMZVgygf/egf7Cf/yaSl2DPKwFuw+GpSKXxwL7Wg0CWZOcGxueovzH
	uGL4nZ1A+dAfCTRlB3WA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieEiW-0003rW-Uy; Mon, 09 Dec 2019 08:48:32 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieEiO-0003qS-L5; Mon, 09 Dec 2019 08:48:26 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: eballetbo) with ESMTPSA id 4B35028D7A3
Subject: Re: [resend PATCH v6 01/12] dt-bindings: display: mediatek: Add mmsys
 binding description
To: CK Hu <ck.hu@mediatek.com>, matthias.bgg@kernel.org
References: <20191207224740.24536-1-matthias.bgg@kernel.org>
 <20191207224740.24536-2-matthias.bgg@kernel.org>
 <1575868373.7013.4.camel@mtksdaap41>
From: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Message-ID: <dec02ff4-6627-2755-b05b-2ab0560feee7@collabora.com>
Date: Mon, 9 Dec 2019 09:48:17 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <1575868373.7013.4.camel@mtksdaap41>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_004824_949467_E6438445 
X-CRM114-Status: GOOD (  16.03  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, rdunlap@infradead.org, airlied@linux.ie,
 mturquette@baylibre.com, dri-devel@lists.freedesktop.org,
 laurent.pinchart@ideasonboard.com, ulrich.hecht+renesas@gmail.com,
 linux-clk@vger.kernel.org, drinkcat@chromium.org, wens@csie.org,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 frank-w@public-files.de, sean.wang@mediatek.com, robh+dt@kernel.org,
 linux-mediatek@lists.infradead.org, hsinyi@chromium.org,
 linux-arm-kernel@lists.infradead.org, mbrugger@suse.com, sboyd@kernel.org,
 sean.wang@kernel.org, linux-kernel@vger.kernel.org, p.zabel@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Matthias,

On 9/12/19 6:12, CK Hu wrote:
> Hi, Matthias:
> 
> On Sat, 2019-12-07 at 23:47 +0100, matthias.bgg@kernel.org wrote:
>> From: Matthias Brugger <mbrugger@suse.com>
>>
>> The MediaTek DRM has a block called mmsys, which sets
>> the routing and enalbes the different blocks.

Typo s/enalbes/enables/

>> This patch adds one line for the mmsys bindings description.
>>
>> Signed-off-by: Matthias Brugger <mbrugger@suse.com>
>> ---
>>  .../display/mediatek/mediatek,disp.txt        | 28 ++++++++++---------
>>  1 file changed, 15 insertions(+), 13 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,disp.txt b/Documentation/devicetree/bindings/display/mediatek/mediatek,disp.txt
>> index 8469de510001..c71c8a4b73ff 100644
>> --- a/Documentation/devicetree/bindings/display/mediatek/mediatek,disp.txt
>> +++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,disp.txt
>> @@ -27,20 +27,22 @@ Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.txt.
>>  
>>  Required properties (all function blocks):
>>  - compatible: "mediatek,<chip>-disp-<function>", one of
>> -	"mediatek,<chip>-disp-ovl"   - overlay (4 layers, blending, csc)
>> -	"mediatek,<chip>-disp-rdma"  - read DMA / line buffer
>> -	"mediatek,<chip>-disp-wdma"  - write DMA
>> -	"mediatek,<chip>-disp-color" - color processor
>> -	"mediatek,<chip>-disp-aal"   - adaptive ambient light controller
>> -	"mediatek,<chip>-disp-gamma" - gamma correction
>> -	"mediatek,<chip>-disp-merge" - merge streams from two RDMA sources
>> -	"mediatek,<chip>-disp-split" - split stream to two encoders
>> -	"mediatek,<chip>-disp-ufoe"  - data compression engine
>> -	"mediatek,<chip>-dsi"        - DSI controller, see mediatek,dsi.txt
>> -	"mediatek,<chip>-dpi"        - DPI controller, see mediatek,dpi.txt
>> -	"mediatek,<chip>-disp-mutex" - display mutex
>> -	"mediatek,<chip>-disp-od"    - overdrive
>> +	"mediatek,<chip>-disp-ovl"		- overlay (4 layers, blending, csc)
> 
> This patch conflicts with 5.5-rc, please resend this patch base on
> 5.5-rc1.
> 
>> +	"mediatek,<chip>-disp-rdma"		- read DMA / line buffer
>> +	"mediatek,<chip>-disp-wdma"		- write DMA
>> +	"mediatek,<chip>-disp-color"		- color processor
>> +	"mediatek,<chip>-disp-aal"		- adaptive ambient light controller
>> +	"mediatek,<chip>-disp-gamma"		- gamma correction
>> +	"mediatek,<chip>-disp-merge"		- merge streams from two RDMA sources
>> +	"mediatek,<chip>-disp-split"		- split stream to two encoders
>> +	"mediatek,<chip>-disp-ufoe"		- data compression engine
>> +	"mediatek,<chip>-dsi"			- DSI controller, see mediatek,dsi.txt
>> +	"mediatek,<chip>-dpi"			- DPI controller, see mediatek,dpi.txt
>> +	"mediatek,<chip>-disp-mutex"		- display mutex
>> +	"mediatek,<chip>-disp-od"		- overdrive
>> +	"mediatek,<chip>-mmsys", "syscon"	- provide clocks and components management
>>    the supported chips are mt2701, mt2712 and mt8173.
> 
> The original binding document for mmsys is in [1], I think we should not
> define it in duplicate. Maybe you could remove the original document.
> 
> [1]
> https://www.kernel.org/doc/Documentation/devicetree/bindings/arm/mediatek/mediatek%2Cmmsys.txt
> 
> Regards,
> CK
> 
>> +
>>  - reg: Physical base address and length of the function block register space
>>  - interrupts: The interrupt signal from the function block (required, except for
>>    merge and split function blocks).
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
