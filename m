Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67A551B16A0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 22:04:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h8QsbVeytMwdsKsjlNaQEhRu6OFVPH0JJuFUcY/mr2U=; b=pWX0UMg1LUInUk
	Sy0pNKZnzl6/ak9E83RZYRp1moRgtZn56q+qtQOBQFHiiM+QRGS9EQ7MHvrOlg/G7oXZBfQAX0J+4
	N7aCzNSzei6VExOk2NH7HXlzyUBFEslNvs3eTiayHca5BqKLxNJHFPM5Nq+T16o7IZKQzbpqpeNWg
	qnzrNe35Qzxx+NO1ykCw/hwqF7GGJvsZ1Fg6o/yaX3FjpwTFMNyXqHcBoAji2EltdSYh2PKviZdxF
	18lNyuJQ5D/ELm+V2VGCGZ2GPueByBwz3u11SznQ0iDhIudkbN2W7esbKNV9Slo9MdI2Zvz24g8yz
	WGGQdxZ39pPM78uGhxkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQceP-0007dQ-LP; Mon, 20 Apr 2020 20:04:17 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQceG-0007bf-BA
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 20:04:09 +0000
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi
 [81.175.216.236])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 8327897D;
 Mon, 20 Apr 2020 21:57:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1587412647;
 bh=VyAYxn5QYg/qgAZ3QLAxeHFXObmm2KTLy1cekrs4/Co=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=IKhnGhruHCVyCfW+bc7TXpXtGwConChaObWLBzXYbiqByrVChPlQLVGl/G4FdUPMl
 dLXsraIQVsxotRt3uqKwfPrz5ktBfU2tb7IgP5PW9Mdok0h1m4pjy/h0NdzdJNuSqI
 VkYK0qyxESSpoQaAtbkSWR96MVTLFEOhi89k09oE=
Date: Mon, 20 Apr 2020 22:57:14 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Luca Ceresoli <luca@lucaceresoli.net>
Subject: Re: [PATCH v11 2/2] media: v4l: xilinx: Add Xilinx MIPI CSI-2 Rx
 Subsystem driver
Message-ID: <20200420195714.GB8195@pendragon.ideasonboard.com>
References: <20200409194424.45555-1-vishal.sagar@xilinx.com>
 <20200409194424.45555-3-vishal.sagar@xilinx.com>
 <20200419180222.GB8117@pendragon.ideasonboard.com>
 <860c27da-eba0-ddcb-719b-52b2725bd9bf@lucaceresoli.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <860c27da-eba0-ddcb-719b-52b2725bd9bf@lucaceresoli.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_130408_529564_B55A9FAA 
X-CRM114-Status: GOOD (  22.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Jacopo Mondi <jacopo@jmondi.org>, Dinesh Kumar <dineshk@xilinx.com>,
 Hyun Kwon <hyun.kwon@xilinx.com>, Hyun Kwon <hyunk@xilinx.com>,
 Sandip Kothari <sandipk@xilinx.com>, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, Michal Simek <michals@xilinx.com>,
 Vishal Sagar <vishal.sagar@xilinx.com>, hans.verkuil@cisco.com,
 mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Luca,

On Mon, Apr 20, 2020 at 09:24:25PM +0200, Luca Ceresoli wrote:
> On 19/04/20 20:02, Laurent Pinchart wrote:
> [...]
> >> +static irqreturn_t xcsi2rxss_irq_handler(int irq, void *dev_id)
> >> +{
> >> +	struct xcsi2rxss_state *state = (struct xcsi2rxss_state *)dev_id;
> >> +	struct xcsi2rxss_core *core = &state->core;
> >> +	u32 status;
> >> +
> >> +	status = xcsi2rxss_read(core, XCSI_ISR_OFFSET) & XCSI_ISR_ALLINTR_MASK;
> >> +	dev_dbg_ratelimited(core->dev, "interrupt status = 0x%08x\n", status);
> > 
> > As this is expected to occur for every frame, I would drop the message,
> > even if rate-limited.
> > 
> >> +
> >> +	if (!status)
> >> +		return IRQ_NONE;
> >> +
> >> +	/* Received a short packet */
> >> +	if (status & XCSI_ISR_SPFIFONE) {
> >> +		dev_dbg_ratelimited(core->dev, "Short packet = 0x%08x\n",
> >> +				    xcsi2rxss_read(core, XCSI_SPKTR_OFFSET));
> >> +	}
> > 
> > Same here, this will occur all the time, I'd remove this message. You
> > need to read XCSI_SPKTR_OFFSET though, and you should do so in a loop
> > until the XCSI_CSR_SPFIFONE in XCSI_CSR_OFFSET is cleared in case
> > multiple short packets are received before the interrupt handler
> > executes.
> > 
> > I also wonder if it would make sense to extract the frame number from
> > the FS short packet, and make it available through the subdev API. I
> > think it should be reported through a V4L2_EVENT_FRAME_SYNC event. This
> > can be implemented later.
> > 
> >> +
> >> +	/* Short packet FIFO overflow */
> >> +	if (status & XCSI_ISR_SPFIFOF)
> >> +		dev_dbg_ratelimited(core->dev, "Short packet FIFO overflowed\n");
> >> +
> >> +	/*
> >> +	 * Stream line buffer full
> >> +	 * This means there is a backpressure from downstream IP
> >> +	 */
> >> +	if (status & XCSI_ISR_SLBF) {
> >> +		dev_alert_ratelimited(core->dev, "Stream Line Buffer Full!\n");
> >> +		xcsi2rxss_stop_stream(state);
> >> +		if (core->rst_gpio) {
> >> +			gpiod_set_value(core->rst_gpio, 1);
> >> +			/* minimum 40 dphy_clk_200M cycles */
> >> +			ndelay(250);
> >> +			gpiod_set_value(core->rst_gpio, 0);
> >> +		}
> > 
> > I don't think you should stop the core here. xcsi2rxss_stop_stream()
> > calls the source .s_stream(0) operation, which usually involves I2C
> > writes that will sleep.
> > 
> > You should instead report an event to userspace (it looks like we have
> > no error event defined in V4L2, one should be added), and rely on the
> > normal stop procedure.
> 
> FWIW, since a long time I've been using a modified version of this
> routine, where after a Stream Line Buffer Full condition I just stop and
> restart the csi2rx core and the stream continues after a minimal glitch.
> Other subdev are unaware that anything has happened and keep on streaming.
> 
> Not sure this is the correct thing to do, but it's working for me. Also
> I proposed this topic in one of the previous iterations of this patch,
> but the situation was different because the stream on/off was not
> propagated back at that time.

Thanks for the feedback. How often does this occur in practice ?

-- 
Regards,

Laurent Pinchart

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
