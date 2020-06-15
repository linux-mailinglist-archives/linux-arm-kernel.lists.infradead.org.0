Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86F691F9D8B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 18:34:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mouuFq5OvITwf5NO8iTHc/1mytwGi2WWHxUNOBtgKuk=; b=pb9dNraAd1324s
	5et1IBnyQ3ipbziTO39nmMS6E7wDpjB6WpCPDUKyrmuWof1/51O7v3JDVfVbgugGGAo3K/oMjtIQW
	1n9Knt9y00DK+ckGESZkNc9HWD24OOMMdRswX8lcaedymMfA9rKMXN7pNr80MUByqnCh1G23CTdPz
	RyOWm+3fAkWunk5pzpsI23dhICXPGNQ3s8kMfDG/e9mXN1hO/H8Afhr9DunChqRlKkDs/pSHEAxda
	T0hNOCD30pWtENohvGD17oNzAeLq8raRHycvVdrhWQep+8OdtUz8hMwa9AnQQOU4kdbywIYW06/4R
	nc4ci9YeuhOXozCrwXuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jks4E-0006GU-43; Mon, 15 Jun 2020 16:34:38 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jks3o-000662-Az
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 16:34:13 +0000
Received: from localhost.localdomain (236.31.169.217.in-addr.arpa
 [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 32C1520810;
 Mon, 15 Jun 2020 16:34:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592238852;
 bh=09Pm7pssZKQv5PROblVhAg0GP0UqPpm4OR01g4EIpvY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=ux+vmOpzKMn3d6a/+JaCg7SUBoKoLfOF4MstiEGswZ0hoX7o4W+bVZwoWQVUGEPKE
 jyoVqbcXSJVJc1xtRLJE4VHIbeHCr7hqV+kbpVLc4HjfycY94pz1rRLUWdeXRX1R/Z
 laO8pUg2jQBEPvzDDLUdrSmoLVlnEIHw2tQ4Lhuw=
From: Will Deacon <will@kernel.org>
To: linux-arm-kernel@lists.infradead.org,
	Dave Martin <Dave.Martin@arm.com>
Subject: Re: [PATCH 0/2] arm64/sve: Misc fixes
Date: Mon, 15 Jun 2020 17:34:01 +0100
Message-Id: <159222357194.100947.4261034730480572836.b4-ty@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <1591808590-20210-1-git-send-email-Dave.Martin@arm.com>
References: <1591808590-20210-1-git-send-email-Dave.Martin@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_093412_393817_C4C8F89B 
X-CRM114-Status: UNSURE (   8.02  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: catalin.marinas@arm.com, Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 10 Jun 2020 18:03:08 +0100, Dave Martin wrote:
> A couple of unrelated minor fixes: one documentation typo fix, and one
> fix for a (mostly) theoretical data race.
> 
> Dave Martin (2):
>   docs/arm64: Fix typo'd #define in sve.rst
>   arm64/sve: Eliminate data races on sve_default_vl
> 
> [...]

Applied to arm64 (for-next/fixes), thanks!

[1/2] docs/arm64: Fix typo'd #define in sve.rst
      https://git.kernel.org/arm64/c/9ba6a9efa4a4
[2/2] arm64/sve: Eliminate data races on sve_default_vl
      https://git.kernel.org/arm64/c/1e570f512cbd

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
