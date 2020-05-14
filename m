Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CF661D305C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 14:53:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=qSRQCAaeZFP9qXPu7RQm7FbJpBtREFp8OIBHWEZtN+U=; b=pGehRwr4QmIq6avb0Fr9tGv3L
	bs0OZu0TiPZhFouSIS0XTsb2Rj5mPyolZYrpenp64RWlVTBWv/gMXQtrs450WBPZdJxvsFsLfRlZg
	/SMkWYHZGQiihfJ+Zp7aSCkQ5C17wEnctO0CHkLDuP+NvA9zffSuj4e2qlBwEfaxgloEO0z03HuuD
	MwVDDNAHcdsqOjDS74j2VCQhnpzxQF5wl8no24ImZfqlhXMUipm8AMz1ttSGOOpa8d6htAbmuOl0R
	7uGuEReAazlBqGTYAWu6yHfsl7H9BgWgSZCxGkJeQfs2IUosOC9gZvcv59toQzMcr73o+mr1gWlD7
	cGiBRShfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZDMl-0007te-94; Thu, 14 May 2020 12:53:35 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZDMa-0007t6-Hn
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 12:53:26 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 04ECqOfG012268; Thu, 14 May 2020 14:53:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=nHSWD3rAvd4p9vuLYKA3ZWiKVn+Vm2Lf+IPFO5a7YEk=;
 b=aqMOulBAvl+8xoCgiDgMnbTqfEe79LvSFqONLc7j5PE6Hpuh1hW6OjVpaMaDDCalnUim
 asRk0IBE6JIzsW0gKEpec3FgCSv+4gBMntCJHSqfdnBmCy5rXRn5/tgT0Debk3c5oZVg
 ywFW1sS8IYwPOP1RK4gTQBxMzEoJh1T4kbeURsD6gyvIBPzugWOuT+NJL2j9OX5m1SME
 zZZumUCD5bLXiTFkt0v+jhyyatlDh0HlK3Fu6fHTi5xeEXGr972vRrahzpV5PveXxKWX
 31xMuAnpAko1YAR9rsPFP0oh3/YyYzbjxVRINoHrOfZwEgFT8YHKIW0oAi8azE1Hor+A bg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 3100vpkb2f-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 14 May 2020 14:53:08 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 442B5100034;
 Thu, 14 May 2020 14:53:05 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 18F0F2BAE4E;
 Thu, 14 May 2020 14:53:05 +0200 (CEST)
Received: from lmecxl0912.tpe.st.com (10.75.127.47) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Thu, 14 May
 2020 14:52:56 +0200
Subject: Re: [PATCH v3 3/5] ARM: dts: stm32: enable ltdc binding with ili9341
 on stm32429-disco board
To: Linus Walleij <linus.walleij@linaro.org>, <dillon.minfei@gmail.com>
References: <1589267017-17294-1-git-send-email-dillon.minfei@gmail.com>
 <1589267017-17294-4-git-send-email-dillon.minfei@gmail.com>
 <CACRpkda5VjjBdbruXTi33QBNb=VU6vK2zDE8yyQXoWw7=NQFeg@mail.gmail.com>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <a4ebd7cd-5756-0683-135f-0f96be8a4a7b@st.com>
Date: Thu, 14 May 2020 14:52:49 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <CACRpkda5VjjBdbruXTi33QBNb=VU6vK2zDE8yyQXoWw7=NQFeg@mail.gmail.com>
Content-Language: en-US
X-Originating-IP: [10.75.127.47]
X-ClientProxiedBy: SFHDAG3NODE1.st.com (10.75.127.7) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.676
 definitions=2020-05-14_03:2020-05-14,
 2020-05-14 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_055324_870618_8E81CD40 
X-CRM114-Status: GOOD (  18.26  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "open list:OPEN
 FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, Dave Airlie <airlied@linux.ie>,
 Michael Turquette <mturquette@baylibre.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>,
 linux-clk <linux-clk@vger.kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 "thierry.reding@gmail.com" <thierry.reding@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, Sam Ravnborg <sam@ravnborg.org>,
 linux-stm32@st-md-mailman.stormreply.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 5/14/20 10:24 AM, Linus Walleij wrote:
> On Tue, May 12, 2020 at 9:04 AM <dillon.minfei@gmail.com> wrote:
> 
>> From: dillon min <dillon.minfei@gmail.com>
>>
>> Enable the ltdc & ili9341 on stm32429-disco board.
>>
>> Signed-off-by: dillon min <dillon.minfei@gmail.com>
> 
> This mostly looks good but...
> 
>> +&spi5 {
>> +       status = "okay";
>> +       pinctrl-0 = <&spi5_pins>;
>> +       pinctrl-names = "default";
>> +       #address-cells = <1>;
>> +       #size-cells = <0>;
>> +       cs-gpios = <&gpioc 2 GPIO_ACTIVE_LOW>;
>> +       dmas = <&dma2 3 2 0x400 0x0>,
>> +              <&dma2 4 2 0x400 0x0>;
>> +       dma-names = "rx", "tx";
> 
> These DMA assignments seem to be SoC things and should
> rather be in the DTS(I) file where &spi5 is defined, right?
> stm32f429.dtsi I suppose?

I agree with Linus, DMA have to be defined in SoC dtsi. And if a board 
doesn't want to use it, we use the "delete-property".

> 
> It is likely the same no matter which device is using spi5.
> 
> Yours,
> Linus Walleij
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
