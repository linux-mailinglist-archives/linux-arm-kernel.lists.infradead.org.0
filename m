Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0F9617F17E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 09:11:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0StLISKW41RQZJNsgcVtgukubyY1F6eGVHTgx4Ydx2M=; b=NROnlr8Cyaxi2l
	o9BNqfosabWdhPvOXAkFsISnfYrQo5PyakdTYv+Mpy2IE1sln9WkLNW5bc4dfSC4awUaQtC90u4oF
	nop9QSlVA44GopSaitb2LyuD8XvJs+6OTijBeLo+HVg6gkLkOm3ZNJT9907jk1ZtQp+NMCEUD2O68
	uDQ3v7GJIbQYANcsRdUFSwffJ8xP/Jpr/4Sy4/RBjpXQw9bVXrWpgcDnN/nb7vSH5rMMXv3LrlQxw
	P3FQOiMwTGUHY4h2kq9a7DM8rioSExk9kql6m5siB9zKUZH+GaNz/N/YaIRUbBl6/pNtymOI30H52
	RXZG0zv5KdK8EcEC2+vw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBZz4-0005O1-N3; Tue, 10 Mar 2020 08:11:26 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBZyr-0005MA-Au; Tue, 10 Mar 2020 08:11:19 +0000
X-UUID: 88ea9678f4ab4eb883b45d0b20f3d044-20200310
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=PVF960eiMhPIStyLRpGTvgu9m00ddP+xhq2FdRepCys=; 
 b=gdNJjRmLVi8ErFl1FNvV1xub5w9HmJuJMtaVZK5Yr811gKDDzS7sL5TMlm0XxOU/4tUNALdmb/7uA8Rs4OsGvywjQGTKXH+NkU/RyApAon/7qKSj2INVTkaVVlOxBuafzD7ubMIAz8ciWFEgpQFhdd/ELXF5elpXxYHU/gp7Pzg=;
X-UUID: 88ea9678f4ab4eb883b45d0b20f3d044-20200310
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <andrew-sh.cheng@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1674737675; Tue, 10 Mar 2020 00:11:09 -0800
Received: from MTKMBS02N1.mediatek.inc (172.21.101.77) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 10 Mar 2020 01:11:06 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs02n1.mediatek.inc (172.21.101.77) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 10 Mar 2020 16:08:57 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 10 Mar 2020 16:11:18 +0800
Message-ID: <1583827865.4840.1.camel@mtksdaap41>
Subject: Re: [v5, PATCH 4/5] cpufreq: mediatek: add opp notification for SVS
 support
From: andrew-sh.cheng <andrew-sh.cheng@mediatek.com>
To: Viresh Kumar <viresh.kumar@linaro.org>
Date: Tue, 10 Mar 2020 16:11:05 +0800
In-Reply-To: <20191210064319.f4ksrxozp3gv4xry@vireshk-i7>
References: <1574769046-28449-1-git-send-email-andrew-sh.cheng@mediatek.com>
 <1574769046-28449-5-git-send-email-andrew-sh.cheng@mediatek.com>
 <20191127083619.etocnhpyyut3hzwq@vireshk-i7>
 <1575874588.13494.4.camel@mtksdaap41>
 <20191210064319.f4ksrxozp3gv4xry@vireshk-i7>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_011117_694249_DED97E6D 
X-CRM114-Status: GOOD (  16.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Nishanth Menon <nm@ti.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 srv_heupstream <srv_heupstream@mediatek.com>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Chanwoo
 Choi <cw00.choi@samsung.com>, Kyungmin Park <kyungmin.park@samsung.com>,
 Rob Herring <robh+dt@kernel.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 MyungJoo Ham <myungjoo.ham@samsung.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Fan Chen =?UTF-8?Q?=28=E9=99=B3=E5=87=A1=29?= <fan.chen@mediatek.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 2019-12-10 at 14:43 +0800, Viresh Kumar wrote:
> On 09-12-19, 14:56, andrew-sh.cheng wrote:
> > On Wed, 2019-11-27 at 14:06 +0530, Viresh Kumar wrote:
> > > On 26-11-19, 19:50, Andrew-sh.Cheng wrote:
> > > > +		if (!IS_ERR(opp_item))
> > > > +			dev_pm_opp_put(opp_item);
> > > > +		else
> > > > +			freq = 0;
> > > > +
> > > 
> > > What is the purpose of the above code ?
> > When dev_pm_opp_find_freq_ceil() doesn't find matching opp item, freq
> > value won't be set.
> > Set it as 0 for below checking
> > > 
> > > > +		/* case of current opp is disabled */
> > > > +		if (freq == 0 || freq != info->opp_freq) {
> > > > +			// find an enable opp item
> > > > +			freq = 1;
> > > > +			opp_item = dev_pm_opp_find_freq_ceil(info->cpu_dev,
> > > > +							     &freq);
> > > > +			if (!IS_ERR(opp_item)) {
> > > > +				dev_pm_opp_put(opp_item);
> > > > +				policy = cpufreq_cpu_get(info->opp_cpu);
> > > > +				if (policy) {
> > > > +					cpufreq_driver_target(policy,
> > > > +						freq / 1000,
> > > > +						CPUFREQ_RELATION_L);
> > > 
> > > Why don't you simply call this instead of all the code in the else
> > > block ?
> > These else code is used to check "current opp item is disabled or not".
> > If not, do nothing.
> > If current opp item is disabled, need to find an not-disabled opp item,
> > and set frequency to it.
> 
> Right. So this notifier helper of yours receive the opp which is getting
> disabled, why don't you compare its frequency directly to see if the current OPP
> is getting disabled ?
Sorry to overlook your question.
This is because when the opp is disabled,
we cannot use dev_pm_opp_get_freq() to get frequency of that opp.
There is a check:
	if (IS_ERR_OR_NULL(opp) || !opp->available) {
		pr_err("%s: Invalid parameters\n", __func__);
		return 0;

> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
