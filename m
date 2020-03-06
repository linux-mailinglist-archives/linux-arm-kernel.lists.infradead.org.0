Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 525ED17C026
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 15:24:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T/My8xZPcUaksc1qJX5ZHwNI8Qyfa0+H96rp2lrXd/k=; b=XRkNCW49P1Yax4
	dAkvpS3pZXGnBrGUv46qnRObC/bxslPuwqk6MKw4uZ+8rhMSTjXoP0eETg8CJPzx1obfURLaWI6Bz
	xXVlYw3teneT8hwQiWUd5XFDNIytvw7HjJR4SGLPnANnm56gDpnZMOVksv5zc+Sxi3d7vWu/KJNpj
	u3LP2O3gn7SqBFQWS/wuDwK8JjjSfg8u/xV4CLlRn4bCoUYakUP/Hn7qdHHsJSBVITYtBZgIW1hZV
	j9QLpHKaDmSuf+mNhBB5v1pMvKvgfhRfyVn6xvD6SmTNClHPkT0HBlkUpgyukKX5YtPOwjtY4rTWR
	hYgYrsmCV9NBdydeuF4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jADt4-0004tj-SU; Fri, 06 Mar 2020 14:23:38 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jADsw-0004sT-Et
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 14:23:31 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6006C31B;
 Fri,  6 Mar 2020 06:23:23 -0800 (PST)
Received: from bogus (e103737-lin.cambridge.arm.com [10.1.197.49])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2B29E3F534;
 Fri,  6 Mar 2020 06:23:22 -0800 (PST)
Date: Fri, 6 Mar 2020 14:23:13 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: Peng Fan <peng.fan@nxp.com>, Florian Fainelli <f.fainelli@gmail.com>
Subject: Re: [PATCH V4 2/2] firmware: arm_scmi: add smc/hvc transport
Message-ID: <20200306123442.GA47929@bogus>
References: <1583201219-15839-1-git-send-email-peng.fan@nxp.com>
 <1583201219-15839-3-git-send-email-peng.fan@nxp.com>
 <20200304103954.GA25004@bogus>
 <AM0PR04MB4481A6DB7339C22A848DAFC988E50@AM0PR04MB4481.eurprd04.prod.outlook.com>
 <AM0PR04MB44814B71E92C02956F4BED4588E50@AM0PR04MB4481.eurprd04.prod.outlook.com>
 <20200304170319.GB44525@bogus>
 <AM0PR04MB4481B90D03D1F68573B05BE088E20@AM0PR04MB4481.eurprd04.prod.outlook.com>
 <20200305160613.GA53631@bogus>
 <d9734fd6-f855-296b-3a0b-ffc45ed0e3cb@gmail.com>
 <AM0PR04MB448167BD133BF57E548F2F0588E30@AM0PR04MB4481.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AM0PR04MB448167BD133BF57E548F2F0588E30@AM0PR04MB4481.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_062330_543845_B9DB1E81 
X-CRM114-Status: GOOD (  22.18  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "viresh.kumar@linaro.org" <viresh.kumar@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 Sudeep Holla <sudeep.holla@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Mar 06, 2020 at 08:07:19AM +0000, Peng Fan wrote:
> > Subject: Re: [PATCH V4 2/2] firmware: arm_scmi: add smc/hvc transport
> >
> > On 3/5/20 8:06 AM, Sudeep Holla wrote:
> > > On Thu, Mar 05, 2020 at 11:25:35AM +0000, Peng Fan wrote:
> > >
> > > [...]
> > >
> > >>>
> > >>> Yes, this may fix the issue. However I would like to know if we need
> > >>> to support multiple channels/shared memory simultaneously. It is
> > >>> fair requirement and may need some work which should be fine.
> > >>
> > >> Do you have any suggestions? Currently I have not worked out an good
> > >> solution.
> > >>
> > >
> > > TBH, I haven't given it a much thought. I would like to know if people
> > > are happy with just one SMC channel for SCMI or do they need more ?
> > > If they need it, we can try to solve it. Otherwise, what you have will
> > > suffice IMO.
> >
> > On our platforms we have one channel/shared memory area/mailbox
> > instance for all standard SCMI protocols, and we have a separate
> > channel/shared memory area/mailbox driver instance for a proprietary one.
> > They happen to have difference throughput requirements, hence the split.
> >

OK, when you refer proprietary protocol, do you mean outside the scope of
SCMI ? The reason I ask is SCMI allows vendor specific protocols and if
you are using other channel for that, it still make sense to add
multi-channel support here.

> > If I read Peng's submission correctly, it seems to me that the usage model
> > described before is still fine.
>
> Thanks.
>
> Sudeep,
>
> Then should I repost with the global mutex added?
>

Sure, you can send the updated. I will think about adding support for more
than one channel and send a patch on top of it if I get around it.

Note that I sent PR for v5.7 last earlier this week, so this will be for v5.8

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
