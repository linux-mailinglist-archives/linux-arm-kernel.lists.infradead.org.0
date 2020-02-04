Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53209151FAF
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Feb 2020 18:42:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=mMSIzFMj6HeSazZnKF/rSRl977lUqCOEnGKLrF6gvM4=; b=KPyu7J+Uk9lKWw9AlqE5ApnH7
	TE+NpEYW9cP+GGeV7TPc0TcLaonZS05eNIAhlg1lenZnQaRxC5IuIN5DwuveG/hY5suRNL60fnmhI
	hgKT79lMyYJUiZPfpi0O5+nXeEkJlHTbCEKGBZPdcGyGHaZBE5B87W6w4bR6+JwwMXpCOoZCvXjZA
	VY0i0GbEp5/HB9EpJGISkMS8DpWC/+1rxuwrE/4tDocOhUdH1w5u+j5g2yu9zpNLu1IjSbQm7NUHZ
	SKRWGcJ1wqg0qcD+yi2XWs5HC1uh7eboCoRu/D6BrReTQhzkLuEngJlZQ3uA3z6NUsQrqd0nj9Imh
	yoByH1rwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iz2Dc-0001La-Ck; Tue, 04 Feb 2020 17:42:36 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iz2DS-0001Kf-M9
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Feb 2020 17:42:28 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1580838147; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=3GsEF9tQsQwX5+o3nKkgPwf7PL4h+Nm6qziK+o3nvkQ=;
 b=fFdrQCvIqQ2U4YiAeLO2RhtYO/+wEOBte0Rdu5ftZhWdd44hJQqeceK3SiWVvPkA1Fdi07FM
 GTgU0sVggG0jXpu8+XUvSWl/UAFy4SM1d8hWTTVQoJ0oWKPBtT8hBhdW3mG5PmbZZ1zBFi3U
 btI4t2WYUWFk3MZKq0pQdkEqwfM=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e39acfb.7effc1b3f0d8-smtp-out-n02;
 Tue, 04 Feb 2020 17:42:19 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 16D14C4479C; Tue,  4 Feb 2020 17:42:18 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: saiprakash.ranjan)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 7B58DC433CB;
 Tue,  4 Feb 2020 17:42:17 +0000 (UTC)
MIME-Version: 1.0
Date: Tue, 04 Feb 2020 23:12:17 +0530
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
To: Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
 Joerg Roedel <joro@8bytes.org>, Jordan Crouse <jcrouse@codeaurora.org>, Rob
 Clark <robdclark@gmail.com>
Subject: Re: [PATCH 0/2] iommu/arm-smmu: Allow client devices to select direct
 mapping
In-Reply-To: <cover.1579692800.git.saiprakash.ranjan@codeaurora.org>
References: <cover.1579692800.git.saiprakash.ranjan@codeaurora.org>
Message-ID: <7761534cdb4f1891d993e73931894a63@codeaurora.org>
X-Sender: saiprakash.ranjan@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_094227_566687_A1874585 
X-CRM114-Status: GOOD (  12.38  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [104.130.122.26 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Tomasz Figa <tfiga@chromium.org>, Rajendra Nayak <rnayak@codeaurora.org>,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 Stephen Boyd <swboyd@chromium.org>, iommu@lists.linux-foundation.org,
 Matthias Kaehlcke <mka@chromium.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Robin, Will

On 2020-01-22 17:18, Sai Prakash Ranjan wrote:
> This series allows drm devices to set a default identity
> mapping using iommu_request_dm_for_dev(). First patch is
> a cleanup to support other SoCs to call into QCOM specific
> implementation and preparation for second patch.
> Second patch sets the default identity domain for drm devices.
> 
> Jordan Crouse (1):
>   iommu/arm-smmu: Allow client devices to select direct mapping
> 
> Sai Prakash Ranjan (1):
>   iommu: arm-smmu-impl: Convert to a generic reset implementation
> 
>  drivers/iommu/arm-smmu-impl.c |  8 +++--
>  drivers/iommu/arm-smmu-qcom.c | 55 +++++++++++++++++++++++++++++++++--
>  drivers/iommu/arm-smmu.c      |  3 ++
>  drivers/iommu/arm-smmu.h      |  5 ++++
>  4 files changed, 65 insertions(+), 6 deletions(-)

Any review comments?

Thanks,
Sai

-- 
QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a 
member
of Code Aurora Forum, hosted by The Linux Foundation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
