Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC6FD1DCDAF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 15:04:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zWgT3wuiVdnM++3wLwnYJpw3tIp0H7ESo5Scw06eN2w=; b=sHtOhqMgF0dI1D
	9HMsEWNc7cWt1JXAm0/hn/OQlYcByVe8YL5qDqqSobEma0h6b7zobQn9OnEkHbIrl5xRAwSj8bPtq
	UgDY3HR7ji//Ct9z8FBIGinAhH+L3NuRk1dzMUOBsRZUs9v/t588ORQCAeLQlgx2kTHHP9AbwhupE
	Xm+H/cT6fCy7Vn+Cy/ndk00Ek+ITRDqHD6EkHsZ8wqVsCIiAg+SUpTb2/zoLhLZJ4bsvgJHYm0vzX
	gKIJOdjeMu3n/3z7bZmlN7RYe4fZNT5rfgqvleBbuoAryGvLBikrFaSrtmneGJgPhNmQeuWtpCQ5c
	g2Uuj+7RE20aj+w+ZH3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbksV-00037G-VV; Thu, 21 May 2020 13:04:52 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbks2-0002yB-CD
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 13:04:24 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 931022072C;
 Thu, 21 May 2020 13:04:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590066261;
 bh=MRCEC+nXdSDz6i5TZrMw6mLNWWrHvA60N+e767YVxns=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=lmu3epPATx/GzY3jREbvlRwGrVQu7NJk8uFE7w/S8G1BcG1hgzymFGCxBxB3viHil
 R4Hecc/Gx26n2kk2sBrr248PsSUtFBnxZcpkpZTD3fq88XA76zFMe4Kr03Js3lMNcM
 cHsdSest9biXfmMIG+b2eQph4k3krZ8JUH+dhwf0=
Date: Thu, 21 May 2020 14:04:16 +0100
From: Will Deacon <will@kernel.org>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH V1 RESEND 1/3] perf/imx_ddr: Add system PMU identifier
 for userspace
Message-ID: <20200521130415.GB5949@willie-the-truck>
References: <20200512073115.14177-1-qiangqing.zhang@nxp.com>
 <20200512073115.14177-2-qiangqing.zhang@nxp.com>
 <20200519185125.GB453195@bogus>
 <20200520073304.GA23534@willie-the-truck>
 <CAL_JsqJfQ0PFy5mmwSG4aM91ghq5xiAEPR2YZOymws+BfGa+uA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAL_JsqJfQ0PFy5mmwSG4aM91ghq5xiAEPR2YZOymws+BfGa+uA@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_060422_524646_B3FDD507 
X-CRM114-Status: GOOD (  12.80  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 John Garry <john.garry@huawei.com>, Joakim Zhang <qiangqing.zhang@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 20, 2020 at 09:23:41AM -0600, Rob Herring wrote:
> On Wed, May 20, 2020 at 1:33 AM Will Deacon <will@kernel.org> wrote:
> >
> > On Tue, May 19, 2020 at 12:51:25PM -0600, Rob Herring wrote:
> > > On Tue, May 12, 2020 at 03:31:13PM +0800, Joakim Zhang wrote:
> > > > +static ssize_t ddr_perf_identifier_show(struct device *dev,
> > > > +                                   struct device_attribute *attr,
> > > > +                                   char *page)
> > > > +{
> > > > +   struct ddr_pmu *pmu = dev_get_drvdata(dev);
> > > > +
> > > > +   return sprintf(page, "%s\n", pmu->devtype_data->identifier);
> > >
> > > Why do we need yet another way to identify the SoC from userspace?
> >
> > I also really dislike this. What's the preferred way to identify the SoC
> > from userspace?
> 
> /proc/cpuinfo? ;)

The *SoC*!

> For an non-firmware specific case, I'd say soc_device should be. I'd
> guess ACPI systems don't use it and for them it's dmidecode typically.
> The other problem I have with soc_device is it is optional.

John -- what do you think about using soc_device to expose this information,
with ACPI systems using DMI data instead?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
