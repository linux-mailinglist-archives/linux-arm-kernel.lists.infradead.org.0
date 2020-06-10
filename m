Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DF1D1F4C15
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 06:22:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z9DYSd2IUbm4xBeKfOz7iczZgbUhw/wUqpu0TkpGRx0=; b=Z/zOHScNEz4lWZ
	veUBFhjMhNRpZLqEQ9PZX3urLggZGMiPcwkwcmIGTcXGwemnkIv6IGz59D4sjNSyDTUbZ5vWX/SlG
	/ovn3CKgLf0vg8W1h95JMD4rFl15bwIgQ5Zug1rkF5RPqpEwLS6tNo/JsOKddXR6DubgZzkUgwJrn
	DlLjtlw+yGIapPvPxvbm2mIgcIxsZPSpvk4s/I2xjEAqv4O6wX4vE1RKns6LxJt80j5v4fYaiUGyn
	73FYdv9XXQrcxMJiKzcDsVCj118/7FRB4JCaY5UoyP6K+Z6XdhKxW1U8CFzmis9S/iZttyoQBkVj2
	zoZuFZ5qwxqs5vLdCAqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jisGA-0003TP-Fw; Wed, 10 Jun 2020 04:22:42 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jisG2-0003St-I4
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 04:22:35 +0000
Received: by mail-ed1-x542.google.com with SMTP id q13so398053edi.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jun 2020 21:22:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=X/7GIe/cSktc8SYuRAXvLSXstrKZKVNYkG1k7d3sGOE=;
 b=RXF0XT230hb8XgjbMQ+NqD411ZZlP9PnLiPup1KUmeN/2I+mXbvU6+05vvZsbtDdOx
 KtG432c5VwW3Wb6DXmRxPtXmxYwaVAHibzXBTGl/tToW4tMLmnt+6wBUmOjIltUC3p55
 KX2BeVathgu7qKsMqC5EXub5MYys3mzIt4o6ar2QpsSPGlQl8XXbzeBeru1PDg44dv76
 ckGQmSNYlL7M1T4MoAIByyf7td2Flz+Gft4QKQThQAw24W/m12bSPSg8XBeWInBY6ll2
 +QHFj/XF5n7l18ozmQXn17OfsKPOqAQaOhbYU1rWqFkRK7H2cFYBuqH6BVrutPVc0Wje
 +07Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=X/7GIe/cSktc8SYuRAXvLSXstrKZKVNYkG1k7d3sGOE=;
 b=KBSI4HVxpn4jRS/OJaICTIcvPCPcUK9wCmyYGrDnfLdJej3Bhnq7ZSh/DxHp652Rt5
 V7w5VwQMs2VvyfwFunOHHBQ1q5Hjp7tV56gZj1jq/jlqxxbTMxLnRp5nWTzxckETk4Hq
 3uXUsA/RRXmfWKHZ15ky0IJbdiJSNF4fthBlRATCJHZHMtli+LWieO7kWFMZDAN+219q
 9CqP/AyS69MGdmaep/MoJtbZkRoDR1UySBP2jJUIIbJvACoVNEyYlFc0LmiDPHPWuzkj
 cXGSpngiLEvOv71pxTH/YiCoFGdFF1dbG0Gnjk50H/AKUgv2mA1B+a3C3IwMK9GWiTFY
 L7nQ==
X-Gm-Message-State: AOAM532l2BOrNH9otKwaOEZm27fCZz1gI50GGf9QmknIFWvnHKWFbVkk
 LY04Q59ZX1kZbZN/cX+gNJbwiPb0
X-Google-Smtp-Source: ABdhPJwKDHFC6pL+0Err+YpBtIxYGEnxU0Wwi2sTSCC0U/bH2/vVWtOQY9jmuagilUvu/0p+/5pJ9A==
X-Received: by 2002:aa7:dc4e:: with SMTP id g14mr851921edu.346.1591762952457; 
 Tue, 09 Jun 2020 21:22:32 -0700 (PDT)
Received: from [192.168.1.3] (ip68-111-84-250.oc.oc.cox.net. [68.111.84.250])
 by smtp.gmail.com with ESMTPSA id
 v7sm16070092edq.82.2020.06.09.21.22.29
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 09 Jun 2020 21:22:31 -0700 (PDT)
Subject: Re: [PATCH 1/6] dt-bindings: usb: dwc3: add property to disable xhci
 64bit support
To: Peter Chen <peter.chen@nxp.com>, Jun Li <jun.li@nxp.com>
References: <1591701165-12872-1-git-send-email-jun.li@nxp.com>
 <1591701165-12872-2-git-send-email-jun.li@nxp.com>
 <20200610024816.GA18494@b29397-desktop>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <5e4d7227-afd7-27cf-720c-defeadff8450@gmail.com>
Date: Tue, 9 Jun 2020 21:22:28 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200610024816.GA18494@b29397-desktop>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_212234_614330_35A467E2 
X-CRM114-Status: GOOD (  14.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "balbi@kernel.org" <balbi@kernel.org>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 6/9/2020 7:47 PM, Peter Chen wrote:
> On 20-06-09 19:12:40, Li Jun wrote:
>> Add a property "snps,xhci-dis-64bit-support-quirk" to disable xhci 64bit
>> address support, this is due to SoC integration can't support it but
>> the AC64 bit (bit 0) of HCCPARAMS1 is set to be 1.
>>
>> Signed-off-by: Li Jun <jun.li@nxp.com>
>> ---
>>  Documentation/devicetree/bindings/usb/dwc3.txt | 3 +++
>>  1 file changed, 3 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/usb/dwc3.txt b/Documentation/devicetree/bindings/usb/dwc3.txt
>> index d03edf9..d16cba7 100644
>> --- a/Documentation/devicetree/bindings/usb/dwc3.txt
>> +++ b/Documentation/devicetree/bindings/usb/dwc3.txt
>> @@ -109,6 +109,9 @@ Optional properties:
>>  			When just one value, which means INCRX burst mode enabled. When
>>  			more than one value, which means undefined length INCR burst type
>>  			enabled. The values can be 1, 4, 8, 16, 32, 64, 128 and 256.
>> + - snps,xhci-dis-64bit-support-quirk: set if the AC64 bit (bit 0) of HCCPARAMS1 is set
>> +			to be 1, but the controller actually can't handle 64-bit address
>> +			due to SoC integration.
>>  
>>   - in addition all properties from usb-xhci.txt from the current directory are
>>     supported as well
> 
> Why not adding it at usb-xhci.txt directly? It is more like general
> property, I see Renesas rcar platforms also have this quirk.
> 

Or rather define a compatible string for the specific SoC integration
here and based upon that compatibility string set the xhci->quirks to
have XHCI_NO_64BIT_SUPPORT set.
-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
