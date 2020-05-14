Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EADDC1D34DA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 17:18:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DypNdyZIZF3Thdix0x878rQeAav2okXgGW1yZMgwJxg=; b=OSj/IdUcYNRSJb
	z5G7Vkjvo1BdkZhNmOoYBXddVcH236sJZpeDEKeCCxrgBumhvFII4EYi4qF67WvCeZGXGFRsX4n/Z
	3NQeacHWxx5wfutXWQ/qU7wOfkv2f6HtKgdBtF5tyYVkDFkCrjleevoSnU01K0brFa4UKRrPJAQ7P
	YxGJRy6hpOKmXk0rpM5RJXxzklkJ6xr6iGzbX+NOj5rgwkb/XKz39Tg19SzL8HbTN8SzuqtaHSm/W
	m0MP7+Gi0uR7aRgdf4pAiG3P9UeEcL26bcqPU5jfzyZu0diFZWaWDvxO94YoLo0aouJTEmGZxZgEN
	B2iq8bpekn3Sq8FdVbUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZFd2-0004aG-L0; Thu, 14 May 2020 15:18:32 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZFcs-0004Zr-KU
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 15:18:23 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id B9C0A80C0;
 Thu, 14 May 2020 15:19:11 +0000 (UTC)
Date: Thu, 14 May 2020 08:18:19 -0700
From: Tony Lindgren <tony@atomide.com>
To: Tero Kristo <t-kristo@ti.com>
Subject: Re: [PATCH 2/6] soc: ti: omap-prm: Add basic power domain support
Message-ID: <20200514151819.GO37466@atomide.com>
References: <20200512203852.29499-1-tony@atomide.com>
 <20200512203852.29499-3-tony@atomide.com>
 <acb3960a-fbbb-f764-9ee2-191aac2f8323@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <acb3960a-fbbb-f764-9ee2-191aac2f8323@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_081822_713590_4AC0E089 
X-CRM114-Status: GOOD (  12.88  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Rob Herring <robh@kernel.org>, linux-omap@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 "Andrew F . Davis" <afd@ti.com>, Santosh Shilimkar <ssantosh@kernel.org>,
 Suman Anna <s-anna@ti.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* Tero Kristo <t-kristo@ti.com> [200514 08:05]:
> On 12/05/2020 23:38, Tony Lindgren wrote:
> > +struct omap_prm_domain {
> > +	struct device *dev;
> > +	struct omap_prm *prm;
> > +	struct generic_pm_domain pd;
> > +	void __iomem *pwrstctrl;
> > +	void __iomem *pwrstst;
> 
> I think the pwrstst is not really used as of now, it is just part of couple
> of dev_dbg prints.

Yes to me it seems the pwrstst only changes later on.

> > +static int omap_prm_domain_power_on(struct generic_pm_domain *domain)
> > +{
> > +	struct omap_prm_domain *prmd;
> > +	u32 v;
> > +
> > +	prmd = genpd_to_prm_domain(domain);
> > +	if (!prmd->cap)
> > +		return 0;
> > +
> > +	dev_dbg(prmd->dev, "%s: %s: old state: pwrstctrl: %08x pwrstst: %08x\n",
> > +		__func__, prmd->pd.name, readl_relaxed(prmd->pwrstctrl),
> > +		readl_relaxed(prmd->pwrstst));
> > +
> > +	if (prmd->pwrstctrl_saved)
> > +		v = prmd->pwrstctrl_saved;
> > +	else
> > +		v = readl_relaxed(prmd->pwrstctrl);
> > +
> > +	writel_relaxed(v | OMAP_PRMD_ON_ACTIVE, prmd->pwrstctrl);
> > +	dev_dbg(prmd->dev, "%s: %s: new state pwrstctrl: %08x\n",
> > +		__func__, prmd->pd.name, readl_relaxed(prmd->pwrstctrl));
> 
> Should we wait for the transition to complete here?

Good idea :)

> > +	v &= ~PRM_POWERSTATE_MASK;
> > +	v |= omap_prm_domain_find_lowest(prmd);
> > +
> > +	if (prmd->cap->statechange)
> > +		v |= PRM_LOWPOWERSTATECHANGE;
> > +	if (prmd->cap->logicretstate)
> > +		v &= ~PRM_LOGICRETSTATE;
> > +	else
> > +		v |= PRM_LOGICRETSTATE;
> > +
> > +	writel_relaxed(v, prmd->pwrstctrl);
> 
> Should we wait for the transition to complete here?

Would be nice yeah.

> Is any of the following clock handling needed, and if yes, whats its
> purpose?
> 
> It looks like this is only used for ABE clkctrl handling on omap4/omap5 (at
> least for now), but afaik, ABE clkctrl is read only so this code would
> effectively do nothing (and potentially just even fail.)

Yeah this seems unnecessary, let's plan on leaving it out. I think the
clocks in the l4_abe dst changes are actually handled by simple-pm-bus,
not this driver, I was just confused :)

Regards,

Tony

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
