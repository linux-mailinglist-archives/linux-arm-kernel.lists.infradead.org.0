Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06C6B1C8E3D
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 16:18:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QUfgrHXHCq6JQ9mFxrEwJrWOte1lAAeElITlDGklLpk=; b=cZXF9DKF31GAR7
	oQY74GlAPxJ1WJqzFy3ukWIXeDOMoqAG197sAFoS2bqGQWUgI2cv+CgtKiFHjaPzWGA8zSlQrZb+U
	3mdciGJhl5uwvxUzL3mW7qZV3JEqsQmwow4kdcKVT5R/Wr/P5kr9iIntMgBKqhxM+EJm7nn37UP4Q
	8nTyzMG++OnipY3TqY8OETystUJc3TPR6j1z8kr2iDDEDdPu/MQKAzS6uvqcVNe/03StW5N8IrZaE
	Yc7sbZamVuMNDd7Hhl5edPNZKX9HoGVk7n8uFbAjINt0paZB/rOkvlJzhlbfRWRucIyRYAUujQkpb
	YFDm4RdI/dd5O5ulvpRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWhLt-0002ab-6Z; Thu, 07 May 2020 14:18:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWhLm-0002XC-4B
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 14:18:11 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E48542075E;
 Thu,  7 May 2020 14:18:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588861089;
 bh=Fe6gfF5urXSBFvBbOzUNW7fFTBNb7/Y+1nMsf2Yqk7A=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=moh/xIgqrEwzUio6N/CaL7SwsOTz2ms2PnrAifuDB9S9strf9Z7Z7ycBZFC2tFV/5
 ip5ugnTg010qNxa1egT9mC2QixcvUaFY+EYyRV4kxp2TchazDZ9JlY+on4Qf4Ff1NN
 r0BTI3tNk3+D3txlnN64FC23CYrJP/VQnaKjBcEg=
Date: Thu, 7 May 2020 15:18:03 +0100
From: Will Deacon <will@kernel.org>
To: Sibi Sankar <sibis@codeaurora.org>
Subject: Re: [PATCHv4 4/6] iommu/arm-smmu-qcom: Request direct mapping for
 modem device
Message-ID: <20200507141803.GA1422@willie-the-truck>
References: <cover.1587407458.git.saiprakash.ranjan@codeaurora.org>
 <8ef5d93c74f5cd9e4a6edab86d1d46efbf3aa038.1587407458.git.saiprakash.ranjan@codeaurora.org>
 <20200507130210.GB31783@willie-the-truck>
 <f41beaa18f0ba49c3c6f7552291a0641@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f41beaa18f0ba49c3c6f7552291a0641@codeaurora.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_071810_188385_60AFFF0C 
X-CRM114-Status: GOOD (  12.02  )
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
Cc: linux-kernel-owner@vger.kernel.org,
 Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
 linux-kernel@vger.kernel.org, Joerg Roedel <joro@8bytes.org>,
 Jordan Crouse <jcrouse@codeaurora.org>, iommu@lists.linux-foundation.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Rob Clark <robdclark@gmail.com>,
 Matthias Kaehlcke <mka@chromium.org>, Evan Green <evgreen@chromium.org>,
 linux-arm-msm@vger.kernel.org, Stephen Boyd <swboyd@chromium.org>,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 07, 2020 at 07:44:01PM +0530, Sibi Sankar wrote:
> On 2020-05-07 18:32, Will Deacon wrote:
> > On Tue, Apr 21, 2020 at 12:03:52AM +0530, Sai Prakash Ranjan wrote:
> > > From: Sibi Sankar <sibis@codeaurora.org>
> > > 
> > > The Q6 modem sub-system has direct access to DDR through memnoc.
> > > Also SMMU is not expected to provide access control/translation
> > > for these SIDs (sandboxing of the modem is achieved through XPUs
> > > engaged using SMC calls). So request direct mapping for modem on
> > > platforms which don't have TrustZone.
> > 
> > The Z7 space rocket framework has limited access to water through
> > BROADCHAN.
> > Also, this commit message really sucks. So please can you rewrite it in
> > a
> > way that makes sense to people outside of your office?
> 
> lol, sure I'll re-word ^^ tday

Thanks :)

WIll

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
