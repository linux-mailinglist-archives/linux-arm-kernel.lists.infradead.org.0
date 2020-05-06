Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 381BF1C74A9
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 17:27:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=24oYRXF/GEmH3TOKA4ym792Es/3Fhy1myg7MWY3zcW8=; b=kVSgUfks80DINS
	sb0L/byER+WK7rWJ8kO7lm0By1Mf1QyzJxFCNdaPGAkjrT6kWioYtxIb3d3RhgpAmf2rhIBQxhso8
	hkAYOwTgCrtZu5pQ1vhhK6u7y5pMOH+K3kfN5icFUh+8VwVAHPFs7Tsl+oLiOZT+4mTafmRDQXm9n
	y/+kDQWSfzcyGfnO5dmIBz4jeJXVWphDUNEmizLA8kfqtmZVY227zKo6NMMr4zjaSbfYhsA+TzzOl
	2xUM8BH4GLF9rrT0r+p1l2z4PT6XhPolzfaQ6w0VDEWcIB9Wqffns5WkvOru6UDEXD+hgOjinCWK6
	0eSmJOo1hZvFYnz6yaEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWLxH-0000XP-A1; Wed, 06 May 2020 15:27:27 +0000
Received: from mail-out.m-online.net ([212.18.0.9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWLx2-0000Vd-2q
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 15:27:14 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 49HL723NH7z1r0FS;
 Wed,  6 May 2020 17:27:10 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 49HL722cwPz1qv81;
 Wed,  6 May 2020 17:27:10 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id 0LxFYhYoFGXR; Wed,  6 May 2020 17:27:09 +0200 (CEST)
X-Auth-Info: fUzIjt1XL8BHjl2o7G5TQbgdiyRuNN8XHUH0yTFZnfs=
Received: from [IPv6:::1] (unknown [195.140.253.167])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Wed,  6 May 2020 17:27:08 +0200 (CEST)
Subject: Re: [PATCH 01/12] ARM: dts: stm32: Add alternate pinmux for I2C2 pins
To: Alexandre Torgue <alexandre.torgue@st.com>,
 linux-arm-kernel@lists.infradead.org
References: <20200429163743.67854-1-marex@denx.de>
 <13aabff1-d4d0-7afb-6a57-a8136e35c6a4@st.com>
 <1d9cbde1-2be1-f54e-7c65-202f2bc7e0a9@denx.de>
 <b100645c-32ac-325d-5838-0fab2c93df22@st.com>
 <6dc6b79f-2a20-3899-e42f-eabaeb33a829@denx.de>
 <c012b356-c935-3536-a3eb-0683f4339dda@st.com>
 <dde82c6c-ec30-ad28-406d-4bd955c670c0@denx.de>
 <ea7c0254-f955-8636-8c62-326b8d07cb4f@st.com>
From: Marek Vasut <marex@denx.de>
Message-ID: <575b01a9-d2ba-917a-622f-2b5a166d642b@denx.de>
Date: Wed, 6 May 2020 17:27:08 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <ea7c0254-f955-8636-8c62-326b8d07cb4f@st.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_082712_283204_BF6B2F70 
X-CRM114-Status: GOOD (  13.54  )
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
Cc: Patrick Delaunay <patrick.delaunay@st.com>,
 linux-stm32@st-md-mailman.stormreply.com,
 Patrice Chotard <patrice.chotard@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 5/6/20 5:15 PM, Alexandre Torgue wrote:
> 
> 
> On 5/6/20 4:58 PM, Marek Vasut wrote:
>> On 5/6/20 4:55 PM, Alexandre Torgue wrote:
>>>
>>>
>>> On 5/6/20 4:39 PM, Marek Vasut wrote:
>>>> On 5/6/20 4:26 PM, Alexandre Torgue wrote:
>>>>>
>>>>>
>>>>>
>>>>>> All right, thanks.
>>>>>>
>>>>>> btw I had this internal discussion now about handling the
>>>>>> combinatorial
>>>>>> explosion of board DTs here. If we support them all, by the end of
>>>>>> the
>>>>>> lifespan of these devices, we end up with:
>>>>>>
>>>>>> STM32MP15{1,3,7}{a,c,d,f} SoM rev. {0..7}00 on baseboard rev.
>>>>>> {0..7}00.
>>>>>>
>>>>>> There won't be every SoM and baseboard revision combination all
>>>>>> right.
>>>>>> But even the amount of SoM options gives me 12 DTs. That is not a low
>>>>>> number. Does ST have some plan to handle such situation ?
>>>>>
>>>>> Yes I have the same point in mind. How to maintain all boards ? Should
>>>>> we refuse some boards and only keep one as example ?
>>>>
>>>> But which ones do you want to drop? The pdk2 is a devkit , so you can
>>>> put in any SoM option, that's the problem.
>>>
>>> Ok but we could choice to build only one (or few) possibilities. I mean
>>> maybe only mp157 ?
>>
>> But that one isn't gonna work for e.g. 153 then, would it?
> 
> No but we could let user of 153 do his own dts by hand. With a good
> split is not difficult to do.
> 
> For e.g I don't plan to upstream stm32mp153c-dk2 (I don't know if it
> really exist), but user could easily create his own stm32mp153c-dk2.dts
> by assembling well dtsi files and taking stm32mp157c-dk2 (or dk1) as
> example.

I would still want to make it easy for the users of this SoM to just use
it though. And I am quite sure there will be all combinations of it
eventually.

[...]

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
