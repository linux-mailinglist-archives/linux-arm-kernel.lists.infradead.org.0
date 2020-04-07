Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00ABD1A0A43
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Apr 2020 11:36:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wpchdNVp80amiKqDZy/UtVTli4+Ie+6BndsD6ioRVkE=; b=fT7czuP8I2dSC/
	uHNwdpfPZRtja5jcPWqa7frjUDNSHjhdTnuvMHhCevxFtmHcL0zaeBm/eG4IBIw2bHbP2CmJE3KFe
	aRn0kJjTzlTilX9yLW1Aa1ukfuroQHqrm+4pITI0WA4N3zCbYqIsU8AL815nJzkNj5Dla0tNgjDYk
	heDm0Vnd7kaeDFuTnizGEX6MPGlpiW74TwE8HGPMO9vRC297FjSF0D/fRbFSam/mKWs0To/IyzNb4
	wKNVht2TXRAWydMjS85+M8a/iZi9AVc6FcbCfEYx0kgwdIUs4tbQnuUtSmimnVq/h+r6Lk4L8ONUL
	TWamaOiMuV7AWpMb4/MQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLkey-0001Hl-41; Tue, 07 Apr 2020 09:36:44 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLkeq-0001H2-Fn
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Apr 2020 09:36:37 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 59DC830E;
 Tue,  7 Apr 2020 02:36:34 -0700 (PDT)
Received: from bogus (unknown [10.37.12.63])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5F98A3F73D;
 Tue,  7 Apr 2020 02:36:32 -0700 (PDT)
Date: Tue, 7 Apr 2020 10:36:29 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Cristian Marussi <cristian.marussi@arm.com>
Subject: Re: [PATCH v6 01/13] firmware: arm_scmi: Add receive buffer support
 for notifications
Message-ID: <20200407093629.GB28444@bogus>
References: <20200327143438.5382-1-cristian.marussi@arm.com>
 <20200327143438.5382-2-cristian.marussi@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200327143438.5382-2-cristian.marussi@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_023636_570590_E97FDC9D 
X-CRM114-Status: GOOD (  14.18  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Jonathan.Cameron@Huawei.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, james.quinlan@broadcom.com,
 Sudeep Holla <sudeep.holla@arm.com>, lukasz.luba@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Mar 27, 2020 at 02:34:26PM +0000, Cristian Marussi wrote:
> From: Sudeep Holla <sudeep.holla@arm.com>
>
> With all the plumbing in place, let's just add the separate dedicated
> receive buffers to handle notifications that can arrive asynchronously
> from the platform firmware to OS.
>
> Also add one check to see if the platform supports any receive channels
> before allocating the receive buffers: since those buffers are optionally
> supported though, the whole xfer initialization is also postponed to be
> able to check for their existence in advance.
>
> Reviewed-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>
> Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> [Changed parameters in __scmi_xfer_info_init()]
> Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>

[...]

> @@ -566,6 +568,16 @@ static int scmi_xfer_info_init(struct scmi_info *sinfo)
>  	return 0;
>  }
>
> +static int scmi_xfer_info_init(struct scmi_info *sinfo)
> +{
> +	int ret = __scmi_xfer_info_init(sinfo, &sinfo->tx_minfo);
> +
> +	if (!ret && idr_find(&sinfo->rx_idr, SCMI_PROTOCOL_BASE))

Theoretically, this could be bit tricky if we need to support platforms
without Rx channel for base protocol but may have Rx for some specific
protocols. But we have other problems too, so we can address that if
required in future.

Anyways, the first 4 patches are simple and quite independent from the
notification part. I will queue them as is and you can drop if you respin
the series.

I may need some time to go through the series completely and I am trying
to comment as I go through individual patches as I may get answers to
my own questions as I review.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
