Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF17F4884F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 18:06:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jmdSXudvrA5FGrm4iyZYHBRB5//oeg57YZ3LTB+qcNM=; b=BcXhHCsbIRkUw8
	YWF0Xs3a0sTl4Rmp+YUy6NNFlX9ewIZqh5hc3GT1jns5TzfHUfKXnzgsL4SisqQjGxoQ/jyZJo6bw
	heA9eV/qk4TbyBbehiyIjsBLlgT0aSWluxlQO82W7H01oTtJh7jLV5POm1squFNZiycbfV2+Huplo
	Mmz6TgKugSGlqKoc+B+AB59rQJMuoAgQSNTu3EkSPTlb+uYE+YUGM79SrIWHzOEFsge5V8Jeww2lR
	41ZPGlFsPweoaSYL5uIAiRwRanPeKQiW3RnMeWiae62j+n1ALTgqEexwbHlXSe8XWKYk10LFsYcTK
	4j3zbNWEn9SVtn2KI/7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcu9B-0007eL-9g; Mon, 17 Jun 2019 16:06:17 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcu8v-0007cf-9n
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 16:06:02 +0000
Received: by mail-lf1-x143.google.com with SMTP id z15so6891333lfh.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 17 Jun 2019 09:06:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cogentembedded-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:organization:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Ftr3IF6tEhAQtJEYORdg+72gK/8WB7Tuv1StM+dZuAk=;
 b=GorSRaYuzb+DQmhSgz3nUmepUzz51+Lyv6smpuuHnpoQIPtwZSpBVP4zk3LrUrQXlO
 Isd8K4u6O11izNx3bNmHdCC8GtUcTTiSGew6dvzyvns3ODFQ993EppLXwbnyOGhS81lN
 x0Brxfw7ipJf1iktkzM0o+LpQRAxEcHbDnn/Zlgk4vpkLCWNLWYZlOiXgM2onbNmBgQ8
 DvoksYUQL0DBgWqQQnS6v4s555bHT1eDk79ZK10zrefEzd7BUxBdPMl7K8iCb5y98vFe
 9IISN4PaKDRAckmOUQhTBAd+hYv9DydnF7Jlm9TYY9czpM/B8OqxcRj6tvjbcg5PV/Mc
 B9yA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:organization
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=Ftr3IF6tEhAQtJEYORdg+72gK/8WB7Tuv1StM+dZuAk=;
 b=K5MZY+nPyZQR+OOMSY45+1qp/jsmPruK0DG0K+IL+gS4N9loxDCR+K4YB5inNn8QY+
 IMzvCVbST6jlE418R3AaRwVFPcBaPp6N9MvMNsUB6+miDOSG/HAgOpc/xEeOyBUjotmL
 hBk3KnnUVoVTe91JKjh7psR7D8X3bho3NWBnnYIndew3BODT8CRfC+9a3QX0NM+7+0Ym
 yw+/zMVYQ3eIuwtYWb5N/4qgEREBKqvjOq6m88vzGUdRq/of4hw653dNZ6M5FYJoIuig
 4inuM6gswWx1jBVd5VdLazOoYxnK16p1s/tuR04HQQiwPjMESd9QgInGgcJCrTMmhRw/
 nWqQ==
X-Gm-Message-State: APjAAAUpY+yJbuu0+TuC9DjufTnte2c0Yc4jflsRPnLQPP75CydP4XWl
 HVXsv2yNi/hJDjU0jMbiYBHc4Q==
X-Google-Smtp-Source: APXvYqxy91RpuobIYehP+3aOoQHmmQtMCXRPP5GVPK8YNQWAOFzrL+2r+mJVUmXGGCJGyYDS5xdg4w==
X-Received: by 2002:a19:7905:: with SMTP id u5mr55463097lfc.117.1560787559152; 
 Mon, 17 Jun 2019 09:05:59 -0700 (PDT)
Received: from wasted.cogentembedded.com ([31.173.84.129])
 by smtp.gmail.com with ESMTPSA id m17sm2174140lji.16.2019.06.17.09.05.57
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Jun 2019 09:05:58 -0700 (PDT)
Subject: Re: [PATCH v4 6/8] ARM: dts: imx7ulp: add imx7ulp USBOTG1 support
To: Peter Chen <peter.chen@nxp.com>, "balbi@kernel.org" <balbi@kernel.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>
References: <20190614093544.11730-1-peter.chen@nxp.com>
 <20190614093544.11730-7-peter.chen@nxp.com>
 <0dbf01f9-7c5c-ce0b-4feb-378c9147f15a@cogentembedded.com>
 <VI1PR04MB5327B9EF844F9C7505D337298BEB0@VI1PR04MB5327.eurprd04.prod.outlook.com>
From: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
Organization: Cogent Embedded
Message-ID: <7d50357c-64b4-f504-e1b8-0e4542b59d12@cogentembedded.com>
Date: Mon, 17 Jun 2019 19:05:57 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <VI1PR04MB5327B9EF844F9C7505D337298BEB0@VI1PR04MB5327.eurprd04.prod.outlook.com>
Content-Language: en-MW
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_090601_416996_1A00DD7F 
X-CRM114-Status: GOOD (  14.23  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
 "chunfeng.yun@mediatek.com" <chunfeng.yun@mediatek.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello!

On 06/17/2019 04:13 AM, Peter Chen wrote:

[...]
>>> Signed-off-by: Peter Chen <peter.chen@nxp.com>
>>> ---
>>>   arch/arm/boot/dts/imx7ulp.dtsi | 28 ++++++++++++++++++++++++++++
>>>   1 file changed, 28 insertions(+)
>>>
>>> diff --git a/arch/arm/boot/dts/imx7ulp.dtsi
>>> b/arch/arm/boot/dts/imx7ulp.dtsi index fca6e50f37c8..5115e47715c3
>>> 100644
>>> --- a/arch/arm/boot/dts/imx7ulp.dtsi
>>> +++ b/arch/arm/boot/dts/imx7ulp.dtsi
>>> @@ -30,6 +30,7 @@
>>>   		serial1 = &lpuart5;
>>>   		serial2 = &lpuart6;
>>>   		serial3 = &lpuart7;
>>> +		usbphy0 = &usbphy1;
>>
>>     Is that really needed?

> Yes, since the driver code uses aligned id, and the controller number is from 0 at the code.
> I commented it here: [1]

   Fair enough...

>> [...]
>>> @@ -133,6 +134,33 @@
>> [...]
>>> +		usbphy1: usbphy@0x40350000 {
>>
>>     Name it "usb-phy@40350000" please.
>>
> 
> Would you please list binding doc for your suggestion?

   The DT spec v0.2, section 2.2.2:

https://github.com/devicetree-org/devicetree-specification/releases/download/v0.2/devicetree-specification-v0.2.pdf

> 
> Thanks,
> Peter
> 
> [1] https://patchwork.kernel.org/patch/10920599/

MBR, Sergei

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
