Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBAE481A08
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 14:53:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yMU7PLs4Ds5L2jNS/AmN6Ys2NZXmRO187folh/r31SA=; b=ci4vC1C3aGajwY
	N1U3J5O+SThRtPbz/Z/a57dhOLLBW3iwwPyVAEg2Dl94YC8g9e0AAZXBxp5Zn+IC+V3gfsvUKpDZa
	L2O0ymQxiUi2XCr+sJ2px0Ma0BnaVTxnS1dbOSwGnvm8VzJg65QNn5OhaCNGUunrFdJyM+cK5EyXa
	ce7XUFG4lnsxa2inDvAEfRfSQeh7fiqZumogH2r1vo3ILBePBeTMidMONOoZRouVcAyvvi5ROcOVG
	7APPz5zkRHbYjIGAaQJoj/cdeyxpupDsJy/dSW5+bY6KrpIhdZzs5d2DOsks2OtbvgdYVAYV1KInn
	eE7/tvLlcc8UHPpwLgNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hucU5-0001yz-Vs; Mon, 05 Aug 2019 12:53:06 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hucTu-0001y3-So
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 12:52:56 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3B39D337;
 Mon,  5 Aug 2019 05:52:52 -0700 (PDT)
Received: from e107155-lin (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1D3BA3F706;
 Mon,  5 Aug 2019 05:52:51 -0700 (PDT)
Date: Mon, 5 Aug 2019 13:52:45 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Etienne Carriere <etienne.carriere@linaro.org>
Subject: Re: [PATCH v2 6/6] firmware: arm_scmi: Check if platform has
 released shmem before using
Message-ID: <20190805125245.GA627@e107155-lin>
References: <20190726134531.8928-1-sudeep.holla@arm.com>
 <20190726134531.8928-7-sudeep.holla@arm.com>
 <CAN5uoS_TA5ELTLtHnUbWhaOHyUDjoKZz0S8SfmXBfR+n-=_M3w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAN5uoS_TA5ELTLtHnUbWhaOHyUDjoKZz0S8SfmXBfR+n-=_M3w@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_055254_967807_1AA3BB7C 
X-CRM114-Status: GOOD (  19.94  )
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
Cc: Peng Fan <peng.fan@nxp.com>, linux-kernel@vger.kernel.org,
 Bo Zhang <bozhang.zhang@broadcom.com>,
 Jim Quinlan <james.quinlan@broadcom.com>,
 Gaku Inami <gaku.inami.xh@renesas.com>,
 Volodymyr Babchuk <volodymyr_babchuk@epam.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Aug 05, 2019 at 02:33:53PM +0200, Etienne Carriere wrote:
> Hello Sudeep,
>
> On Fri, 26 Jul 2019 at 15:46, Sudeep Holla <sudeep.holla@arm.com> wrote:
> >
> > Sometimes platfom may take too long to respond to the command and OS
> > might timeout before platform transfer the ownership of the shared
> > memory region to the OS with the response.
> >
> > Since the mailbox channel associated with the channel is freed and new
> > commands are dispatch on the same channel, OS needs to wait until it
> > gets back the ownership. If not, either OS may end up overwriting the
> > platform response for the last command(which is fine as OS timed out
> > that command) or platform might overwrite the payload for the next
> > command with the response for the old.
> >
> > The latter is problematic as platform may end up interpretting the
> > response as the payload. In order to avoid such race, let's wait until
> > the OS gets back the ownership before we prepare the shared memory with
> > the payload for the next command.
> >
> > Reported-by: Jim Quinlan <james.quinlan@broadcom.com>
> > Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> > ---
> >  drivers/firmware/arm_scmi/driver.c | 8 ++++++++
> >  1 file changed, 8 insertions(+)
> >
> > diff --git a/drivers/firmware/arm_scmi/driver.c b/drivers/firmware/arm_scmi/driver.c
> > index 69bf85fea967..765573756987 100644
> > --- a/drivers/firmware/arm_scmi/driver.c
> > +++ b/drivers/firmware/arm_scmi/driver.c
> > @@ -265,6 +265,14 @@ static void scmi_tx_prepare(struct mbox_client *cl, void *m)
> >         struct scmi_chan_info *cinfo = client_to_scmi_chan_info(cl);
> >         struct scmi_shared_mem __iomem *mem = cinfo->payload;
> >
> > +       /*
> > +        * Ideally channel must be free by now unless OS timeout last
> > +        * request and platform continued to process the same, wait
> > +        * until it releases the shared memory, otherwise we may endup
> > +        * overwriting it's response with new command payload or vice-versa
>
> minor typo: s/it's/its/
> maybe also s/command/message/
>

Thanks for taking a look at this, both are fixed locally now.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
