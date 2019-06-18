Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD4614A4B1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 17:02:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rQgsgXsTF3bPncTAtbvOYOcs/WCaZEaOu4yZ1gj8KGk=; b=YKqUn4tTCT/W09
	7XY1goahUP5Ab9hov2gxjieRobRY14FDDc7qq6wmidTrAkOtyjYw5PM9pccbxi+Otwq9F5+wmPbyJ
	LtKVyoewU3QC1nH9cr4a8WPqLwna5q+iiXVrFfh6E3bu0+Z1jtt7JuZjx83u19DIKGvZ1e4u6TdTF
	LFOa4KHCObCnTkl1yeldh/EWMRYu/dG0MOWHgMalUGdDaLl+JDxXWY56PhcIxr3fnhkBFNBEKghjL
	LKYczagmNG70sfCucfyXrBBRpU+eeRUqLg2IhP+mS/dAALX++4Y28u5BBW8cIkiB+AxTmT38UKzUZ
	VvnpW4FfGm9woZGb5WYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdFcd-0003bW-QC; Tue, 18 Jun 2019 15:02:08 +0000
Received: from hillosipuli.retiisi.org.uk ([2a01:4f9:c010:4572::81:2])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdFcP-0001L4-0i
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 15:01:54 +0000
Received: from valkosipuli.localdomain (valkosipuli.retiisi.org.uk
 [IPv6:2a01:4f9:c010:4572::80:2])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by hillosipuli.retiisi.org.uk (Postfix) with ESMTPS id AFB44634C7B;
 Tue, 18 Jun 2019 17:59:22 +0300 (EEST)
Received: from sailus by valkosipuli.localdomain with local (Exim 4.89)
 (envelope-from <sakari.ailus@retiisi.org.uk>)
 id 1hdFZy-0000tJ-LA; Tue, 18 Jun 2019 17:59:22 +0300
Date: Tue, 18 Jun 2019 17:59:22 +0300
From: Sakari Ailus <sakari.ailus@iki.fi>
To: Vishal Sagar <vsagar@xilinx.com>
Subject: Re: [PATCH v8 2/2] media: v4l: xilinx: Add Xilinx MIPI CSI-2 Rx
 Subsystem driver
Message-ID: <20190618145922.sq4jovxoz2khs3tq@valkosipuli.retiisi.org.uk>
References: <1559555971-193235-1-git-send-email-vishal.sagar@xilinx.com>
 <1559555971-193235-3-git-send-email-vishal.sagar@xilinx.com>
 <20190605124851.xr2hmgyoe46q6xud@kekkonen.localdomain>
 <CH2PR02MB60889F3BF23FD96BF11053A2A7100@CH2PR02MB6088.namprd02.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CH2PR02MB60889F3BF23FD96BF11053A2A7100@CH2PR02MB6088.namprd02.prod.outlook.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_080153_430139_C051F683 
X-CRM114-Status: GOOD (  19.05  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Sakari Ailus <sakari.ailus@linux.intel.com>,
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

On Fri, Jun 07, 2019 at 07:11:47AM +0000, Vishal Sagar wrote:
...
> > > +/**
> > > + * xcsi2rxss_s_ctrl - This is used to set the Xilinx MIPI CSI-2 V4L2 controls
> > > + * @ctrl: V4L2 control to be set
> > > + *
> > > + * This function is used to set the V4L2 controls for the Xilinx MIPI
> > > + * CSI-2 Rx Subsystem. It is used to set the active lanes in the system.
> > > + * The event counters can be reset.
> > > + *
> > > + * Return: 0 on success, errors otherwise
> > > + */
> > > +static int xcsi2rxss_s_ctrl(struct v4l2_ctrl *ctrl)
> > > +{
> > > +     struct xcsi2rxss_state *xcsi2rxss =
> > > +             container_of(ctrl->handler, struct xcsi2rxss_state,
> > > +                          ctrl_handler);
> > > +     struct xcsi2rxss_core *core = &xcsi2rxss->core;
> > > +     int ret = 0;
> > > +
> > > +     mutex_lock(&xcsi2rxss->lock);
> > > +
> > > +     switch (ctrl->id) {
> > > +     case V4L2_CID_XILINX_MIPICSISS_ACT_LANES:
> > > +             /*
> > > +              * This will be called only when "Enable Active Lanes" parameter
> > > +              * is set in design
> > > +              */
> > 
> > You generally get the number of lanes from firmware. There's no need to add
> > a control for it. 
> > 
> 
> I don't understand what firmware means here. There is no other code running.
> I don't see how to modify the number of lanes apart from using v4l control.

It's not the user that provides this information. Again, if you want this
feature right from the time the driver is merged to mainline, then rebase
the set on top of Jacopo's frame descriptor set. But it may take a while.

> 
> > > +             if (core->enable_active_lanes) {
> > > +                     u32 active_lanes;
> > > +
> > > +                     xcsi2rxss_clr_and_set(core, XCSI_PCR_OFFSET,
> > > +                                           XCSI_PCR_ACTLANES_MASK,
> > > +                                           ctrl->val - 1);
> > > +                     /*
> > > +                      * This delay is to allow the value to reflect as write
> > > +                      * and read paths are different.
> > > +                      */
> > > +                     udelay(1);
> > > +                     active_lanes = xcsi2rxss_read(core, XCSI_PCR_OFFSET);
> > > +                     active_lanes &= XCSI_PCR_ACTLANES_MASK;
> > > +                     active_lanes++;
> > > +                     if (active_lanes != ctrl->val)
> > > +                             dev_info(core->dev, "RxByteClkHS absent\n");
> > > +                     dev_dbg(core->dev, "active lanes = %d\n", ctrl->val);
> > > +             } else {
> > > +                     ret = -EINVAL;
> > > +             }
> > > +             break;
> > > +     case V4L2_CID_XILINX_MIPICSISS_RESET_COUNTERS:
> > > +             xcsi2rxss_reset_event_counters(xcsi2rxss);
> > > +             break;
> > > +     default:
> > > +             ret = -EINVAL;
> > > +             break;
> > > +     }
> > > +
> > > +     mutex_unlock(&xcsi2rxss->lock);
> > > +
> > > +     return ret;
> > > +}

-- 
Regards,

Sakari Ailus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
