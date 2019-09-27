Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1C1BC0AFA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Sep 2019 20:23:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Lk0r/SWWGr+0gD7w3XhGeSVKvb9/npCrG5WJMeMEZkU=; b=MvvJNj7XEjEj8B
	ZyxuuVO28ChEE7rqiP4DgUBWO+hJdD5kUwWgwpd3dN90WN+cZrcTR6I9bH3WCjsbv+yE6AoULplS9
	JsZ2tuDbDcacM/2GEEDItUQuGJUrmOEI41S0rmzLnVxo1oHPv+Hsvk4w8yVBCEu6XxrzDJFCCa8Dj
	ah5uATARpNF37iIpZ3nRhQb1ors8FzvQkc+4GC8D0+dB/QRvz1Jl7bbKoqWvUuDzfVBzhTUxM0KnC
	GNJ2YegJg558c7WpoSsp4SwRXMUBXqEgELJV00Ty7zrX67Si5zCFowo17qtshpsFV/F47vFfnkMI/
	p7UTm1R21brDsjiY6OcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDutm-0006Yl-Am; Fri, 27 Sep 2019 18:23:22 +0000
Received: from mail-pf1-f193.google.com ([209.85.210.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDutc-0006P8-HO
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Sep 2019 18:23:13 +0000
Received: by mail-pf1-f193.google.com with SMTP id q10so2060514pfl.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 27 Sep 2019 11:23:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=oDBtpY1GQLpL/JR+SFoGIBX4Y29kVVG5vEdX0iccMk8=;
 b=NtHbZS4dExzuj09Et45xSneWyaUj3rukwllYvWUudYcKI0QVrbJul7EHg1sWM0jGNi
 HO+IKa2ywl/wfd2ZMogapB40XP2UaV+vNX6Pfesg3zrH8+W3+PMZg2BmWX8D73TMxFCj
 V3PwcYSIVdoU82F9HiWPSq8pgvxEfZ43TUexmQjoaD+uNLPhq+CBpnTxiyC7Suz6koDT
 /ElAWaphu3Y+P3DrycIIC2iquZi8RpjOpbR+wF2Lo5yoSsmD3ZI8r01TjTDU3K+cnDLb
 enIR3ONbplIVDvuXaE68c+YWGPb+63Vh5X45qfT6rcMjv6ukdgTPnYO006Qt1CGOMkqe
 kX5A==
X-Gm-Message-State: APjAAAXTWd6Dqnk9rqzgvY/WzhjjePTcd/ZU/lbHJ26t+oBbINgQUSgP
 yZex9N88+Jh+RaM6m3xZ4fuqaK6j96Y=
X-Google-Smtp-Source: APXvYqzqWxiHSsJGgOTC3RSwQqw0m5Nd0Qtze2Vl47/R2uYBjnm6OQ+cMmKRPzISq2iCS4QfwMTWmQ==
X-Received: by 2002:a62:8683:: with SMTP id x125mr5840538pfd.108.1569608590487; 
 Fri, 27 Sep 2019 11:23:10 -0700 (PDT)
Received: from localhost ([2601:647:5b80:29f7:1bdd:d748:9a4e:8083])
 by smtp.gmail.com with ESMTPSA id j16sm6087780pje.6.2019.09.27.11.23.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 27 Sep 2019 11:23:09 -0700 (PDT)
Date: Fri, 27 Sep 2019 11:23:08 -0700
From: Moritz Fischer <mdf@kernel.org>
To: Thor Thayer <thor.thayer@linux.intel.com>
Subject: Re: [PATCH v4 1/2] fpga: fpga-mgr: Add readback support
Message-ID: <20190927182308.GA6797@archbox>
References: <1532672551-22146-1-git-send-email-appana.durga.rao@xilinx.com>
 <CANk1AXSEWcZ7Oqv5pgpwvJRyyFWk5gPtniXa7T+oe6-uywqEqA@mail.gmail.com>
 <MN2PR02MB6400CD5312983443A67DCC4EDC810@MN2PR02MB6400.namprd02.prod.outlook.com>
 <4476bf39-b665-50d8-fecd-d50687d10ca2@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4476bf39-b665-50d8-fecd-d50687d10ca2@linux.intel.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190927_112312_576159_7E95CFF4 
X-CRM114-Status: GOOD (  18.86  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.193 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.193 listed in wl.mailspike.net]
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
Cc: Nava kishore Manne <navam@xilinx.com>,
 "kedare06@gmail.com" <kedare06@gmail.com>, Alan Tull <atull@kernel.org>,
 "linux-fpga@vger.kernel.org" <linux-fpga@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Siva Durga Prasad Paladugu <sivadur@xilinx.com>,
 Dinh Nguyen <dinguyen@kernel.org>, Moritz Fischer <mdf@kernel.org>,
 Michal Simek <michals@xilinx.com>, Richard Gong <richard.gong@linux.intel.com>,
 Appana Durga Kedareswara Rao <appanad@xilinx.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Thor,

On Fri, Sep 27, 2019 at 09:32:11AM -0500, Thor Thayer wrote:
> Hi Kedar & Moritz,
> 
> On 9/27/19 12:13 AM, Appana Durga Kedareswara Rao wrote:
> > Hi Alan,
> > 
> > Did you get a chance to send your framework changes to upstream?
No they weren't upstreamed.

> > @Moritz Fischer: If Alan couldn't send his patch series, Can we take this patch series??
> > Please let me know your thoughts on this.

Alan had some comments RE: #defines, I'll have to take another look.
> > 
> > Regards,
> > Kedar.
> 
> 
> I'd like to see some mechanism added as well. Our CvP driver needs a way to
> load images to the FPGA over the PCIe bus.

Can you elaborate a bit on the CvP use-case and how that would work? Who
would use the device how after loading the bitstream?

Generally there are several use cases that I have collected mentally
over the years:

I) DFL use case:
  - Mixed-set of drivers: Kernel and Userspace
  - FPGA logic is discoverable through DFL
  - Userspace application wants to reprogram FPGA

II) DT configfs use case:
  - Mixed-set of drivers: Kernel and Userspace
  - FPGA logic is *not* discoverable (hence DT overlay)
  - Userspace application wants to reprogram FPGA

