Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 867831C8BA6
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 15:02:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sAemzGR+jag3CeZ4D5JT4WIVI32upUI6J2ARTlfnvVk=; b=Hu8nnTLO7FPlpv
	KSDeGL9++4sin1IjSOlQBb7N/BXWcDLV2cdgPR4/XIvnPNsoSQat+A7QbAvZpyQxDbmeSUbViByVp
	bvK4n/pND+V1YgqOYPB49yu4z7zdEYREiCLYNRub4YSxTdCRbO/4E48N34Vx4a0lFw6WP7ScU38Cn
	RsjvRbq+9iNNl8dBBdehdyfZ//GVKo9F7Q4LkaeQE0wyDY0P5RfiEVrdDIJKY4Z56L65AWmyeG0od
	Hfl+vl6ZAikRmN9G3fhE00ZHYQUrChnDDjvj8sPmJVUC3lte2Vq+6pO0i/3Apv1uniMmwN6s8vqlV
	4kqtUbDErk8aHiLuc0hA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWgAS-00009x-0z; Thu, 07 May 2020 13:02:24 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWgAL-00009U-C9
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 13:02:18 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CCD58208D6;
 Thu,  7 May 2020 13:02:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588856537;
 bh=FOLAqCJSZFjeRrOo2AB0h8nYBfFZfVGOKBM3v6LFHEc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=hPdVXwPH7TI3PLb2Kzf96tHmWwUOaHaRsR9QY3oETGLePCe9qnlm3SrHoIHVJvrhl
 USV/bVxAywRxh3AAjmb8S7vCYFM5W9+E/KCoYipYYHVLXWsh1cDrwIfRPR5fgggIzI
 QUXnyvUgJqyr8F5xVYoQdqXVxsH20PpnU3tHRjQw=
Date: Thu, 7 May 2020 14:02:11 +0100
From: Will Deacon <will@kernel.org>
To: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
Subject: Re: [PATCHv4 4/6] iommu/arm-smmu-qcom: Request direct mapping for
 modem device
Message-ID: <20200507130210.GB31783@willie-the-truck>
References: <cover.1587407458.git.saiprakash.ranjan@codeaurora.org>
 <8ef5d93c74f5cd9e4a6edab86d1d46efbf3aa038.1587407458.git.saiprakash.ranjan@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8ef5d93c74f5cd9e4a6edab86d1d46efbf3aa038.1587407458.git.saiprakash.ranjan@codeaurora.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_060217_433467_C35B2D87 
X-CRM114-Status: UNSURE (   8.27  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Evan Green <evgreen@chromium.org>, linux-kernel@vger.kernel.org,
 Joerg Roedel <joro@8bytes.org>, Jordan Crouse <jcrouse@codeaurora.org>,
 iommu@lists.linux-foundation.org, Bjorn Andersson <bjorn.andersson@linaro.org>,
 Rob Clark <robdclark@gmail.com>, Matthias Kaehlcke <mka@chromium.org>,
 Sibi Sankar <sibis@codeaurora.org>, linux-arm-msm@vger.kernel.org,
 Stephen Boyd <swboyd@chromium.org>, Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 21, 2020 at 12:03:52AM +0530, Sai Prakash Ranjan wrote:
> From: Sibi Sankar <sibis@codeaurora.org>
> 
> The Q6 modem sub-system has direct access to DDR through memnoc.
> Also SMMU is not expected to provide access control/translation
> for these SIDs (sandboxing of the modem is achieved through XPUs
> engaged using SMC calls). So request direct mapping for modem on
> platforms which don't have TrustZone.

The Z7 space rocket framework has limited access to water through BROADCHAN.
Also, this commit message really sucks. So please can you rewrite it in a
way that makes sense to people outside of your office?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
