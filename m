Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B93D1C9EDD
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 May 2020 01:02:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bnq6Tpy9fofHZ1DhYHP5QABMZkmi/DWR3s344YUHhUo=; b=l8dcrIIiEyC5pk
	HyA9v7cmOaQrG2tiEGx8PNUzzeCRUEAZfwT+McyEHg5pDOmVzCQ0CKg6rBDoHi1BQwxVqBaJY/E7h
	UpSvD74oVBQVH7kthXRL5qVZLQsfEY/LFOXpZ78nA1V9fReRYFdf4URkKVLh4f0pnNPTGLnTYXHMC
	BLNFFJdwLd+0AdEhz32+u7o2rW0ad7Ix6f4+IqLLsaFF1BGTwL/FuZBO/znKF6OMnZkuG9yWVy0+m
	2uHvEE9xfYPR7BZJBxd33s0l6byB8ZT31qEudPVSG1P84JBLY0JqQ1eoP+p8HjBG31yWZtyPC47zh
	ZObNIDYKg17DHsDsagdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWpWn-0006Lv-Fx; Thu, 07 May 2020 23:02:05 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWpWe-0006KB-Ou; Thu, 07 May 2020 23:01:58 +0000
Received: by mail-wm1-x343.google.com with SMTP id v8so8577110wma.0;
 Thu, 07 May 2020 16:01:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=Amh3I1P5I6BDFw+wjiIvKdrZM+vTRzn1yeHAQhH/mXQ=;
 b=JZvvpLly/WeFwEdPOAjsfNLtdVO1/saQlF77s8DN/ZF0BWu1MgILCIAn0AhqV/pkzw
 A0z4h7Q7Qvesyxx0pJK9xiME+nqD+bD7+zezYnuvLxdVrG7bfR2xuNnCOZbd7Dp6Aw9W
 FlL9tVfTviOY30rRUZm/SMF+6ks0eCV/FFZHuBJ0WdDjEBUfnVt31v0t9gAzu0jsoLVH
 AwOgqjj5EJZcN1de/fTVXyjqZ+mIoyGc2+9/yRLieRQErLNiDBjfrZDxmp+4ReKs+gkd
 qbJraJ6Wg1CzU+dZlm9aoFQFOrDAszZLkvflSUVLE3Z17CrA2vSTtqaGC/3MMcKqRqSQ
 qsvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Amh3I1P5I6BDFw+wjiIvKdrZM+vTRzn1yeHAQhH/mXQ=;
 b=VKxmEpYaSF+lfapUsT5lt/jOhYiPbXerFdejgvyJuKWnp0c97SrUJF+swKZAzVQP+8
 G7tg+eMARfc6vF2YTdFPIZp74LLpbxmPYlW7RNv8USJSkqYQiS4oHmwDj/XrWxO5AF+e
 yIrabWdxDTzosfUKz/dukcjBz1FvXwDBzqoCO2SJCJOtxXcHaC0/Hnt1rVA6gp6rG0ov
 KG7lzrQU3iSpYob1ng+sat5c5rV22jnzLPObl0Rgzd3fOUvEQGeAYAI+uvXDr75HLrZ9
 p/n8qsmOalR++/1W1QNWxofZpEZ9uZcxXsVFoXyE6Lr6kxMby9FtP0HWs13sRZ6G/Um3
 SYZw==
X-Gm-Message-State: AGi0PuaziFSnVlfMuoI1k6lr9UUqxlcuGPS36kjX0fRMAjsywQoWm4Ew
 gl/JVnSwFmJop/cD6WFD8S8=
X-Google-Smtp-Source: APiQypIXEPr64bDK5N2O7Q4uwKSHEOYR2e4k2roCXqGS0mC2od1qBH2YrfIpQ9yDJcfBWvqV0nWskg==
X-Received: by 2002:a1c:4b15:: with SMTP id y21mr12876858wma.150.1588892510056; 
 Thu, 07 May 2020 16:01:50 -0700 (PDT)
