Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AAA16079A
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jul 2019 16:15:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sAUmSjJXQ20wFggjthjv/aycmGjOT4ulAi/qHqCM/Gw=; b=HpJ/NoJy0/87ua
	7wCfMCs7KyuyreNUChRtacJTAH5JKAPPUul2l+vv/DiOIuWDXZCIo1zu8jnXfTmFEtDFxPJDYbQbB
	H6C0RI+luJDHMidoaTrrytXYAVsiB2qFZxFRf0QezmPa7QTobCo+F9dSalgFZiTBuLZ5py5krzM3C
	knBOC873sXTb0FRkyHAl7UuV/Tu0CaOTYHO/JtSB6OKb2xybe8YriFMDv/Qp6ubh8g7Rmr+WpmEo3
	LgcmRa8unuPT0yAMwJIx/58J9fnoHo9IN81N5iS6wXqOFob0FBCALfmG/iJx88A1E6Kdud3AiwJZD
	mBlDMW0eUV4z7eTnSZfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjOzd-00008e-B8; Fri, 05 Jul 2019 14:15:17 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjOzT-0008F1-Vp
 for linux-arm-kernel@bombadil.infradead.org; Fri, 05 Jul 2019 14:15:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=MIME-Version:Content-Transfer-Encoding:
 Content-ID:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:To:
 From:Sender:Reply-To:Cc:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=njzQHa4+h1RnF+3DEZ8qWlHR8A0NDvMIkjMuExbOY/c=; b=V/KCEJ1GTECxxChTMv68BA6gwR
 QKUjxhKf3lRoB+beAEgwp8qFVe+xSK3tHGk0ZJLBB8BmUHumRWUGFAdGijrIWkcLZvsjRvjFj9dt5
 cjHedoEFHvfjY2BJmIQtNIuPr1y7Y8hm2m21AaA5uCPVbzlsviPuh2o9wTP6YMCdn7r+CWaNZ8F6u
 fkNacLHP1r+p/wSQPaELx82BRu/2l6GtAWdUEGqXNP7hSl1LD6Up4yHWc+Hckb5aIoKC/AzN54vWg
 /uhxFivwgit+z7Z41vRTp3N/8ZG6mxev5EupRqR1ZnRN+sgwnwZBx3EHxbQVRGItxZm8MyhSYz3H3
 fvydtTeg==;
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjNSE-0001sy-3H
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jul 2019 12:36:44 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x65CVYTY029722; Fri, 5 Jul 2019 14:35:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : subject :
 date : message-id : references : in-reply-to : content-type : content-id :
 content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=njzQHa4+h1RnF+3DEZ8qWlHR8A0NDvMIkjMuExbOY/c=;
 b=Lms/oWpARTnfFQZUGeLLSL/L5nCtc4yzZ/CJ0qPJ0hKUMsYaYecBD/8UKtYDYaRrRHBt
 l2cG1M1ivkaqS6KPtjjDZzFp7+tv6a8Btq9SpvxDUUWWQtFHndcN96Zei+cX7Pnl17za
 lCrFTCEwLRM6Et0oiVg66e+9uElel5r76m8cdY4Uqf1hXM7kKTOSeeadR5UFlCWPcO27
 5h6salTtUNpFVrgDhLmYhcR6JrRewtugTCbL+tBa0NOfUoTAiYUAbUwhsO5ZwimFvkt3
 /6jFjyql7Bun7AVz1gsL5KWi0P8RSvHJIJ0hmG6DEEBRoIdy5bImxxgwrvn5EJ49lQ2o ig== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2tdwf1jhdu-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Fri, 05 Jul 2019 14:35:16 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 79C7D34;
 Fri,  5 Jul 2019 12:35:15 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag6node2.st.com [10.75.127.17])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 40D982C7F;
 Fri,  5 Jul 2019 12:35:15 +0000 (GMT)
Received: from SFHDAG6NODE3.st.com (10.75.127.18) by SFHDAG6NODE2.st.com
 (10.75.127.17) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Fri, 5 Jul
 2019 14:35:14 +0200
