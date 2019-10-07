Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE1EECEB69
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 20:05:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D95EA+AkaU6dsajyc65crbOEMFATpG4YLToib0jOuts=; b=H1L+ynvwELRdrs
	ME+Dw/sPd8+GQSvM3yBsLc78QGLPtbQ6Zroh2ahCN4Jd23sbxo8wqH3ltbZnRyO+85rk4sqTBVE+Y
	rq7ccIkrs5MpSmmch6qSkrlIdGLcigXdGTTPqhgpgOJKjITfgYxISgu74Ran/NJTNmsimZeLncRry
	y7klQfh6u3QSIaTqOlgms5M0QI81touZ4R6o9xFrHC+6HagMcAiMP4ZspK1QkGABFgnfQZqYP0d9d
	2tWCa/ZZkeav2bHj45SdWlWJhqVBx7DvJTFNodIk+20RYKEiXQktEtWkWQ9IayvLFJ9nqMPKFIs/h
	5Jr7ydaKYUP12m/+b4Eg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHXNi-00027b-TF; Mon, 07 Oct 2019 18:05:14 +0000
Received: from mga01.intel.com ([192.55.52.88])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHXNU-00021L-LY
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 18:05:02 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Oct 2019 11:04:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,269,1566889200"; d="scan'208";a="218038008"
Received: from tthayer-hp-z620.an.intel.com (HELO [10.122.105.146])
 ([10.122.105.146])
 by fmsmga004.fm.intel.com with ESMTP; 07 Oct 2019 11:04:58 -0700
Subject: Re: [PATCH v4 1/2] fpga: fpga-mgr: Add readback support
To: Moritz Fischer <mdf@kernel.org>
References: <1532672551-22146-1-git-send-email-appana.durga.rao@xilinx.com>
 <CANk1AXSEWcZ7Oqv5pgpwvJRyyFWk5gPtniXa7T+oe6-uywqEqA@mail.gmail.com>
 <MN2PR02MB6400CD5312983443A67DCC4EDC810@MN2PR02MB6400.namprd02.prod.outlook.com>
 <4476bf39-b665-50d8-fecd-d50687d10ca2@linux.intel.com>
 <20190927182308.GA6797@archbox>
From: Thor Thayer <thor.thayer@linux.intel.com>
Message-ID: <f8a9bc07-0705-1318-eba2-8878e839d696@linux.intel.com>
Date: Mon, 7 Oct 2019 13:06:51 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190927182308.GA6797@archbox>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_110500_713863_0CCFAC05 
X-CRM114-Status: GOOD (  27.32  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.88 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Nava kishore Manne <navam@xilinx.com>,
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

On 9/27/19 1:23 PM, Moritz Fischer wrote:
> Thor,
> 
> On Fri, Sep 27, 2019 at 09:32:11AM -0500, Thor Thayer wrote:
>> Hi Kedar & Moritz,
>>
>> On 9/27/19 12:13 AM, Appana Durga Kedareswara Rao wrote:
>>> Hi Alan,
>>>
>>> Did you get a chance to send your framework changes to upstream?
> No they weren't upstreamed.
> 
>>> @Moritz Fischer: If Alan couldn't send his patch series, Can we take this patch series??
>>> Please let me know your thoughts on this.
> 
> Alan had some comments RE: #defines, I'll have to take another look.
>>>
>>> Regards,
>>> Kedar.
>>
>>
>> I'd like to see some mechanism added as well. Our CvP driver needs a way to
>> load images to the FPGA over the PCIe bus.
> 
> Can you elaborate a bit on the CvP use-case and how that would work? Who
> would use the device how after loading the bitstream?
> 
> Generally there are several use cases that I have collected mentally
> over the years:
> 
> I) DFL use case:
>    - Mixed-set of drivers: Kernel and Userspace
>    - FPGA logic is discoverable through DFL
>    - Userspace application wants to reprogram FPGA
> 
> II) DT configfs use case:
>    - Mixed-set of drivers: Kernel and Userspace
>    - FPGA logic is *not* discoverable (hence DT overlay)
>    - Userspace application wants to reprogram FPGA
> 
> III) Thomas' case:
>    - Kernel only drivers (pcie bridge, pcie drivers, ...)
>    - FPGA logic is fully discoverable (i.e. PCIe endpoint
>      implemented in FPGA, connected to SoC via PCIe)
>    - Userspace application wants to reprogram FPGA
> 
> IV) VFIO case:
>    - Usually exposes either entire device via vfio-pci or part via
>      vfio-mdev
>    - Loading (basic) bitstream at boot from flash
>    - vfio-mdev case can use FPGA region interface + ioctl
>    - Full VFIO case is similar to III)
> 
> How does your CvP use case fit in? Collecting all the use-cases would
> help with moving forward on coming up with an API :)
> 
The CvP case is the same as III) Thomas' case. The FPGA configuration 
bitstream is downloaded over the PCIe.

The one difference in my case is that there isn't an SoC. This is a 
Intel host processor connecting to a non-SoC Stratix10/Arria10. The 
non-SoC A10/S10, boots a minimal image (CvP) setting up the peripheral 
pins and enabling the PCIe endpoint for CvP downloads.

The host can then download bitstreams using the FPGA Manager through 
debugFS and when the bitstream finishes downloading and the FPGA enters 
User Mode, the functionality is available for the host to use.

>>
>> It wasn't clear to me from the discussion on Alan's patchset[1] that the
>> debugfs was acceptable to the mainline. I'd be happy to resurrect that
>> patchset with the suggested changes.
> 
> Back then we decided to not move forward with the debugfs patchset since
> it's essentially cat foo.bin > /dev/xdevcfg / cat bar.rbf > /dev/fpga0
> in disguise. Which is why I vetoed it back then.
> 
>> Since debugfs isn't enabled for production, are there any alternatives?
>>
>> Alan sent a RFC [2] for loading FIT images through the sysfs.
>>
>> The RFC described a FIT image that included FPGA image specific information
>> to be included with the image (for systems running without device tree like
>> our PCIe bus FPGA CvP).
> 
> Yeah I had originally suggested that as a mechanim to make FPGA images
> discoverable by the kernel. I still think the idea has merit, however it
> will run into the same issues that the configfs interface ran into w.r.t
> using dt-overlays.
> 
> Generally I'd like to see a solution that exposes the *same* interface
> to DT and not DT systems to userspace.
> 
> Using FIT headers one could go ahead and design something along the
> lines of what DFL is doing, except for instead of parsing the DFL in the
> logic, one would parse the FIT header to create subdevices.
> 
>> Unfortunately, I believe this has the same uphill battle that the Device
>> Tree Overlay patches[3] have to getting accepted.
> 
> See above. While I'm happy to discuss this more I atm don't have the
> bandwidth to push the DT work any further.

Understood. I'm still coming up to speed on the variations of FPGA 
enablement but I'm happy to help where I can.

Thanks.

> 
> Thanks,
> Moritz
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
