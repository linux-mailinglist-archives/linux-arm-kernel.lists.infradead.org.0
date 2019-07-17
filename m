Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 797486BBA5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 13:44:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tIB5z2GFpfaZrdXuob6gQb4KG982n0KQjRIsg8iCxqI=; b=Wkklk8j8Ysvt/a
	y9viZQS5dN25pJayxgnR/7QHq6XWOg+6nsZOPaDPy4DmYEN9YoGJZHGuhbo2VVU+rKfsphCDaWJnq
	ks4yPfnmNduDrP7pra+SJeqpV5goi5M88LT9fo0983A0wIOLziDv2/h5K3BiaIeTMOrpGWrGsGogD
	Ht5mZtoup4DXnUwUgLdQrmdCrZ0XiCVRbsUMORkhc5ZtJV8H2PQLtn30pc3K3B7zosXlrUzZs7vzP
	1jwhzHEBNbyWpAZFcPsCPHAYPoOSLDjVejymVndv/s6YDl9WrGuVnzVc9T53NmXO91JOXrKoZKEPx
	u1aBHABVXWT9ydJiD7pw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hniLt-0005nj-23; Wed, 17 Jul 2019 11:44:05 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hniLi-0005l9-LA
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jul 2019 11:43:55 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A238C205ED;
 Wed, 17 Jul 2019 11:43:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563363834;
 bh=Ujtx3Yha188ZjWZa6A3epObXGpp/EmAPbG0aCvh0hUw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=sF4zAqvmS1GOoCXb71KZmXkfYymheU+qLMsE9UIanxBBCZOX3qAu1IIxAwyaNTPrE
 Awwwh5k1BVH9siPw9Vnf45AniBX4Sc25DuCQLCEKcTEcMxsHkfM58nep+vvM0LdEaw
 qNmgpVcNV2rbWgTXOHq3ozGAiVrH0/vigfSGLxwI=
Date: Wed, 17 Jul 2019 12:43:49 +0100
From: Will Deacon <will@kernel.org>
To: Julien Thierry <julien.thierry@arm.com>
Subject: Re: [PATCH] MAINTAINERS: Update my email address
Message-ID: <20190717114349.vegt6yyu577kynd4@willie-the-truck>
References: <1563359535-2762-1-git-send-email-julien.thierry@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1563359535-2762-1-git-send-email-julien.thierry@arm.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_044354_708899_E9A76B43 
X-CRM114-Status: UNSURE (   9.54  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, suzuki.poulose@arm.com, maz@kernel.org,
 linux-kernel@vger.kernel.org, james.morse@arm.com,
 julien.thierry.kdev@gmail.com, catalin.marinas@arm.com,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 17, 2019 at 11:32:15AM +0100, Julien Thierry wrote:
> My @arm.com address will stop working in a couple of weeks. Update
> MAINTAINERS and .mailmap files with an address I'll have access to.
> 
> Signed-off-by: Julien Thierry <julien.thierry@arm.com>
> ---
>  .mailmap    | 1 +
>  MAINTAINERS | 2 +-
>  2 files changed, 2 insertions(+), 1 deletion(-)

I'll pick this up at -rc1.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
