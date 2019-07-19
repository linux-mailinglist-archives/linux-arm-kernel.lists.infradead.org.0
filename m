Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1661C6E43F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jul 2019 12:27:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6UmwBVW+IIqAYu63ExhF15h534iEOdxh2H2haYVwN2w=; b=XKaXOene6DwPOM
	t4DZFwWIdt+J5ORnWVooBfcEfBu/1EpqBI2RXNEHCRBzC3IO29Q44wWrZvo4h552UHTXizF10NwF6
	dME3SMLY8lD0i4QYhqYc2TfGq9obNCUftFIeXYh5WMfmGJRIv+YS4M+Q7BLhW4sqzrIklJXI7/rG/
	6/uXr5vAogPy1tznDSX1ziwXKQN4J+tJ7AeQtYKRCt88CpzQMrIH04xJ50E9zBM236n3eIannPyKw
	yPW0sE0fRXjwSgtF3EmD/Qvl2r6fVwkwscdGpuymyb6QXfy5bTnFDKW+1S+I6YwxSgx44yUuUuQjg
	cUrUt0MmzWv664kAiqYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoQ72-00036l-82; Fri, 19 Jul 2019 10:27:40 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hoQ6F-0002sP-IG
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jul 2019 10:26:54 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D95B1337;
 Fri, 19 Jul 2019 03:26:50 -0700 (PDT)
Received: from e107155-lin (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id F14BC3F59C;
 Fri, 19 Jul 2019 03:26:49 -0700 (PDT)
Date: Fri, 19 Jul 2019 11:26:36 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Jim Quinlan <james.quinlan@broadcom.com>
Subject: Re: [PATCH 02/11] firmware: arm_scmi: Segregate tx channel handling
 and prepare to add rx
Message-ID: <20190719102636.GA18022@e107155-lin>
References: <20190708154730.16643-1-sudeep.holla@arm.com>
 <20190708154730.16643-3-sudeep.holla@arm.com>
 <CA+-6iNzmkT26cEdpD_C=L0bJ4TOEZwGuakin+GR4brSjSETfRA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CA+-6iNzmkT26cEdpD_C=L0bJ4TOEZwGuakin+GR4brSjSETfRA@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190719_032651_867265_09AD30FB 
X-CRM114-Status: GOOD (  21.86  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Peng Fan <peng.fan@nxp.com>, Bo Zhang <bozhang.zhang@broadcom.com>,
 Volodymyr Babchuk <volodymyr_babchuk@epam.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jul 18, 2019 at 05:23:10PM -0400, Jim Quinlan wrote:
> On Mon, Jul 8, 2019 at 11:47 AM Sudeep Holla <sudeep.holla@arm.com> wrote:
> >
> > The transmit(Tx) channels are specified as the first entry and the
> > receive(Rx) channels are the second entry as per the device tree
> > bindings. Since we currently just support Tx, index 0 is hardcoded at
> > all required callsites.
> >
> > In order to prepare for adding Rx support, let's remove those hardcoded
> > index and add boolean parameter to identify Tx/Rx channels when setting
> > them up.
> >
> > Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> > ---
> >  drivers/firmware/arm_scmi/driver.c | 33 ++++++++++++++++--------------
> >  1 file changed, 18 insertions(+), 15 deletions(-)
> >
> > diff --git a/drivers/firmware/arm_scmi/driver.c b/drivers/firmware/arm_scmi/driver.c
> > index 0bd2af0a008f..f7fb6d5bfc64 100644
> > --- a/drivers/firmware/arm_scmi/driver.c
> > +++ b/drivers/firmware/arm_scmi/driver.c
> > @@ -112,7 +112,7 @@ struct scmi_chan_info {
> >   * @version: SCMI revision information containing protocol version,
> >   *     implementation version and (sub-)vendor identification.
> >   * @minfo: Message info
> > - * @tx_idr: IDR object to map protocol id to channel info pointer
> > + * @tx_idr: IDR object to map protocol id to Tx channel info pointer
> >   * @protocols_imp: List of protocols implemented, currently maximum of
> >   *     MAX_PROTOCOLS_IMP elements allocated by the base protocol
> >   * @node: List head
> > @@ -640,22 +640,26 @@ static int scmi_xfer_info_init(struct scmi_info *sinfo)
> >         return 0;
> >  }
> >
> > -static int scmi_mailbox_check(struct device_node *np)
> > +static int scmi_mailbox_check(struct device_node *np, int idx)
> >  {
> > -       return of_parse_phandle_with_args(np, "mboxes", "#mbox-cells", 0, NULL);
> > +       return of_parse_phandle_with_args(np, "mboxes", "#mbox-cells",
> > +                                         idx, NULL);
> >  }
> >
> > -static inline int
> > -scmi_mbox_chan_setup(struct scmi_info *info, struct device *dev, int prot_id)
> > +static int scmi_mbox_chan_setup(struct scmi_info *info, struct device *dev,
> > +                               int prot_id, bool tx)
> >  {
> > -       int ret;
> > +       int ret, idx;
> >         struct resource res;
> >         resource_size_t size;
> >         struct device_node *shmem, *np = dev->of_node;
> >         struct scmi_chan_info *cinfo;
> >         struct mbox_client *cl;
> >
> > -       if (scmi_mailbox_check(np)) {
> > +       /* Transmit channel is first entry i.e. index 0 */
> > +       idx = tx ? 0 : 1;
> > +
> > +       if (scmi_mailbox_check(np, idx)) {
> >                 cinfo = idr_find(&info->tx_idr, SCMI_PROTOCOL_BASE);
> >                 goto idr_alloc;
> >         }
> > @@ -669,11 +673,11 @@ scmi_mbox_chan_setup(struct scmi_info *info, struct device *dev, int prot_id)
> >         cl = &cinfo->cl;
> >         cl->dev = dev;
> >         cl->rx_callback = scmi_rx_callback;
> > -       cl->tx_prepare = scmi_tx_prepare;
> > +       cl->tx_prepare = tx ? scmi_tx_prepare : NULL;
> >         cl->tx_block = false;
> > -       cl->knows_txdone = true;
> > +       cl->knows_txdone = tx;
> >
> > -       shmem = of_parse_phandle(np, "shmem", 0);
> > +       shmem = of_parse_phandle(np, "shmem", idx);
> Hi Sudeep,
> 
> You can't see it in the diff but you have two error messages that use
> "Tx"; should this be changed to "Tx/Rx"?
> 

Thanks for spotting, will fix it.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