Received: from [192.168.2.1] (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id o6sm10910992wrw.63.2020.05.07.16.01.48
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 07 May 2020 16:01:49 -0700 (PDT)
Subject: Re: [PATCH v3 1/4] dt-bindings: rockchip-rga: Add PX30 compatible
To: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
References: <20200430164245.1630174-2-paul.kocialkowski@bootlin.com>
 <ed1ac7d6-12d3-5480-3699-70a88595cac2@gmail.com>
 <20200507202337.GJ2422122@aptenodytes>
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <b3d65325-7383-f89b-f493-6219904c8931@gmail.com>
Date: Fri, 8 May 2020 01:01:47 +0200
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200507202337.GJ2422122@aptenodytes>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_160156_807435_A1AF018C 
X-CRM114-Status: GOOD (  17.31  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, heiko@sntech.de, linux-kernel@vger.kernel.org,
 hansverk@cisco.com, linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 thomas.petazzoni@bootlin.com, mchehab@kernel.org, ezequiel@collabora.com,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Paul,

With help of enum each additional compatibility string with fall back
'rockchip,rk3288-rga' adds only 1 extra line instead of 3.

See my and Heiko's response at the review of 'rockchip-saradc.yaml'.

Re: [PATCH v1 1/3] dt-bindings: iio: adc: convert rockchip saradc
bindings to yaml
https://lore.kernel.org/lkml/a35bdff4-601e-6186-584e-9a0b88cf3dbb@gmail.com/

The response of robh when I did something similar wrong as this patch.

Re: [PATCH 1/2] dt-bindings: usb: dwc2: add compatible property for
rk3328 usb
https://lore.kernel.org/lkml/20200310192933.GA15236@bogus/

Example of an approved patch with enum.

[PATCH v2 1/2] dt-bindings: usb: dwc2: add compatible property for
rk3328 usb
https://lore.kernel.org/lkml/20200311122121.8912-1-jbx6244@gmail.com/

Kind regards,

Johan

On 5/7/20 10:23 PM, Paul Kocialkowski wrote:
> Hi,
> 
> On Thu 30 Apr 20, 23:24, Johan Jonker wrote:
>> Hi Paul,
>>
>>>
>>> Add a new compatible for the PX30 Rockchip SoC, which also features
>>> a RGA block. It is compatible with the RK3288 RGA block.
>>>
>>> Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
>>> ---
>>>  Documentation/devicetree/bindings/media/rockchip-rga.yaml | 3 +++
>>>  1 file changed, 3 insertions(+)
>>>
>>> diff --git a/Documentation/devicetree/bindings/media/rockchip-rga.yaml b/Documentation/devicetree/bindings/media/rockchip-rga.yaml
>>> index dd645ddccb07..740586299da9 100644
>>> --- a/Documentation/devicetree/bindings/media/rockchip-rga.yaml
>>> +++ b/Documentation/devicetree/bindings/media/rockchip-rga.yaml
>>> @@ -23,6 +23,9 @@ properties:
>>
>>
>>>        - items:
>>>            - const: rockchip,rk3228-rga
>>>            - const: rockchip,rk3288-rga
>>> +      - items:
>>> +          - const: rockchip,px30-rga
>>> +          - const: rockchip,rk3288-rga
>>
>> Use enum.
>>
>>       - items:
>>           - enum:
>>             - rockchip,px30-rga
>>             - rockchip,rk3228-rga
>>           - const: rockchip,rk3288-rga
> 
> Are you sure about this? The rk3228 above does it as I did it and other examples
> like allwinner,sun4i-a10-csi.yaml appear to be doing the same too.

The use of enum starts from 2 or more identical fall back strings.
'allwinner,sun4i-a10-csi.yaml' has 2 different fall back strings.

properties:
  compatible:
    oneOf:
      - const: allwinner,sun4i-a10-csi1
      - const: allwinner,sun7i-a20-csi0
      - items:
        - const: allwinner,sun7i-a20-csi1
        - const: allwinner,sun4i-a10-csi1
      - items:
        - const: allwinner,sun8i-r40-csi0
        - const: allwinner,sun7i-a20-csi0

> 
> The case with rockchip,rk3288-rga alone already seems covered.
See yaml examples in the links above.

> 
> Cheers,
> 
> Paul
> 
>>>  
>>>    reg:
>>>      maxItems: 1
>>> -- 
>>> 2.26.0
>>
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
