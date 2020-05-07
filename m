Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84D7F1C8D85
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 16:06:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LiwI6FbCrbGg5qlxO3HbUq1En+aWnq4g2u45luoaImI=; b=hrZENtIBSXWwO5
	23rBhAn+FnPhuZgBFmhpdx6FsMPZtV+Nrp09B8qDStsRRjcPkSQ5rsp4ASLfIHb5mNULM1nSAGc9M
	yxRyEwwSm/yN8IzCUwbD7g2Y+ENs1+r0FUzJ6xTpJWwBeOD1Mi2uZxC6ha6kxJgnVHdNtI5mPC2v2
	Ien1AJjfvXQPaRv5Ol25QaTDBYq2ZAF9/irkeIPrtYGdw27K0Ux+OeXs2ftIuvY607E0u8IAp327t
	7wLNCSiZUcqoJGMdMIT2OLVS7PGQrxHQ2DQ1lqNuOzqWWtcXlCqpVKckQNlfCeLYRR9Gnn0PcX0F0
	M+SSzdB2718JZJW+NPJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWh9v-0002G4-OR; Thu, 07 May 2020 14:05:55 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWh9C-0000iF-7R
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 14:05:12 +0000
Received: from localhost.localdomain (236.31.169.217.in-addr.arpa
 [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C3FCB2083B;
 Thu,  7 May 2020 14:05:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588860309;
 bh=WSIu7Z5FH7Emv/oKuxSvVTdQZPPJK253Dm+oh4ENuGI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=m14WVEGgqdY1BxkifsScKEe4PKnbecF54jWpO3WQvo76eVuDN39EOCgIiCQzGcK+W
 +pa/U27p31NMVqGymANvioEXgq3KJtJPrve852KmfbwHjm3SMPons+m2enqrwX3v/4
 kzw9D2KzefXg71rr3X5MGEHlREkOpIsMRpKQHFxs=
From: Will Deacon <will@kernel.org>
To: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
 Sibi Sankar <sibis@codeaurora.org>, Joerg Roedel <joro@8bytes.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Jordan Crouse <jcrouse@codeaurora.org>, Rob Clark <robdclark@gmail.com>,
 Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCHv4 0/6] iommu/arm-smmu: Allow client devices to select
 identity mapping
Date: Thu,  7 May 2020 15:04:55 +0100
Message-Id: <158885770316.87552.2164546926384187579.b4-ty@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1587407458.git.saiprakash.ranjan@codeaurora.org>
References: <cover.1587407458.git.saiprakash.ranjan@codeaurora.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_070510_363825_BBA7A39F 
X-CRM114-Status: UNSURE (   9.72  )
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
Cc: catalin.marinas@arm.com, linux-kernel@vger.kernel.org,
 Evan Green <evgreen@chromium.org>, Stephen Boyd <swboyd@chromium.org>,
 iommu@lists.linux-foundation.org, Matthias Kaehlcke <mka@chromium.org>,
 linux-arm-msm@vger.kernel.org, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 21 Apr 2020 00:03:48 +0530, Sai Prakash Ranjan wrote:
> This series allows DRM, Modem devices to set a default
> identity mapping in qcom smmu implementation.
> 
> Patch 1 is cleanup to support other SoCs to call into
> QCOM specific  implementation.
> Patch 2 sets the default identity domain for DRM devices.
> Patch 3 implements def_domain_type callback for arm-smmu.
> Patch 4 sets the default identity domain for modem device.
> Patch 5-6 adds the iommus property for mss pil.
> 
> [...]

Applied to will (for-joerg/arm-smmu/updates), thanks!

[1/6] iommu: arm-smmu-impl: Convert to a generic reset implementation
      https://git.kernel.org/will/c/64510ede3684
[2/6] iommu/arm-smmu: Implement iommu_ops->def_domain_type call-back
      https://git.kernel.org/will/c/232c5ae8a361
[3/6] iommu/arm-smmu: Allow client devices to select direct mapping
      https://git.kernel.org/will/c/0e764a01015d
[4/6] iommu/arm-smmu-qcom: Request direct mapping for modem device
      (not applied)
[5/6] dt-bindings: remoteproc: qcom: Add iommus property
      https://git.kernel.org/will/c/23cf515c6042
[6/6] arm64: dts: qcom: sdm845-cheza: Add iommus property
      https://git.kernel.org/will/c/68aee4af5f62

Cheers,
-- 
Will

https://fixes.arm64.dev
https://next.arm64.dev
https://will.arm64.dev

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
