Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ACB2311CCE1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 13:15:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bk/RzIVU3PnBYLxMasUs52MCj/6XD7eFJHAg2nyJFkA=; b=EuVRPqjIdyM67y
	Ie/5x6/Fzv1a/uQqwNUcqVQIOunb/F3UNVOGEtLpiG9xImE29+3x0RntlryDVoSprj/lU9lHdjEgG
	Eg0rR27nAuNvV4hwHk8PAZkVQg+Uk2NuihOcCNQJ3ALFLoaQIi78Z4gCm7NwoEueQZj7qLnZAS+7G
	qr/MGhNMbm9Gs7E6z6JGM3w4ifst9XrkV1OVuPI8G5ocvFcAuw/abBRtYaZrDQS/KO3xNaNG0Eu4J
	cYy+isGMPkGTEDUnp7dgQRHQvpPwMh7l42DikR7UKzBnUkeFHBmdtcPIp+eZc7Cvc8QXY3JPG4EwB
	AY9/f/KXg2zdaGRANdMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifNNl-0005Ps-Ib; Thu, 12 Dec 2019 12:15:49 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifNNZ-0005Oi-Pc
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Dec 2019 12:15:39 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B26B11FB;
 Thu, 12 Dec 2019 04:15:36 -0800 (PST)
Received: from bogus (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0B74C3F718;
 Thu, 12 Dec 2019 04:15:35 -0800 (PST)
Date: Thu, 12 Dec 2019 12:15:31 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: Cristian Marussi <cristian.marussi@arm.com>
Subject: Re: [PATCH 08/15] firmware: arm_scmi: Add and initialise protocol
 version to scmi_device structure
Message-ID: <20191212121531.GA27215@bogus>
References: <20191210145345.11616-1-sudeep.holla@arm.com>
 <20191210145345.11616-9-sudeep.holla@arm.com>
 <b79fe89b-5779-f70b-cfb8-4b20f622e9ef@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b79fe89b-5779-f70b-cfb8-4b20f622e9ef@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_041537_885132_4D1A106E 
X-CRM114-Status: GOOD (  22.48  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Sudeep Holla <sudeep.holla@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Dec 11, 2019 at 06:06:50PM +0000, Cristian Marussi wrote:
> On 10/12/2019 14:53, Sudeep Holla wrote:
> > It's useful to keep track of scmi protocol version in the scmi device
> > structure along with the protocol id. These can be used to expose the
> > information to the userspace via bus dev_groups attributes as well.
> >
> > Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> > ---
> >  drivers/firmware/arm_scmi/clock.c   | 6 +++++-
> >  drivers/firmware/arm_scmi/perf.c    | 6 +++++-
> >  drivers/firmware/arm_scmi/power.c   | 6 +++++-
> >  drivers/firmware/arm_scmi/reset.c   | 6 +++++-
> >  drivers/firmware/arm_scmi/sensors.c | 6 +++++-
> >  include/linux/scmi_protocol.h       | 1 +
> >  6 files changed, 26 insertions(+), 5 deletions(-)
> >
> > diff --git a/drivers/firmware/arm_scmi/clock.c b/drivers/firmware/arm_scmi/clock.c
> > index b567ec03f711..b68736ae7f88 100644
> > --- a/drivers/firmware/arm_scmi/clock.c
> > +++ b/drivers/firmware/arm_scmi/clock.c
> > @@ -318,8 +318,11 @@ static int scmi_clock_protocol_init(struct scmi_device *dev)
> >  	struct clock_info *cinfo;
> >  	struct scmi_handle *handle = dev->handle;
> >
> > -	if (handle->clk_ops && handle->clk_priv)
> > +	if (handle->clk_ops && handle->clk_priv) {
> > +		cinfo = handle->clk_priv;
> > +		dev->version = cinfo->version;
> >  		return 0; /* initialised already for the first device */
> > +	}
> >
>
> This is the device specific init stuff which I would remove from this proto
> initialization, which is the reason for this proto_init to be invoked for
> all devices defined for such proto.
>

Agreed, this is something I could come up with quickly, I have to think about
this more for sure.

> I'd say to move dev->version initialization into the specific
> scmi_drv->probe which is called after scmi_protocol_init inside
> bus:scmi_dev_probe, after having disabled the proto_init after the first
> invocation, once the protocol is initialized, BUT this would result anyway
> in duplication since you'll have to fill dev->version from the custom
> protocol info in each of the related scmi drivers, and that would also mean
> delegating to a possible user scmi driver .probe an initialization which is
> then needed by the sysfs attribute exposed by the SCMI framework code.
>
I am trying to avoid that as it's just version and we should be able to
manage this in the scmi_bus layer. I agree what we have in these patches
are not so pretty.

Anyways, thanks a lot for all the review.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
