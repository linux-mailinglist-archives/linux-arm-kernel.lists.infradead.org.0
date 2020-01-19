Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (unknown [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA984141B49
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 19 Jan 2020 03:56:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vUkxHwCn53DT0w7hxIjpry7G7AhOeFEVEziqzSwdm7c=; b=nD7SXbDpZ1F5aW
	aLzx6eewHhv9D6RW0lAb+2stHvpHiGYFEbwNJmZ3J5kRZaQ44iStYOc1IDz+ddAUqDmB98J5Me8p7
	duUMA9YB0xLLtEzH8ea5tDpiFKC5v8AAuQmY/sJ1Krvko4wY3C7a/wSeevAoOdNdq01HeVQhwwOaX
	Gi/NdLZHf7FqHct+kcy4v5pbSciezKOAVjDkCJhvQAZ3/8rX4oxO89srqcIQE4u8lNY4cqyMqKoDV
	bWwFJJnl+Q6BRthp/WKNoFrNi6DdWTprOEVM2y9ruf4FUT8O0lTw1mMpqvly77HHwLNCvO/4caKy2
	WWnRbs7Rc60pIVB/of1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1it0jY-0002KK-9b; Sun, 19 Jan 2020 02:54:40 +0000
Received: from mail-sh.amlogic.com ([58.32.228.43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1it0jP-0002Ha-Ua; Sun, 19 Jan 2020 02:54:34 +0000
Received: from [10.18.38.198] (10.18.38.198) by mail-sh.amlogic.com
 (10.18.11.5) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1591.10; Sun, 19 Jan
 2020 10:54:47 +0800
Subject: Re: [PATCH v6 2/6] dt-bindings: usb: dwc3: Add the Amlogic A1 Family
 DWC3 Glue Bindings
To: Rob Herring <robh@kernel.org>
References: <1579220504-110067-1-git-send-email-hanjie.lin@amlogic.com>
 <1579220504-110067-3-git-send-email-hanjie.lin@amlogic.com>
 <20200117163219.GA25603@bogus>
From: Hanjie Lin <hanjie.lin@amlogic.com>
Message-ID: <12c5287e-61af-0712-ae5b-019b8495055b@amlogic.com>
Date: Sun, 19 Jan 2020 10:54:46 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <20200117163219.GA25603@bogus>
Content-Language: en-US
X-Originating-IP: [10.18.38.198]
X-ClientProxiedBy: mail-sh.amlogic.com (10.18.11.5) To mail-sh.amlogic.com
 (10.18.11.5)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200118_185431_989008_95260B3F 
X-CRM114-Status: GOOD (  10.66  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Jianxin Pan <jianxin.pan@amlogic.com>,
 Felipe Balbi <felipe.balbi@linux.intel.com>,
 Neil Armstrong <narmstrong@baylibre.com>, Stephen Boyd <sboyd@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Michael Turquette <mturquette@baylibre.com>, linux-usb@vger.kernel.org,
 Yue Wang <yue.wang@amlogic.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Jian Hu <jian.hu@amlogic.com>, Liang Yang <liang.yang@amlogic.com>,
 Qiufang Dai <qiufang.dai@amlogic.com>, Xingyu Chen <xingyu.chen@amlogic.com>,
 Kevin Hilman <khilman@baylibre.com>, Carlo Caione <carlo@caione.org>,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 2020/1/18 0:32, Rob Herring wrote:
> On Fri, 17 Jan 2020 08:21:40 +0800, Hanjie Lin wrote:
>> The Amlogic A1 SoC Family embeds 1 USB Controllers:
>>  - a DWC3 IP configured as Host for USB2 and USB3
>>
>> A glue connects the controllers to the USB2 PHY of A1 SoC.
>>
>> Signed-off-by: Yue Wang <yue.wang@amlogic.com>
>> Signed-off-by: Hanjie Lin <hanjie.lin@amlogic.com>
>> ---
>>  .../bindings/usb/amlogic,meson-g12a-usb-ctrl.yaml  | 38 ++++++++++++++++++++--
>>  1 file changed, 35 insertions(+), 3 deletions(-)
>>
> 
> My bot found errors running 'make dt_binding_check' on your patch:
> 
> Documentation/devicetree/bindings/usb/amlogic,meson-g12a-usb-ctrl.yaml:  while parsing a block mapping
>   in "<unicode string>", line 107, column 7
> did not find expected key
>   in "<unicode string>", line 111, column 8
> Documentation/devicetree/bindings/Makefile:12: recipe for target 'Documentation/devicetree/bindings/usb/amlogic,meson-g12a-usb-ctrl.example.dts' failed
> make[1]: *** [Documentation/devicetree/bindings/usb/amlogic,meson-g12a-usb-ctrl.example.dts] Error 1
> Makefile:1263: recipe for target 'dt_binding_check' failed
> make: *** [dt_binding_check] Error 2
> 
> See https://patchwork.ozlabs.org/patch/1224563
> Please check and re-submit.
> 
> .
> 

Hi Rob,

Sorry, I missed a blank and didn't notice it.
I will fix it in next version, and also pay more attentions to these problems later.

Thanks,
Hanjie 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
