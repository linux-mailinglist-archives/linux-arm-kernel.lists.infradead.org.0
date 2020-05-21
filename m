Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A47FF1DC4EA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 03:50:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TdU8l/B/v8OV8JquWiz72aqR6ED78v2OisJJneES5Yo=; b=No6/koTbUVtHok
	SctI2Gyztgyi1Ea+VW2TRYY1iPcLPV+KiseNljQ9zqMRVVk3xfd2A3X42o8Xn7n/KnZkJYjk3Q7H9
	geUtuv35Yw0dBZPxBULpWYS061cZRNG4xF472vJPtFEsAKa6Km6bBpp1HEyQgahuHT7oBcopFpxWx
	L36ZYb1nTjP2kwubtr4wpYYikleslEUF52P+5gz21lIBKypEP7EkccJ1cj7zbq0nFwKyi89R6qE6O
	44aq1cMNQ+iry1+1r3E3bsyw9VDvn9yA2DZLxcdZ0kS9HEJpESfPYSc9/8/b71APJxDKJdUhIuB3b
	NsnaCCHCOCl3Pv8sIKNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbaM6-0007ca-DH; Thu, 21 May 2020 01:50:42 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbaLw-0007c1-0H; Thu, 21 May 2020 01:50:33 +0000
X-UUID: 2a7d3d6f708242ef832624eae674aa38-20200520
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=iA3rm6tm1TCbtJYi3Z4bsuX93wDGi5lZZQ8BBM1TLr4=; 
 b=ThZVrXEX0fa53G2rS34K2Fa8DaXcIoQB6srBKTr+lR1DkRftl73LO5tTQk3QHEXIaGAtbjw3KHPI8CsflqErN+jz+WAg4wNPTQW5swfh/TI3P5pLeROi3NwBh8SODirjd0Q8ktGR/hpJUOIHREnPA/CoMYzhivgxUgOlaNyl3eQ=;
X-UUID: 2a7d3d6f708242ef832624eae674aa38-20200520
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <andrew-sh.cheng@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 423449908; Wed, 20 May 2020 17:50:30 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Wed, 20 May 2020 18:50:26 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 21 May 2020 09:50:27 +0800
Received: from [172.21.77.4] (172.21.77.4) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Thu, 21 May 2020 09:50:27 +0800
Message-ID: <1590025827.17518.2.camel@mtksdaap41>
Subject: Re: [PATCH 01/12] OPP: Allow required-opps even if the device
 doesn't have power-domains
From: andrew-sh.cheng <andrew-sh.cheng@mediatek.com>
To: Matthias Brugger <matthias.bgg@gmail.com>
Date: Thu, 21 May 2020 09:50:27 +0800
In-Reply-To: <b667fff9-50ae-bff2-ae17-1cf0ca1a08a5@gmail.com>
References: <20200520034307.20435-1-andrew-sh.cheng@mediatek.com>
 <20200520034307.20435-2-andrew-sh.cheng@mediatek.com>
 <b667fff9-50ae-bff2-ae17-1cf0ca1a08a5@gmail.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_185032_052795_DA19B040 
X-CRM114-Status: GOOD (  21.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Mark Rutland <mark.rutland@arm.com>, Nishanth Menon <nm@ti.com>, Saravana
 Kannan <saravanak@google.com>, srv_heupstream@mediatek.com,
 linux-pm@vger.kernel.org, Stephen Boyd <sboyd@kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>, Mark Brown <broonie@kernel.org>,
 "Rafael J
 . Wysocki" <rjw@rjwysocki.net>, Liam Girdwood <lgirdwood@gmail.com>, Rob
 Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org,
 Chanwoo Choi <cw00.choi@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 2020-05-20 at 16:54 +0200, Matthias Brugger wrote:
> 
> On 20/05/2020 05:42, Andrew-sh.Cheng wrote:
> > From: Saravana Kannan <saravanak@google.com>
> > 
> > A Device-A can have a (minimum) performance requirement on another
> > Device-B to be able to function correctly. This performance requirement
> > on Device-B can also change based on the current performance level of
> > Device-A.
> > 
> > The existing required-opps feature fits well to describe this need. So,
> > instead of limiting required-opps to point to only PM-domain devices,
> > allow it to point to any device.
> > 
> > Signed-off-by: Saravana Kannan <saravanak@google.com>
> 
> Please check all patches, they are missing your
> Signed-off-by
> 
> Regards,
> Matthias

Hi Matthias,

I modify patch [6/12] to meet kernel-5.7 data structure and add
signed-off.
For [1/12] to [5/12], I didn't modify them.
Should I also add signed-off ?

BR,
Andrew-sh.Cheng
> 
> > ---
> >  drivers/opp/core.c |  2 +-
> >  drivers/opp/of.c   | 11 -----------
> >  2 files changed, 1 insertion(+), 12 deletions(-)
> > 
> > diff --git a/drivers/opp/core.c b/drivers/opp/core.c
> > index ba43e6a3dc0a..51403c1f2481 100644
> > --- a/drivers/opp/core.c
> > +++ b/drivers/opp/core.c
> > @@ -755,7 +755,7 @@ static int _set_required_opps(struct device *dev,
> >  		return 0;
> >  
> >  	/* Single genpd case */
> > -	if (!genpd_virt_devs) {
> > +	if (!genpd_virt_devs && required_opp_tables[0]->is_genpd) {
> >  		pstate = likely(opp) ? opp->required_opps[0]->pstate : 0;
> >  		ret = dev_pm_genpd_set_performance_state(dev, pstate);
> >  		if (ret) {
> > diff --git a/drivers/opp/of.c b/drivers/opp/of.c
> > index 9cd8f0adacae..6d33de668a7b 100644
> > --- a/drivers/opp/of.c
> > +++ b/drivers/opp/of.c
> > @@ -195,17 +195,6 @@ static void _opp_table_alloc_required_tables(struct opp_table *opp_table,
> >  
> >  		if (IS_ERR(required_opp_tables[i]))
> >  			goto free_required_tables;
> > -
> > -		/*
> > -		 * We only support genpd's OPPs in the "required-opps" for now,
> > -		 * as we don't know how much about other cases. Error out if the
> > -		 * required OPP doesn't belong to a genpd.
> > -		 */
> > -		if (!required_opp_tables[i]->is_genpd) {
> > -			dev_err(dev, "required-opp doesn't belong to genpd: %pOF\n",
> > -				required_np);
> > -			goto free_required_tables;
> > -		}
> >  	}
> >  
> >  	goto put_np;
> > 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
