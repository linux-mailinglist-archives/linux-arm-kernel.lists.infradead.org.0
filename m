Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DEB051A44DA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Apr 2020 11:58:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xi/43aq6/4AG8RkSGEQ2upP4WSJ8xsRHMmE6wy9b1Pk=; b=XBZxpX+JjGHtTZ
	X1vwURvlrgwP7NLfrXCz9lmUN3P7Ack11RmpJJA9s8EgjZe30//hyAFO0IENSWrP0SBoWQJxYSTp5
	j8MNqaTo80G9tr2vJh27mEasfgMzzXUD6VowrgWyUKSTgQKI4xE2LrkfQdaOeFbFRpQJDkXHkWHti
	S1QD/29XGlZsgXuFcFk3cqIVnt+kuZm8ec+p/OOUzeDV+2Oebe07CtX/J4DZrvNiAOXLuFSRSQ06y
	VKr6UOGruNODFGZDOXwz3sV76Y91osQaOtpAibtcXOOmS0AaxDzbAKyyMBDacVHUWO7daWqjdOYK7
	NYSwGc/kGMFexiPvkvpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMqQv-0005w8-7C; Fri, 10 Apr 2020 09:58:45 +0000
Received: from mail-out.m-online.net ([212.18.0.9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMqQk-0005vB-TX
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Apr 2020 09:58:36 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 48zD3p5QWBz1qs0H;
 Fri, 10 Apr 2020 11:58:30 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 48zD3p4Msxz1r0bb;
 Fri, 10 Apr 2020 11:58:30 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id wkmvuz9bxBqv; Fri, 10 Apr 2020 11:58:29 +0200 (CEST)
X-Auth-Info: hdxjcCBA9QbhMuhWdgbfglETnU3ZdUJJWIepPA3XWkc=
Received: from [IPv6:::1] (unknown [195.140.253.167])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Fri, 10 Apr 2020 11:58:29 +0200 (CEST)
Subject: Re: [PATCH V4 21/22] ARM: dts: stm32: Add bindings for USB on AV96
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
References: <20200401132237.60880-1-marex@denx.de>
 <20200401132237.60880-22-marex@denx.de>
 <20200406072242.GG2937@Mani-XPS-13-9360>
 <59d1cc85-a65e-d2bf-4591-0828cf7b8390@denx.de>
 <f952f1ad-53bb-7b85-caad-2174a4333a2c@denx.de>
 <20200410090828.GC5723@Mani-XPS-13-9360>
From: Marek Vasut <marex@denx.de>
Message-ID: <9d3b3a76-9711-6fd9-cb1b-af412c2babcd@denx.de>
Date: Fri, 10 Apr 2020 11:16:53 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200410090828.GC5723@Mani-XPS-13-9360>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200410_025835_105914_45BC62BC 
X-CRM114-Status: GOOD (  19.53  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.18.0.9 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [212.18.0.9 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

On 4/10/20 11:08 AM, Manivannan Sadhasivam wrote:
> Hi,

Hi,

> On Tue, Apr 07, 2020 at 08:37:50PM +0200, Marek Vasut wrote:
>> On 4/6/20 1:08 PM, Marek Vasut wrote:
>>> On 4/6/20 9:22 AM, Manivannan Sadhasivam wrote:
>>>> On Wed, Apr 01, 2020 at 03:22:36PM +0200, Marek Vasut wrote:
>>>>> Fill in the bindings for USB host and gadget on AV96.
>>>>>
>>>>> Signed-off-by: Marek Vasut <marex@denx.de>
>>>>
>>>> I can't get the USB B-Micro OTG port to work with this patch. Do I need to
>>>> enable any configs other than PHY and USB DWC2 drivers?
>>>
>>> Only the DWC2 GADGET (and possibly host, for dual-role) and some gadget
>>> implementation (e.g. gadget zero).
>>
>> I think I see what doesn't work for you.
>>
>> It seems the following works on next:
>> power on -> plug in USB stick (or any other USB device) -> unplug ->
>> plug in usb host (e.g. PC)
>>
>> But this does not:
>> power on -> plug in usb host (e.g. PC)
>>  - the PC is not detected
>>
> 
> Both doesn't work. I have the rndis gadget configured in userspace but plugging
> in the micro-b cable doesn't do anything.
> 
>> Did that ^ ever work for you before ? I suspect this is a bug in the
>> DWC2 driver. The OTG operation there is known to be flaky at best.
> 
> Not on this board. I don't recall what happended with vendor image. But I do
> have another STM32MP1 based 96Board (which will be submitted soon), there I can
> get OTG port working.
> 
> But in that board a BG96 modem is connected to USB2 port on the board itself
> which gets enumerated during probe.

But it's not configured as OTG on this other board, right ?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
