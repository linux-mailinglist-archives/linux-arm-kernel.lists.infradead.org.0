Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F3323D687
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 21:12:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cxJg0kzGcLy8TZZI+pM3uI2H/TE2fpFcNQj/K5z94RE=; b=qDwsqtzjlwPLOk
	vlmxp1y005XUG+8+sTYGx3dPOOMTWu7eer1R/1SDjGmwvFDGw1YrIGm57K0vsf2B8P3PGOfZQl9b3
	MLbP0ssEkyZyMQ0t+soR19WbiHzh9o2tbORuUnIbXgr1eh9KHHRXi5Dm14tLTmWJHSCg0iPHhURRY
	UZV3DvlTpR+oNGzxTMDAlFHyb32JOnYdWmI5A1PJKqbHIfrb5sFbRwq5W8krTNs1h1HGYicBEe8YB
	3ESauGMWK+/0SVDeCHNEV+ZlGaYl83Pc0Zz47J6fvE/wvqXjsngFIYUxj34zqe8gbOlzLftDxV2Ny
	5z/clTgdWIfICvCiWrSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hamC6-0005iE-7o; Tue, 11 Jun 2019 19:12:30 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hamBy-0005i1-1i
 for linux-arm-kernel@bombadil.infradead.org; Tue, 11 Jun 2019 19:12:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=On0FXoglDCYeMiyYbGbfBXovyGdAWe4sy2A1Qt1FTJ4=; b=UmqfmKoIu1ffXTVYOZgNMGmbq
 VDLeM1J12lgOUoCnNylBJ1eSjsYBSes7wQIl7lS6lAhYa9qUG6EJl5ParYd6TkYr538xe6EMdJ+6z
 Z6vaeAfNnxkVRHEra04FObo/SDeKnhQvcMjt7h9PYvOZ08yHaM2rfbt4elS1JzQxBxm4nDzsIUcFF
 +HGcF3XZpqbH+hLTXbQh6spE6zIclpaBbz8Il8dk8PIMARaL6XGcNilHGq0SXWx2MuH1PgtjLjK2G
 +zt6OTyxDP/mIETsaCcnXMve5awO2Zl1dWDbFMxhU3aglPjA2vgowbYNZuAo8VsSRYp2+J3zzx8AN
 MrDTn5SDg==;
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by merlin.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hamBu-0006wj-Hm
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 19:12:20 +0000
X-Originating-IP: 37.205.120.66
Received: from localhost (unknown [37.205.120.66])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 94AF6C0005;
 Tue, 11 Jun 2019 19:11:32 +0000 (UTC)
Date: Tue, 11 Jun 2019 21:11:28 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Aisheng Dong <aisheng.dong@nxp.com>
Subject: Re: [PATCH 2/3] rtc: imx-sc: Make compatible string more generic
Message-ID: <20190611191128.GK25472@piout.net>
References: <20190611063333.48501-1-Anson.Huang@nxp.com>
 <20190611063333.48501-2-Anson.Huang@nxp.com>
 <AM0PR04MB4211DC4725A5FEBDC995560680ED0@AM0PR04MB4211.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AM0PR04MB4211DC4725A5FEBDC995560680ED0@AM0PR04MB4211.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.198 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "a.zummo@towertech.it" <a.zummo@towertech.it>,
 "ulf.hansson@linaro.org" <ulf.hansson@linaro.org>,
 Anson Huang <anson.huang@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, Peng Fan <peng.fan@nxp.com>,
 Daniel Baluta <daniel.baluta@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-rtc@vger.kernel.org" <linux-rtc@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 11/06/2019 10:57:17+0000, Aisheng Dong wrote:
> > From: Anson.Huang@nxp.com [mailto:Anson.Huang@nxp.com]
> > Sent: Tuesday, June 11, 2019 2:34 PM
> > 
> > i.MX system controller RTC driver can support all i.MX SoCs with system
> > controller inside, this patch makes the compatible string more generic to
> > support other i.MX SoCs with system controller inside, such as i.MX8QM etc..
> > 
> > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> 
> Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>
> 
> Regards
> Dong Aisheng
> 
> > ---
> >  drivers/rtc/rtc-imx-sc.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/drivers/rtc/rtc-imx-sc.c b/drivers/rtc/rtc-imx-sc.c index
> > c933045..38ef3ca 100644
> > --- a/drivers/rtc/rtc-imx-sc.c
> > +++ b/drivers/rtc/rtc-imx-sc.c
> > @@ -178,7 +178,7 @@ static int imx_sc_rtc_probe(struct platform_device
> > *pdev)  }
> > 
> >  static const struct of_device_id imx_sc_dt_ids[] = {
> > -	{ .compatible = "fsl,imx8qxp-sc-rtc", },

Don't you want to keep that compatible for backward compatibility?

> > +	{ .compatible = "fsl,imx-sc-rtc", },
> >  	{}
> >  };
> >  MODULE_DEVICE_TABLE(of, imx_sc_dt_ids);
> > --
> > 2.7.4
> 

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
