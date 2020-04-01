Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AF3319ABFA
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Apr 2020 14:45:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HVfmVSG5y4gBj2IbXhFqGzCoCDfbcmC8g6FM24RhFLc=; b=s5UhcofyZLF9If
	4qBQRkmOfIiuj31lCahWZv8JH8UB4D/6KbXGWWv6fd2Yb529U+Q0lv2t+8IKc7PJjYpMkl26Lt1N3
	LVyYEfqoA5MRq0sTWzSyUSqp36l801jB1EhlYOCRcC1OsOB/1pRneLFvqYSRDUfQLI8c74CwbmAkN
	8crp4TvSi04P0tfrwNqU5yHfQhwbRtbX6zYWsuGEyT+wFyh3kC6UB3F0/K20PhZ6a6R2YykJbdNj/
	oyxmMP4kR4xQzAp59MQAiZGp4C5+MlSiijT+w+w4aNLZDCFsDvg+l0IW8WPW199TLEkymtohJfpCs
	gqW8blrPA96/Bk9lT+UA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJckW-0006Fm-Jb; Wed, 01 Apr 2020 12:45:40 +0000
Received: from mail-out.m-online.net ([212.18.0.9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJckQ-0006F6-2M
 for linux-arm-kernel@lists.infradead.org; Wed, 01 Apr 2020 12:45:35 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 48smBh1D6vz1qrfB;
 Wed,  1 Apr 2020 14:45:32 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 48smBh0QnCz1r0cS;
 Wed,  1 Apr 2020 14:45:32 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id rGYzA3kVKRfJ; Wed,  1 Apr 2020 14:45:31 +0200 (CEST)
X-Auth-Info: 6KQKAPHhJxCCe7C/XdCN8XrrkSVjWTtWr26IHnW7VxU=
Received: from [IPv6:::1] (unknown [195.140.253.167])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Wed,  1 Apr 2020 14:45:31 +0200 (CEST)
Subject: Re: [Linux-stm32] [PATCH V3 13/22] ARM: dts: stm32: Enable GPU on AV96
To: Lucas Stach <l.stach@pengutronix.de>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 linux-arm-kernel@lists.infradead.org
References: <20200331175811.205153-1-marex@denx.de>
 <20200331175811.205153-14-marex@denx.de>
 <eb93de42-1fa2-e4ee-e104-3c8b57b64c40@st.com>
 <9ed8f864-9bbe-b090-2399-6cea8b088fe2@denx.de>
 <84ebedc52340f57487f2e75fddef2be1df825d77.camel@pengutronix.de>
From: Marek Vasut <marex@denx.de>
Message-ID: <efaabb82-e710-762e-1e2b-fd7790fe69bb@denx.de>
Date: Wed, 1 Apr 2020 14:45:30 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <84ebedc52340f57487f2e75fddef2be1df825d77.camel@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_054534_267508_67019041 
X-CRM114-Status: GOOD (  12.85  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.18.0.9 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [212.18.0.9 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com,
 Patrick Delaunay <patrick.delaunay@st.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 4/1/20 2:40 PM, Lucas Stach wrote:

[...]

>>>> index 27c48f988540..19a7a130b148 100644
>>>> --- a/arch/arm/boot/dts/stm32mp157a-avenger96.dts
>>>> +++ b/arch/arm/boot/dts/stm32mp157a-avenger96.dts
>>>> @@ -139,6 +139,10 @@ phy0: ethernet-phy@7 {
>>>>       };
>>>>   };
>>>>   +&gpu {
>>>> +    status = "okay";
>>>> +};
>>>> +
>>>
>>> GPU is now enable by so you can drop this patch.
>>
>> Why is it enabled by default ? That's somewhat useless on headless
>> systems.
> 
> The better question is: why wouldn't it be enabled by default? It's a
> SoC peripheral and has no external dependencies. Even on a headless
> system you can still do stuff like color conversion/balancing via GL in
> a video pipeline or something like this. There is simply no good reason
> to hide the existence of the GPU.

Power saving ? Resource saving ?
Why should it be enabled if it's not used ?

[...]

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
