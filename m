Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CCBD19A83E
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Apr 2020 11:06:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fI5FrqX4ryyBsCVlN4yKY2CpScXD1Lp3ufRJ1sHP0Xk=; b=tKblkhOwmQ+X5/
	8Q7a7SoiHj5oVDoMK1tr2mYpsklTfLzPUX11ScIyzutO77c0C0dcZIz9Z4KkOQSfFCLuIRtWj8sMv
	j/gObBRmhs/XxQjrrheYmVLQT0aiDP480rsY9m0MNu8SC1QlySvuIQKvH4dTxhi3ZiaASfXCb1G5d
	mCIMnMt6wPIYHbOJgKp/Ow39KZx40uaqN/ZA7EukLNXku3aXBfwvlXIp86S7arx10NNOFmS1eFLWR
	QxcmCNBvKMp2ztDtOPydSjwKqn1A6NqfE51sntiGB6wtqIZIIGP6ri0L3Hyz+jGyK7+RAGt/ZXWL5
	/KGczBGU7pGmuy35plbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJZK4-0001Xu-Bd; Wed, 01 Apr 2020 09:06:08 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJZJs-0001WI-AR
 for linux-arm-kernel@lists.infradead.org; Wed, 01 Apr 2020 09:05:58 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B524131B;
 Wed,  1 Apr 2020 02:05:53 -0700 (PDT)
Received: from bogus (unknown [10.37.12.97])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2D6963F52E;
 Wed,  1 Apr 2020 02:05:51 -0700 (PDT)
Date: Wed, 1 Apr 2020 10:05:45 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Peng Fan <peng.fan@nxp.com>
Subject: Re: [PATCH 3/4] firmware: arm_scmi: Check shmem property for channel
 availablity
Message-ID: <20200401090545.GA3954@bogus>
References: <20200327163654.13389-1-sudeep.holla@arm.com>
 <20200327163654.13389-4-sudeep.holla@arm.com>
 <AM0PR04MB44819AF3A77BF5362EE95D6388C90@AM0PR04MB4481.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AM0PR04MB44819AF3A77BF5362EE95D6388C90@AM0PR04MB4481.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_020556_411371_58B48852 
X-CRM114-Status: GOOD (  16.12  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
 dl-linux-imx <linux-imx@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Sudeep Holla <sudeep.holla@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 01, 2020 at 01:15:08AM +0000, Peng Fan wrote:
> > Subject: [PATCH 3/4] firmware: arm_scmi: Check shmem property for channel
> > availablity
> >
> > Instead of declaring the channel availabilty unconditionally, let us check for
> > the presence of "shmem" property and return the channel availablity
> > accordingly.
> >
> > Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> > ---
> >  drivers/firmware/arm_scmi/smc.c | 5 +++++
> >  1 file changed, 5 insertions(+)
> >
> > diff --git a/drivers/firmware/arm_scmi/smc.c
> > b/drivers/firmware/arm_scmi/smc.c index dd4b54c29679..5929c668dc1d
> > 100644
> > --- a/drivers/firmware/arm_scmi/smc.c
> > +++ b/drivers/firmware/arm_scmi/smc.c
> > @@ -33,6 +33,11 @@ struct scmi_smc {
> >
> >  static bool smc_chan_available(struct device *dev, int idx)  {
> > +	struct device_node *np = of_parse_phandle(dev->of_node, "shmem", 0);
> > +	if (!np)
> > +		return false;
> > +
> > +	of_node_put(np);
> >  	return true;
> >  }
>
> This is global shared mem:)
>

No, the dev pointer is not the parent node here but the child devices
unless I am reading it wrong. But yes global for the base protocol :)

> Reviewed-by: Peng Fan <peng.fan@nxp.com>
>

Thanks for this and other patches too.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
