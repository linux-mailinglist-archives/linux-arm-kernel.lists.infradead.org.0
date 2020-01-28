Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C750014C299
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Jan 2020 23:07:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=laMxfstwKPYoYjgrVJbUWfGwXU3jSD1Ccl9ltHQUMjs=; b=L2vkOL5fwGG+68OsGd0vT6tyy
	05ttR4w9HFXx9+mc+HgB9BcTHhegPoj1yyb/OHSkcZavMnhiZ2BpBTH5FuF0HFXJnC2MYdd+NpXLf
	EzouQIfJv8CN3nQvNq6alaFqnTegyZmBV+pECG8fVxHJTKojk3fHGcGFfLXzrTnxodOJw49eYYNHW
	qu5wfmsMXG4tVsitJbwq7pwksK78YG2FLwdqgV5AVgeLp4lw8xyqdU20gquZ6TIZu6yXy52RnpPwz
	JmpBNY++WsEPqU2F7vXAkOV+CXoXwbj6fbswWVQ0glCV3L28v+DVFtTcAfaV7+xwJkqJPrvxGWM92
	6JYsfXmxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwZ0z-0007Ah-Tn; Tue, 28 Jan 2020 22:07:21 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwZ0k-00079q-U6
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Jan 2020 22:07:08 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 02AA81FB;
 Tue, 28 Jan 2020 14:07:03 -0800 (PST)
Received: from [192.168.1.123] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4BAF13F68E;
 Tue, 28 Jan 2020 14:07:00 -0800 (PST)
Subject: Re: [PATCH v2 0/7] Introduce bus firewall controller framework
To: Benjamin GAIGNARD <benjamin.gaignard@st.com>,
 Sudeep Holla <sudeep.holla@arm.com>
References: <20200128153806.7780-1-benjamin.gaignard@st.com>
 <20200128163628.GB30489@bogus> <7f54ec36-8022-a57a-c634-45257f4c6984@st.com>
 <20200128171639.GA36496@bogus> <26eb1fde-5408-43f0-ccba-f0c81e791f54@st.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <6a6ba7ff-7ed9-e573-63ca-66fca609075b@arm.com>
Date: Tue, 28 Jan 2020 22:06:54 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <26eb1fde-5408-43f0-ccba-f0c81e791f54@st.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_140707_060770_06A54078 
X-CRM114-Status: GOOD (  21.96  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, "robh@kernel.org" <robh@kernel.org>,
 Loic PALLARDY <loic.pallardy@st.com>, "arnd@arndb.de" <arnd@arndb.de>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "system-dt@lists.openampproject.org" <system-dt@lists.openampproject.org>,
 "broonie@kernel.org" <broonie@kernel.org>, "lkml@metux.net" <lkml@metux.net>,
 "linux-imx@nxp.com" <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "fabio.estevam@nxp.com" <fabio.estevam@nxp.com>,
 "stefano.stabellini@xilinx.com" <stefano.stabellini@xilinx.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-01-28 8:06 pm, Benjamin GAIGNARD wrote:
> 
> On 1/28/20 6:17 PM, Sudeep Holla wrote:
>> On Tue, Jan 28, 2020 at 04:46:41PM +0000, Benjamin GAIGNARD wrote:
>>> On 1/28/20 5:36 PM, Sudeep Holla wrote:
>>>> On Tue, Jan 28, 2020 at 04:37:59PM +0100, Benjamin Gaignard wrote:
>>>>> Bus firewall framework aims to provide a kernel API to set the configuration
>>>>> of the harware blocks in charge of busses access control.
>>>>>
>>>>> Framework architecture is inspirated by pinctrl framework:
>>>>> - a default configuration could be applied before bind the driver.
>>>>>      If a configuration could not be applied the driver is not bind
>>>>>      to avoid doing accesses on prohibited regions.
>>>>> - configurations could be apllied dynamically by drivers.
>>>>> - device node provides the bus firewall configurations.
>>>>>
>>>>> An example of bus firewall controller is STM32 ETZPC hardware block
>>>>> which got 3 possible configurations:
>>>>> - trust: hardware blocks are only accessible by software running on trust
>>>>>      zone (i.e op-tee firmware).
>>>>> - non-secure: hardware blocks are accessible by non-secure software (i.e.
>>>>>      linux kernel).
>>>>> - coprocessor: hardware blocks are only accessible by the coprocessor.
>>>>> Up to 94 hardware blocks of the soc could be managed by ETZPC.
>>>>>
>>>> /me confused. Is ETZPC accessible from the non-secure kernel space to
>>>> begin with ? If so, is it allowed to configure hardware blocks as secure
>>>> or trusted ? I am failing to understand the overall design of a system
>>>> with ETZPC controller.
>>> Non-secure kernel could read the values set in ETZPC, if it doesn't match
>>> with what is required by the device node the driver won't be probed.
>>>
>> OK, but I was under the impression that it was made clear that Linux is
>> not firmware validation suite. The firmware need to ensure all the devices
>> that are not accessible in the Linux kernel are marked as disabled and
>> this needs to happen before entering the kernel. So if this is what this
>> patch series achieves, then there is no need for it. Please stop pursuing
>> this any further or provide any other reasons(if any) to have it. Until
>> you have other reasons, NACK for this series.
> 
> No it doesn't disable the nodes.
> 
> When the firmware disable a node before the kernel that means it change
> 
> the DTB and that is a problem when you want to sign it. With my proposal
> 
> the DTB remains the same.

???

:/

The DTB is used to pass the kernel command line, memory reservations, 
random seeds, and all manner of other things dynamically generated by 
firmware at boot-time. Apologies for being blunt but if "changing the 
DTB" is considered a problem then I can't help but think you're doing it 
wrong.

Robin.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
