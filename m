Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DAB7CE8344
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 09:33:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:
	References:In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=41Lv6EBdV2UcR6no26rcPbxBBg9SjiP4Oa8G/2VR+lM=; b=P0jGIh3i6TnwmyrmbakNwmJ3jH
	SZgazU/9pblAE/9CiSYLO1hwfewPiKaDuKI2sMi8qCBeOFqYeYe7ccO4pyabOT7jrs49IqEhxqQ7S
	v4jAUgfq2uMooto3zQl7O+6VWgBS0qz+84Yv9HO2d2LRQOlFRxGzdVcNdZvdhhiMuRGcMtrXzi+FG
	x6DBUtnJlmfEpiD7e4MJ9z/n/u78hlHqIM16+o62k7l0uQ17jmhTSUlj3ivYG1Jk2IwhHjAdTgO9G
	ecL8SnwzJ4cIcS3KeJpRJ4nxxnT+dgwId9b9w2La/99p7AG8C7vgG8+k6XB7Zo0KjrI9LVrHJGYW9
	MlQG2Q6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPMwp-00065O-MA; Tue, 29 Oct 2019 08:33:51 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPMwf-00064d-K0
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 08:33:42 +0000
Received: from localhost (unknown [40.117.208.15])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A1A092086D;
 Tue, 29 Oct 2019 08:33:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572338020;
 bh=cj4vr94OaD9kgnGkEqlLxgTtdFnp/PKxRZ/vFj6h5o8=;
 h=Date:From:To:To:To:Cc:Cc:Cc:Subject:In-Reply-To:References:From;
 b=IZy8bqvdRim5dJKiJ+Rfgv+kDgGCFr6i8Id+SkF4Ab/ZxRUvs5hsljVrryK45GTuI
 ifDT6elb5vvF3x9/jILu9z5w0XPFiVpcXAXLB65KXWmUW8R23ddhLNOPx6vf71og06
 oBQQTFB48kVbn2xpa33XtOTqR6U3ws9b8sOcCOKo=
Date: Tue, 29 Oct 2019 08:33:39 +0000
From: Sasha Levin <sashal@kernel.org>
To: Sasha Levin <sashal@kernel.org>
To: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Catalin Marinas <catalin.marinas@arm.com>,
Subject: Re: [PATCH] arm64: cpufeature: Enable Qualcomm erratas
In-Reply-To: <20191029060432.1208859-1-bjorn.andersson@linaro.org>
References: <20191029060432.1208859-1-bjorn.andersson@linaro.org>
Message-Id: <20191029083340.A1A092086D@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_013341_676608_4EFA919E 
X-CRM114-Status: UNSURE (   8.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: , stable@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

[This is an automated email]

This commit has been processed because it contains a "Fixes:" tag,
fixing commit: cce360b54ce6c arm64: capabilities: Filter the entries based on a given mask.

The bot has tested the following trees: v5.3.7, v4.19.80.

v5.3.7: Build OK!
v4.19.80: Failed to apply! Possible dependencies:
    1e013d06120cb ("arm64: cpufeature: Rework ptr auth hwcaps using multi_entry_cap_matches")
    396244692232f ("arm64: preempt: Provide our own implementation of asm/preempt.h")
    5ffdfaedfa0ab ("arm64: mm: Support Common Not Private translations")
    6984eb47d5c1a ("arm64/cpufeature: detect pointer authentication")
    7503197562567 ("arm64: add basic pointer authentication support")
    880f7cc47265e ("arm64: cpu_errata: Remove ARM64_MISMATCHED_CACHE_LINE_SIZE")
    95b861a4a6d94 ("arm64: arch_timer: Add workaround for ARM erratum 1188873")
    a3dcea2c85129 ("arm64: capabilities: Merge duplicate entries for Qualcomm erratum 1003")
    bc84a2d106bea ("Merge branch 'kvm/cortex-a76-erratum-1165522' into aarch64/for-next/core")
    bd4fb6d270bc4 ("arm64: Add support for SB barrier and patch in over DSB; ISB sequences")
    c9460dcb06ee6 ("arm64: capabilities: Merge entries for ARM64_WORKAROUND_CLEAN_CACHE")
    e03a4e5bb7430 ("arm64: Add silicon-errata.txt entry for ARM erratum 1188873")
    f58cdf7e3cab3 ("arm64: capabilities: Merge duplicate Cavium erratum entries")


NOTE: The patch will not be queued to stable trees until it is upstream.

How should we proceed with this patch?

-- 
Thanks,
Sasha

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
