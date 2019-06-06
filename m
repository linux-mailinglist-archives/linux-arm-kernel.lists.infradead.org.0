Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CAF4373E3
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 14:13:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9efbouo03ELjH+ppd6m4RwBEVBHfSso1gtEct+zc9Ck=; b=YHRYVInEHkJOdK
	SXBRUNYHpaisctZKm9iaE6BZp6za9nF0VIq5C62o9OB1+xdpDhNv5W3TVMH3PKVa+ydWRt7BorbOd
	Vi0OXg5+wPTC68aJqWOdwI4NlBZTriaOhM8SE1AVWsi0KMgeKZSqW4VbT93iYTeH6nAwx1HfHkfuP
	s3g+v+qU/gCeUGjYU37t65cXzCvYwCRkAbePfU3GzoQdiEGdG5BrwMdnnGp0RFZvp0Y3AlYYw1rZd
	xZteFi/NOGSNlYz46+/nJPEl7f8BgEmer19ZvcSbRwXPTNY/AMGbeakd+jTUzGbDM/I+sisTppE78
	vU9+kOvlxMolaOljB/xA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYrGK-0004pp-7r; Thu, 06 Jun 2019 12:12:56 +0000
Received: from mga18.intel.com ([134.134.136.126])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYrGB-0004p1-O8
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 12:12:49 +0000
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Jun 2019 05:12:45 -0700
X-ExtLoop1: 1
Received: from paasikivi.fi.intel.com ([10.237.72.42])
 by fmsmga005.fm.intel.com with ESMTP; 06 Jun 2019 05:12:39 -0700
Received: by paasikivi.fi.intel.com (Postfix, from userid 1000)
 id E6E6C20D69; Thu,  6 Jun 2019 15:12:38 +0300 (EEST)
Date: Thu, 6 Jun 2019 15:12:38 +0300
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Vishal Sagar <vsagar@xilinx.com>
Subject: Re: [PATCH v8 1/2] media: dt-bindings: media: xilinx: Add Xilinx
 MIPI CSI-2 Rx Subsystem
Message-ID: <20190606121238.zxdvvogob3umzid4@paasikivi.fi.intel.com>
References: <1559555971-193235-1-git-send-email-vishal.sagar@xilinx.com>
 <1559555971-193235-2-git-send-email-vishal.sagar@xilinx.com>
 <20190604192344.7tycwffjd3yeizxh@paasikivi.fi.intel.com>
 <CH2PR02MB60889B850DCAA810A772160DA7170@CH2PR02MB6088.namprd02.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CH2PR02MB60889B850DCAA810A772160DA7170@CH2PR02MB6088.namprd02.prod.outlook.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_051247_838676_4D4BAFA0 
X-CRM114-Status: GOOD (  21.75  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.126 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Jacopo Mondi <jacopo@jmondi.org>, Dinesh Kumar <dineshk@xilinx.com>,
 Hyun Kwon <hyunk@xilinx.com>, Sandip Kothari <sandipk@xilinx.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, Michal Simek <michals@xilinx.com>,
 "laurent.pinchart@ideasonboard.com" <laurent.pinchart@ideasonboard.com>,
 Vishal Sagar <vishal.sagar@xilinx.com>, Luca Ceresoli <luca@lucaceresoli.net>,
 "hans.verkuil@cisco.com" <hans.verkuil@cisco.com>,
 "mchehab@kernel.org" <mchehab@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Vishal,

On Thu, Jun 06, 2019 at 11:54:19AM +0000, Vishal Sagar wrote:
> Hi Sakari,
> 
> > -----Original Message-----
> > From: Sakari Ailus [mailto:sakari.ailus@linux.intel.com]
> > Sent: Wednesday, June 05, 2019 12:54 AM
> > To: Vishal Sagar <vishal.sagar@xilinx.com>
> > Cc: Hyun Kwon <hyunk@xilinx.com>; laurent.pinchart@ideasonboard.com;
> > mchehab@kernel.org; robh+dt@kernel.org; mark.rutland@arm.com; Michal
> > Simek <michals@xilinx.com>; linux-media@vger.kernel.org;
> > devicetree@vger.kernel.org; hans.verkuil@cisco.com; linux-arm-
> > kernel@lists.infradead.org; linux-kernel@vger.kernel.org; Dinesh Kumar
> > <dineshk@xilinx.com>; Sandip Kothari <sandipk@xilinx.com>; Luca Ceresoli
> > <luca@lucaceresoli.net>; Jacopo Mondi <jacopo@jmondi.org>
> > Subject: Re: [PATCH v8 1/2] media: dt-bindings: media: xilinx: Add Xilinx MIPI
> > CSI-2 Rx Subsystem
> > 
> > EXTERNAL EMAIL
> > 
> > Hi Vishal,
> > 
> > On Mon, Jun 03, 2019 at 03:29:30PM +0530, Vishal Sagar wrote:
> > 
> > > +Optional properties:
> > > +--------------------
> > > +- .
> > > +  Without this property the driver won't be loaded as IP won't be able to
> > generate
> > > +  media bus format compliant stream output.
> > 
> > I think we previously concluded that the format will be just different in
> > this case. So the description appears incorrect.
> > 
> 
> Referring to your email https://lkml.org/lkml/2019/3/22/1823 in response to v6 patches,
> if the video format bridge is not enabled, then the way in which pixels are transported on
> the bus don't correspond to the existing media bus formats in Linux.
> 
> If not loading the driver is incorrect way, is it ok for the driver to allow same media bus format
> for packed and unpacked data type on the sink pad?
> 
> Or is it ok for the driver to not validate the media bus format set on the sink pad?

Taking a fresh look at the issue --- usually such unpacking is done by the
DMA engine, or the same device contains both the CSI-2 RX and DMA. But here
it actually affects the input of that DMA engine. You're right in saying we
don't have format definitions from which you could tell which case it is,
and we also don't have other pre-existing means to tell them apart.

Feel free to keep the check in the driver, but we can't refer to the driver
loading in DT binding documentation: this is really not supposed to be
related to that driver, or even Linux at all.

How about changing this to:

xlnx,vfb: Present when Video Format Bridge is enabled in IP configuration.

That'd be aligned with the other properties and would more accurately
convey what this means.

-- 
Kind regards,

Sakari Ailus
sakari.ailus@linux.intel.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
