Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D0ADD9616
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 17:57:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jqSDraJBWkCucpAzy9fNWhgREW6SD3xT/AN0JAIVWgE=; b=BHH0U8XiwJ9vU4
	eiQV40lJ5Vzj5r3iBoE86/4/yFBVXQabRYE7rz0QBNSJwEH/5OChYB4VOp7jmXCuXSE2CGhczVKc2
	OqEceWpoCiMR2B2tHq00pwJUhbEyA/GW6w6zAFCqAu8JNhc7MeUri9QDq+uRxK+IA1hN584Sa6P16
	isNnhK2rV+3jtxkIxILayWhmN6+vFmFcoCflUYJeXiRftQfR5q91rhkSm21I41fY1UcibgqBain33
	IgjY2yxR/28wIKWd5Y9lABrSqIvCWUtMWacPKei2QviSP8ky6wMTqFRm9LhzJTFuRdYLCajD4FRH+
	OLBRqaA8n+F8XTeR+G2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKlg5-0002Ri-NV; Wed, 16 Oct 2019 15:57:33 +0000
Received: from mga07.intel.com ([134.134.136.100])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKlfl-00013M-Kl
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 15:57:15 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Oct 2019 08:55:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,304,1566889200"; d="scan'208";a="370837343"
Received: from tthayer-hp-z620.an.intel.com (HELO [10.122.105.146])
 ([10.122.105.146])
 by orsmga005.jf.intel.com with ESMTP; 16 Oct 2019 08:55:06 -0700
Subject: Re: [PATCH v4 1/2] fpga: fpga-mgr: Add readback support
To: Moritz Fischer <mdf@kernel.org>
References: <1532672551-22146-1-git-send-email-appana.durga.rao@xilinx.com>
 <CANk1AXSEWcZ7Oqv5pgpwvJRyyFWk5gPtniXa7T+oe6-uywqEqA@mail.gmail.com>
 <MN2PR02MB6400CD5312983443A67DCC4EDC810@MN2PR02MB6400.namprd02.prod.outlook.com>
 <4476bf39-b665-50d8-fecd-d50687d10ca2@linux.intel.com>
 <20190927182308.GA6797@archbox>
 <f8a9bc07-0705-1318-eba2-8878e839d696@linux.intel.com>
 <20191007212058.GA2929169@archbox>
From: Thor Thayer <thor.thayer@linux.intel.com>
Message-ID: <bbacc271-a356-2a6c-8e08-0cc65cee6c0e@linux.intel.com>
Date: Wed, 16 Oct 2019 10:57:02 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191007212058.GA2929169@archbox>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_085713_719556_E3FD1E66 
X-CRM114-Status: GOOD (  25.68  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.100 listed in list.dnswl.org]
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
Reply-To: thor.thayer@linux.intel.com
Cc: agust@denx.de, Nava kishore Manne <navam@xilinx.com>,
 "kedare06@gmail.com" <kedare06@gmail.com>, Alan Tull <atull@kernel.org>,
 "linux-fpga@vger.kernel.org" <linux-fpga@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Siva Durga Prasad Paladugu <sivadur@xilinx.com>,
 Dinh Nguyen <dinguyen@kernel.org>, Michal Simek <michals@xilinx.com>,
 Richard Gong <richard.gong@linux.intel.com>,
 Appana Durga Kedareswara Rao <appanad@xilinx.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Moritz,

On 10/7/19 4:20 PM, Moritz Fischer wrote:
> Hi Thor,
> 
> On Mon, Oct 07, 2019 at 01:06:51PM -0500, Thor Thayer wrote:
>> Hi Moritz,
>>
>> On 9/27/19 1:23 PM, Moritz Fischer wrote:
>>> Thor,
>>>
>>> On Fri, Sep 27, 2019 at 09:32:11AM -0500, Thor Thayer wrote:
>>>> Hi Kedar & Moritz,
>>>>
>>>> On 9/27/19 12:13 AM, Appana Durga Kedareswara Rao wrote:
>>>>> Hi Alan,
>>>>>
>>>>> Did you get a chance to send your framework changes to upstream?
>>> No they weren't upstreamed.
>>>
>>>>> @Moritz Fischer: If Alan couldn't send his patch series, Can we take this patch series??
>>>>> Please let me know your thoughts on this.
>>>
>>> Alan had some comments RE: #defines, I'll have to take another look.
>>>>>
>>>>> Regards,
>>>>> Kedar.
>>>>
>>>>
>>>> I'd like to see some mechanism added as well. Our CvP driver needs a way to
>>>> load images to the FPGA over the PCIe bus.
>>>
>>> Can you elaborate a bit on the CvP use-case and how that would work? Who
>>> would use the device how after loading the bitstream?
>>>
>>> Generally there are several use cases that I have collected mentally
>>> over the years:
>>>
>>> I) DFL use case:
>>>     - Mixed-set of drivers: Kernel and Userspace
>>>     - FPGA logic is discoverable through DFL
>>>     - Userspace application wants to reprogram FPGA
>>>
>>> II) DT configfs use case:
>>>     - Mixed-set of drivers: Kernel and Userspace
>>>     - FPGA logic is *not* discoverable (hence DT overlay)
>>>     - Userspace application wants to reprogram FPGA
>>>
>>> III) Thomas' case:
>>>     - Kernel only drivers (pcie bridge, pcie drivers, ...)
>>>     - FPGA logic is fully discoverable (i.e. PCIe endpoint
>>>       implemented in FPGA, connected to SoC via PCIe)
>>>     - Userspace application wants to reprogram FPGA
>>>
>>> IV) VFIO case:
>>>     - Usually exposes either entire device via vfio-pci or part via
>>>       vfio-mdev
>>>     - Loading (basic) bitstream at boot from flash
>>>     - vfio-mdev case can use FPGA region interface + ioctl
>>>     - Full VFIO case is similar to III)
>>>
>>> How does your CvP use case fit in? Collecting all the use-cases would
>>> help with moving forward on coming up with an API :)
>>>
>> The CvP case is the same as III) Thomas' case. The FPGA configuration
>> bitstream is downloaded over the PCIe.
>>
>> The one difference in my case is that there isn't an SoC. This is a Intel
>> host processor connecting to a non-SoC Stratix10/Arria10. The non-SoC
>> A10/S10, boots a minimal image (CvP) setting up the peripheral pins and
>> enabling the PCIe endpoint for CvP downloads.
>>
>> The host can then download bitstreams using the FPGA Manager through debugFS
>> and when the bitstream finishes downloading and the FPGA enters User Mode,
>> the functionality is available for the host to use.
> 
> I am generally confused by this driver. How does it work exactly? What
> happens after altera-cvp binds a PCI device?
> 
> You can use it to download a bitstream (say we had the debugfs
> interface), and then what happens next? How do I use the device? It
> already has a PCI driver bound to it at that point?

Sorry for the delay. In the CvP case, I reboot the host device leaving 
the FPGA board powered so the new PCI interface is enumerated.

There may be a better way. I'll need to research Thomas' use case. There 
may be some good lessons to learn there.

Thanks,

Thor

> 
> What happens next?
> 
> Please tell me that not the only use-case for this is /dev/mem :)
> 
> Thomas' use-case is different in that behind the FPGA device there are
> actual other *discoverable* PCI devices that will get enumerated and
> bind to separate drivers.
> 
> Thanks,
> Moritz
> 
> PS: I'll be out this week on vacation starting tmr so responses might be delayed
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
