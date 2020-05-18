Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC1181D71BF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 09:26:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X1dwkhkXnXkE6mshsiEdLmoHC3NZzvItVdFtlr1A2NM=; b=i6sRfRIEJ2BYOd
	HnNMK7ebZFNDpxy6VolnAQqCSjo9jQ9lizfBCU3fsUzxoNu0N8e8GV2oUzTnrYNp8FFbx8gsyf8TK
	idrG0LRQRt6DHSpJfC92QH7/Jo4MqfU7yAtrhHCWMQv7NxfkO54U4afWR+CAETCzdLzn52KjXZ814
	vTfjpaWGZO7XMA9+uQ3cpveFCjVt2FcA2lM71LJfkFM79A205niMX4ibvzJpxWbImAl5Zpel4UV+A
	C5jTfpleIesjiYw7Qq7UsOgfnvnT1tbHvqhytW5dSfbeLmdDz6/qYWQunW3b5f6NshfXjQkM4apLL
	ZlcNEHJx8scEYWdoIt5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaaA3-0006w3-4R; Mon, 18 May 2020 07:26:07 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaa9u-0006vJ-3c
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 07:25:59 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 04I7MwVY000489; Mon, 18 May 2020 09:25:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=96Qx9T4l9btbZlYCanjYMz8LWe4TWd5HlYaC0S7keCg=;
 b=DD4gCEFgAjLIf4Sdl2mn9FNSK0ht4/M3toLBzrVmSh+c/wn2sbrhNyuuouB5oe6xHr2D
 cwb64BE6kpGK8tDbyi4Caqw4baabKjaPGqfMWOABIOrR5/aH9PBQYXCIXtSWnBFwHBpZ
 MgIlR8EdstvmG4VKciLF65st+VguxD/4aos+MPgfLC4udP05rP2MDRx73m2MJbMmRvFZ
 CpwS53KCF2gkXYGZrlwfswGv5bbFnPLBH0mAheWn41DooCt6DXktVBSVaaLDgIMmlpaO
 YD+ytoJ5VCnvL7MqBB1pjpDGGdIY9tkM4urxlYIf2EZt/GodnLmq/N/5Om6qUeqvlpDy zg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 3125xxj4ut-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 18 May 2020 09:25:48 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id D6AE310002A;
 Mon, 18 May 2020 09:25:47 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag5node2.st.com [10.75.127.14])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id C12FF2A759E;
 Mon, 18 May 2020 09:25:47 +0200 (CEST)
Received: from SFHDAG3NODE1.st.com (10.75.127.7) by SFHDAG5NODE2.st.com
 (10.75.127.14) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Mon, 18 May
 2020 09:25:47 +0200
Received: from SFHDAG3NODE1.st.com ([fe80::1166:1abb:aad4:5f86]) by
 SFHDAG3NODE1.st.com ([fe80::1166:1abb:aad4:5f86%20]) with mapi id
 15.00.1473.003; Mon, 18 May 2020 09:25:47 +0200
From: Erwan LE RAY <erwan.leray@st.com>
To: Geert Uytterhoeven <geert@linux-m68k.org>, "mani@kernel.org"
 <mani@kernel.org>
Subject: Re: [Linux-stm32] [PATCH v3 1/2] dt-bindings: serial: Document
 CTS/RTS gpios in STM32 UART
Thread-Topic: [Linux-stm32] [PATCH v3 1/2] dt-bindings: serial: Document
 CTS/RTS gpios in STM32 UART
Thread-Index: AQHWLOKqKuTyIkoopEKFBSTOruYjFqitT8sA
Date: Mon, 18 May 2020 07:25:47 +0000
Message-ID: <4ff30338-e704-12bd-80fe-82b8c08e78d9@st.com>
References: <20200420170204.24541-1-mani@kernel.org>
 <20200420170204.24541-2-mani@kernel.org>
 <CAMuHMdVGem_2BGQK4dqZQb3sOd0LZk+RS_z4SvSRcNECEJHdwA@mail.gmail.com>
In-Reply-To: <CAMuHMdVGem_2BGQK4dqZQb3sOd0LZk+RS_z4SvSRcNECEJHdwA@mail.gmail.com>
Accept-Language: en-US, fr-FR
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.49]
Content-ID: <A9984B761F26544187A953C83E9086B0@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.676
 definitions=2020-05-18_02:2020-05-15,
 2020-05-18 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_002558_600253_33057482 
X-CRM114-Status: GOOD (  16.73  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>,
 "open list:SERIAL DRIVERS" <linux-serial@vger.kernel.org>,
 Greg KH <gregkh@linuxfoundation.org>, Linux
 Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Andy Shevchenko <andy.shevchenko@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Maxime
 Coquelin <mcoquelin.stm32@gmail.com>, Fabrice GASNIER <fabrice.gasnier@st.com>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Geert,


On 5/18/20 9:04 AM, Geert Uytterhoeven wrote:
> Hi Mani,
>
> On Mon, Apr 20, 2020 at 7:02 PM <mani@kernel.org> wrote:
>> From: Manivannan Sadhasivam <mani@kernel.org>
>>
>> Document the use of CTS/RTS gpios for flow control in STM32 UART
>> controller. These properties can be used instead of 'st,hw-flow-ctrl'
>> for making use of any gpio pins for flow control instead of dedicated
>> pins. It should be noted that both CTS/RTS and 'st,hw-flow-ctrl'
>> properties cannot co-exist in a design.
>>
>> Reviewed-by: Andy Shevchenko <andy.shevchenko@gmail.com>
>> Signed-off-by: Manivannan Sadhasivam <mani@kernel.org>
>> --- a/Documentation/devicetree/bindings/serial/st,stm32-uart.yaml
>> +++ b/Documentation/devicetree/bindings/serial/st,stm32-uart.yaml
>> @@ -55,6 +61,14 @@ properties:
>>     linux,rs485-enabled-at-boot-time: true
>>     rs485-rx-during-tx: true
>>
>> +if:
>> +  required:
>> +    - st,hw-flow-ctrl
> Perhaps "st,hw-flow-ctrl" should be deprecated, in favor of the standard
> "uart-has-rtscts" property?
> Of course the driver needs to gain support for the latter first.

You're fully right, the patch to deprecate "st, hw-flow-ctrl" and 
introduce generic "uart-has-rtscts" property in the driver is ready and 
will be sent this week on top of Mani patch.


>
>> +then:
>> +  properties:
>> +    cts-gpios: false
>> +    rts-gpios: false
>> +
>>   required:
>>     - compatible
>>     - reg
> Gr{oetje,eeting}s,
>
>                          Geert
>
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
