Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 786AE6AEBC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jul 2019 20:35:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hk0N0FubZJdUYy2T85S5TcXbPD1W1qBKrU+SXI8hcXA=; b=WVIN/8YU7VOtcb
	EyrbTXNikAKBCyveDgNLRDc2uWvOFcrvX2WFqcOm1Zze2BEEz/VqZNetc9GmjNxECLy0Rv8EY/7d/
	3e60yKRvpGburDkcCDJlO4gsXKfo8aHz3q79FkUlSS7SJRgF3KHi+Y/LD1zX595BAREiv+QdQfhT7
	H3MGEMTs6WCflipxbsWFh2sUEboXPL5K8xY7KRiDXSQBsq5Dn3hfGc1TwacOK1N/IvPXe9It75gMg
	TMvFHjlv0fPy0rJHThzjGH0Ltq+Dp+GsDJjbFusyAC5pf6HhXmFqfmbcXrBllM33I9h+DacPA5ywn
	rww0VRJc+2HLBTRl7HzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnSIr-0006ig-3K; Tue, 16 Jul 2019 18:35:53 +0000
Received: from hillosipuli.retiisi.org.uk ([2a01:4f9:c010:4572::81:2])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnSIa-0002k9-Gp
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jul 2019 18:35:39 +0000
Received: from valkosipuli.localdomain (valkosipuli.retiisi.org.uk
 [IPv6:2a01:4f9:c010:4572::80:2])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by hillosipuli.retiisi.org.uk (Postfix) with ESMTPS id 67A7A634C85;
 Tue, 16 Jul 2019 21:31:59 +0300 (EEST)
Received: from sailus by valkosipuli.localdomain with local (Exim 4.92)
 (envelope-from <sakari.ailus@retiisi.org.uk>)
 id 1hnSGM-0000b1-5d; Tue, 16 Jul 2019 21:33:18 +0300
Date: Tue, 16 Jul 2019 21:33:18 +0300
From: Sakari Ailus <sakari.ailus@iki.fi>
To: Vishal Sagar <vsagar@xilinx.com>
Subject: Re: [PATCH v9 2/2] media: v4l: xilinx: Add Xilinx MIPI CSI-2 Rx
 Subsystem driver
Message-ID: <20190716183318.GE850@valkosipuli.retiisi.org.uk>
References: <1560247809-117978-1-git-send-email-vishal.sagar@xilinx.com>
 <1560247809-117978-3-git-send-email-vishal.sagar@xilinx.com>
 <20190618151933.zqepfqdjjjlhea7h@valkosipuli.retiisi.org.uk>
 <CH2PR02MB6088B5E97833233486C53E9BA7F30@CH2PR02MB6088.namprd02.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CH2PR02MB6088B5E97833233486C53E9BA7F30@CH2PR02MB6088.namprd02.prod.outlook.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_113536_743480_E0E5A565 
X-CRM114-Status: GOOD (  11.35  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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

On Thu, Jul 11, 2019 at 09:09:37AM +0000, Vishal Sagar wrote:
...
> > > +static int xcsi2rxss_subscribe_event(struct v4l2_subdev *sd,
> > > +                                  struct v4l2_fh *fh,
> > > +                                  struct v4l2_event_subscription *sub)
> > > +{
> > > +     struct xcsi2rxss_state *xcsi2rxss = to_xcsi2rxssstate(sd);
> > > +     int ret;
> > > +
> > > +     mutex_lock(&xcsi2rxss->lock);
> > > +
> > > +     switch (sub->type) {
> > > +     case V4L2_EVENT_XILINX_CSI2RX_SLBF:
> > > +             ret = v4l2_event_subscribe(fh, sub, XCSI_MAX_EVENT, NULL);
> > 
> > Please either use dev_dbg() or propose an API for conveying this
> > information downstream in the pipeline.
> > 
> 
> I will use a dev_alert() in the irq handler for this for now and remove this event.

dev_dbg(), please, as this is certainly not fatal. We should probably have
an API to tell this to the downstream sub-device driver in the pipeline if
the hardware has no way to detect this independently.

-- 
Regards,

Sakari Ailus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
