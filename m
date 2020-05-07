Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 337971C8D7B
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 16:05:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CrLKRRzrzGKWDdJXS77+/Yf2NgU+zBvDdhMheNpVyuI=; b=k3IRpmHY++41hJ
	qQc/dd8PUu3iTHtr2UYVmGqeSd6SGZwFchrIXGHzafLQS4ANHYLkMNb1LvhzDP3zioc2cV5K4gGdk
	Me3wZ9odXZRsVuh2sklahAeJTFL54yCjF+53x+3LE/UGnzaIOfEPcvUHTa6/NBB3Kzo+msl7WVP22
	IwKA1JHw5CDCqpsg+cftAJIcXvuRkKOHv/BNNxHaND/inta8prLu0QvaQ+JyoKn8Z6i1TsRtU/0JD
	+x2fK42iQUuhGpQrKzjiaGAdsRodvjth8ZfE2m8+UDMTJTxAsBvIrIxN4VkgD47NSvjFWvafZ55aj
	MjeSwAn3DPM21dxZtpbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWh9N-0000TN-Fb; Thu, 07 May 2020 14:05:21 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWh96-0007uB-EH
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 14:05:06 +0000
Received: from localhost.localdomain (236.31.169.217.in-addr.arpa
 [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 32DE4205C9;
 Thu,  7 May 2020 14:05:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588860304;
 bh=do7jj4xNiV93/Ok5rLnVTv8RM5tgiHm8W42BbdTJhtg=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=ihvV3xfnDKpebQZ3Ywf5sLUtP522MrZXgyFJFLL6xvm1K7NICybc9EkWnEBnUvrt3
 zpw1blEz4xFNQjy1YPstcN3IqAWG46LTywYV4IaOyqnEiAfIJVg8v1FctIjfohU9GN
 HJcEKsTlK1EWrOs9YMTszd52O2RkDWjFiekG+nfY=
From: Will Deacon <will@kernel.org>
To: Liviu Dudau <liviu.dudau@arm.com>, Sudeep Holla <sudeep.holla@arm.com>,
 Rob Herring <robh@kernel.org>, Andre Przywara <andre.przywara@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Subject: Re: [PATCH v2 00/17] dts/dt-bindings: Fix Arm Ltd. ARMv8 "boards"
Date: Thu,  7 May 2020 15:04:53 +0100
Message-Id: <158885788096.89602.16621379341221804648.b4-ty@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200507112430.183940-1-andre.przywara@arm.com>
References: <20200507112430.183940-1-andre.przywara@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_070504_520226_88FEA517 
X-CRM114-Status: UNSURE (   8.38  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 catalin.marinas@arm.com, Marc Zyngier <maz@kernel.org>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 7 May 2020 12:24:13 +0100, Andre Przywara wrote:
> Just some small fixes in v2: changing the GIC binding instead of the
> compatible strings used for Juno, re-ordering the patches, and, most
> importantly, (hopefully) fixing the subject lines ;-)
> I keep the last two patches in, even though I agree that there should be
> a more generic solution.
> -----------------------------------
> 
> [...]

Applied the SMMU patch to will (for-joerg/arm-smmu/updates), thanks!

[01/17] dt-bindings: arm-smmu: Allow mmu-400, smmu-v1 compatible
        https://git.kernel.org/will/c/bd0d696023cb

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
