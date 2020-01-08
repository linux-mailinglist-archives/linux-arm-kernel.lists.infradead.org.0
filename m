Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DD3C133E1C
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 10:17:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qT0Hxq/4JWiditgTnxiwoC6cguygTCsfmfMJzxmL2dE=; b=Ngiz+KMr4P5dAJ
	jTgc3p+11a8jH6/YdHJhd3CiT62d89I3ZHJ6WGZosyxNg8msIXF924YUnQU4Zt0CvQQqnT2YRURqS
	PeAMZ+xH77IzlfEGC5/chEMMqcOY8hJg1Wqf+6wgFFITWCCEJlUXq9RrFvznswQPNZanMcA8w7rWG
	KC/AAkRWF2VmbwAL9rpON19z3WdHqaUfMVDFgSm+tV6KKP5kQcGpjlLio5D8HyIDkFcxGuQfVW0/d
	YLpRpra+w1QD6IYww/2k3bUpwza8hcoRKHWJMr5EVXM9QvyhY679Ott7I+aoKdRsMQbraP3CI4HO0
	RZHUcBSNBLBZaak/j87g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ip7SX-0001Jd-3x; Wed, 08 Jan 2020 09:17:01 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ip7SQ-0001J1-Dm
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 09:16:56 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C672C20705;
 Wed,  8 Jan 2020 09:16:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578475012;
 bh=+IAbT80Thjb7cm6WAP8wRkhDBitTa05E7byZ57Le5ag=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ie6mnSQIZ0/Cmh6ez45IJInqQwaokWY9MDyBZqRTZNt5uTgXRFmVAd2hNSM9uN3ID
 y/12CJS7TUfkeqVSwEDmyPF/a5pSrE4SVd4XYt+znN6uP71KT5adACbICf8qRxpEXp
 AQXOt9SNrLgS1q631MX+fnpE/s46nKozLm/TcjSk=
Date: Wed, 8 Jan 2020 09:16:42 +0000
From: Will Deacon <will@kernel.org>
To: Bjorn Andersson <bjorn.andersson@linaro.org>
Subject: Re: [PATCH 0/3] iommu/arm-smmu: Qualcomm bootsplash/efifb
Message-ID: <20200108091641.GA15147@willie-the-truck>
References: <20191226221709.3844244-1-bjorn.andersson@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191226221709.3844244-1-bjorn.andersson@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_011654_488261_65F99ECC 
X-CRM114-Status: GOOD (  11.53  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Rob Clark <robdclark@gmail.com>, Patrick Daly <pdaly@codeaurora.org>,
 linux-arm-msm@vger.kernel.org, Joerg Roedel <joro@8bytes.org>,
 linux-kernel@vger.kernel.org, iommu@lists.linux-foundation.org,
 treding@nvidia.com, Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel@lists.infradead.org, Pratik Patel <pratikp@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Dec 26, 2019 at 02:17:06PM -0800, Bjorn Andersson wrote:
> These patches implements the stream mapping inheritance that's necessary in
> order to not hit a security violation as the display hardware looses its stream
> mapping during initialization of arm-smmu in various Qualcomm platforms.
> 
> This was previously posted as an RFC [1], changes since then involves the
> rebase and migration of the read-back code to the Qualcomm specific
> implementation, the mapping is maintained indefinitely - to handle probe
> deferring clients - and rewritten commit messages.

I don't think we should solve this in a Qualcomm-specific manner. Please can
you take a look at the proposal from Thierry [1] and see whether or not it
works for you?

Thanks,

Will

[1] https://lore.kernel.org/lkml/20191209150748.2471814-1-thierry.reding@gmail.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
