Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46D721DCDE7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 15:27:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9IZ3923+KVXmqEQrQrqw5BCoaoDLTH/sP9EUAEYW3p0=; b=dRWCV0IhEAb9jv
	VodYazPDBbpRJiD4oXREPK+yB7PQWCKFh5ALx39FDNGVJX3mXrxo0auS4UVzpig1DRJVH7xo4dLis
	6jfcDjZdaNbVCiu2R82TGVWMIQlLyWCr5aelOXIrXfOon9eXkK6PDk5IdoImmAk42XZ8gu518XJvf
	2PRqTccPxRk5u0Q6khULtLHJPAU7nMIi3aDrTolVtMYEyoKDhZ+1/84k095Gwi6GKXM+dixbKOpts
	qBbIurhoq7t2+7XkmXsVL1d8Uk4+zs4QT5r/kHbVlQSPMQhPsPzSPu9D/SZyGTSnsx4IDEaAgQ8LU
	PkN4XV6mJvmoGZ9KtyeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jblDt-0000K5-LT; Thu, 21 May 2020 13:26:57 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jblDj-0000JQ-R7
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 13:26:49 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A3B24D6E;
 Thu, 21 May 2020 06:26:45 -0700 (PDT)
Received: from C02TD0UTHF1T.local (unknown [10.57.2.89])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 169BB3F305;
 Thu, 21 May 2020 06:26:43 -0700 (PDT)
Date: Thu, 21 May 2020 14:26:41 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH V1 RESEND 1/3] perf/imx_ddr: Add system PMU identifier
 for userspace
Message-ID: <20200521132641.GB47848@C02TD0UTHF1T.local>
References: <20200512073115.14177-1-qiangqing.zhang@nxp.com>
 <20200512073115.14177-2-qiangqing.zhang@nxp.com>
 <20200519185125.GB453195@bogus>
 <20200520073304.GA23534@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200520073304.GA23534@willie-the-truck>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_062647_918013_FDA238CE 
X-CRM114-Status: GOOD (  13.68  )
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
Cc: Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org,
 john.garry@huawei.com, Joakim Zhang <qiangqing.zhang@nxp.com>,
 linux-kernel@vger.kernel.org, linux-imx@nxp.com, shawnguo@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 20, 2020 at 08:33:04AM +0100, Will Deacon wrote:
> On Tue, May 19, 2020 at 12:51:25PM -0600, Rob Herring wrote:
> > On Tue, May 12, 2020 at 03:31:13PM +0800, Joakim Zhang wrote:
> > > +static ssize_t ddr_perf_identifier_show(struct device *dev,
> > > +					struct device_attribute *attr,
> > > +					char *page)
> > > +{
> > > +	struct ddr_pmu *pmu = dev_get_drvdata(dev);
> > > +
> > > +	return sprintf(page, "%s\n", pmu->devtype_data->identifier);
> > 
> > Why do we need yet another way to identify the SoC from userspace?
> 
> I also really dislike this. What's the preferred way to identify the SoC
> from userspace? It's needed so that the perf userspace tool can describe
> perf events that are supported for the PMU, as this isn't probe-able
> directly from the hardware. We have the same issue with the SMMUv3 PMCG [1],
> and so we need to solve the problem for both DT and ACPI.

Worth noting that while in this case it happens to identify the SoC,
in general you can have distinct instances of system IP in a single
system, so I do think that we need *something* instance-specific, even
if that's combined with SoC info.

Where IP gets reused across SoCs, it makes sense for that to not depend
on top-level SoC info.

Thanks,
Mark.

> 
> Will
> 
> [1] https://lore.kernel.org/r/1587120634-19666-1-git-send-email-john.garry@huawei.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
