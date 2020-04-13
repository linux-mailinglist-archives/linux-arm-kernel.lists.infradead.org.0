Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D7481A688B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Apr 2020 17:13:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5zUvWHbEd9MniKnawMKYO+j+DVev/ncbrtGigtA1EI0=; b=sqHdhxmuxMFTEK
	KgqbJYDqh71Tjr8CanaiZ4IoE/Ix5xYp+Rpwd8iXRZHigRaYqWti6eXVbpy/9HFzBatDfWHLvVAox
	ZjAuACukzihMabY6bpQO736wLvthzP02okL6gLP29Ph9NMJII709nZ2AJeYfymGoX4IMglskUP19R
	ivqj9qQzYXSREYSw4Z2xh7cv4isQ6B/ZOpnaBoMEvv7JJfNPZyVdBM0Q2ttixXg+gdG1HZV7LKlUD
	clX2cpCZIujt77vQgMURXP06JJZmoetweZ+OchyOvrQ1Mp3qM9FYAZtb9Jpgj5JmN2V8Uh+XbLXee
	SRXf9Mg1sPvfK4V8BhUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jO0lh-00057h-7X; Mon, 13 Apr 2020 15:13:01 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jO0lX-000576-Kc
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Apr 2020 15:12:54 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1586790772; h=In-Reply-To: Content-Type: MIME-Version:
 References: Message-ID: Subject: Cc: To: From: Date: Sender;
 bh=LU4lIIs6P7WbetJLktGFAgPFpHgnYydgpo5RLRCAr2Q=;
 b=DLcUSmQC5nwoGKneUnPWqOsyjZbWpZQr24sTf6gk4EonBkjqHLU3r5tRl60/Ge/PwP1trq8S
 DqtEiBIO6BUFcxpdgJqSznwYds8ftXAM5PcIkXoJML4OYVdAHWnVS016fj8cPa7AEnvLpDJc
 uYdJ30WZC8gtsfA940RWbjEBHuA=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e94816f.7f8f479f0d18-smtp-out-n02;
 Mon, 13 Apr 2020 15:12:47 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 148F4C44792; Mon, 13 Apr 2020 15:12:45 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from jcrouse1-lnx.qualcomm.com (i-global254.qualcomm.com
 [199.106.103.254])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: jcrouse)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 0E460C433F2;
 Mon, 13 Apr 2020 15:12:43 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 0E460C433F2
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=jcrouse@codeaurora.org
Date: Mon, 13 Apr 2020 09:12:42 -0600
From: Jordan Crouse <jcrouse@codeaurora.org>
To: Matthias Kaehlcke <mka@chromium.org>
Subject: Re: [PATCH 0/2] iommu/arm-smmu: Allow client devices to select
 direct mapping
Message-ID: <20200413151241.GB20818@jcrouse1-lnx.qualcomm.com>
Mail-Followup-To: Matthias Kaehlcke <mka@chromium.org>,
 Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
 Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
 Joerg Roedel <joro@8bytes.org>, Rob Clark <robdclark@gmail.com>,
 iommu@lists.linux-foundation.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, Stephen Boyd <swboyd@chromium.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Rajendra Nayak <rnayak@codeaurora.org>,
 Tomasz Figa <tfiga@chromium.org>
References: <cover.1579692800.git.saiprakash.ranjan@codeaurora.org>
 <7761534cdb4f1891d993e73931894a63@codeaurora.org>
 <20200409233124.GW199755@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200409233124.GW199755@google.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_081252_562453_381FB7B2 
X-CRM114-Status: GOOD (  19.70  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.27 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
 Tomasz Figa <tfiga@chromium.org>, Rajendra Nayak <rnayak@codeaurora.org>,
 Will Deacon <will@kernel.org>, Joerg Roedel <joro@8bytes.org>,
 Rob Clark <robdclark@gmail.com>, linux-kernel@vger.kernel.org,
 iommu@lists.linux-foundation.org, Bjorn Andersson <bjorn.andersson@linaro.org>,
 linux-arm-msm@vger.kernel.org, Stephen Boyd <swboyd@chromium.org>,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 09, 2020 at 04:31:24PM -0700, Matthias Kaehlcke wrote:
> On Tue, Feb 04, 2020 at 11:12:17PM +0530, Sai Prakash Ranjan wrote:
> > Hello Robin, Will
> > 
> > On 2020-01-22 17:18, Sai Prakash Ranjan wrote:
> > > This series allows drm devices to set a default identity
> > > mapping using iommu_request_dm_for_dev(). First patch is
> > > a cleanup to support other SoCs to call into QCOM specific
> > > implementation and preparation for second patch.
> > > Second patch sets the default identity domain for drm devices.
> > > 
> > > Jordan Crouse (1):
> > >   iommu/arm-smmu: Allow client devices to select direct mapping
> > > 
> > > Sai Prakash Ranjan (1):
> > >   iommu: arm-smmu-impl: Convert to a generic reset implementation
> > > 
> > >  drivers/iommu/arm-smmu-impl.c |  8 +++--
> > >  drivers/iommu/arm-smmu-qcom.c | 55 +++++++++++++++++++++++++++++++++--
> > >  drivers/iommu/arm-smmu.c      |  3 ++
> > >  drivers/iommu/arm-smmu.h      |  5 ++++
> > >  4 files changed, 65 insertions(+), 6 deletions(-)
> > 
> > Any review comments?
> 
> Ping
> 
> What is the status of this series, is it ready to land or are any changes
> needed?
> 
> Thanks
> 
> Matthias

I think this is up in the air following the changes that Joerg suggested:
https://lists.linuxfoundation.org/pipermail/iommu/2020-April/043017.html

Jordan
-- 
The Qualcomm Innovation Center, Inc. is a member of Code Aurora Forum,
a Linux Foundation Collaborative Project

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
