Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12E43644F6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jul 2019 12:11:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mrjXdPcYMDAzO5AuH1YK6N0Orwa/t1ua1a/jdYntGtY=; b=LFz8w7emdeuoK6
	VwdOpOuUFl5sBoz06iUyiwPzM5W66t//GmVkvz/3au38FNKIusNlFw2+Wpcy5KFVArG3owVFBVgqw
	WUk194qWXQF1jY66LfNvYnhfVbKy3q96Izu+5mEKSWoSSKFhgunKVn/XDOd11FAo0kRJkiFW+LxDg
	xO5eMDUOS+vDYBWj/4HMPieiqDKy3q7roO3OuyAVqmJsHlGsLlhpYsKBdn0U69hg0MD7k0iBOjfei
	TKNLpXabE9272NB8I8dlCUk7rmPDvczxJCPihmnQAULQujP0wtXeR5HvzubX31BVaBn/J/UQ6P9E7
	R/ZwwGrcwxUIrxNidJ2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hl9ZS-0004hj-HE; Wed, 10 Jul 2019 10:11:30 +0000
Received: from cloudserver094114.home.pl ([79.96.170.134])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hl9ZC-0004gW-TM
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jul 2019 10:11:16 +0000
Received: from 79.184.253.121.ipv4.supernova.orange.pl (79.184.253.121) (HELO
 kreacher.localnet)
 by serwer1319399.home.pl (79.96.170.134) with SMTP (IdeaSmtpServer 0.83.267)
 id b3935117ca5db99f; Wed, 10 Jul 2019 12:11:07 +0200
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: Viresh Kumar <viresh.kumar@linaro.org>
Subject: Re: [PATCH] cpufreq: imx-cpufreq-dt: Add i.MX8MN support
Date: Wed, 10 Jul 2019 12:11:07 +0200
Message-ID: <7456362.ddI0K1WBKD@kreacher>
In-Reply-To: <20190708035057.h2lgadm56tgdqsor@vireshk-i7>
References: <20190708030308.1815-1-Anson.Huang@nxp.com>
 <20190708035057.h2lgadm56tgdqsor@vireshk-i7>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_031115_110626_A8156397 
X-CRM114-Status: GOOD (  14.52  )
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
Cc: Anson.Huang@nxp.com, linux-pm@vger.kernel.org, shawnguo@kernel.org,
 s.hauer@pengutronix.de, linux-kernel@vger.kernel.org, Linux-imx@nxp.com,
 kernel@pengutronix.de, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Monday, July 8, 2019 5:50:57 AM CEST Viresh Kumar wrote:
> On 08-07-19, 11:03, Anson.Huang@nxp.com wrote:
> > From: Anson Huang <Anson.Huang@nxp.com>
> > 
> > i.MX8MN is a new SoC of i.MX8M series, it also uses speed
> > grading and market segment fuses for OPP definitions, add
> > support for this SoC.
> > 
> > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > ---
> >  drivers/cpufreq/imx-cpufreq-dt.c | 3 ++-
> >  1 file changed, 2 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/cpufreq/imx-cpufreq-dt.c b/drivers/cpufreq/imx-cpufreq-dt.c
> > index b54fd26..4f85f31 100644
> > --- a/drivers/cpufreq/imx-cpufreq-dt.c
> > +++ b/drivers/cpufreq/imx-cpufreq-dt.c
> > @@ -44,10 +44,11 @@ static int imx_cpufreq_dt_probe(struct platform_device *pdev)
> >  	 * According to datasheet minimum speed grading is not supported for
> >  	 * consumer parts so clamp to 1 to avoid warning for "no OPPs"
> >  	 *
> > -	 * Applies to 8mq and 8mm.
> > +	 * Applies to i.MX8M series SoCs.
> >  	 */
> >  	if (mkt_segment == 0 && speed_grade == 0 && (
> >  			of_machine_is_compatible("fsl,imx8mm") ||
> > +			of_machine_is_compatible("fsl,imx8mn") ||
> >  			of_machine_is_compatible("fsl,imx8mq")))
> >  		speed_grade = 1;
> 
> Acked-by: Viresh Kumar <viresh.kumar@linaro.org>
> 
> @Rafael: Can you pick this one directly, no point sending another pull request
> for just one patch. Thanks.

Done, thanks!




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
