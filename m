Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 770CF1A49F5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Apr 2020 20:46:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bheCgbNrIkFTIxMkC0/HSOasfh1R8jf21CbIOub7fIM=; b=OeNlY2BB3uGrn0
	p0L0temnyugBZh2dLrw9OuRm3C3yOnqKPyeoadfwhhy9AIId+aHNOZI+kYZTW4XgvLDCjLn4UwKLt
	hmeP9TgE2RS1Btw8j/Os8Rwpd185rl6Fwuag0wJWS21THyKl7BLqLnZvmk12kUdD7XfBqF0KfpEQN
	s9cO3FpsnCE3WeE6TtWIF9vm4VOsDEx5nkc9rZYmUy/u5apDuzJqY4opFL0J8OsM4NKpaXF6RLlMe
	yiNX7Qz7LGm3yX5fSnYnWjtRloxnPDMn/M/nGUy77p4MFH02a/vthy+atxqXhdkQ+W+B4O3BPCm9D
	z/QO4dmHcRxYSYv2FhaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMyfJ-000097-5A; Fri, 10 Apr 2020 18:46:09 +0000
Received: from mail-out.m-online.net ([212.18.0.9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMyew-0008Rp-TO
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Apr 2020 18:45:48 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 48zRm91Xfbz1qrfh;
 Fri, 10 Apr 2020 20:45:45 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 48zRm91Kmpz1qqkg;
 Fri, 10 Apr 2020 20:45:45 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id tQeCvboMKGF1; Fri, 10 Apr 2020 20:45:44 +0200 (CEST)
X-Auth-Info: +9YDySYi8OhX3xcuiZ+lCli8N6B1LgzPgRhn4oeB+2k=
Received: from [IPv6:::1] (unknown [195.140.253.167])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Fri, 10 Apr 2020 20:45:44 +0200 (CEST)
Subject: Re: [PATCH V4 00/22] ARM: dts: stm32: Repair AV96 board
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
References: <20200401132237.60880-1-marex@denx.de>
 <20200406072728.GI2937@Mani-XPS-13-9360>
 <9c51236f-a543-99dc-ca4f-5113831451ea@denx.de>
 <20200410090024.GB5723@Mani-XPS-13-9360>
 <7035b570-d1aa-532d-c70b-2fc1e04f9c28@denx.de>
 <20200410112829.GA27211@Mani-XPS-13-9360>
From: Marek Vasut <marex@denx.de>
Message-ID: <f2071b93-f831-2730-b038-e8f1d5d28f54@denx.de>
Date: Fri, 10 Apr 2020 20:03:42 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200410112829.GA27211@Mani-XPS-13-9360>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200410_114547_094296_1B578471 
X-CRM114-Status: GOOD (  17.50  )
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
Cc: Alexandre Torgue <alexandre.torgue@st.com>,
 Patrice Chotard <patrice.chotard@st.com>,
 Patrick Delaunay <patrick.delaunay@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 4/10/20 1:28 PM, Manivannan Sadhasivam wrote:
> On Fri, Apr 10, 2020 at 11:55:57AM +0200, Marek Vasut wrote:
>> On 4/10/20 11:00 AM, Manivannan Sadhasivam wrote:
>>> Hi,
>>
>> Hi,
>>
>>> On Tue, Apr 07, 2020 at 05:32:31PM +0200, Marek Vasut wrote:
>>>> On 4/6/20 9:27 AM, Manivannan Sadhasivam wrote:
>>>>> Hi,
>>>>
>>>> Hi,
>>>>
>>>>> On Wed, Apr 01, 2020 at 03:22:15PM +0200, Marek Vasut wrote:
>>>>>> The AV96 board device tree is completely broken and does not match the
>>>>>> hardware. This series fixes it up.
>>>>>>
>>>>>> Marek Vasut (22):
>>>>>>   ARM: dts: stm32: Add alternate pinmux for ethernet RGMII
>>>>>>   ARM: dts: stm32: Repair ethernet operation on AV96
>>>>>>   ARM: dts: stm32: Add missing ethernet PHY reset on AV96
>>>>>>   ARM: dts: stm32: Add missing ethernet PHY skews on AV96
>>>>>
>>>>> Ethernet works fine with cold boot but after warm reboot it fails with below
>>>>> message,
>>>>>
>>>>> [   18.192842] stm32-dwmac 5800a000.ethernet eth0: no phy at addr -1
>>>>> [   18.197539] stm32-dwmac 5800a000.ethernet eth0: stmmac_open: Cannot attach to PHY (err)
>>>>
>>>> Try this patch:
>>>>
>>>
>>> [   17.270826] stm32-dwmac 5800a000.ethernet eth0: no phy at addr -1
>>> [   17.275519] stm32-dwmac 5800a000.ethernet eth0: stmmac_open: Cannot attach to PHY (err)
>>>
>>> It doesn't work. Sorry, I don't have much time to dig into this issue so
>>> I'll leave it up to you :)
>>
>> I see, it does work on the new board, so I don't really know what to do
>> here. Maybe we should just not support the old prototype board ?
> 
> Sorry, it turned out to be a DT issue. My script was not updated when I switched
> to upstream bootloader. This patch works perfectly on both old and new boards.
> 
> Feel free to add,
> 
> Tested-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

OK, thanks. So that leaves only the DWC2 ?

I'll wait for ST to review this series before sending V5.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
