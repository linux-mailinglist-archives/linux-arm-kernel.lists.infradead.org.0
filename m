Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5FCD199A49
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 17:51:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qz9G+3iuC+D0fUoxSQRPkoFhZlQ3hXBA0KOAtpZkeus=; b=iFsmAXqWpAHsi1
	Exp0TfnpAtU1LWg3dVkmDl/flgThHAy7ufGU4Am8X3p1j5Mzu2AbKuNDY0T30d64FDR4opXowVbxN
	hT6r1PYDRp+bZm+3BQtif3HzlTgnloXvpQRAyZ8mgQlRSAMf+kGCPyH8BIlYPxmjDyBSSrd6cPsi9
	VOCdHhFyzSVC+Gpw/brOeY2BPg6MqNTmQcarwPr9PPZ5SSN6IRbUh3puvtmdHyl1rM/488sCzAnrz
	Q8+xk1z9Sb2SGePbS8xNKT2UpQ3nNNDojgIfCC1QVSf46P+Ds/RPcko8P0bCJUBt3FccMWUuUkwvw
	YxMCzaj7j1FcleNdQTxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJJAe-0002Iu-P7; Tue, 31 Mar 2020 15:51:20 +0000
Received: from mail-out.m-online.net ([212.18.0.9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJJAR-0002IB-Qb
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 15:51:09 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 48sDMG08zRz1qrLq;
 Tue, 31 Mar 2020 17:51:06 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 48sDMF6Z0Zz1qqkQ;
 Tue, 31 Mar 2020 17:51:05 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id XNJmiJ7bzyC6; Tue, 31 Mar 2020 17:51:04 +0200 (CEST)
X-Auth-Info: MJiEhPpU0Kddc5/OUrVPfOS2uVhs/G486Aox8qI/K8w=
Received: from [IPv6:::1] (unknown [195.140.253.167])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Tue, 31 Mar 2020 17:51:04 +0200 (CEST)
Subject: Re: [PATCH V2 00/22] ARM: dts: stm32: Repair AV96 board
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
References: <20200331005701.283998-1-marex@denx.de>
 <20200331040736.GA14274@Mani-XPS-13-9360>
 <7dc86fa9-504c-cbc3-9a24-29644d66f9e3@denx.de>
 <20200331140900.GC17755@Mani-XPS-13-9360>
From: Marek Vasut <marex@denx.de>
Message-ID: <2595fc00-e3f0-fe38-995a-b0028819e47a@denx.de>
Date: Tue, 31 Mar 2020 17:51:04 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200331140900.GC17755@Mani-XPS-13-9360>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_085108_155563_DC00F1AC 
X-CRM114-Status: GOOD (  20.20  )
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

On 3/31/20 4:09 PM, Manivannan Sadhasivam wrote:
> On Tue, Mar 31, 2020 at 03:44:52PM +0200, Marek Vasut wrote:
>> On 3/31/20 6:07 AM, Manivannan Sadhasivam wrote:
>>> Hi Marek,
>>
>> Hi,
>>
>>> Thanks for the series. 
>>>
>>> On Tue, Mar 31, 2020 at 02:56:39AM +0200, Marek Vasut wrote:
>>>> The AV96 board device tree is completely broken and does not match the
>>>> hardware. This series fixes it up.
>>>>
>>>
>>> Completely broken?
>>
>> The board didn't even boot.
>>
> 
> Hmm. I think you're using a new revision of AV96. I added the board support
> with an old version of it (might be an evaluation one). I don't have the delta
> or changeset so can't compare. Anyway, DH started selling new boards and I
> think the old ones were discontinued or not made available for purchase so we
> don't have to worry about breaking the old one.

I'm sure we can/should support both, lemme ask about this. The baseboard
I have is 588-200 (silkscreen next to barrel jack) and SoM 586-100.

>>> The patch submitted previously was an initial one and there
>>> were many interfaces not enabled. I agree that there are few _obvious_ things
>>> like SDMMC1/Ethernet pinmux, LED naming were wrong. This was due to the fact the
>>> board was on early bringup stage and I couldn't test Ethernet due to my setup
>>> issue at that time (yeah I know it is bad). Also, I don't get access to DHCOR
>>> schematics as well for things like PMIC. Do you have access to it?
>>
>> Yes, I do have access.
>>
>>> If possible can you share a link to that if available publicly?
>>
>> The SoM schematic is not available in public, no, sorry.
>>
> 
> Fine. Just wanted to verify the PMIC part. But I got the information from
> DH guy offline.

Yep, I saw that, good.

>>> I will test this series and also the uboot one on my board and give my
>>> Tested-by tag soon.
>>>
>>> Anyway, I think the patchset subject could be something like,
>>> "Improve AV96 support" :)
>>
>> I think if something doesn't work, "Repair" is the right word for it.
> 
> Right. Didn't know that it doesn't boot on newer boards. I do have one but
> haven't tried mainline kernel on it, just vendor image for some demos. But
> feel free to keep it as it is.

Do you have the Enpirion regulator on the SoM ? It's between the
STPMIC1A and the SPI NOR.

I'll be sending a V3 shortly (few hours), apply it on next/master if you
want to test:
git://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