III) Thomas' case:
  - Kernel only drivers (pcie bridge, pcie drivers, ...)
  - FPGA logic is fully discoverable (i.e. PCIe endpoint
    implemented in FPGA, connected to SoC via PCIe)
  - Userspace application wants to reprogram FPGA

IV) VFIO case:
  - Usually exposes either entire device via vfio-pci or part via
    vfio-mdev
  - Loading (basic) bitstream at boot from flash
  - vfio-mdev case can use FPGA region interface + ioctl
  - Full VFIO case is similar to III)

How does your CvP use case fit in? Collecting all the use-cases would
help with moving forward on coming up with an API :)

> 
> It wasn't clear to me from the discussion on Alan's patchset[1] that the
> debugfs was acceptable to the mainline. I'd be happy to resurrect that
> patchset with the suggested changes.

Back then we decided to not move forward with the debugfs patchset since
it's essentially cat foo.bin > /dev/xdevcfg / cat bar.rbf > /dev/fpga0
in disguise. Which is why I vetoed it back then.

> Since debugfs isn't enabled for production, are there any alternatives?
> 
> Alan sent a RFC [2] for loading FIT images through the sysfs.
> 
> The RFC described a FIT image that included FPGA image specific information
> to be included with the image (for systems running without device tree like
> our PCIe bus FPGA CvP).

Yeah I had originally suggested that as a mechanim to make FPGA images
discoverable by the kernel. I still think the idea has merit, however it
will run into the same issues that the configfs interface ran into w.r.t
using dt-overlays.

Generally I'd like to see a solution that exposes the *same* interface
to DT and not DT systems to userspace.

Using FIT headers one could go ahead and design something along the
lines of what DFL is doing, except for instead of parsing the DFL in the
logic, one would parse the FIT header to create subdevices.

> Unfortunately, I believe this has the same uphill battle that the Device
> Tree Overlay patches[3] have to getting accepted.

See above. While I'm happy to discuss this more I atm don't have the
bandwidth to push the DT work any further.

Thanks,
Moritz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