Received: from SFHDAG6NODE3.st.com ([fe80::d04:5337:ab17:b6f6]) by
 SFHDAG6NODE3.st.com ([fe80::d04:5337:ab17:b6f6%20]) with mapi id
 15.00.1473.003; Fri, 5 Jul 2019 14:35:14 +0200
From: Philippe CORNU <philippe.cornu@st.com>
To: Olivier MOYSAN <olivier.moysan@st.com>, "a.hajda@samsung.com"
 <a.hajda@samsung.com>, "narmstrong@baylibre.com" <narmstrong@baylibre.com>,
 "Laurent.pinchart@ideasonboard.com" <Laurent.pinchart@ideasonboard.com>,
 "jonas@kwiboo.se" <jonas@kwiboo.se>, "jernej.skrabec@siol.net"
 <jernej.skrabec@siol.net>, "airlied@linux.ie" <airlied@linux.ie>,
 "daniel@ffwll.ch" <daniel@ffwll.ch>, "dri-devel@lists.freedesktop.org"
 <dri-devel@lists.freedesktop.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>,
 Benjamin GAIGNARD <benjamin.gaignard@st.com>,
 Alexandre TORGUE <alexandre.torgue@st.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "jsarha@ti.com" <jsarha@ti.com>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "mark.rutland@arm.com" <mark.rutland@arm.com>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>
Subject: Re: [PATCH 2/3] dt-bindings: display: sii902x: Change audio mclk
 binding
Thread-Topic: [PATCH 2/3] dt-bindings: display: sii902x: Change audio mclk
 binding
Thread-Index: AQHVMO2JtZ7sVttbMk6Xu8iqEAATraa72MyA
Date: Fri, 5 Jul 2019 12:35:14 +0000
Message-ID: <ca446f4b-d918-fe6d-f6bd-4aa07efbefac@st.com>
References: <1562082426-14876-1-git-send-email-olivier.moysan@st.com>
 <1562082426-14876-3-git-send-email-olivier.moysan@st.com>
In-Reply-To: <1562082426-14876-3-git-send-email-olivier.moysan@st.com>
Accept-Language: fr-FR, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.45]
Content-ID: <82CCEAE863094E428B349826FE92A781@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-07-05_05:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190705_133642_219995_FA71FF5B 
X-CRM114-Status: GOOD (  22.72  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.9 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Olivier,
and many thanks for your patch.
I have double checked in the sil9022/24 datasheet and you are right:

"As an option, the original MCLK signal used to strobe the I2S signals 
out from the sourcing chip can be used. If the internal PLL is used, 
then an external MCLK input is not required."

So, even if #sound-dai-cells is there, this is not mandatory to have MCLK.

Reviewed-by: Philippe Cornu <philippe.cornu@st.com>
Philippe :-)


On 7/2/19 5:47 PM, Olivier Moysan wrote:
> As stated in SiL9022/24 datasheet, master clock is not required for I2S.
> Make mclk property optional in DT bindings.
> 
> Fixes: 3f18021f43a3 ("dt-bindings: display: sii902x: Add HDMI audio bindings")
> 
> Signed-off-by: Olivier Moysan <olivier.moysan@st.com>
> ---
>   Documentation/devicetree/bindings/display/bridge/sii902x.txt | 5 ++---
>   1 file changed, 2 insertions(+), 3 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/display/bridge/sii902x.txt b/Documentation/devicetree/bindings/display/bridge/sii902x.txt
> index 2df44b7d3821..6e14e087c0d0 100644
> --- a/Documentation/devicetree/bindings/display/bridge/sii902x.txt
> +++ b/Documentation/devicetree/bindings/display/bridge/sii902x.txt
> @@ -26,9 +26,8 @@ Optional properties:
>   	- clocks: phandle and clock specifier for each clock listed in
>              the clock-names property
>   	- clock-names: "mclk"
> -	   Describes SII902x MCLK input. MCLK is used to produce
> -	   HDMI audio CTS values. This property is required if
> -	   "#sound-dai-cells"-property is present. This property follows
> +	   Describes SII902x MCLK input. MCLK can be used to produce
> +	   HDMI audio CTS values. This property follows
>   	   Documentation/devicetree/bindings/clock/clock-bindings.txt
>   	   consumer binding.
>   
> 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
