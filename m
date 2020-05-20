Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 545281DAC3E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 09:33:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P5OA/Xhz9ufE5RU1pcOfJNFpZ+NgiKOTH9SYvc9QpRY=; b=TB2Tt5FkPAklxs
	dZ9jdpx1YrHVkMorbmP5d86mkIgCGtZrpkp4ZZrs+XTo4cSTTF5NbkYB0F6X1AdmOFWGUIOdntYBA
	KIOWdlbjVVJRfA6BGfgQB4hgtgbU3HYs/FK5rlQsxHKqdKaIg2TAoFy3CPGrW/Nl+hkJEP9o7+9tW
	5bIGcR73h1DTQ4yyySUx82HY9TsLLWQVxV46FgOAlrX9mt5r1QNvKBGL2pic4xakfoCpwtWKUMGFB
	6bUb76nFWlanym0RAPllRH9USlMwRGgkwN/NLcDdkUWzP+X1xX2siTZlMFxXmiT4LpmslrDOkoOb0
	SmemmWIkCNBaZYj91SVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbJE7-0002D3-Ea; Wed, 20 May 2020 07:33:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbJDy-0002CC-2o
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 07:33:12 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 26ABF205CB;
 Wed, 20 May 2020 07:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589959989;
 bh=wubkXTV9YfNSZFkVpKAM6nS+N7G81auN5xKELhErTmY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=yc/605SUMUJFs9TJLBPK2N5ck7U+Xa/E8+UxOiI7rgE3jsziwIwsk2ilHury9s9E2
 pTi8zsr9ZsOdemB7gI4Lu3oSp6U9/zDqz0PuAkVPzm4Smr6sumxAV0qmwbH5wb3vON
 SxPzkYN+kKYXfWbahrcv+B36uCRmn6Sj+4UJgtoU=
Date: Wed, 20 May 2020 08:33:04 +0100
From: Will Deacon <will@kernel.org>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH V1 RESEND 1/3] perf/imx_ddr: Add system PMU identifier
 for userspace
Message-ID: <20200520073304.GA23534@willie-the-truck>
References: <20200512073115.14177-1-qiangqing.zhang@nxp.com>
 <20200512073115.14177-2-qiangqing.zhang@nxp.com>
 <20200519185125.GB453195@bogus>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200519185125.GB453195@bogus>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_003310_790727_A58D4EC3 
X-CRM114-Status: UNSURE (   9.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, john.garry@huawei.com,
 Joakim Zhang <qiangqing.zhang@nxp.com>, linux-kernel@vger.kernel.org,
 linux-imx@nxp.com, shawnguo@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 19, 2020 at 12:51:25PM -0600, Rob Herring wrote:
> On Tue, May 12, 2020 at 03:31:13PM +0800, Joakim Zhang wrote:
> > +static ssize_t ddr_perf_identifier_show(struct device *dev,
> > +					struct device_attribute *attr,
> > +					char *page)
> > +{
> > +	struct ddr_pmu *pmu = dev_get_drvdata(dev);
> > +
> > +	return sprintf(page, "%s\n", pmu->devtype_data->identifier);
> 
> Why do we need yet another way to identify the SoC from userspace?

I also really dislike this. What's the preferred way to identify the SoC
from userspace? It's needed so that the perf userspace tool can describe
perf events that are supported for the PMU, as this isn't probe-able
directly from the hardware. We have the same issue with the SMMUv3 PMCG [1],
and so we need to solve the problem for both DT and ACPI.

Will

[1] https://lore.kernel.org/r/1587120634-19666-1-git-send-email-john.garry@huawei.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
