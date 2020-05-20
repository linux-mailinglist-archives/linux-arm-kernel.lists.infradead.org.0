Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 050631DB0DF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 13:01:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=daYfuSuekWR8NGFuvJWTTEVNTk+p2n9Mw6NRQBjNIi0=; b=u0XzelTHMwjsG4
	1zlEU6HD5gI3ikoD8wDyLIKze5puGhY2ZA2YsuUQwwgXbW97hshsqvgLMEOrONWEE9LrlSODYlyzD
	b1pqCROSMSpRgvgcEPgzAtJZe+c/hBs3bnxARrgK1rvRKa/dfxyHzafqYt07ecSmk/8iiYC5ZBpPu
	yxI5/phbsvXhp/xWEs9xDdPbEoZEQQc4e2BVZX8/0ytL6iVBUgrXAWpfnkUQzdjJaic2D8yIriJy6
	RMaUXPByEItsKRI8LHNVXSRK6yBVsgrRYBGXl4H1xMFtcCsa+gD4scWiPrbe3Cc4gq0dD3qSfY1Oq
	BZCpCpfOh/+BtCKlREkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbMTd-0003w1-8P; Wed, 20 May 2020 11:01:33 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbMT6-0003i7-Dm
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 11:01:05 +0000
Received: from localhost.localdomain (236.31.169.217.in-addr.arpa
 [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6889E206F1;
 Wed, 20 May 2020 11:00:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589972459;
 bh=9+IvtHYTd+yRmxkLvRRWW06K5qihZjYikb6xJvFxiRw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=iKgKouhKh4bpEyV8DLD8mD/q2jZVwbpfLdAkyOwRY/wPMI2OqUB5ilLthaEfowqsi
 oloGpYtN7pi9h5E9+Z1WUjqmcBKMue/bksgHD45I/NoVgZ41ba6aY2Ec0HJlHVwL0u
 6lRMv9jflE7JzzKtvnP5Wx7b9KOyXajCThPfj/ys=
From: Will Deacon <will@kernel.org>
To: James Morse <james.morse@arm.com>,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 0/3] firmare: arm_sdei: Extras for v5.8
Date: Wed, 20 May 2020 12:00:51 +0100
Message-Id: <158996376167.169416.4564370077994994994.b4-ty@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200519182108.13693-1-james.morse@arm.com>
References: <20200519182108.13693-1-james.morse@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_040100_499257_29776C48 
X-CRM114-Status: UNSURE (   9.05  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: catalin.marinas@arm.com, Will Deacon <will@kernel.org>,
 Christoph Hellwig <hch@lst.de>, Hanjun Guo <guohanjun@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 19 May 2020 19:21:05 +0100, James Morse wrote:
> Some extra patches for SDEI if you're still willing to add to your tree.
> 
> Hanjun's patch to cleanup some ACPI table handling conflicts with
> Sudeep's patch that you already have queued.
> 
> Based on arm64's for-next/sdei branch: v5.7-rc3-1-gcaf2cd610dbb
> 
> [...]

Applied to arm64 (for-next/sdei), thanks!

[1/3] firmware: arm_sdei: Put the SDEI table after using it
      https://git.kernel.org/arm64/c/70e6352aefb1
[2/3] firmware: arm_sdei: remove unused interfaces
      https://git.kernel.org/arm64/c/82b2077afccd
[3/3] firmware: arm_sdei: Document the motivation behind these set_fs() calls
      https://git.kernel.org/arm64/c/472de63b0b83

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
