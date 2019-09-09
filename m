Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FD03AD68E
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 12:17:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vXzysXaG5FlYUZLeOq5YhSjoMCtmLj1Z2/gJbnyZhfo=; b=gH1uCjPmV8AQSML75gaxu/cbV
	jyFujtmSgzwmTw+Ic2d2hWUM25FdyZ00kG2hZXSDk1+Ix7cTYHYFGEg6bxsb/DnOABzTwfg0SVmBX
	zwy5051QMwdH8aq3SYuEc1ePHn5ZopJ5eK7uysx+3wQZLUeYLKtuxIoOC63uvLb6zqQMZgsLTdFMy
	JwcnOKuhC36AolQpRoPG13pLYpm39xfPkC+h5Stfa2p/1ix72n5xOurC0LXLK6ccivafH+WR7WA0S
	dOMOw2skYg0kWpEM0Q8PLGxEkXsyR0gybxj3qhZGHiAVVB1IFarbSR5QfXJ/uXspSHe9m53fIRGzg
	R6seQuNdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7Gjb-0004US-4T; Mon, 09 Sep 2019 10:17:23 +0000
Received: from smtp-fw-33001.amazon.com ([207.171.190.10])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7GjM-0004Tb-GT
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Sep 2019 10:17:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
 t=1568024228; x=1599560228;
 h=subject:to:cc:references:from:message-id:date:
 mime-version:in-reply-to:content-transfer-encoding;
 bh=vMrY2p1PfXK9Uv4R55TgvSNS84UEi4ukNsLZIYc1Eds=;
 b=OLNqDfsPm2YwS/yWFrX5zZy7zp25nv11TxlCJ9mTdlqodUqpzgEE5B/5
 jnhp4c1XRuBIVhAyww/n4K1qbuaeCS3ZzujyY5g9dG1iv6GGUl5NIR9Sl
 8suoHlNCCIknxdQIkkumIMUSmsqQ44uuQoGc9IGIiYTyLr8JbNHqsumOK I=;
X-IronPort-AV: E=Sophos;i="5.64,484,1559520000"; d="scan'208";a="829217047"
Received: from sea3-co-svc-lb6-vlan2.sea.amazon.com (HELO
 email-inbound-relay-2c-397e131e.us-west-2.amazon.com) ([10.47.22.34])
 by smtp-border-fw-out-33001.sea14.amazon.com with ESMTP;
 09 Sep 2019 10:17:05 +0000
Received: from EX13MTAUEA001.ant.amazon.com
 (pdx4-ws-svc-p6-lb7-vlan3.pdx.amazon.com [10.170.41.166])
 by email-inbound-relay-2c-397e131e.us-west-2.amazon.com (Postfix) with ESMTPS
 id B6210A226E; Mon,  9 Sep 2019 10:17:04 +0000 (UTC)
Received: from EX13D01EUB001.ant.amazon.com (10.43.166.194) by
 EX13MTAUEA001.ant.amazon.com (10.43.61.243) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Mon, 9 Sep 2019 10:17:03 +0000
Received: from [10.125.238.52] (10.43.161.176) by EX13D01EUB001.ant.amazon.com
 (10.43.166.194) with Microsoft SMTP Server (TLS) id 15.0.1367.3;
 Mon, 9 Sep 2019 10:16:52 +0000
Subject: Re: [PATCH 3/3] arm64: alpine: select AL_POS
To: Arnd Bergmann <arnd@arndb.de>
References: <1568020220-7758-1-git-send-email-talel@amazon.com>
 <1568020220-7758-4-git-send-email-talel@amazon.com>
 <CAK8P3a0DEMeFWK+RuAdSLyDYduWWwj9DxP_Beipays-d_6ixnA@mail.gmail.com>
From: "Shenhar, Talel" <talel@amazon.com>
Message-ID: <ab512ced-d989-5c10-a550-2a4723d38e7e@amazon.com>
Date: Mon, 9 Sep 2019 13:16:47 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.0
MIME-Version: 1.0
In-Reply-To: <CAK8P3a0DEMeFWK+RuAdSLyDYduWWwj9DxP_Beipays-d_6ixnA@mail.gmail.com>
Content-Language: en-US
X-Originating-IP: [10.43.161.176]
X-ClientProxiedBy: EX13D21UWB001.ant.amazon.com (10.43.161.108) To
 EX13D01EUB001.ant.amazon.com (10.43.166.194)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_031708_593628_27CC7DF3 
X-CRM114-Status: GOOD (  15.38  )
X-Spam-Score: -10.0 (----------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-10.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.171.190.10 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, mjourdan@baylibre.com,
 Catalin Marinas <catalin.marinas@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 jonnyc@amazon.com, Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 ronenk@amazon.com, Will
 Deacon <will@kernel.org>, Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 DTML <devicetree@vger.kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Santosh Shilimkar <ssantosh@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, hanochu@amazon.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, barakw@amazon.com,
 hhhawa@amazon.com, gregkh <gregkh@linuxfoundation.org>,
 paul.kocialkowski@bootlin.com, Patrick
 Venture <venture@google.com>, Olof Johansson <olof@lixom.net>,
 David Miller <davem@davemloft.net>, David Woodhouse <dwmw@amazon.co.uk>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 9/9/2019 12:40 PM, Arnd Bergmann wrote:
> On Mon, Sep 9, 2019 at 11:14 AM Talel Shenhar <talel@amazon.com> wrote:
>> Amazon's Annapurna Labs SoCs uses al-pos driver, enable it.
>>
>> Signed-off-by: Talel Shenhar <talel@amazon.com>
>> ---
>>   arch/arm64/Kconfig.platforms | 1 +
>>   1 file changed, 1 insertion(+)
>>
>> diff --git a/arch/arm64/Kconfig.platforms b/arch/arm64/Kconfig.platforms
>> index 4778c77..bd86b15 100644
>> --- a/arch/arm64/Kconfig.platforms
>> +++ b/arch/arm64/Kconfig.platforms
>> @@ -25,6 +25,7 @@ config ARCH_SUNXI
>>   config ARCH_ALPINE
>>          bool "Annapurna Labs Alpine platform"
>>          select ALPINE_MSI if PCI
>> +       select AL_POS
>>          help
>>            This enables support for the Annapurna Labs Alpine
>>            Soc family.
> Generally I think this kind of thing should go into the defconfig
> rather than being hard-selected. There might be users that
> want to not enable the driver.
>
>         Arnd

The reason for selecting it is because this is a driver that we will 
always want for ARCH_ALPINE.



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
