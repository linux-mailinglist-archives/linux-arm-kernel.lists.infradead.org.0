Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED2FDCEE5A
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 23:21:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K4cjBgJBG2A6ijoj7ivHzAvLOnVvbFmAG8WNFmGi4Uc=; b=ddqzT+dxpTn7Xq
	1zJB37/BjI/Y47B12yGOImRCYG2wpoC5JyyxKtsHJpJGlXKrk6QZosYn6pk0UBz4Q8nLQlg/gocwP
	jAhhfJrrHl+CCtuyTkZ9zRUT+30fvf00tNVMQnwsRGOAg4NI5PnD/LKoWmg/2+CR58/jLTlWrsI2n
	YGfOZ93B4LsSDF41tkjb+kqhMZU3Rra5U/R8d3zIYVEv7sYenV8EsjwR3f4gQaPK5xT1CDU+lZng0
	s+lC/tBx7mNnZWYtL/SY8yuNsQGbx+dP+JMp++iuzVY9hgwPP8/X9f6sQPFWMFg091Ly85kIYScv9
	s9YNuH3P25EpNb9jyUXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHaRJ-0007Of-F0; Mon, 07 Oct 2019 21:21:09 +0000
Received: from mail-pg1-f193.google.com ([209.85.215.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHaRD-0007O5-Ck
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 21:21:04 +0000
Received: by mail-pg1-f193.google.com with SMTP id u12so636494pgb.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 07 Oct 2019 14:21:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Ne+gjpSAsSZCPqyjaVRLIU8NFITcOF/zLKSCkYOILvY=;
 b=hPMw5z/YZ8m9G+d/b0sjoC8A8m0+gh7LinXrCkuImj8ekws0ZJSiDq//SNRTmTBehg
 kcn9ADevIDuwbe9oI0agb066pXF6M5MmPa9yBV+la0wa9T/LRL6QWsHiFYbgCUefO0A3
 4lDN9hrPK6/2+141dcMQvdrXX+2sKmpn93XR/sOpRL+CJjCqHATgSISZyFxzLLcDQyhg
 RxRSWtC/G6/f+x03y7qBWSbZmiy2X7WyvAKb8PidInxwYsR/Du0cp60D5dBQOLkUrJ0p
 VQ1U+wH1a3aMRiAvP0cGU2d8MXr98/ymzUJpBUpsWIZF1i8IEKFkkBfAeSiiV8KdNtQc
 LP7Q==
X-Gm-Message-State: APjAAAWlEq4gnpIMSijaMS6UKJ5WM6iEzVVIiYv42wOEAha97F9+1GRm
 /7mpAADQSiitqO1dp/csldH0dQ==
X-Google-Smtp-Source: APXvYqzhWLAcy5V9e5bo7GU00koo3J4gXnU61zWPnEE/o6/QkWloI2yUxtBc3CIVy9mThC1pr8ubbg==
X-Received: by 2002:a63:9144:: with SMTP id l65mr33107157pge.148.1570483260688; 
 Mon, 07 Oct 2019 14:21:00 -0700 (PDT)
Received: from localhost ([2601:647:5b00:424:4354:8908:1ef2:1e9f])
 by smtp.gmail.com with ESMTPSA id w2sm14662672pfn.57.2019.10.07.14.20.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Oct 2019 14:20:59 -0700 (PDT)
Date: Mon, 7 Oct 2019 14:20:58 -0700
From: Moritz Fischer <mdf@kernel.org>
To: Thor Thayer <thor.thayer@linux.intel.com>
Subject: Re: [PATCH v4 1/2] fpga: fpga-mgr: Add readback support
Message-ID: <20191007212058.GA2929169@archbox>
References: <1532672551-22146-1-git-send-email-appana.durga.rao@xilinx.com>
 <CANk1AXSEWcZ7Oqv5pgpwvJRyyFWk5gPtniXa7T+oe6-uywqEqA@mail.gmail.com>
 <MN2PR02MB6400CD5312983443A67DCC4EDC810@MN2PR02MB6400.namprd02.prod.outlook.com>
 <4476bf39-b665-50d8-fecd-d50687d10ca2@linux.intel.com>
 <20190927182308.GA6797@archbox>
 <f8a9bc07-0705-1318-eba2-8878e839d696@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f8a9bc07-0705-1318-eba2-8878e839d696@linux.intel.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_142103_432407_ED2DF765 
X-CRM114-Status: GOOD (  26.15  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.193 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.193 listed in wl.mailspike.net]
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
Cc: agust@denx.de, Nava kishore Manne <navam@xilinx.com>,
 "kedare06@gmail.com" <kedare06@gmail.com>, Alan Tull <atull@kernel.org>,
 "linux-fpga@vger.kernel.org" <linux-fpga@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Siva Durga Prasad Paladugu <sivadur@xilinx.com>,
 Dinh Nguyen <dinguyen@kernel.org>, Michal Simek <michals@xilinx.com>,
 Moritz Fischer <mdf@kernel.org>, Richard Gong <richard.gong@linux.intel.com>,
 Appana Durga Kedareswara Rao <appanad@xilinx.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Thor,

On Mon, Oct 07, 2019 at 01:06:51PM -0500, Thor Thayer wrote:
> Hi Moritz,
> 
> On 9/27/19 1:23 PM, Moritz Fischer wrote:
> > Thor,
> > 
> > On Fri, Sep 27, 2019 at 09:32:11AM -0500, Thor Thayer wrote:
> > > Hi Kedar & Moritz,
> > > 
> > > On 9/27/19 12:13 AM, Appana Durga Kedareswara Rao wrote:
> > > > Hi Alan,
> > > > 
> > > > Did you get a chance to send your framework changes to upstream?
> > No they weren't upstreamed.
> > 
> > > > @Moritz Fischer: If Alan couldn't send his patch series, Can we take this patch series??
> > > > Please let me know your thoughts on this.
> > 
> > Alan had some comments RE: #defines, I'll have to take another look.
> > > > 
> > > > Regards,
> > > > Kedar.
> > > 
> > > 
> > > I'd like to see some mechanism added as well. Our CvP driver needs a way to
> > > load images to the FPGA over the PCIe bus.
> > 
> > Can you elaborate a bit on the CvP use-case and how that would work? Who
> > would use the device how after loading the bitstream?
> > 
> > Generally there are several use cases that I have collected mentally
> > over the years:
> > 
> > I) DFL use case:
> >    - Mixed-set of drivers: Kernel and Userspace
> >    - FPGA logic is discoverable through DFL
> >    - Userspace application wants to reprogram FPGA
> > 
> > II) DT configfs use case:
> >    - Mixed-set of drivers: Kernel and Userspace
> >    - FPGA logic is *not* discoverable (hence DT overlay)
> >    - Userspace application wants to reprogram FPGA
> > 
> > III) Thomas' case:
> >    - Kernel only drivers (pcie bridge, pcie drivers, ...)
> >    - FPGA logic is fully discoverable (i.e. PCIe endpoint
> >      implemented in FPGA, connected to SoC via PCIe)
> >    - Userspace application wants to reprogram FPGA
> > 
> > IV) VFIO case:
> >    - Usually exposes either entire device via vfio-pci or part via
> >      vfio-mdev
> >    - Loading (basic) bitstream at boot from flash
> >    - vfio-mdev case can use FPGA region interface + ioctl
> >    - Full VFIO case is similar to III)
> > 
> > How does your CvP use case fit in? Collecting all the use-cases would
> > help with moving forward on coming up with an API :)
> > 
> The CvP case is the same as III) Thomas' case. The FPGA configuration
> bitstream is downloaded over the PCIe.
> 
> The one difference in my case is that there isn't an SoC. This is a Intel
> host processor connecting to a non-SoC Stratix10/Arria10. The non-SoC
> A10/S10, boots a minimal image (CvP) setting up the peripheral pins and
> enabling the PCIe endpoint for CvP downloads.
> 
> The host can then download bitstreams using the FPGA Manager through debugFS
> and when the bitstream finishes downloading and the FPGA enters User Mode,
> the functionality is available for the host to use.

I am generally confused by this driver. How does it work exactly? What
happens after altera-cvp binds a PCI device?

You can use it to download a bitstream (say we had the debugfs
interface), and then what happens next? How do I use the device? It
already has a PCI driver bound to it at that point?

What happens next?

Please tell me that not the only use-case for this is /dev/mem :)

Thomas' use-case is different in that behind the FPGA device there are
actual other *discoverable* PCI devices that will get enumerated and
bind to separate drivers.

Thanks,
Moritz

PS: I'll be out this week on vacation starting tmr so responses might be delayed

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
