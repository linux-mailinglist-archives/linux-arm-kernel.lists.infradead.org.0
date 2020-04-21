Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C83B1B21D5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 10:38:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9Le65QW/c6fsuHY/TmXTwXJVLA5D6wPl29clUbixkR4=; b=cbFDJtiqzJuJrd
	98Oq4bGOyURYnArhKWRgKjGkC8KTPP4GFKxrmi797YdJHcNKDBglqOEMfpxxw/EO2WzsHsCmvodfR
	WYrhrZvye2AcyEqYXQUtvun0mreWiEP2UWukfDdLSiDwd3HumfJca5Khs4Cmnj4PKe9jox6TsPRY4
	yDeNC0u3VFvA8jxU91V8EetX1PUoGmGY2Z2GTJNoE6ZmWwNI4cFt+kw9jzZuWy/8rn7KjnU3z/mZ6
	iIa4djVqOpdAJYj4OYg1wnmdrJKN3YT/sYSakiA+pjRV+4oS47MfjRfjKqe+SQypq/iqXfFFKO5CA
	w9scAWjTQFGTA1qYJybw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQoQX-0007aQ-4F; Tue, 21 Apr 2020 08:38:45 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQoQB-0007Tv-SP
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 08:38:26 +0000
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi
 [81.175.216.236])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 1AA4497D;
 Tue, 21 Apr 2020 10:38:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1587458300;
 bh=M4JnM4GjvLEco6/O8nqZUJCQJ6W6eag7+dGlDjYn/+Q=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Vb+6+eIW8vz8kOW8VNVyZLYL9GXfkJerZLOL9xivPPgeaV/eHmTZ3y2DxatzPa36s
 E3G2rc7AQ59LxL+wEWbP85vmDy/gP6EkkO3pzMUL/eU4tLikNh46cjN/TCaDOAVsXY
 G4xmN1JnYeAucJwc0nXGZb/3gG8u8B0rD4tCp/oQ=
Date: Tue, 21 Apr 2020 11:38:07 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Luca Ceresoli <luca@lucaceresoli.net>
Subject: Re: [PATCH v11 2/2] media: v4l: xilinx: Add Xilinx MIPI CSI-2 Rx
 Subsystem driver
Message-ID: <20200421083807.GB5983@pendragon.ideasonboard.com>
References: <20200409194424.45555-1-vishal.sagar@xilinx.com>
 <20200409194424.45555-3-vishal.sagar@xilinx.com>
 <20200419180222.GB8117@pendragon.ideasonboard.com>
 <860c27da-eba0-ddcb-719b-52b2725bd9bf@lucaceresoli.net>
 <20200420195714.GB8195@pendragon.ideasonboard.com>
 <0a3ea86b-cb4c-a1db-664e-cfa555d8ccf8@lucaceresoli.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0a3ea86b-cb4c-a1db-664e-cfa555d8ccf8@lucaceresoli.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_013824_096652_320317A8 
X-CRM114-Status: GOOD (  22.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

On Tue, Apr 21, 2020 at 09:45:56AM +0200, Luca Ceresoli wrote:
> On 20/04/20 21:57, Laurent Pinchart wrote:
> > On Mon, Apr 20, 2020 at 09:24:25PM +0200, Luca Ceresoli wrote:
> >> On 19/04/20 20:02, Laurent Pinchart wrote:
> >> [...]
> >>>> +static irqreturn_t xcsi2rxss_irq_handler(int irq, void *dev_id)
> >>>> +{
> >>>> +	struct xcsi2rxss_state *state = (struct xcsi2rxss_state *)dev_id;
> >>>> +	struct xcsi2rxss_core *core = &state->core;
> >>>> +	u32 status;
> >>>> +
> >>>> +	status = xcsi2rxss_read(core, XCSI_ISR_OFFSET) & XCSI_ISR_ALLINTR_MASK;
> >>>> +	dev_dbg_ratelimited(core->dev, "interrupt status = 0x%08x\n", status);
> >>>
> >>> As this is expected to occur for every frame, I would drop the message,
> >>> even if rate-limited.
> >>>
> >>>> +
> >>>> +	if (!status)
> >>>> +		return IRQ_NONE;
> >>>> +
> >>>> +	/* Received a short packet */
> >>>> +	if (status & XCSI_ISR_SPFIFONE) {
> >>>> +		dev_dbg_ratelimited(core->dev, "Short packet = 0x%08x\n",
> >>>> +				    xcsi2rxss_read(core, XCSI_SPKTR_OFFSET));
> >>>> +	}
> >>>
> >>> Same here, this will occur all the time, I'd remove this message. You
> >>> need to read XCSI_SPKTR_OFFSET though, and you should do so in a loop
> >>> until the XCSI_CSR_SPFIFONE in XCSI_CSR_OFFSET is cleared in case
> >>> multiple short packets are received before the interrupt handler
> >>> executes.
> >>>
> >>> I also wonder if it would make sense to extract the frame number from
> >>> the FS short packet, and make it available through the subdev API. I
> >>> think it should be reported through a V4L2_EVENT_FRAME_SYNC event. This
> >>> can be implemented later.
> >>>
> >>>> +
> >>>> +	/* Short packet FIFO overflow */
> >>>> +	if (status & XCSI_ISR_SPFIFOF)
> >>>> +		dev_dbg_ratelimited(core->dev, "Short packet FIFO overflowed\n");
> >>>> +
> >>>> +	/*
> >>>> +	 * Stream line buffer full
> >>>> +	 * This means there is a backpressure from downstream IP
> >>>> +	 */
> >>>> +	if (status & XCSI_ISR_SLBF) {
> >>>> +		dev_alert_ratelimited(core->dev, "Stream Line Buffer Full!\n");
> >>>> +		xcsi2rxss_stop_stream(state);
> >>>> +		if (core->rst_gpio) {
> >>>> +			gpiod_set_value(core->rst_gpio, 1);
> >>>> +			/* minimum 40 dphy_clk_200M cycles */
> >>>> +			ndelay(250);
> >>>> +			gpiod_set_value(core->rst_gpio, 0);
> >>>> +		}
> >>>
> >>> I don't think you should stop the core here. xcsi2rxss_stop_stream()
> >>> calls the source .s_stream(0) operation, which usually involves I2C
> >>> writes that will sleep.
> >>>
> >>> You should instead report an event to userspace (it looks like we have
> >>> no error event defined in V4L2, one should be added), and rely on the
> >>> normal stop procedure.
> >>
> >> FWIW, since a long time I've been using a modified version of this
> >> routine, where after a Stream Line Buffer Full condition I just stop and
> >> restart the csi2rx core and the stream continues after a minimal glitch.
> >> Other subdev are unaware that anything has happened and keep on streaming.
> >>
> >> Not sure this is the correct thing to do, but it's working for me. Also
> >> I proposed this topic in one of the previous iterations of this patch,
> >> but the situation was different because the stream on/off was not
> >> propagated back at that time.
> > 
> > Thanks for the feedback. How often does this occur in practice ?
> 
> Quite often indeed in my case, as the MIPI stream comes from a remote
> sensor via a video serdes chipset, and both the cable and the remote
> sensor module are subject to heavy EMI. Depending on the setup I
> observed SLBF happening up to 5~10 times per hour.

Ouch, that is a lot ! Is that really caused by EMI though ? I thought
SLBF was due to the downstream components applying backpressure.

-- 
Regards,

Laurent Pinchart

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
