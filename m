Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0602B17963A
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Mar 2020 18:03:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BI+5pz7PgQEUfUPU0cgriElmKbQ/qBj3yv/bWk2i0f8=; b=lRopF15GFiCNNt
	DzMkb0EOikrYBfrvqFov5ppOgYEa0jeSdKxo1l10kO/+i1lRfFYf6Einby/ggkjybS8rSkX/TtA8g
	VIonv9EvfGAn8pn8Uh9nMuskEopAdSbBozx4A7eVE4djIZbxwrE6AouPuc2fNr2EDsgwyUhZw4qcf
	j6V3jN82OtBR3IggGkC4ah1e7UtlqeyO57rbhEzISX/Q4z58fi3yyzP250PvO162VHWuJVdP7SZoq
	kjvQ1hmGc3xzFhmLUVgEfEVdatuyy+UnzGp6AQLxhHS9T18zPx1AA+pb0F09j5zc8wxBkpObf0WYl
	pRKJdW9w7WjgatZRBm8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9XQo-0006BB-Pd; Wed, 04 Mar 2020 17:03:38 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9XQa-0006AK-Tm
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Mar 2020 17:03:26 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6697E31B;
 Wed,  4 Mar 2020 09:03:23 -0800 (PST)
Received: from bogus (e103737-lin.cambridge.arm.com [10.1.197.49])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3073A3F6CF;
 Wed,  4 Mar 2020 09:03:22 -0800 (PST)
Date: Wed, 4 Mar 2020 17:03:20 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: Peng Fan <peng.fan@nxp.com>
Subject: Re: [PATCH V4 2/2] firmware: arm_scmi: add smc/hvc transport
Message-ID: <20200304170319.GB44525@bogus>
References: <1583201219-15839-1-git-send-email-peng.fan@nxp.com>
 <1583201219-15839-3-git-send-email-peng.fan@nxp.com>
 <20200304103954.GA25004@bogus>
 <AM0PR04MB4481A6DB7339C22A848DAFC988E50@AM0PR04MB4481.eurprd04.prod.outlook.com>
 <AM0PR04MB44814B71E92C02956F4BED4588E50@AM0PR04MB4481.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AM0PR04MB44814B71E92C02956F4BED4588E50@AM0PR04MB4481.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_090325_051807_16543718 
X-CRM114-Status: GOOD (  24.68  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "f.fainelli@gmail.com" <f.fainelli@gmail.com>,
 "viresh.kumar@linaro.org" <viresh.kumar@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 Sudeep Holla <sudeep.holla@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Peng,

On Wed, Mar 04, 2020 at 02:16:00PM +0000, Peng Fan wrote:
> > Subject: RE: [PATCH V4 2/2] firmware: arm_scmi: add smc/hvc transport
> >
> > Hi Sudeep,
> >
> > > Subject: Re: [PATCH V4 2/2] firmware: arm_scmi: add smc/hvc transport
> > >
> > > On Tue, Mar 03, 2020 at 10:06:59AM +0800, peng.fan@nxp.com wrote:
> > > > From: Peng Fan <peng.fan@nxp.com>
> > > >
> > > > Take arm,smc-id as the 1st arg, leave the other args as zero for now.
> > > > There is no Rx, only Tx because of smc/hvc not support Rx.
> > > >
> > > > Signed-off-by: Peng Fan <peng.fan@nxp.com>
> > >
> > > [...]
> > >
> > > > +static int smc_send_message(struct scmi_chan_info *cinfo,
> > > > +			    struct scmi_xfer *xfer)
> > > > +{
> > > > +	struct scmi_smc *scmi_info = cinfo->transport_info;
> > > > +	struct arm_smccc_res res;
> > > > +
> > > > +	shmem_tx_prepare(scmi_info->shmem, xfer);
> > >
> > > How do we protect another thread/process on another CPU going and
> > > modifying the same shmem with another request ? We may need notion of
> > > channel with associated shmem and it is protected with some lock.
> >
> > This is valid concern. But I think if shmem is shared bwteen protocols, the
> > access to shmem should be protected in
> > drivers/firmware/arm_scmi/driver.c: scmi_do_xfer, because send_message
> > and fetch_response both touches shmem
> >
> > The mailbox transport also has the issue you mentioned, I think.

No, it doesn't. I hope you realised that now based on your statement below.

>
> Ignore my upper comments. How do think the following diff based on current patch?
>
> If ok, I'll squash it with current patch and send out v5.
>
> diff --git a/drivers/firmware/arm_scmi/smc.c b/drivers/firmware/arm_scmi/smc.c
> index 88f91b68f297..7d770112f339 100644
> --- a/drivers/firmware/arm_scmi/smc.c
> +++ b/drivers/firmware/arm_scmi/smc.c
> @@ -29,6 +29,8 @@ struct scmi_smc {
>         u32 func_id;
>  };
>
> +static DEFINE_MUTEX(smc_mutex);
> +
>  static bool smc_chan_available(struct device *dev, int idx)
>  {
>         return true;
> @@ -99,11 +101,15 @@ static int smc_send_message(struct scmi_chan_info *cinfo,
>         struct scmi_smc *scmi_info = cinfo->transport_info;
>         struct arm_smccc_res res;
>
> +       mutex_lock(&smc_mutex);
> +
>         shmem_tx_prepare(scmi_info->shmem, xfer);
>
>         arm_smccc_1_1_invoke(scmi_info->func_id, 0, 0, 0, 0, 0, 0, 0, &res);
>         scmi_rx_callback(scmi_info->cinfo, shmem_read_header(scmi_info->shmem));
>
> +       mutex_unlock(&smc_mutex);
> +
>         return res.a0;
>  }
>

Yes, this may fix the issue. However I would like to know if we need to
support multiple channels/shared memory simultaneously. It is fair
requirement and may need some work which should be fine. I just want to
make sure we don't need anything more from DT or if we need to add more
to DT bindings, we need to ensure it won't break single channel. I will
think about that, but I would like to hear from other users of this SMC
for SCMI.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
