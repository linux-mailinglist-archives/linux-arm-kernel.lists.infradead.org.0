Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8EBA1A5C06
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 12 Apr 2020 04:32:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0EWVeMPVAAHHm7JdlMbN88SgdVgf2JmO+Wdy61LmJLM=; b=Q7pV6yZkcyXUnA
	HxPFpJi8JtH/bb03u4ipDaKkOQwDK4Jbk6+TYFbqVb9+W99t7H5fvs6/X6CU1W7XXBSd+AVqMmGJ0
	an17ZPVgNRTzr7ULxz2cY1amGFpYXslEbmeJWeCLCUIzISfbR4kpJlT9xoM6AyaxsufDE7uwd6Am6
	dmYnb5M/0fxnXnL5elwkoxHp0Q7wQY2LBegUptcsGbW6/6X9922iFUd4+PMD44Rk99zNmHsLthVS7
	gX1+tkgF9ssk4JMT8GmfCHESyfZIGTUZcRoLeaDJzNe1wMRl9OIbpBmu7vslsTSyXSgpSPd0gHHdS
	sOjYSgU+epXFCMuwRshQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNSPi-0007os-9x; Sun, 12 Apr 2020 02:32:02 +0000
Received: from mail-out.m-online.net ([2001:a60:0:28:0:1:25:1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNSPY-0007oV-EW
 for linux-arm-kernel@lists.infradead.org; Sun, 12 Apr 2020 02:31:54 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 490G3Q1SPGz1rrKs;
 Sun, 12 Apr 2020 04:31:46 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 490G3Q0dDZz1qqkV;
 Sun, 12 Apr 2020 04:31:46 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id uhoTir0kPX4n; Sun, 12 Apr 2020 04:31:44 +0200 (CEST)
X-Auth-Info: mCxCZzcnpmWVmG0fYIsU04UsZ1XC5Tjw8exFYU+rGBw=
Received: from [127.0.0.1] (unknown [195.140.253.167])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Sun, 12 Apr 2020 04:31:44 +0200 (CEST)
Subject: Re: [PATCH V4 21/22] ARM: dts: stm32: Add bindings for USB on AV96
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
References: <20200401132237.60880-1-marex@denx.de>
 <20200401132237.60880-22-marex@denx.de>
 <20200406072242.GG2937@Mani-XPS-13-9360>
 <59d1cc85-a65e-d2bf-4591-0828cf7b8390@denx.de>
 <f952f1ad-53bb-7b85-caad-2174a4333a2c@denx.de>
 <20200410090828.GC5723@Mani-XPS-13-9360>
 <9d3b3a76-9711-6fd9-cb1b-af412c2babcd@denx.de>
 <20200410113429.GB27211@Mani-XPS-13-9360>
 <3c342261-eb66-4c03-6981-65b4463e09cf@denx.de>
 <20200411041213.GA11800@Mani-XPS-13-9360>
From: Marek Vasut <marex@denx.de>
Message-ID: <802a7558-a902-6ea2-8dd1-562713d471fc@denx.de>
Date: Sun, 12 Apr 2020 03:54:59 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200411041213.GA11800@Mani-XPS-13-9360>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200411_193152_785828_B26BCE02 
X-CRM114-Status: GOOD (  28.57  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:a60:0:28:0:1:25:1 listed in] [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

On 4/11/20 6:12 AM, Manivannan Sadhasivam wrote:
> On Fri, Apr 10, 2020 at 08:02:51PM +0200, Marek Vasut wrote:
>> On 4/10/20 1:34 PM, Manivannan Sadhasivam wrote:
>>> On Fri, Apr 10, 2020 at 11:16:53AM +0200, Marek Vasut wrote:
>>>> On 4/10/20 11:08 AM, Manivannan Sadhasivam wrote:
>>>>> Hi,
>>>>
>>>> Hi,
>>>>
>>>>> On Tue, Apr 07, 2020 at 08:37:50PM +0200, Marek Vasut wrote:
>>>>>> On 4/6/20 1:08 PM, Marek Vasut wrote:
>>>>>>> On 4/6/20 9:22 AM, Manivannan Sadhasivam wrote:
>>>>>>>> On Wed, Apr 01, 2020 at 03:22:36PM +0200, Marek Vasut wrote:
>>>>>>>>> Fill in the bindings for USB host and gadget on AV96.
>>>>>>>>>
>>>>>>>>> Signed-off-by: Marek Vasut <marex@denx.de>
>>>>>>>>
>>>>>>>> I can't get the USB B-Micro OTG port to work with this patch. Do I need to
>>>>>>>> enable any configs other than PHY and USB DWC2 drivers?
>>>>>>>
>>>>>>> Only the DWC2 GADGET (and possibly host, for dual-role) and some gadget
>>>>>>> implementation (e.g. gadget zero).
>>>>>>
>>>>>> I think I see what doesn't work for you.
>>>>>>
>>>>>> It seems the following works on next:
>>>>>> power on -> plug in USB stick (or any other USB device) -> unplug ->
>>>>>> plug in usb host (e.g. PC)
>>>>>>
>>>>>> But this does not:
>>>>>> power on -> plug in usb host (e.g. PC)
>>>>>>  - the PC is not detected
>>>>>>
>>>>>
>>>>> Both doesn't work. I have the rndis gadget configured in userspace but plugging
>>>>> in the micro-b cable doesn't do anything.
>>>>>
>>>>>> Did that ^ ever work for you before ? I suspect this is a bug in the
>>>>>> DWC2 driver. The OTG operation there is known to be flaky at best.
>>>>>
>>>>> Not on this board. I don't recall what happended with vendor image. But I do
>>>>> have another STM32MP1 based 96Board (which will be submitted soon), there I can
>>>>> get OTG port working.
>>>>>
>>>>> But in that board a BG96 modem is connected to USB2 port on the board itself
>>>>> which gets enumerated during probe.
>>>>
>>>> But it's not configured as OTG on this other board, right ?
>>>
>>> It is configured as a OTG port. But that board has a different issue which
>>> resets the board when we connect any OTG cable to act as a host. That's not
>>> related to DWC2 or this issue btw.
>>
>> Do I misunderstand the part where you claim there is a modem connected
>> to the DWC2 ? That would mean it's in Host mode, no ?
>>
> 
> Let me make it clear. On that board, the USB connection is almost similar to
> Avenger96 except that there is only one host port used and it is connected to
> the BG96 modem onboard. The other OTG port is connected to micro-b connector.

So the BG96 modem is irrelevant, since it's connected to EHCI HCD,
different controller altogether.

> There I can _only_ get the OTG port to work in device mode. I haven't figured
> out what is the exact issue yet. So in the meantime, I may use
> 
> dr_mode = "peripheral"
> 
> to avoid it being used as host. But on Avenger96 board, the host ports are
> working but the OTG port is neither working as host nor as device.

Is there any difference in the DT between the AV96 and your custom board ?

In particular, look at
&pwr_regulators {
         vdd-supply = <&vdd_io>;
         vdd_3v3_usbfs-supply = <&vdd_usb>;
};

&usbotg_hs {} node and all the other usb* nodes.

>>> Anyway, I can't get OTG (device/host) to work on both old and new boards.
>>
>> Do you have 588-200 now too ?
>>
> 
> I have both 588-100 and 588-200 now. I told you that at the time of initial
> upstreaming I had only 588-100 but later Arrow sent me the new board.

OK good.

>> I think there is some fix in current linux-next which partly fixes the
>> DWC2 role switching, so rebase this patchset on current linux-next and
>> see what happens. But it's still not perfect. I also think that ST
>> managed to side-step this issue by using the STUSB1600 chip, but I might
>> be wrong.
> 
> Okay, I'll try for both Avenger96 and Stinger96 (yeah that's the name of the
> board I'm working on right now).

OK, so the OTG should be indeed almost identical.

Try the latest linux-next, the DWC2 behaves "better" in there. And try
plugging in some USB device first (like a USB stick), see if that's
detected.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
