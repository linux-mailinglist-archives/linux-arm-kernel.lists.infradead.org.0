Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A86C71555EE
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Feb 2020 11:41:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cDkc8YRlXjmS/27ECcQ+fwYrGv9JpcmVdXBJvorK3nY=; b=C1B8G+RE8oSWUQ
	FIBtd8uyrBlIowwVZzL6FRiP2n3uNqt3UjmGXgEDZC0fXHw3aW6dirY5Yq2vgztzpYStTLRZlbY20
	omOPDf95OLpDJdxCX4fwIwBGgGrNHk4/HJwIClTFWKL3AaGl9KHAr9Ov7t9X65AQb1a8dkaqUF8sy
	K1EPxOc67laPk8mjJogsu6USgaVsElLzdh5cH0tmlYGQ3uaNz7JJU4uxJkdQLK14+Gdi2i7lJ80P1
	tzbVJ9DOHQqCXvW95HLLwFojC0SURmzghDjM5pcqSN29pOfTOhLApElNBG3YrlrMsdoH+8cHWl80j
	orAIMN1AaCoiCNgOjHYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j014G-0003n3-TH; Fri, 07 Feb 2020 10:41:00 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j014A-0003mQ-Is
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Feb 2020 10:40:56 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 55FDE30E;
 Fri,  7 Feb 2020 02:40:49 -0800 (PST)
Received: from bogus (e103737-lin.cambridge.arm.com [10.1.197.49])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 576A13F52E;
 Fri,  7 Feb 2020 02:40:48 -0800 (PST)
Date: Fri, 7 Feb 2020 10:40:43 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: Peng Fan <peng.fan@nxp.com>
Subject: Re: [PATCH 2/2] firmware: arm_scmi: mark channel free when init
Message-ID: <20200207104043.GA36345@bogus>
References: <1580993846-17712-1-git-send-email-peng.fan@nxp.com>
 <1580993846-17712-2-git-send-email-peng.fan@nxp.com>
 <20200206143337.GC3383@bogus>
 <AM0PR04MB44817B64CB35B2B2FB50D8F7881C0@AM0PR04MB4481.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AM0PR04MB44817B64CB35B2B2FB50D8F7881C0@AM0PR04MB4481.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200207_024054_710579_860C00DC 
X-CRM114-Status: GOOD (  26.49  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: "f.fainelli@gmail.com" <f.fainelli@gmail.com>,
 "viresh.kumar@linaro.org" <viresh.kumar@linaro.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 Sudeep Holla <sudeep.holla@arm.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Feb 07, 2020 at 02:16:04AM +0000, Peng Fan wrote:
>
> > Subject: Re: [PATCH 2/2] firmware: arm_scmi: mark channel free when init
> >
> > On Thu, Feb 06, 2020 at 08:57:26PM +0800, peng.fan@nxp.com wrote:
> > > From: Peng Fan <peng.fan@nxp.com>
> > >
> > > The firmware itself might not mark channel free, so let's explicitly
> > > mark it free when do initialization.
> > >
> > > Also move struct scmi_shared_mem to common.h
> > >
> > > Signed-off-by: Peng Fan <peng.fan@nxp.com>
> > > ---
> > >  drivers/firmware/arm_scmi/common.h  | 19 +++++++++++++++++--
> > > drivers/firmware/arm_scmi/mailbox.c |  2 ++
> > >  drivers/firmware/arm_scmi/shmem.c   | 18 ------------------
> > >  3 files changed, 19 insertions(+), 20 deletions(-)
> > >
> > > diff --git a/drivers/firmware/arm_scmi/common.h
> > > b/drivers/firmware/arm_scmi/common.h
> > > index fd091a4ccbff..5df262a564a4 100644
> > > --- a/drivers/firmware/arm_scmi/common.h
> > > +++ b/drivers/firmware/arm_scmi/common.h
> > > @@ -211,8 +211,23 @@ extern const struct scmi_desc scmi_mailbox_desc;
> > > void scmi_rx_callback(struct scmi_chan_info *cinfo, u32 msg_hdr);
> > > void scmi_free_channel(struct scmi_chan_info *cinfo, struct idr *idr,
> > > int id);
> > >
> > > -/* shmem related declarations */
> > > -struct scmi_shared_mem;
> > > +/*
> > > + * SCMI specification requires all parameters, message headers,
> > > +return
> > > + * arguments or any protocol data to be expressed in little endian
> > > + * format only.
> > > + */
> > > +struct scmi_shared_mem {
> > > +	__le32 reserved;
> > > +	__le32 channel_status;
> > > +#define SCMI_SHMEM_CHAN_STAT_CHANNEL_ERROR	BIT(1)
> > > +#define SCMI_SHMEM_CHAN_STAT_CHANNEL_FREE	BIT(0)
> > > +	__le32 reserved1[2];
> > > +	__le32 flags;
> > > +#define SCMI_SHMEM_FLAG_INTR_ENABLED	BIT(0)
> > > +	__le32 length;
> > > +	__le32 msg_header;
> > > +	u8 msg_payload[0];
> > > +};
> > >
> > >  void shmem_tx_prepare(struct scmi_shared_mem __iomem *shmem,
> > >  		      struct scmi_xfer *xfer);
> > > diff --git a/drivers/firmware/arm_scmi/mailbox.c
> > > b/drivers/firmware/arm_scmi/mailbox.c
> > > index 68ed58e2a47a..2d34bf6e94e2 100644
> > > --- a/drivers/firmware/arm_scmi/mailbox.c
> > > +++ b/drivers/firmware/arm_scmi/mailbox.c
> > > @@ -104,6 +104,8 @@ static int mailbox_chan_setup(struct
> > scmi_chan_info *cinfo, struct device *dev,
> > >  	cinfo->transport_info = smbox;
> > >  	smbox->cinfo = cinfo;
> > >
> > > +	iowrite32(BIT(0), &smbox->shmem->channel_status);
> > > +
> >
>
> +arm list
>
> > If we need this then we may need to put this as a function in shmem.c I am
> > still not convinced if we can do this unconditionally, i.e. will that affect Rx
> > channel if there's notification pending before we initialise. But we can deal
> > with that later.
>
> Per understanding, channel is specific to an agent, it could not be shared.
> So the shmem binded to the channel will not be used by others.
>

Yes

> Since this is the initialization process, the firmware might not init the shmem.
>

But, is there any particular reason for firmware not to ? It means platform
holds the channel and needs to release it to agent(OSPM) in this case after
initialisation.

> The shmem.c shmem_tx_prepare will spin until channel free, so I did the patch.
> Otherwise it might spin forever.
>

Yes I guessed that to be reason.

> I'll add a check as following
> if (tx)
>  iowrite32(BIT(0), &smbox->shmem->channel_status);
>

Not yet, I need answers to above query.

> I not find a good place to put this in shmem.c (:
>

Least of the problem :), let us first agree if we have to have it.

> >
> > Also what about error fields ? I would rather clear it to 0, not just BIT(0)
>
> Tx channel error should also be cleared, fix in v2.
>

OK but wait for a while before you post for the discussion to end.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
