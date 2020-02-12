Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C94B915A217
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 08:33:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y1VJHEngBloXC/lYJQPI5cTi6YHt3ft5aCMXpYTigqI=; b=iVj9Y4mWx89/mb
	1RPmZ8MnhWAVX5+R8sOlBYyTy7CxNHTdUmrtNk+EDnyIIm2ex0FCtUoDxlRSir9W1ESwZzg3nAxtJ
	TYC88n+Binjp1P+k8lksa10g/lJbWIrnZq0BXbTxItmGNlkg7SNefvcXun3SdSkUI5xxgHtpWn47v
	iSwn/RzrhWEPFBWmYsLxxXPDegMpZDE0FtpaSlknA8sGYObLyKnnJNYearOseCKUcs8+RSwtRmKUb
	nIx56SyDVfw7aMrfdz60ee0Yai8XdDGU/GIXT5ZCYdV/QvFXKjYhYKOJt5LhsXRmUvrem792ypRXQ
	XZzY5nwR7FiykKVf1U9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1mWY-0003Wy-I8; Wed, 12 Feb 2020 07:33:30 +0000
Received: from mail-sh.amlogic.com ([58.32.228.43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1mWM-0003Vt-5P; Wed, 12 Feb 2020 07:33:19 +0000
Received: from [10.18.90.120] (10.18.90.120) by mail-sh.amlogic.com
 (10.18.11.5) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1591.10; Wed, 12 Feb
 2020 15:33:42 +0800
Subject: Re: [PATCH v8 1/3] dt-bindings: phy: Add Amlogic A1 USB2 PHY Bindings
To: Jerome Brunet <jbrunet@baylibre.com>, Kishon Vijay Abraham I
 <kishon@ti.com>, Neil Armstrong <narmstrong@baylibre.com>, Rob Herring
 <robh@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Kevin
 Hilman <khilman@baylibre.com>
References: <1581419454-12667-1-git-send-email-hanjie.lin@amlogic.com>
 <1581419454-12667-2-git-send-email-hanjie.lin@amlogic.com>
 <1jpnelb9pe.fsf@starbuckisacylon.baylibre.com>
From: Hanjie Lin <hanjie.lin@amlogic.com>
Message-ID: <f154ef4c-ce3c-2a67-01f3-97a5f0af4520@amlogic.com>
Date: Wed, 12 Feb 2020 15:33:42 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <1jpnelb9pe.fsf@starbuckisacylon.baylibre.com>
Content-Language: en-US
X-Originating-IP: [10.18.90.120]
X-ClientProxiedBy: mail-sh.amlogic.com (10.18.11.5) To mail-sh.amlogic.com
 (10.18.11.5)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_233318_212005_52ED0572 
X-CRM114-Status: UNSURE (   9.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, Victor Wan <victor.wan@amlogic.com>,
 Jianxin Pan <jianxin.pan@amlogic.com>, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, linux-usb@vger.kernel.org,
 Yue Wang <yue.wang@amlogic.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Liang Yang <liang.yang@amlogic.com>, Qiufang Dai <qiufang.dai@amlogic.com>,
 Xingyu Chen <xingyu.chen@amlogic.com>, Carlo Caione <carlo@caione.org>,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Jian Hu <jian.hu@amlogic.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 2020/2/11 20:16, Jerome Brunet wrote:
> 
> On Tue 11 Feb 2020 at 12:10, Hanjie Lin <hanjie.lin@amlogic.com> wrote:
> 
>> Add the Amlogic A1 Family USB2 PHY Bindings
>>
>> It supports Host mode only.
>>
>> Signed-off-by: Yue Wang <yue.wang@amlogic.com>
>> Signed-off-by: Hanjie Lin <hanjie.lin@amlogic.com>
>> Reviewed-by: Rob Herring <robh@kernel.org>
>> ---
>>  .../bindings/phy/amlogic,meson-g12a-usb2-phy.yaml         | 15 +++++++++++++++
>>  1 file changed, 15 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/phy/amlogic,meson-g12a-usb2-phy.yaml b/Documentation/devicetree/bindings/phy/amlogic,meson-g12a-usb2-phy.yaml
>> index 57d8603..3b7e763 100644
>> --- a/Documentation/devicetree/bindings/phy/amlogic,meson-g12a-usb2-phy.yaml
>> +++ b/Documentation/devicetree/bindings/phy/amlogic,meson-g12a-usb2-phy.yaml
>> @@ -14,6 +14,7 @@ properties:
>>    compatible:
>>      enum:
>>        - amlogic,meson-g12a-usb2-phy
>> +      - amlogic,meson-a1-usb2-phy
>>  
>>    reg:
>>      maxItems: 1
>> @@ -49,6 +50,20 @@ required:
>>    - reset-names
>>    - "#phy-cells"
>>  
>> +allOf:
> 
> Is 'allOf' really needed when there is only one if clause ?
> 

Hi jerome:

Yes, this 'allOf' is not necessary here.
I will remove it.

Thanks,
Hanjie

>> +  - if:
>> +      properties:
>> +        compatible:
>> +          enum:
>> +            - amlogic,meson-a1-usb-ctrl
>> +
>> +    then:
>> +      properties:
>> +        power-domains:
>> +          maxItems: 1
>> +      required:
>> +        - power-domains
>> +
>>  examples:
>>    - |
>>      phy@36000 {
> 
> .
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
