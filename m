Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 337891B2033
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 09:46:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GG0cu/CgxWaxeda3205Ib1CuWOcMf/9kquxDv72svEA=; b=Dzjtli3ONFfc1S
	Scv/ySPUoclq+tzMcE6p2O6YRGq5OcSXzkOi7ad23AuU2Ut4OxB/LzCx2SOUonOs0rOICWRZoWdW8
	dJoJ1a6Bbp3BWcoRAiCCjwdGkFNL0qsT0m+wFIQ41RuD2COob/pTn2471xDuiJtNGNA6nFKpnEB2P
	U4tPjoTvixF30xRkwWFMRZaFgLCX0V94KUOfwAe3+LM1riuVB2a9mRtaxR/eXkxSD+Q/keQAwe23i
	rAbrcjCW55m88wE500IjpUBXwsGfl7fxbQMyF208yaXMpVsm9LsGQe2xuf6xpXFeUN1Vlgaht38q2
	35NbIEBcTP8KLUc7UWoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQnbr-0005FB-2o; Tue, 21 Apr 2020 07:46:23 +0000
Received: from hostingweb31-40.netsons.net ([89.40.174.40])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQnbd-0005Ds-5D
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 07:46:10 +0000
Received: from [37.160.45.76] (port=22553 helo=[192.168.42.159])
 by hostingweb31.netsons.net with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.93)
 (envelope-from <luca@lucaceresoli.net>)
 id 1jQnbW-008XoL-Sf; Tue, 21 Apr 2020 09:46:03 +0200
Subject: Re: [PATCH v11 2/2] media: v4l: xilinx: Add Xilinx MIPI CSI-2 Rx
 Subsystem driver
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
References: <20200409194424.45555-1-vishal.sagar@xilinx.com>
 <20200409194424.45555-3-vishal.sagar@xilinx.com>
 <20200419180222.GB8117@pendragon.ideasonboard.com>
 <860c27da-eba0-ddcb-719b-52b2725bd9bf@lucaceresoli.net>
 <20200420195714.GB8195@pendragon.ideasonboard.com>
From: Luca Ceresoli <luca@lucaceresoli.net>
Message-ID: <0a3ea86b-cb4c-a1db-664e-cfa555d8ccf8@lucaceresoli.net>
Date: Tue, 21 Apr 2020 09:45:56 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200420195714.GB8195@pendragon.ideasonboard.com>
Content-Language: en-US
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - hostingweb31.netsons.net
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lucaceresoli.net
X-Get-Message-Sender-Via: hostingweb31.netsons.net: authenticated_id:
 luca@lucaceresoli.net
X-Authenticated-Sender: hostingweb31.netsons.net: luca@lucaceresoli.net
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_004609_373026_060F4CAB 
X-CRM114-Status: GOOD (  16.07  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [89.40.174.40 listed in list.dnswl.org]
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

Hi Laurent,

On 20/04/20 21:57, Laurent Pinchart wrote:
> Hi Luca,
> 
> On Mon, Apr 20, 2020 at 09:24:25PM +0200, Luca Ceresoli wrote:
>> On 19/04/20 20:02, Laurent Pinchart wrote:
>> [...]
>>>> +static irqreturn_t xcsi2rxss_irq_handler(int irq, void *dev_id)
>>>> +{
>>>> +	struct xcsi2rxss_state *state = (struct xcsi2rxss_state *)dev_id;
>>>> +	struct xcsi2rxss_core *core = &state->core;
>>>> +	u32 status;
>>>> +
>>>> +	status = xcsi2rxss_read(core, XCSI_ISR_OFFSET) & XCSI_ISR_ALLINTR_MASK;
>>>> +	dev_dbg_ratelimited(core->dev, "interrupt status = 0x%08x\n", status);
>>>
>>> As this is expected to occur for every frame, I would drop the message,
>>> even if rate-limited.
>>>
>>>> +
>>>> +	if (!status)
>>>> +		return IRQ_NONE;
>>>> +
>>>> +	/* Received a short packet */
>>>> +	if (status & XCSI_ISR_SPFIFONE) {
>>>> +		dev_dbg_ratelimited(core->dev, "Short packet = 0x%08x\n",
>>>> +				    xcsi2rxss_read(core, XCSI_SPKTR_OFFSET));
>>>> +	}
>>>
>>> Same here, this will occur all the time, I'd remove this message. You
>>> need to read XCSI_SPKTR_OFFSET though, and you should do so in a loop
>>> until the XCSI_CSR_SPFIFONE in XCSI_CSR_OFFSET is cleared in case
>>> multiple short packets are received before the interrupt handler
>>> executes.
>>>
>>> I also wonder if it would make sense to extract the frame number from
>>> the FS short packet, and make it available through the subdev API. I
>>> think it should be reported through a V4L2_EVENT_FRAME_SYNC event. This
>>> can be implemented later.
>>>
>>>> +
>>>> +	/* Short packet FIFO overflow */
>>>> +	if (status & XCSI_ISR_SPFIFOF)
>>>> +		dev_dbg_ratelimited(core->dev, "Short packet FIFO overflowed\n");
>>>> +
>>>> +	/*
>>>> +	 * Stream line buffer full
>>>> +	 * This means there is a backpressure from downstream IP
>>>> +	 */
>>>> +	if (status & XCSI_ISR_SLBF) {
>>>> +		dev_alert_ratelimited(core->dev, "Stream Line Buffer Full!\n");
>>>> +		xcsi2rxss_stop_stream(state);
>>>> +		if (core->rst_gpio) {
>>>> +			gpiod_set_value(core->rst_gpio, 1);
>>>> +			/* minimum 40 dphy_clk_200M cycles */
>>>> +			ndelay(250);
>>>> +			gpiod_set_value(core->rst_gpio, 0);
>>>> +		}
>>>
>>> I don't think you should stop the core here. xcsi2rxss_stop_stream()
>>> calls the source .s_stream(0) operation, which usually involves I2C
>>> writes that will sleep.
>>>
>>> You should instead report an event to userspace (it looks like we have
>>> no error event defined in V4L2, one should be added), and rely on the
>>> normal stop procedure.
>>
>> FWIW, since a long time I've been using a modified version of this
>> routine, where after a Stream Line Buffer Full condition I just stop and
>> restart the csi2rx core and the stream continues after a minimal glitch.
>> Other subdev are unaware that anything has happened and keep on streaming.
>>
>> Not sure this is the correct thing to do, but it's working for me. Also
>> I proposed this topic in one of the previous iterations of this patch,
>> but the situation was different because the stream on/off was not
>> propagated back at that time.
> 
> Thanks for the feedback. How often does this occur in practice ?

Quite often indeed in my case, as the MIPI stream comes from a remote
sensor via a video serdes chipset, and both the cable and the remote
sensor module are subject to heavy EMI. Depending on the setup I
observed SLBF happening up to 5~10 times per hour.

-- 
Luca

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
