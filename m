Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B697515D740
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 13:20:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nkR1tcnGWbzgffmMnoUGEyFYJFYaVEgGc+hWoJZeNGU=; b=Oi/k5w+32mQqua
	esB68S3hFEMM07ULJd22RsEZM3BlVeLAsl1h/xdqcguoY/qd8SOB8BlV56J1vbB57jYne57TTqf0e
	dZx1eDL1bInyt5SF7Aw/SNIa6xFZLr4TwziL1St3RhWdJN64qWTIFnWJnOUrySqsCsRzPlJb2BKsF
	gU1BcFoA0Db7QXkpfr5xEXZXRSbNG1EAK9nppG1fXYwjkxJr1tlTfpfZP46uCS/mKDZAbCim+QSbw
	UZW2sTGAnWt5ABZu1OKogJJg2lMxF0UfqM12NxeY3HoIY8Nrr94nMojgLnMuyPHy8Lgpg2XWHFblr
	pQEjNcTrHKIP6Af2uuhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2Zwm-0000xw-U5; Fri, 14 Feb 2020 12:19:52 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2Zwe-0000wI-5b; Fri, 14 Feb 2020 12:19:46 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: eballetbo) with ESMTPSA id 5E10528D7ED
Subject: Re: [PATCH v7 01/13] dt-bindings: arm: move mmsys description to
 display
To: Matthias Brugger <matthias.bgg@gmail.com>, CK Hu <ck.hu@mediatek.com>,
 matthias.bgg@kernel.org
References: <20200213201953.15268-1-matthias.bgg@kernel.org>
 <20200213201953.15268-2-matthias.bgg@kernel.org>
 <1581662577.17949.3.camel@mtksdaap41>
 <2bda2dd7-9ed2-8b4c-897e-e585ccfa1fa5@gmail.com>
From: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Message-ID: <022e8f64-b414-67a5-722e-bdd7c00230ff@collabora.com>
Date: Fri, 14 Feb 2020 13:19:26 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <2bda2dd7-9ed2-8b4c-897e-e585ccfa1fa5@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_041944_338142_6D9F8679 
X-CRM114-Status: GOOD (  17.35  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: mark.rutland@arm.com, airlied@linux.ie, mturquette@baylibre.com,
 dri-devel@lists.freedesktop.org, laurent.pinchart@ideasonboard.com,
 ulrich.hecht+renesas@gmail.com, linux-clk@vger.kernel.org,
 drinkcat@chromium.org, Weiyi Lu <weiyi.lu@mediatek.com>, wens@csie.org,
 mtk01761 <wendell.lin@mediatek.com>, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, p.zabel@pengutronix.de, frank-w@public-files.de,
 sean.wang@mediatek.com, robh+dt@kernel.org, linux-mediatek@lists.infradead.org,
 hsinyi@chromium.org, linux-arm-kernel@lists.infradead.org,
 Matthias Brugger <mbrugger@suse.com>, sboyd@kernel.org, rdunlap@infradead.org,
 linux-kernel@vger.kernel.org, Daniel Vetter <daniel@ffwll.ch>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi CK,

On 14/2/20 11:01, Matthias Brugger wrote:
> 
> 
> On 14/02/2020 07:42, CK Hu wrote:
>> Hi, Matthias:
>>
>> On Thu, 2020-02-13 at 21:19 +0100, matthias.bgg@kernel.org wrote:
>>> From: Matthias Brugger <mbrugger@suse.com>
>>>
>>> The mmsys block provides registers and clocks for the display
>>> subsystem. The binding description should therefore live together with
>>> the rest of the display descriptions. Move it to display/mediatek.
>>>
>>
>> Yes, for the upstreamed driver, only display (DRM) use mmsys clock. For
>> some MDP patches [1] in progress, MDP also use mmsys clock. So we just
>> consider what's upstreamed now?
> 

Let me jump into the discussion, and sorry if my question is silly because I'm
just starting to look at this code.

IMO we should consider all the cases to find a proper fix on all this, and if
MDP uses also mmsys clocks this approach will not work. I think the main problem
here and the big question is what exactly is the MMSYS block, is an independent
clock controller that provides clocks to DRM and other blocks? or is hardly tied
to the DRM block in some way?

Could you give us a block schema on how the things are interconnected?

If is an independent clock controller I think there was a mistake when the first
drm driver was pushed by using the compatible = "mediatek,mt8173-mmsys" as id
for that driver.

Thanks,
 Enric


> I'm not sure if I understand you correctly. Are you proposing to keep the
> binding description in arm/mediatek?
> 
> Regards,
> Matthias
> 
>>
>> [1] https://patchwork.kernel.org/patch/11140747/
>>
>> Regards,
>> CK
>>
>>> Signed-off-by: Matthias Brugger <mbrugger@suse.com>
>>>
>>> ---
>>>
>>> Changes in v7:
>>> - move the binding description
>>>
>>> Changes in v6: None
>>> Changes in v5: None
>>> Changes in v4: None
>>> Changes in v3: None
>>> Changes in v2: None
>>>
>>>  .../bindings/{arm => display}/mediatek/mediatek,mmsys.txt         | 0
>>>  1 file changed, 0 insertions(+), 0 deletions(-)
>>>  rename Documentation/devicetree/bindings/{arm => display}/mediatek/mediatek,mmsys.txt (100%)
>>>
>>> diff --git a/Documentation/devicetree/bindings/arm/mediatek/mediatek,mmsys.txt b/Documentation/devicetree/bindings/display/mediatek/mediatek,mmsys.txt
>>> similarity index 100%
>>> rename from Documentation/devicetree/bindings/arm/mediatek/mediatek,mmsys.txt
>>> rename to Documentation/devicetree/bindings/display/mediatek/mediatek,mmsys.txt
>>
>> _______________________________________________
>> linux-arm-kernel mailing list
>> linux-arm-kernel@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
>>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
