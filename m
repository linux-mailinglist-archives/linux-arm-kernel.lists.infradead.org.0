Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F7CD1A3CDF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Apr 2020 01:31:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oQ4iAqQPvWy3n8E5+lPsvY3b6PAi3mjCZUQDpg2VS6E=; b=UM5flbXDwYgrQj
	S1FMNq548RH5LC2lueOFYGSEkYC1d/e8yi1FyExAPoejewrNfulrMMGjaETXre2cEMadhKVXbDsmR
	UzpqiTkhDGWMihRUDp/EJPusuFWd2A4wWKI2NesuMtFS0SXvOTAH7woxdekLwKuQkpPKcVJ5pg42i
	gCFznKi53FNXiaaXb9RoV3aHQRjUEX7U3wMeM1hIr76deT5pkgJpaBHn6TxR+vrIA/IunDi6yNXfB
	rjImPmUiR2i6lwFbShwEPloIHx01lEDOSDu7HvKsG1flc5xFzPeuawFQt08ix3sAwuTBoCGnuLevI
	ATKCXrwoULPQAzCbqWkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMgdz-0007Z9-O8; Thu, 09 Apr 2020 23:31:35 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMgds-0007YX-Er
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 23:31:29 +0000
Received: by mail-pf1-x444.google.com with SMTP id x3so6455pfp.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Apr 2020 16:31:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=ZkCPBxxxyjSx1oGDDyt3nqc/uvcZpVvRJITDOMA3zxE=;
 b=fuWEoD/XFcHkrla7dX8M4ijHH1Z+/O/saTKokpSm7SO9G2hVpT7AB3ekqHRvcftqVU
 yX59m7l+c9k2M/J1FKQtnPpz+9HwqkPIS42tskaufVbXLMtZXYFW0apDvgLoQca/ykdF
 eRmD7/0a4g8vckwgsGXGoj6mqkGyP+VmyUVj4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ZkCPBxxxyjSx1oGDDyt3nqc/uvcZpVvRJITDOMA3zxE=;
 b=aSyDs03H96sMV5d8D7MhnuZrxSMsth+lpHiBDKK/bkZn+GMfSmMDYJFAq8dqJNa2Pr
 s/1uIiZgeQA+ca1IAuojY1mBE/YhXPnZ39HmXhqOkYvcVC0g/WQE+BEydpYDYM6PLnYM
 gAcF2tOzXq+lBL7JzzTV1GbfwJvW1TWEoXcK9gnaL9+zYf0INHl1yqWwsMjtV8tVqhz+
 zMrOUzb5rfVqi38wdoPDZAy0MgVIRRyFw/iBZqQ/2u2+rnvN55m5UKDbtK3xJHqoCK4m
 WmF7IHOSF7z3VdsdcTimbe0DOW19QkXq2oa8/GTpzqdqRsrzdVtn6w2xn/gAfAvL801s
 fqTA==
X-Gm-Message-State: AGi0PuYOeHk36tpPg3nzrFdAED85Ps89hkATAIO7AZM2QW9fs9pmRp6g
 RrBoblfBdIe1CUZxerir56r8QA==
X-Google-Smtp-Source: APiQypLeHsiNvXa0fC/JPIAYREoiHIIj7McMv+L0VkX3HCS8JHN0sjKPyH19uJztvV+NMbXtBVLxZg==
X-Received: by 2002:a63:ee4f:: with SMTP id n15mr1817524pgk.149.1586475087419; 
 Thu, 09 Apr 2020 16:31:27 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:4fff:7a6b:a335:8fde])
 by smtp.gmail.com with ESMTPSA id v25sm186190pgl.55.2020.04.09.16.31.25
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 09 Apr 2020 16:31:26 -0700 (PDT)
Date: Thu, 9 Apr 2020 16:31:24 -0700
From: Matthias Kaehlcke <mka@chromium.org>
To: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
Subject: Re: [PATCH 0/2] iommu/arm-smmu: Allow client devices to select
 direct mapping
Message-ID: <20200409233124.GW199755@google.com>
References: <cover.1579692800.git.saiprakash.ranjan@codeaurora.org>
 <7761534cdb4f1891d993e73931894a63@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7761534cdb4f1891d993e73931894a63@codeaurora.org>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_163128_517677_490C34D5 
X-CRM114-Status: GOOD (  13.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Rob Clark <robdclark@gmail.com>, Tomasz Figa <tfiga@chromium.org>,
 Rajendra Nayak <rnayak@codeaurora.org>, Will Deacon <will@kernel.org>,
 Joerg Roedel <joro@8bytes.org>, iommu@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, Jordan Crouse <jcrouse@codeaurora.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, linux-arm-msm@vger.kernel.org,
 Stephen Boyd <swboyd@chromium.org>, Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Feb 04, 2020 at 11:12:17PM +0530, Sai Prakash Ranjan wrote:
> Hello Robin, Will
> 
> On 2020-01-22 17:18, Sai Prakash Ranjan wrote:
> > This series allows drm devices to set a default identity
> > mapping using iommu_request_dm_for_dev(). First patch is
> > a cleanup to support other SoCs to call into QCOM specific
> > implementation and preparation for second patch.
> > Second patch sets the default identity domain for drm devices.
> > 
> > Jordan Crouse (1):
> >   iommu/arm-smmu: Allow client devices to select direct mapping
> > 
> > Sai Prakash Ranjan (1):
> >   iommu: arm-smmu-impl: Convert to a generic reset implementation
> > 
> >  drivers/iommu/arm-smmu-impl.c |  8 +++--
> >  drivers/iommu/arm-smmu-qcom.c | 55 +++++++++++++++++++++++++++++++++--
> >  drivers/iommu/arm-smmu.c      |  3 ++
> >  drivers/iommu/arm-smmu.h      |  5 ++++
> >  4 files changed, 65 insertions(+), 6 deletions(-)
> 
> Any review comments?

Ping

What is the status of this series, is it ready to land or are any changes
needed?

Thanks

Matthias

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
