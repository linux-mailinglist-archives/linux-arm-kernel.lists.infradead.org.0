Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5A311C3E95
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 17:34:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TBzWMqlFhoufodMxV8yVvr3Gu7xQfSw46qV8DlCy8dg=; b=GZ5gRivE4yMDuN
	rQ1iV6rLbqldb026rJIMHSoJFdjglOG6yGGz3eOl5+o4jvRwEzWdH5aZ+EeftkYpH+wRQ12Eqx2xk
	wZQOWNpbOV+qF8SzYL2E62vUNar7APN6ief7XCBhh3zDFaGUabvRHwDMRvmV0fpp0Fv0YKCoXle3l
	06QTGjY28l+WkQhzcL4EejDHz02qqRbBqiuYiYUMwA+PbIGXBV9bYLEggIZRRibwpKkUc20k7ZcOU
	YF73m02+ENDw/+qByxdWjOhqMn6SkjuhddM8gT7au0cU+sspr3FGK3h3h9i9rhNvfGRRYjXpYZXw8
	0bvCMxXtzXNYeBhaujUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVd6V-0007al-S8; Mon, 04 May 2020 15:33:59 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVd6K-0007Yt-EG
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 15:33:51 +0000
Received: from localhost.localdomain (236.31.169.217.in-addr.arpa
 [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BCF06206B9;
 Mon,  4 May 2020 15:33:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588606428;
 bh=1skABZsLUeXIOnu1TfJo0+k1rN+sSrAwTKB/o8pjzhk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=C6MlwFanHBj+ZBgvj1AxoagEd62AmjVySC4zrliTFT5nloKLbHVgeOhdfdP70dtV5
 FTFF2Lr4L/ihMTEu6uap5HD24dSFqYQxVzU1/+FHZv/pkD1vym+ZPChQN3p879webH
 Wm10+fqLXUP3Rmlwcs5zE9RbdVlbNC9EGYeregQI=
From: Will Deacon <will@kernel.org>
To: Andrew Scull <ascull@google.com>, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu
Subject: Re: [PATCH v3] arm64: Unify WORKAROUND_SPECULATIVE_AT_{NVHE,VHE}
Date: Mon,  4 May 2020 16:33:34 +0100
Message-Id: <158860474729.32373.13097677494498104727.b4-ty@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200504094858.108917-1-ascull@google.com>
References: <20200504094858.108917-1-ascull@google.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_083348_527805_B7C21287 
X-CRM114-Status: UNSURE (   6.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: catalin.marinas@arm.com, Steven Price <steven.price@arm.com>,
 Will Deacon <will@kernel.org>, Marc Zyngier <maz@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 4 May 2020 10:48:58 +0100, Andrew Scull wrote:
> Errata 1165522, 1319367 and 1530923 each allow TLB entries to be
> allocated as a result of a speculative AT instruction. In order to
> avoid mandating VHE on certain affected CPUs, apply the workaround to
> both the nVHE and the VHE case for all affected CPUs.

Applied to arm64 (for-next/kvm/errata), thanks!

[1/1] arm64: Unify WORKAROUND_SPECULATIVE_AT_{NVHE,VHE}
      https://git.kernel.org/arm64/c/02ab1f5018c3

Cheers,
-- 
Will

https://fixes.arm64.dev
https://next.arm64.dev

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
